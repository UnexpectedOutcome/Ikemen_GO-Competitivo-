; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


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
[Command]
name = "Raging Puffball"
command = x,x,F,a,z
time = 48

[Command]
name = "Raging Puffball"
command = x,x,F,a+z
time = 40

[Command]
name = "Raging Puffball"
command = x,x,F+a+z
time = 32

[Command]
name = "Ribbon"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Ribbon"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "Ribbon"
command = ~D, DB, B, D, DB, B, b+c
time = 30

[Command]
name = "MEGACOMBO"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Tornado Spin"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Kirby 64 Dynamite"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "Force Blast"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Superspicy Curry"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Cook"
command = ~D, DF, F, D, DF, F, z
time = 30


;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_c"
command = ~D, DF, F, c


[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
; Other
[Command]
name = "SuperJump"
command = $D, $U

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;==========================================================================
; AI 
;==========================================================================

[State -3, Taunt]
type = ChangeState
value = 195+random%2
triggerall = AILevel
triggerall = statetype != A
triggerall = roundstate = 3
triggerall = time = [0,120]
triggerall = stateno != [195,196] 
triggerall = prevstateno != [195,196]
triggerall = enemy,name != "Ribbon"
trigger1 = ctrl

; RAGING PUFFBALL
[State -1, Raging Puffball]
type = ChangeState
value = 2600
triggerall = AILevel >= 4
triggerall = PalNo >= 10
triggerall = life <= lifemax*0.5
triggerall = statetype != A
triggerall = Power >= 3000
trigger1 = ctrl 
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 60
trigger1 = enemynear,statetype != A

[State -1, Throw]
type = ChangeState
value = 800+50*(statetype = A)
triggerall = AILevel && RoundState = 2
triggerall = AILevel >= 8 || (AILevel < 8 && random < (800 * (AILevel ** 2 / 64.0)))
triggerall = statetype != A
triggerall = StateType != L
triggerall = ctrl || (stateno = [100,101]) || (stateno = [120,149])
triggerall = P2BodyDist X < 25
triggerall = enemynear,ishelper = 0
triggerall = enemynear,movetype != A
triggerall = EnemyNear,StateType != L && EnemyNear,StateType != A
trigger1 = enemy,stateno = [120,149]

; AI Guarding

[State -3, Methods]
type = VarSet
triggerall = numenemy
triggerall = AILevel
trigger1 = EnemyNear,StateType != C 
var(59) = 0

[State -3, Methods]
type = VarSet
triggerall = numenemy
triggerall = AILevel
triggerall = inguarddist
trigger1 = (EnemyNear,HitDefAttr = C,AA,AP) || EnemyNear,StateType = C
trigger2 = (EnemyNear,Name = "SuperMario" && EnemyNear,AuthorName = "ShinRyoga & NeOaNkH") || (EnemyNear,Name = "SuperLuigi" && EnemyNear,AuthorName = "ShinRyoga & NeOaNkH")
trigger2 = (EnemyNear,StateNo = [1500,1561]) 
; Credit to muteki and Moonchaser for the characters below
trigger3 = EnemyNear,Name = "osol" 
trigger3 = EnemyNear,StateNo = 1600
trigger4 = EnemyNear,Name = "eddie" || EnemyNear,Name = "jam"
trigger4 = EnemyNear,StateNo = 210
trigger5 = EnemyNear,Name = "eddie"
trigger5 = EnemyNear,StateNo = 1800 || EnemyNear,StateNo = 1850
trigger6 = EnemyNear,Name = "AIHARA NATSUMI"
trigger6 = EnemyNear,StateNo = 220
trigger7 = EnemyNear,Name = "millia"
trigger7 = EnemyNear,StateNo = 1500
;
trigger8 = EnemyNear,Name = "Super Better Mario V3"
trigger8 = EnemyNear,StateNo = [2200,2205]
var(59) = 1
ignorehitpause = 1

[State -3, AI Guard]
type = ChangeState
triggerall = AILevel >= 8 || (random <= 799 * (AIlevel ** 2 / 64.0))
triggerall = palno < 10
triggerall = AILevel && RoundState = 2
triggerall = inguarddist
triggerall = StateNo != 120
triggerall = ctrl || stateno = 0 || stateno = 20 || stateno = 52 || (stateno = [100,101])
triggerall = enemynear, hitdefattr != SCA, AT 
trigger1 = (enemynear,movetype = A) && (enemynear,animtime < -10)
trigger2 = EnemyNear,NumProj >= 1 || EnemyNear,NumHelper >= 1
value = 120


; Normal Jump 

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = StateNo != 40 || prevstateno != 40 
triggerall = ctrl
triggerall = Random <= 350 * (AIlevel ** 2 / 64.0)
triggerall = EnemyNear,StateType != L 
trigger1 = P2BodyDist X = [-10,120]
trigger1 = EnemyNear,HitDefAttr = SC,AT
trigger2 = P2BodyDist Y > -120 + enemynear,vel y * 4
trigger2 = Random <= 25 || (EnemyNear,MoveType = A && EnemyNear,StateType != A && Random <= 250) || EnemyNear,StateType = A
trigger2 = P2BodyDist X = [-10,50]
trigger3 = numtarget
trigger3 = target,stateno = [1027,1028]

; Running Jump

[State -1, VarSet]
type = VarSet
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = ctrl || (stateno = [120,159])
triggerall = facing != enemynear,facing || TeamMode = Simul
trigger1 = P2BodyDist X >= 50 || (P2BodyDist X >= 20 && EnemyNear,Vel X < 0)
trigger1 = Random <= 100 * (AIlevel ** 2 / 64.0)
trigger2 = enemynear,movetype = H
trigger2 = AILevel >= 5 || (AILevel < 5 && (Random <= 500 * (AIlevel ** 2 / 64.0)))
trigger2 = enemynear,statetype = a
trigger3 = enemynear,stateno = [1025,1028]
trigger3 = AILevel >= 5 || (AILevel < 5 && (Random <= 500 * (AIlevel ** 2 / 64.0)))
v = 50  
value = 1

[State -1, VarSet]
type = VarSet
triggerall = AILevel 
trigger1 = PrevStateNo = [40,50] 
v = 50  
value = 0

[State -1, AI Running Jump]
type = ChangeState
value = 40
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = StateNo != 40
trigger1 = var(50)

; Super Jump 

[State -1, AI Super Jump]
type = ChangeState
value = 4000
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = StateNo != 40
trigger1 = ctrl
trigger1 = p2bodydist y <= -120 + enemynear,vel y * 4
trigger2 = StateNo = 420
trigger2 = movehit

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = AILevel && RoundState = 2
triggerall = ctrl
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = P2BodyDist X >= 80
trigger1 = !inguarddist 
trigger1 = EnemyNear,MoveType = I || EnemyNear,AnimTime <= -(7+((P2BodyDist X)/14))
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, AI Air Dash]
type = ChangeState
value = 110
triggerall = AILevel && RoundState = 2
triggerall = statetype = A
triggerall = StateNo != 110
triggerall = ctrl
triggerall = var(45) < 1
trigger1 = Pos Y < -40
trigger1 = P2BodyDist X > 75
trigger1 = Facing != EnemyNear,Facing
trigger1 = Random <= 200 * (AIlevel ** 2 / 64.0)
trigger2 = Pos Y < -75
trigger2 = (Enemy,NumProj >= 1) && P2StateType != A
trigger2 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, AI Back Dash]
type = ChangeState
value = 111
triggerall = AILevel && RoundState = 2
triggerall = statetype = A
triggerall = StateNo != 111 
triggerall = ctrl
triggerall = var(45) < 1
trigger1 = P2Dist X < -10
trigger1 = FrontEdgeDist < 20
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)
trigger1 = TeamMode != Simul
trigger2 = ((EnemyNear,Vel X = [2,6]) && EnemyNear,MoveType = A) || EnemyNear,Vel X > 7
trigger2 = P2BodyDist X = [0,80]
trigger2 = Random <= 250 * (AIlevel ** 2 / 64.0)

[State -1, AI Dodge Air Attack]
type = ChangeState
value = ifelse((EnemyNear,Vel X >= 4  || FrontEdgeDist <= 60), 751, 752)
triggerall = AILevel && RoundState = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
triggerall = PalNo < 10
trigger1 = EnemyNear,Vel Y > 0
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)
trigger1 = P2BodyDist X <= 40 && (P2BodyDist Y = [-120,0])
trigger1 = inguarddist
trigger1 = EnemyNear,MoveType = A && EnemyNear,StateType = A
trigger1 = EnemyNear,Time <= 15

[State -1, AI Air Dodge]
type = ChangeState
value = 753
triggerall = AILevel && RoundState = 2
triggerall = statetype = A
triggerall = var(47) = 0
triggerall = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
triggerall = PalNo < 10
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)
trigger1 = (P2BodyDist X = [-40,40]) && (P2BodyDist Y = [-70,70])
trigger1 = inguarddist
trigger1 = P2MoveType = A 
trigger1 = EnemyNear,Time <= 10

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = (P2BodyDist X = [0,25]) && (P2BodyDist Y = [-40,0]) && EnemyNear,Vel Y > -1
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = (P2BodyDist X = [0,25]) && (P2BodyDist Y = [-40,0]) && EnemyNear,Vel Y > -1
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X = [0,25]
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 210 || stateno = 240
trigger2 = movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230 + 200 * ((stateno = [120,159]) && enemynear,statetype != C)
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
triggerall = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = (P2BodyDist X = [-10,30]) && (P2BodyDist Y = [-60,0]) && EnemyNear,Vel Y > -1
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, Stand Medium Kick]
type = ChangeState
value = 240+200*((enemynear,stateno = [120,160]) && (enemynear,statetype = s))
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = (P2BodyDist X = [0,40]) && (P2BodyDist Y = [-40,0]) && EnemyNear,Vel Y > -1
trigger1 = (Random <= 400  * (AIlevel ** 2 / 64.0)) || (enemynear,stateno = 40 && enemynear,time <= 2 && (random <= 500  * (AIlevel ** 2 / 64.0)))
trigger2 = stateno = 200 || stateno = 230
trigger2 = movecontact

[State -1, Stand Strong Kick]
type = ChangeState
value = 250 
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = (P2BodyDist X = [0,65]) && (P2BodyDist Y = [-50,0]) && EnemyNear,Vel Y > -1
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 210 || stateno = 240
trigger2 = movecontact

[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) 
trigger1 = (P2BodyDist X = [0,50]) && (P2BodyDist Y = [-50,0]) && EnemyNear,Vel Y > -1
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger2 = (stateno = [200,210]) || (stateno = [230,240]) || (stateno = [400,410]) || (stateno = [430,440])
trigger2 = movecontact

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A && enemynear,statetype != L
triggerall = (P2BodyDist X = [-5,25]) && (P2BodyDist Y = [-50,50+Vel Y * 2])
trigger1 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger1 = Random <= 900 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 661 && Time >= 5
trigger2 = var(4)

[State -1, AI Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A && enemynear,statetype != L
trigger1 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger1 = (P2BodyDist X = [-4,45]) && (P2BodyDist Y = [-50,50+Vel Y * 2])
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A && enemynear,statetype != L
trigger1 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger1 = (P2BodyDist X = [-25,55]) && (P2BodyDist Y = [-70,50+Vel Y * 2])
trigger1 = Random < 400 * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 610 || stateno = 640
trigger2 = movecontact

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A 
trigger1 = vel y > 0 || (var(4) && var(22) <= 1)
trigger1 = stateno = 610 || stateno = 650
trigger1 = movecontact

[State -1, AI Dive Kick]
type = ChangeState
value = 660
triggerall = var(22) < 2
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A 
trigger1 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger1 = Pos Y < -55
trigger1 = (P2BodyDist X = [5,50]) && (P2BodyDist Y >= 0)
trigger1 = Random <= 100 * (AIlevel ** 2 / 64.0)
trigger2 = StateNo = 620
trigger2 = MoveContact
trigger3 = stateno = 661
trigger3 = Time >= 10

[State -1, AI Inhale]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = AILevel && RoundState = 2 
triggerall = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) 
trigger1 = p2bodydist x = [20,80]
trigger1 = (enemynear,stateno = [5080,5100]) || (enemynear,stateno = 5110) && enemynear,time <= 3 || (enemynear,stateno = [120,159])
trigger1 = random <= 250 * (AIlevel ** 2 / 64.0)
trigger2 = PlayerIdExist(helper(33333333),var(3)) ;enemy projectile exists
trigger2 = PlayerID(helper(33333333),var(3)), pos y > -100 || PlayerID(helper(33333333),var(3)), vel y > 0 ; Avoid attempt to reflect projectiles that are to high. 100 = char height or reflector height, unless the enemy projectile is moving downwards.
trigger2 = PlayerID(helper(33333333),var(3)), vel x != 0 ; Avoid "Division by Zero" debug overflow
;distance / velocity = time = startup time + active 
trigger2 = (((PlayerID(helper(33333333),var(3)), pos x - pos x )* facing) - const(size.ground.front) - PlayerID(helper(33333333),var(3)),const(size.ground.front)) / (PlayerId(helper(33333333),var(3)),vel x) = [9,30] ; 5 = startup time, 22 = active ; [0,5] for last second reflect.
trigger2 = Random <= 150

[State -1, AI Cutter]
type = ChangeState
value = 1500
triggerall = !numhelper(1503)
triggerall = statetype != A
triggerall = AILevel && RoundState = 2
triggerall = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) 
trigger1 = p2bodydist x >= 120 && p2bodydist Y >= -100
trigger1 = random <= 300 * (AIlevel ** 2 / 64.0)
trigger1 = enemynear,numproj = 0 
trigger1 = enemynear,statetype != L


[State -1, AI Hammer Flip]
type = ChangeState
value = 1100
triggerall = AILevel && RoundState = 2 
triggerall = statetype != A && enemynear,statetype != L
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X <= 65 && (P2BodyDist Y = [-50,0])
trigger1 = random <= 100 * (AIlevel ** 2 / 64.0)
trigger1 = !inguarddist
trigger2 = stateno = 220 || stateno = 450
trigger2 = movecontact

[State -1, AI Wheel]
type = ChangeState
value = 1200
triggerall = AILevel && RoundState = 2 
triggerall = ctrl || stateno = 100 || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
triggerall = EnemyNear,MoveType != H
trigger1 = P2BodyDist X >= 125 && (Enemynear, Pos Y = [-25,0])
trigger1 = random <= 200 * (AIlevel ** 2 / 64.0)
trigger2 = enemy,stateno != [2000,5999]
trigger2 = enemy,hitdefattr = SCA,AP
trigger2 = P2BodyDist X > 10 && (P2BodyDist Y = [-25,0])
trigger2 = Random <= 500 * (AIlevel ** 2 / 64.0)
trigger3 = enemynear,vel x >= 5
trigger3 = enemynear,movetype = A
trigger3 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, AI Aerial Hammer Flip]
type = ChangeState
value = 1150
triggerall = AILevel && RoundState = 2 
triggerall = statetype = A && enemynear,statetype != L
trigger1 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger1 = (P2BodyDist X = [-40,40]) && (P2BodyDist Y = [-100-EnemyNear,Vel Y * 8 ,50])
trigger1 = random <= 250 * (AIlevel ** 2 / 64.0)
trigger1 = !var(4)
trigger2 = !var(4)
trigger2 = ctrl || (stateno = [110,115]) || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover) || stateno = 5040 || stateno = 5200 && time >= 15
trigger2 = Vel X > 4
trigger2 = (P2BodyDist X = [-70,70]) && (P2BodyDist Y = [-100-EnemyNear,Vel Y * 8,50])
trigger2 = random <= 250 * (AIlevel ** 2 / 64.0)
trigger3 = stateno = 650
trigger3 = vel y <= 0 || (!var(4) && var(22) = 2)
trigger3 = movecontact
trigger4 = stateno = 661
trigger4 = !var(4)
trigger4 = time >= 5
trigger4 = Random <= 200 * (AIlevel ** 2 / 64.0)

[State -1, AI Dynamite]
type = ChangeState
value = 2200
triggerall = AILevel && RoundState = 2 
triggerall = Power >= 2000 || (PalNo >= 10 && Power >= 1000)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X = [30,60]
trigger1 = Random <= 200 * (AIlevel ** 2 / 64.0) || (enemynear,statetype = L && (random < 800 * (AIlevel ** 2 / 64.0)))
trigger2 = var(1) && random <= 150 * (AIlevel ** 2 / 64.0)
trigger3 = stateno = 1100
trigger3 = movehit 
trigger3 = frontedgedist < 80

[State -1, AI Tornado]
type = ChangeState
value = 2050
triggerall = AILevel && RoundState = 2 
triggerall = ((PalNo < 10) && (Power >= 1500) && (Power <= 2999)) || ((PalNo >= 10) && (Power >= 750) && (Power <= 1499)) 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X = [-150,150]
trigger1 = Random <= 300 * (AIlevel ** 2 / 64.0)
trigger1 = enemynear,ctrl = 0
trigger1 = enemynear,statetype != L
trigger2 = stateno = [1201,1202]
trigger2 = movehit

[State -1, AI Superspicy Curry]
type = ChangeState
value = 2100
triggerall = AILevel && RoundState = 2 
triggerall = ((PalNo < 10) && (Power >= 1500) && (Power <= 2999)) || ((PalNo >= 10) && (Power >= 750) && (Power <= 1499)) 
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X >= 90
trigger1 = Random <= 150 * (AIlevel ** 2 / 64.0)
trigger1 = frontedgedist >= 50
trigger2 = var(1) && random <= 50 * (AIlevel ** 2 / 64.0)
trigger2 = frontedgedist >= 50
trigger3 = stateno = 1100
trigger3 = movehit 
trigger3 = frontedgedist >= 80

[State -1, AI Ribbon]
type = ChangeState
value = 3250
triggerall = AILevel && RoundState = 2 
triggerall = Power >= 3000 || (Power >= 1500 && palno >= 10)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= 400 * (AIlevel ** 2 / 64.0)
trigger1 = frontedgedist >= 50
trigger2 = var(1) && random < 50
trigger2 = frontedgedist >= 50
trigger3 = stateno = 1100
trigger3 = movehit 
trigger3 = frontedgedist >= 80
trigger3 = Random <= 500 * (AIlevel ** 2 / 64.0)

[State -1, AI Force Blast]
type = ChangeState
value = 2200
triggerall = AILevel && RoundState = 2 
triggerall = Power >= 1000 || (Power >= 500 && palno >= 10)
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = [120,149]) || ((stateno = 151 || stateno = 153) && hitover)
trigger1 = P2BodyDist X = [50,150]
trigger1 = Random <= 500 * (AIlevel ** 2 / 64.0) 
trigger2 = var(1) && random <= 200 * (AIlevel ** 2 / 64.0)

; Recover AI by K.Y. Shanxi

[State 5050, 4]
type = ChangeState
triggerall = StateNo = 5050
triggerall = AILevel > 2
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Random < 500 * (AIlevel ** 2 / 64.0)
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]
type = ChangeState
triggerall = StateNo = 5050
triggerall = AILevel > 2
triggerall = Vel Y > -3
triggerall = alive
triggerall = CanRecover
trigger1 = Random < 500 * (AIlevel ** 2 / 64.0)
value = 5210 ;HITFALL_AIRRECOVER

;===========================================================================
;---------------------------------------------------------------------------

[State -1, Tick Fix]
type=ctrlset
triggerall = !ctrl
trigger1 = (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2 = (stateno=[200,499]) && !animtime
trigger3 = (stateno = 684) && !animtime
trigger4 = ((stateno = [750,753]) || stateno = 800 || stateno = 840) && !animtime
trigger5 = (stateno = 1001 || stateno = 1100 || (stateno = [1203,1204]) || stateno = 1300 || stateno = 1401 || (stateno = 1502) || (stateno = 1506)) && !animtime
trigger6 = (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value = 1


;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
var(1) = 1

;--------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 4000
triggerall = command = "SuperJump"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
; HYPERS
;--------------------------------------------------------------------------


; RAGING PUFFBALL
[State -1, Raging Puffball]
type = ChangeState
value = 2600
triggerall = !AILevel
triggerall = PalNo >= 10
triggerall = life <= lifemax*0.5
triggerall = command = "Raging Puffball"
triggerall = statetype != A
triggerall = Power >= 3000
trigger1 = ctrl 
trigger2 = stateno = [200,299]
trigger3 = var(1)
trigger4 = stateno = [1000,1800]
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))


; Ribbon
[State -1, Ribbon]
type = ChangeState
value = 3250
triggerall = !AILevel
triggerall = command = "Ribbon"
triggerall = statetype != A
triggerall = (Power >= 3000 && PalNo < 10) || (Power >= 1500 && PalNo >= 10)
trigger1 = ctrl
trigger2 = var(1)
trigger3 = stateno = [1000,1800]
trigger3 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))


; Cook
[State -1, Cook]
type = ChangeState
value = 2300
triggerall = !AILevel
triggerall = command = "Cook"
triggerall = (Power >= 2000 && PalNo < 10) || (Power >= 1000 && PalNo >= 10)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = movecontact
trigger4 = stateno = [1000,1800]
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))


; Dynamite
[State -1, Dynamite]
type = ChangeState
value = 2200
triggerall = !AILevel
triggerall = command = "Kirby 64 Dynamite"
triggerall = (Power >= 2000 && PalNo < 10) || (Power >= 1000 && PalNo >= 10)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = movecontact
trigger4 = stateno = [1000,1800]
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))
 

; Superspicy Curry
[State -1, Superspicy Curry]
type = ChangeState
value = 2100
triggerall = !AILevel
triggerall = command = "Superspicy Curry"
triggerall = (Power >= 1500 && PalNo < 10) || (Power >= 750 && PalNo >= 10)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = movecontact
trigger4 = stateno = [1000,1800]
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))



; Tornado Spin
[State -1, Tornado Spin]
type = ChangeState
value = 2050
triggerall = !AILevel
triggerall = command = "Tornado Spin"
triggerall = (Power >= 1500 && PalNo < 10) || (Power >= 750 && PalNo >= 10)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = movecontact
trigger4 = stateno = [1000,1800]
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))


; Force Blast
[State -1, Force Blast]
type = ChangeState
value = 2400
triggerall = !AILevel
triggerall = command = "Force Blast"
triggerall = (Power >= 1000 && PalNo < 10) || (Power >= 500 && PalNo >= 10)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = movecontact
trigger4 = (stateno = [1000,1800])
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))

; Force Blast
[State -1, Force Blast]
type = ChangeState
value = 2500
triggerall = !AILevel
triggerall = PalNo >= 10
triggerall = command = "Force Blast"
triggerall = Power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
trigger2 = movecontact
trigger3 = (stateno = [1000,1800])
trigger3 = movecontact

; Flip Combo
[State -1, Flip Combo]
type = ChangeState
value = 2000
triggerall = !AILevel
triggerall = command = "MEGACOMBO"
triggerall = statetype != A
triggerall = (Power >= 1000 && PalNo < 10) || (Power >= 500 && PalNo >= 10)
trigger1 = ctrl
trigger2 = var(1)
trigger3 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,670])
trigger3 = movecontact
trigger4 = (stateno = [1000,1800])
trigger4 = movecontact || (helper,movecontact && ((stateno = [1300,1310]) || stateno = 1401 || stateno = 1502))

;---------------------------------------------------------------------------
;Inhale
[State -1, Inhale]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = !AILevel
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cutter
[State -1, Cutter]
type = ChangeState
value = 1500
triggerall = !numhelper(1503)
triggerall = statetype != A
triggerall = !AILevel
triggerall = command = "QCF_a"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact


;---------------------------------------------------------------------------
;Wheel
[State -1, Wheel]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "QCF_b"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = (stateno = [600,650])
trigger3 = movecontact
trigger4 = stateno = 661

;---------------------------------------------------------------------------
;Hammer Flip
[State -1, Hammer Flip]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

[State -1, Aerial Hammer Flip]
type = ChangeState
value = 1150
triggerall = !AILevel
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = (stateno = [600,650])
trigger2 = movecontact
trigger3 = stateno = 661

;---------------------------------------------------------------------------
;Bomb
[State -1, Bomb]
type = ChangeState
value = ifelse(statetype = a, 1310, 1300)
triggerall = numhelper(1301) < 1
triggerall = !AILevel
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = (stateno = [600,650])
trigger3 = movecontact
trigger4 = stateno = 661


;---------------------------------------------------------------------------
;Final Cutter
[State -1, Final Cutter]
type = ChangeState
value = ifelse(palno >= 10, 1600, 1400)
triggerall = !AILevel
triggerall = command = "QCF_z"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = (stateno = [600,650])
trigger3 = movecontact
trigger4 = stateno = 661

;--------------------------------------------------------------------------

[State -1, Shadow Kirby Jump Cancel]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
triggerall = PalNo >= 10
trigger1 = stateno = [200,450]
trigger1 = stateno != 420
trigger1 = movecontact

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = ctrl
triggerall = command = "FF"
triggerall = stateno != [760,761]
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = ctrl
triggerall = command = "BB"
triggerall = stateno != [760,761]
trigger1 = statetype = s

;---------------------------------------------------------------------------
;Air Dash Fwd
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = !AILevel
triggerall = StateNo != 110
triggerall = command = "FF"
triggerall = var(45) < 1
trigger1 = ctrl
trigger1 = statetype = a
trigger2 = PalNo >= 10
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Air Dash Back
[State -1, Run Back]
type = ChangeState
value = 111
triggerall = !AILevel
triggerall = StateNo != 111
triggerall = command = "BB"
triggerall = var(45) < 1
trigger1 = ctrl
trigger1 = statetype = a
trigger2 = PalNo >= 10
trigger2 = stateno = [600,650]
trigger2 = movecontact


;---------------------------------------------------------------------------
; Dodges
[State -1, Fwd Dodge]
type = ChangeState
value = 751
triggerall = PalNo < 10
triggerall = command = "holdfwd"
triggerall = (command = "x") && (command = "a")
triggerall = statetype != A
trigger1 = ctrl

[State -1, Back Dodge]
type = ChangeState
value = 752
triggerall = PalNo < 10
triggerall = command = "holdback"
triggerall = (command = "x") && (command = "a")
triggerall = statetype != A
trigger1 = ctrl

[State -1, Air Dodge]
type = ChangeState
value = 753
triggerall = PalNo < 10
triggerall = (command = "x") && (command = "a")
triggerall = statetype = A
triggerall = var(47) = 0
trigger1 = ctrl


;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "y") && (command = "b")
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Throw
[State -1, Air Throw]
type = ChangeState
value = 840
triggerall = !AILevel
triggerall = (command = "y") && (command = "b")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
;Taunts
[State -1, Side Taunt]
type = ChangeState
value = 196
triggerall = !AILevel
triggerall = command = "start" && (command = "holdfwd" || command = "holdback")
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 210 && movecontact 
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact 
trigger9 = stateno = 440 && movecontact


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact 

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact 
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact 
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact 
trigger5 = stateno = 240 && movecontact 
trigger6 = stateno = 400 && movecontact 
trigger7 = stateno = 410 && movecontact 
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact 


;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;--------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 200 && movecontact 
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = MoveContact
trigger3 = stateno = [230,240]
trigger3 = MoveContact
trigger4 = stateno = [400,410]
trigger4 = MoveContact
trigger5 = stateno = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 200 && movecontact 
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact 
trigger8 = stateno = 240 && movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = MoveContact
trigger3 = stateno = [230,240]
trigger3 = MoveContact
trigger4 = stateno = [400,410]
trigger4 = MoveContact
trigger5 = stateno = [430,440]
trigger5 = MoveContact


;--------------------------------------------------------------------------
[State -1, Dive Kick]
type = ChangeState
value = 660
triggerall = !AILevel
triggerall = var(22) < 2
triggerall = (command = "x" && command = "holddown") || (command = "a" && command = "holddown")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[State -1, Beam Blast]
type = ChangeState
value = 670
triggerall = !AILevel
triggerall = stateno != 670
triggerall = (command = "y" && command = "holddown") || (command = "b" && command = "holddown")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

[State -1, Stone]
type = ChangeState
value = 680
triggerall = !AILevel
triggerall = (command = "z" && command = "holddown") || (command = "c" && command = "holddown")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = (stateno = 610) || stateno = 640 || stateno = 650 ;jump_x or jump_a
trigger3 = movecontact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630  ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = (stateno = 610) || stateno = 640
trigger3 = movecontact
