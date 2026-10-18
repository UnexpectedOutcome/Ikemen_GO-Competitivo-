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

[Command]
name = "AI19"
command = c,D,z,s
time = 0

[Command]
name = "AI18"
command = U,z,DB,DF
time = 0

[Command]
name = "AI17"
command = c,y,s
time = 0

[Command]
name = "AI16"
command = b,y,s,DF,x
time = 0

[Command]
name = "AI15"
command = b,D,DF,z
time = 0

[Command]
name = "AI14"
command = DB,y
time = 0

[Command]
name = "AI13"
command = x,U,D
time = 0

[Command]
name = "AI12"
command = b,DF,DB,a
time = 0

[Command]
name = "AI11"
command = B,b,x
time = 0

[Command]
name = "AI10"
command = x,s
time = 0

[Command]
name = "AI9"
command = a,U,s
time = 0

[Command]
name = "AI8"
command = s,DB,y,x,z
time = 0

[Command]
name = "AI7"
command = c,x,DB
time = 0

[Command]
name = "AI6"
command = y,U,c,DF
time = 0

[Command]
name = "AI5"
command = b,z,U,x,F
time = 0

[Command]
name = "AI4"
command = F,a,a,x,D
time = 0

[Command]
name = "AI3"
command = c,B,F,a
time = 0

[Command]
name = "AI2"
command = b,DB,F,y,D
time = 0

[Command]
name = "AI1"
command = a,s,F
time = 0

[Command]
name = "AI0"
command = a,b,y,D,a
time = 0

[Command]
name = "start"
command = start
time = 1

[Command]
name = "Hyper Tail Slash"
command = ~D, DF, F, y+z
time = 36

[Command]
name = "Spin Smasher"
command = ~D, DB, B, y+z
time = 36

[Command]
name = "Power Cannon"
command = ~B, D, F, y+z
time = 36

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

;-| Special Motions |------------------------------------------------------

[Command]
name = "Tail Slash Light"
command = ~D, DF, F, x
time = 16

[Command]
name = "Tail Slash Medium"
command = ~D, DF, F, y
time = 16

[Command]
name = "Tail Slash Strong"
command = ~D, DF, F, z
time = 16

[Command]
name = "Tailcopter Light"
command = ~F, D, DF, x
time = 16

[Command]
name = "Tailcopter Medium"
command = ~F, D, DF, y
time = 16

[Command]
name = "Tailcopter Strong"
command = ~F, D, DF, z
time = 16

[Command]
name = "Air Tailcopter Light"
command = ~F, D, DF, x
time = 16

[Command]
name = "Air Tailcopter Medium"
command = ~F, D, DF, y
time = 16

[Command]
name = "Air Tailcopter Strong"
command = ~F, D, DF, z
time = 16

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
name = "s"
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

;---------------------------------------------------------------------------
;Release Direction
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

;--------------------------------------------------------------------------
;Release Button
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
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = var(59) <= 0
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Power Cannon]
type = ChangeState
value = 3100
triggerall = command = "Power Cannon"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
triggerall = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 420 && movecontact
trigger9 = stateno = 1000 && movecontact
trigger10 = stateno = 1001 && movecontact
trigger11 = stateno = 1002 && movecontact
trigger12 = stateno = 2000 && movecontact
trigger13 = stateno = 2010 && movecontact
trigger14 = stateno = 2020 && movecontact

[State -1, Spin Smasher]
type = ChangeState
value = 3050
triggerall = var(59) <= 0
triggerall = command = "Spin Smasher"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl && pos y <= -30 || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger2 = Helper(3010),StateNo = [1014,1016]

[State -1, Hyper Tail Slash]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "Hyper Tail Slash"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 420 && movecontact
trigger9 = stateno = 1000 && movecontact
trigger10 = stateno = 1001 && movecontact
trigger11 = stateno = 1002 && movecontact
trigger12 = stateno = 2000 && movecontact
trigger13 = stateno = 2010 && movecontact
trigger14 = stateno = 2020 && movecontact

[State -1, Air Tailcopter Strong]
type = ChangeState
value = 2022
triggerall = var(59) <= 0
triggerall = command = "Air Tailcopter Strong"
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]

[State -1, Air Tailcopter Medium]
type = ChangeState
value = 2012
triggerall = var(59) <= 0
triggerall = command = "Air Tailcopter Medium"
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]

[State -1, Air Tailcopter Light]
type = ChangeState
value = 2002
triggerall = var(59) <= 0
triggerall = command = "Air Tailcopter Light"
triggerall = RoundState = 2 && StateType = A
triggerall = ctrl && pos y <= -30 || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]

[State -1, Tailcopter Strong]
type = ChangeState
value = 2020
triggerall = var(59) <= 0
triggerall = command = "Tailcopter Strong"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 420 && movecontact

[State -1, Tailcopter Medium]
type = ChangeState
value = 2010
triggerall = var(59) <= 0
triggerall = command = "Tailcopter Medium"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 420 && movecontact

[State -1, Tailcopter Light]
type = ChangeState
value = 2000
triggerall = var(59) <= 0
triggerall = command = "Tailcopter Light"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Tail Slash Strong]
type = ChangeState
value = 1002
triggerall = var(59) <= 0
triggerall = command = "Tail Slash Strong"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Tail Slash Medium]
type = ChangeState
value = 1001
triggerall = var(59) <= 0
triggerall = command = "Tail Slash Medium"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Tail Slash Light]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "Tail Slash Light"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 420 && movecontact

[State -1, Throw]
type = ChangeState
value = 800
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact

[State -1, Run Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Backward]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1 Advancing Guard]
type = ChangeState
value = 550
triggerall = command = "pp"
trigger1 = stateno = [150,151]

[State -1 Advancing Guard Low]
type = ChangeState
value = 560
triggerall = command = "pp"
trigger1 = stateno = [152,153]

[State -1 Advancing Guard Air]
type = ChangeState
value = 570
triggerall = command = "pp"
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10 

;--------------------------------------------------------------------------
[State -1, Stand A]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand B]
type = ChangeState
value = 210 
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 200 && movecontact

[State -1, Stand C]
type = ChangeState
value = 220 
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown" 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 210 && movecontact

[State -1, Crouch A]
type = ChangeState
value = 400
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouch B]
type = ChangeState
value = 410
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 400 && movecontact

[State -1, Crouch C]
type = ChangeState
value = 420
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 220 && movecontact

[State -1, Crouch C]
type = ChangeState
value = 420
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 410 && movecontact

[State -1, Jump A]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump B]
type = ChangeState
value = 610
triggerall = var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

[State -1, Jump C]
type = ChangeState
value = 620
triggerall = var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact

[State -1, Launcher]
type = ChangeState
value = 700 
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact

[State -1, Launcher]
type = ChangeState
value = 700 
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown" 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 420 && movecontact

[State -1, Knockdown]
type = ChangeState
value = 710
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

