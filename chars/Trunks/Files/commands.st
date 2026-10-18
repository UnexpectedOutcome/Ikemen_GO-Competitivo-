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

; Shining Sword

[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, ~x
time = 32
[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, x
time = 32

[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, ~y
time = 32
[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, y
time = 32

[Command]
name = "2qcf_z"
command = ~D, DF, F, D, DF, ~z
time = 32
[Command]
name = "2qcf_z"
command = ~D, DF, F, D, DF, z
time = 32

; Burning

[Command]
name = "2qcb_x"
command = ~D, DB, B, D, DB, ~x
time = 32
[Command]
name = "2qcb_x"
command = ~D, DB, B, D, DB, x
time = 32

[Command]
name = "2qcb_y"
command = ~D, DB, B, D, DB, ~y
time = 32
[Command]
name = "2qcb_y"
command = ~D, DB, B, D, DB, y
time = 32

[Command]
name = "2qcb_z"
command = ~D, DB, B, D, DB, ~z
time = 32
[Command]
name = "2qcb_z"
command = ~D, DB, B, D, DB, z
time = 32

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

[Command]
name = "dp_x"
command = ~F, D, DF, x

[Command]
name = "dp_y"
command = ~F, D, DF, y

[Command]
name = "dp_z"
command = ~F, D, DF, z


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

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
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

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
[State --------------- AI -------------------]
type = null
trigger1 = 0
;===========================================================================

;AI by Seravy

[State -1, AI ON]
Type = VarSet
TriggerAll = !Var(59)
TriggerAll = RoundState=2
Trigger1 = AILevel 
var(59) = 1
Ignorehitpause=1

[State -1, AI OFF]
Type = VarSet
Trigger1 = var(59)
Trigger1 = RoundState!=2
Trigger2 = !IsHelper
Trigger2 = !AILevel
var(59) = 0
Ignorehitpause=1

[State -1, AI difficulty/atk chance]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = changestate
value = 3000
triggerall = var(59)
triggerall = statetype != a
triggerall = power >= 1000
triggerall = p2statetype != l
triggerall = abs(p2bodydist x) > 80
triggerall = random<var(50)*.6
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Shining Sword Attack]
type = changestate
value = 3100
triggerall = var(59)
triggerall = statetype != a
triggerall = power >= 1000
triggerall = p2statetype != l
triggerall = abs(p2bodydist x) < 80 && abs(p2bodydist y) < 100
triggerall = ailevel >= 4
trigger1 = ctrl
trigger1 = random<var(50)*.6
trigger2 = (stateno = [200,420])
trigger2 = movecontact
trigger2 = random<var(50)*.65
trigger3 = (stateno = [1200,1220])
trigger3 = movehit
trigger3 = random<var(50)*.8

;---------------------------------------------------------------------------
[State -1, AI Sword Rush]
type = changestate
value = 1200+(abs(p2bodydist x)>80)*10+(abs(p2bodydist x)>140)*10
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = abs(p2bodydist y) < 40
triggerall = abs(p2bodydist x) < 150
triggerall = !inguarddist
triggerall = random<var(50)*.8
trigger1 = ctrl
trigger2 = stateno = [200, 410]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, AI Ascending Knee]
type = changestate
value = 1300 + (((abs(p2bodydist y)>60)&&(abs(p2bodydist x)>70))*10) + (((abs(p2bodydist y)>70)&&(abs(p2bodydist x)>90))*10)
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2statetype != c
triggerall = random<var(50)*.6
triggerall = p2bodydist x > 0
triggerall = abs(p2bodydist x) < 110
triggerall = abs(p2bodydist y) < 120
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movehit

;---------------------------------------------------------------------------
[state -1, AI Ki Blast Air]
type = changestate
value = 1100 + (random%2)*10
triggerall = var(59)
triggerall = statetype = a
triggerall = p2bodydist x > 80
triggerall = p2dist y > 80
triggerall = random<var(50)*.6
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Ki Blast Ground]
type = changestate
value = 1000 + (random%2)*10
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2statetype = s || p2statetype = c
triggerall = abs(p2bodydist x) > 100
triggerall = random<var(50)*.6
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Air dash forward]
type = changestate
value = 110
triggerall = var(59)
triggerall = !inguarddist
triggerall = statetype = a
triggerall = p2statetype != l
triggerall = random<var(50)*1.1
triggerall = abs(p2bodydist x) > 75
triggerall = pos y < -75
trigger1 = var(1) ;air dash available
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Dash forward]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = !inguarddist
triggerall = statetype = s
triggerall = random<var(50)*1.1
triggerall = abs(p2bodydist x) > 70
triggerall = p2bodydist x > 0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Throw]
type = changestate
value = 800
triggerall = var(59)
triggerall = !inguarddist
triggerall = random<var(50)*.5
triggerall = p2statetype != l
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 20
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

;---------------------------------------------------------------------------
[State -1, AI Charge]
type = changestate
value = 900
triggerall = var(59)
triggerall = statetype != a
triggerall = power < powermax
triggerall = !inguarddist
triggerall = abs(p2bodydist x) > 125
triggerall = random<var(50)*.6
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Counter]
type = changestate
value = 700
triggerall = var(59)
triggerall = p2statetype != l
triggerall = random<var(50)*.5
trigger1 = stateno = 150 || stateno = 152 || stateno = 154
trigger1 = power >= 1000

;---------------------------------------------------------------------------
[State -1, AI Zanzoken]
type = changestate
value = 950
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = inguarddist
triggerall = abs(p2bodydist x) < 40
triggerall = random<var(50)*.4
triggerall = ailevel >= 6
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Stand Light attack]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = abs(p2bodydist y) < 20
triggerall = abs(p2bodydist x) < 50
triggerall = random<var(50)*2
trigger1 = statetype = s
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
[State -1, AI Stand medium attack]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = abs(p2bodydist y) < 20
triggerall = abs(p2bodydist x) < 70
triggerall = random<var(50)*1.5
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Stand strong attack]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = abs(p2bodydist y) < 20
triggerall = abs(p2bodydist x) < 100
triggerall = random<var(50)*1.25
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = (stateno = [200, 210]) || (stateno = [400,410])
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Crouching Light attack]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2statetype != a
triggerall = abs(p2bodydist x) < 50
triggerall = random<var(50)*1.5
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 && time > 5
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Crouching medium attack]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2statetype != a
triggerall = abs(p2bodydist x) < 70
triggerall = random<var(50)*1.25
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 || stateno = [200, 210]
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Crouching strong attack]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2statetype != a
triggerall = abs(p2bodydist x) < 100
triggerall = random<var(50)*1
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = (stateno = [200, 210]) || (stateno = [400, 410])
trigger3 = movecontact


;---------------------------------------------------------------------------
[State -1, AI Jump Light attack]
type = ChangeState
value = 600
triggerall = var(59)
triggerall = statetype = a
triggerall = p2statetype != l
triggerall = abs(p2bodydist x) < 50
triggerall = p2bodydist x > 0
triggerall = abs(p2bodydist y) < 30
triggerall = !inguarddist
triggerall = random<var(50)*1.5
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI Jump medium attack]
type = ChangeState
value = 610
triggerall = var(59)
triggerall = statetype = a
triggerall = p2statetype != l
triggerall = abs(p2bodydist x) < 70
triggerall = p2bodydist x > 0
triggerall = abs(p2bodydist y) < 35
triggerall = !inguarddist
triggerall = random<var(50)*1.25
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, AI Jump strong attack]
type = ChangeState
value = 620
triggerall = var(59)
triggerall = statetype = a
triggerall = p2statetype != l
triggerall = abs(p2bodydist x) < 100
triggerall = p2bodydist x > 0
triggerall = abs(p2bodydist y) < 50
triggerall = !inguarddist
triggerall = random<var(50)*1.15
trigger1 = ctrl
trigger1 = abs(p2bodydist x) < 100
trigger2 = stateno = 111
trigger2 = abs(p2bodydist x) < 200
trigger3 = stateno = [600,610]
trigger3 = movecontact
trigger3 = abs(p2bodydist x) < 100


;===========================================================================
[State --------------- Player -------------------]
type = null
trigger1 = 0
;===========================================================================

;---------------------------------------------------------------------------
[State -1, Burning Attack]
type = changestate
value = 3000
triggerall = !ailevel
triggerall = command = "2qcf_x" || command = "2qcf_y" || command = "2qcf_z"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Shining Sword Attack]
type = changestate
value = 3100
triggerall = !ailevel
triggerall = command = "2qcb_x" || command = "2qcb_y" || command = "2qcb_z"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,420]) || (stateno = [1200,1220])
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ascending Knee Light]
type = changestate
value = 1300
triggerall = !ailevel
triggerall = command = "dp_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ascending Knee Medium]
type = changestate
value = 1310
triggerall = !ailevel
triggerall = command = "dp_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ascending Knee Hard]
type = changestate
value = 1320
triggerall = !ailevel
triggerall = command = "dp_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Sword Rush Light]
type = changestate
value = 1200
triggerall = !ailevel
triggerall = command = "qcb_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Sword Rush Medium]
type = changestate
value = 1210
triggerall = !ailevel
triggerall = command = "qcb_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Sword Rush Hard]
type = changestate
value = 1220
triggerall = !ailevel
triggerall = command = "qcb_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Light Ground]
type = changestate
value = 1000
triggerall = !ailevel
triggerall = command = "qcf_x"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Medium Ground]
type = changestate
value = 1010
triggerall = !ailevel
triggerall = command = "qcf_y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Ki Blast Hard Ground]
type = changestate
value = 1020
triggerall = !ailevel
triggerall = command = "qcf_z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ki Blast Light Air]
type = changestate
value = 1100
triggerall = !ailevel
triggerall = command = "qcf_x"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ki Blast Medium Air]
type = changestate
value = 1110
triggerall = !ailevel
triggerall = command = "qcf_y"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact

;---------------------------------------------------------------------------
[state -1, Ki Blast Hard Air]
type = changestate
value = 1120
triggerall = !ailevel
triggerall = command = "qcf_z"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air dash forward]
type = changestate
value = 110
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype = a
trigger1 = var(1) ;air dash available
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air dash backwards]
type = changestate
value = 115
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype = a
trigger1 = var(1) ;air dash available
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = changestate
value = 800
triggerall = !ailevel
trigger1 = command = "z"
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

;---------------------------------------------------------------------------
[State -1, Charge]
type = changestate
value = 900
triggerall = !ailevel
trigger1 = command = "hold_a"
trigger1 = statetype != a
trigger1 = power < powermax
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ailevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Counter]
type = changestate
value = 700
triggerall = !ailevel
trigger1 = command = "c"
trigger1 = stateno = 150 || stateno = 152 || stateno = 154
trigger1 = power >= 1000

;---------------------------------------------------------------------------
[State -1, Zanzoken]
type = changestate
value = 950
triggerall = !ailevel
triggerall = command = "c"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light attack]
type = ChangeState
value = 200
triggerall = !ailevel
triggerall = command = "x"
triggerall = helper(15630),command != "holddown" ;this helper prevent hitpause buffer
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
[State -1, Stand medium attack]
type = ChangeState
value = 210
triggerall = !ailevel
triggerall = command = "y"
triggerall = helper(15630),command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Stand strong attack]
type = ChangeState
value = 220
triggerall = !ailevel
triggerall = command = "z"
triggerall = helper(15630),command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [101,102])
trigger2 = (stateno = [200, 210]) || (stateno = [400,410])
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light attack]
type = ChangeState
value = 400
triggerall = !ailevel
triggerall = command = "x"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 && time > 5
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching medium attack]
type = ChangeState
value = 410
triggerall = !ailevel
triggerall = command = "y"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = stateno = 400 || stateno = [200, 210]
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Crouching strong attack]
type = ChangeState
value = 420
triggerall = !ailevel
triggerall = command = "z"
triggerall = helper(15630),command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [101,102]
trigger3 = (stateno = [200, 210]) || (stateno = [400, 410])
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light attack]
type = ChangeState
value = 600
triggerall = !ailevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111

;---------------------------------------------------------------------------
[State -1, Jump medium attack]
type = ChangeState
value = 610
triggerall = !ailevel
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump strong attack]
type = ChangeState
value = 620
triggerall = !ailevel
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl || stateno = 111
trigger2 = stateno = [600,610]
trigger2 = movecontact
