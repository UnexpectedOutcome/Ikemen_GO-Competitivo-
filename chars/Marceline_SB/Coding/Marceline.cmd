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
;   For 6 button characters, use abc for Attacks and xyz for Attackes.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
;

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

;-| Palette Selector Motions |--------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1
buffer.time = 3

[Command]
name = "b2"
command = b
time = 1
buffer.time = 3

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1
buffer.time = 3

[Command]
name = "y2"
command = y
time = 1
buffer.time = 3

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
name = "hold_a2"
command = /a
time = 1

[Command]
name = "hold_b2"
command = /b
time = 1

[Command]
name = "hold_c2"
command = /c
time = 1

[Command]
name = "hold_x2"
command = /x
time = 1

[Command]
name = "hold_y2"
command = /y
time = 1

[Command]
name = "hold_z2"
command = /z
time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "hold_start2"
command = /s
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "SuperStereo"
command = ~D, DF,F, D, DF,F,a+b
time = 30

[Command]
name = "BatStampede"
command = ~D, DB,B, D, DB,B,b+c
time = 30

[Command]
name = "Monstrous-MorphArm"
command = ~D, DB,B, D, DB,B,a+b
time = 30

[Command]
name = "BatMonster"
command = ~D, DB,B, D, DF,F, a+b
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "ArmWhipEX"
command = ~D, DB, B, c
time = 15

[Command]
name = "ArmsAxeEX"
command = ~F,D,DF,c
time = 15

[Command]
name = "GuitarEX"
command = ~D, DF, F, c
time = 15

[Command]
name = "ArmWhip2"
command = ~D, DB, B, b
time = 15

[Command]
name = "ArmWhip"
command = ~D, DB, B, a
time = 15

[Command]
name = "Guitar1"
command = ~D, DF, F, a
time = 15

[Command]
name = "Guitar2"
command = ~D, DF, F, b
time = 15

[Command]
name = "ArmsAxe"
command = ~F,D,DF,a
time = 20

[Command]
name = "ArmsAxe2"
command = ~F,D,DF,b
time = 20

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
name = "bb"     ;Required (do not remove)
command = b, b
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = /a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
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

;-| Jump |---------------------------------------------------------

[Command]
name = "DU"
command = $D, $U 
time = 10

[command]
name = "up"
command = $U
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

;------------------------------------------------------------------------------
; AI

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "AI Activated = %d , Brutal AI Activated = %d , settings.cfg mode = %d , p2bodydist y = %d , Lvl 2 Fish = %d "
params = var(59),var(49),var(48),p2bodydist y,numexplod(2990)

[State -2, Brutal AI?]
type = VarSet
trigger1 = !var(48) && AILevel>5
v = 49
value = 1

[State -2, Brutal AI?]
type = VarSet
trigger1 = !var(48) && AILevel<=5
v = 49
value = 0

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
triggerall = Var(59) < 1; it is not on yet and
triggerall = RoundState=2 ; the fight has started and is not over yet and
trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
trigger1=var(59)>0 ; it is on and
trigger1=RoundState=3 &&(stateno = 195 || lose) ; the player taunted OR lost
trigger2=!IsHelper ; OR if we are a player, but
trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

;Thanks Inktrebuchet!
[state -3, AI Detect Projectile System]
type = helper
trigger1 = var(59) 
trigger1 = !numhelper(33333333)
name = "AI Detect Projectile System"
ID = 33333333
stateno = 33333333
postype = p1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(15) != 1
triggerall=RoundState=3 && stateno != 195 && prevstateno != 195
triggerall = win
trigger1=(statetype = s) && ctrl
triggerall = var(59)
value = 195

[State -1]
Type=Changestate
triggerall = var(15) != 1
triggerall=Inguarddist; Guard when in guard distance
triggerall=var(59); and the AI is on
triggerall=ctrl; and we have control
triggerall=!numexplod(2999) ; and it's a reasonable amount of time to be guarding
triggerall = stateno != [1030,1039]
trigger1 = ifelse(var(49),random%450>300,random%450>440)
value=120

[State -1]; The engine will still guard through pressing the back button, we need to disable that.
Type=Assertspecial
triggerall=StateNo!=[120,160]
trigger1=var(59)
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

[State -1]
type = ChangeState
value = 105
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall= StateNo!=[120,155]
triggerall = stateno !=[100,105]
triggerall = prevstateno !=[100,105]
triggerall = backedgebodydist > 25
triggerall= (statetype != a)
triggerall = ctrl
trigger1 = P2bodydist X>40 && P2bodydist X<130
trigger2 = P2bodydist X<=40 && random%50>40

[State -1]
type = ChangeState
value = 100
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = stateno !=[100,105]
triggerall = prevstateno !=[100,105]
trigger1= (statetype = s) && ctrl
trigger1 = P2bodydist X>120 && random%50>20
trigger1 = !p2movetype = A || numexplod(2999)

;-------------------------------------------------------------
;LAZILY IMPLEMENTED GUARD TIME SYSTEM INSPIRED BY THE_NONE

;Stop guarding and attack if shit aint happenin
[State 0, Explod]
type = Explod
triggerall = (stateno = [120,142]) && time > 28
trigger1 = random%80 = 0 && !numexplod(2999)
anim = 9998
ID = 2999
pos = -50,-50
postype = left
bindtime = -1
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(2999)
trigger1 = movetype = H
trigger2 = !inguarddist
id = 2999

;-------------------------------------------------------------
;ESPERIMENTAL FISHING SYSTEM

;Fish for a Lvl 2
[State 0, Explod]
type = Explod
triggerall = power >= 900
trigger1 = random%900 = 0 && !numexplod(2990)
anim = 9999
ID = 2990
pos = -50,-50
postype = left
bindtime = -1
removetime = 600+random%500

;-------------------------------------------------------------

[State -1, AI: Guard counter]
type = ChangeState
value = 900
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState < 3
triggerall = StateType != A
triggerall = Stateno = [150,151]
triggerall = abs(P2BodyDist X) <=30
triggerall = abs(P2BodyDist Y) <=30
triggerall = StateType != A
triggerall = var(59)
triggerall = EnemyNear, StateType != L
trigger1 = stateno = 150 && power >= 500
trigger2 = stateno = 151 && power >= 500

[State -1, AI: Throw]
type = ChangeState
value = 800
triggerall = var(15) != 1
triggerall = RoundState = 2 && Var(59)
triggerall = (StateType != S) && (MoveType != H)
triggerall = (P2StateType != S) && (P2life != 0)
triggerall = p2bodydist X <= 25
trigger1 = (enemynear,statetype = S && (enemynear,stateno = [120,160])) || (enemynear,statetype != A && enemynear,statetype != L && random%10 < 2)
trigger1 = ctrl
trigger1 = ifelse(var(49),1,random%450>425)

[State -1, AI: Throw]
type = ChangeState
value = 700
triggerall = var(15) != 1
triggerall = RoundState = 2 && Var(59)
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = p2bodydist X <= 25
trigger1 = (enemynear,statetype = S && (enemynear,stateno = [120,160])) || (enemynear,statetype != A && enemynear,statetype != L && random%10 < 2)
trigger1 = ctrl
trigger1 = ifelse(var(49),1,random%450>425)

[State -1 AI: Light/Strong/Crouch attack]
type = ChangeState
triggerall = var(15) != 1
value = ifelse(random%2 = 0,200,ifelse(random%2 = 0,220,400))
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = time > 2
trigger1= ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L
trigger1 = p2statetype != A
trigger1 = P2bodydist X<23

[State -1, AI: Light/Crouch attack]
type = ChangeState
triggerall = var(15) != 1
value = ifelse(random%2 = 0,200,400)
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = time > 2
trigger1= ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L
trigger1 = p2statetype != A
trigger1 = P2bodydist X<28
trigger1 = P2bodydist Y> -45

[State -1, AI: Light attack]
type = ChangeState
value = 200
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = time > 2
trigger1= ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L
trigger1 = p2statetype != A
trigger1 = P2bodydist X<32

[State -1, AI: Medium/Crouch attack]
type = ChangeState
value = ifelse(random%2 = 0,210,400)
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = p2statetype != A
trigger1 = (stateno = 200) && movehit
trigger2 = (stateno = 220) && movehit

[State -1, AI: Strong attack]
type = ChangeState
value = 220
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
trigger1 = (stateno = 210) && movehit

[State -1, AI: Strong/Medium crouch attack]
type = ChangeState
value = ifelse(random%2 = 0,420,410)
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = (stateno = 400) && movehit

[State -1, AI: Medium attack]
type = ChangeState
value = 410
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
trigger1 = (stateno = 400) && movehit

[State -1, AI: Strong attack]
type = ChangeState
value = 420
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = P2bodydist X<33
trigger1 = (stateno = 410) && movehit
trigger1 = p2statetype != A
trigger2 = (stateno = 410) && movehit
trigger2 = p2statetype = A
trigger2 = P2bodydist y>-70
trigger3 = P2bodydist y>-60
trigger3 = ctrl && numexplod(2999)

[State -1, AI: Crouch strong/medium]
type = ChangeState
value = ifelse(random%2 = 0,420,410)
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState = 2
triggerall = var(59)
trigger1 = (stateno = 420) && movehit

[state -1, AI: Air light attack]
type = changestate
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
triggerall = RoundState = 2
triggerall = time > 12
triggerall = var(59)
trigger1 = ctrl
trigger1 = P2bodydist Y > -45 && P2bodydist Y < 42
trigger1 = P2bodydist X<26
value = 600

[state -1, AI: Air ground smash]
type = changestate
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
triggerall = RoundState = 2
triggerall = time > 12
triggerall = var(59)
triggerall = P2bodydist X < 65
trigger1 = P2bodydist Y > -45 && P2bodydist Y < 55
trigger1 = ctrl || ((stateno = 600) && movehit)
value = 630

[state -1, AI: Air strong attack]
type = changestate
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = statetype = A
triggerall = RoundState = 2
triggerall = var(13) = 0
triggerall = P2bodydist Y > -55 && P2bodydist Y < 80
triggerall = var(59)
trigger1 = (stateno = 600) && movehit
trigger2 = (stateno = 610) && movehit
value = 620

[State -1, Get up attack]
type = changestate
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%950>925)
triggerall = statetype != A
triggerall = statetype != S
triggerall = statetype != C
triggerall = statetype = L
triggerall = RoundState = 2
triggerall = P2bodydist X < 60
triggerall = P2bodydist Y < 60
triggerall = power >= 500
triggerall = time > 3
triggerall = var(59)
trigger1 = ctrl
value = 850

[State -1, AI: Bat Monster]
type = ChangeState
value = 3040
triggerall = var(15) != 1
triggerall = TeamMode != Simul ;Cus' Simul mode is broken with these sort of moves
triggerall = EnemyNear,TeamMode != Simul
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 3000
triggerall = life < 300
triggerall = statetype = S
triggerall = P2bodydist X > 50
triggerall = p2movetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3020
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 2000
triggerall = statetype = S
triggerall = P2bodydist X < 30
triggerall = p2movetype != A
trigger1 = !NumHelper(3021)
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3010
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 1000
triggerall = !numexplod(2990)
triggerall = statetype = S
triggerall = P2bodydist X < 50
triggerall = p2movetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3000
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = power >= 1000
triggerall = !numexplod(2990)
triggerall = statetype != A
triggerall = p2statetype != L && p2statetype != C
triggerall = P2bodydist X > 30
triggerall = P2bodydist Y > -90
triggerall = p2statetype != A || P2bodydist Y < -30
triggerall = !NumHelper(3001) && !NumHelper(3002)
triggerall = NumHelper(3001) && !NumHelper(3002)
trigger1 = ctrl

[State -1]
type = ChangeState
value = 2000
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = power >= 500
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -55 || enemynear, pos Y < -70
triggerall = P2bodydist X< 200 && random < 10
triggerall = P2bodydist Y< -65
trigger1 = !NumHelper(1001) && !NumHelper(1011) && !NumHelper(1012) && !NumHelper(2001) && !NumHelper(2002) && !NumHelper(2003)
trigger2 = NumHelper(1001) && !NumHelper(1011) && !NumHelper(1012) && NumHelper(2001) && !NumHelper(2002) && !NumHelper(2003)
trigger2 = helper(1001), anim = 1002 && helper(1001),time > 45 && helper(1001), p2bodydist x > 8
trigger3 = stateno = 200 || stateno = 210 || stateno = 220
trigger3 = movecontact
trigger4 = stateno = 400 || stateno = 410 || stateno = 420
trigger4 = movecontact

[State -1]
type = ChangeState
value = 2010
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = power >= 500
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -55 || enemynear, pos Y < -70
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = statetype != A
trigger1 = P2bodydist X< 40
trigger1 = P2bodydist Y< -70 && random < 100
trigger1 = ctrl
trigger1 = stateno = 200 || stateno = 210 || stateno = 220
trigger1 = movecontact
trigger2 = stateno = 400 || stateno = 410 || stateno = 420
trigger2 = movecontact
trigger4 = statetype = A
trigger4 = time > 10
trigger4 = P2bodydist Y < -30 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -60
trigger4 = P2bodydist X< 20
trigger4 = ctrl
trigger5 = enemynear, movetype = H && enemynear, vel y > 3
trigger5 = p2bodydist x < 10
trigger5 = ctrl
Trigger6 = ctrl && P2bodydist X< 50
trigger6 = p2statetype != A && enemynear, const(size.head.pos.y) < -50 && random%30 > 26
trigger7 = ctrl && p2bodydist x < 50 && p2dist y < -120 && random < 20

[State -1]
type = ChangeState
value = 2020
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = power >= 500
triggerall = statetype != A
trigger1 = P2bodydist Y < -60
trigger1 = P2bodydist X < 50 && random < 20
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = movecontact
trigger4 = enemynear, movetype = H && enemynear, vel y > 3
trigger4 = p2bodydist x < 50
Trigger5 = ctrl && P2bodydist X< 100
trigger5 = p2statetype != A && enemynear, const(size.head.pos.y) < -60 && random < 20

[State -1]
type = ChangeState
value = 1000
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -55 || enemynear, pos Y < -70
triggerall = P2bodydist X< 200 && random < 150
triggerall = P2bodydist Y< -65
trigger1 = !NumHelper(1001) && !NumHelper(1002) && !NumHelper(1013) && !NumHelper(2001) && !NumHelper(2002) && !NumHelper(2003)
trigger2 = NumHelper(1001) && !NumHelper(1002) && !NumHelper(1013) && NumHelper(2001) && !NumHelper(2002) && !NumHelper(2003)
trigger2 = helper(1001), anim = 1002 && helper(1001),time > 45 && helper(1001), p2bodydist x > 8
trigger3 = stateno = 200 || stateno = 210 || stateno = 220
trigger3 = movecontact
trigger4 = stateno = 400 || stateno = 410 || stateno = 420
trigger4 = movecontact

[State -1]
type = ChangeState
value = 1010
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -55 || enemynear, pos Y < -70
triggerall = P2bodydist X< 210 && random < 200
triggerall = P2bodydist Y< -65
trigger1 = !NumHelper(1011) && !NumHelper(1012) && !NumHelper(1014)
trigger2 = NumHelper(1011) && !NumHelper(1012) && !NumHelper(1014)
trigger2 = helper(1011), anim = 1002 && helper(1011),time > 45 && helper(1011), p2bodydist x > 8
trigger3 = stateno = 200 || stateno = 210 || stateno = 220
trigger3 = movecontact
trigger4 = stateno = 400 || stateno = 410 || stateno = 420
trigger4 = movecontact

[State -1]
type = ChangeState
value = 1020
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -55 || enemynear, pos Y < -70
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = statetype != A
trigger1 = P2bodydist X< 40
trigger1 = P2bodydist Y< -70 && random < 150
trigger1 = ctrl
trigger1 = stateno = 200 || stateno = 210 || stateno = 220
trigger1 = movecontact
trigger2 = stateno = 400 || stateno = 410 || stateno = 420
trigger2 = movecontact
trigger4 = statetype = A
trigger4 = time > 10
trigger4 = P2bodydist Y < -30 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -60
trigger4 = P2bodydist X< 20
trigger4 = ctrl
trigger5 = enemynear, movetype = H && enemynear, vel y > 3
trigger5 = p2bodydist x < 10
trigger5 = ctrl
Trigger6 = ctrl && P2bodydist X< 50
trigger6 = p2statetype != A && enemynear, const(size.head.pos.y) < -50 && random%30 > 26
trigger7 = ctrl && p2bodydist x < 50 && p2dist y < -120 && random < 250

[State -1]
type = ChangeState
value = 1025
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%450>425)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
triggerall = p2statetype = S && enemynear, const(size.head.pos.y) < -65 || enemynear, pos Y < -90
triggerall = !NumHelper(1022)
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = statetype != A
trigger1 = P2bodydist X< 40
trigger1 = P2bodydist Y< -100 && random < 200
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = movecontact
trigger4 = statetype = A
trigger4 = time > 10
trigger4 = P2bodydist Y < -30 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -60
trigger4 = P2bodydist X< 20
trigger4 = ctrl
trigger5 = enemynear, movetype = H && enemynear, vel y > 3
trigger5 = p2bodydist x < 10
trigger5 = ctrl
Trigger6 = ctrl && P2bodydist X< 50
trigger6 = p2statetype != A && enemynear, const(size.head.pos.y) < -60 && random%50 > 46
trigger7 = ctrl && p2bodydist x < 50 && p2dist y < -120 && random < 250

[State -1]
type = ChangeState
value = 1030
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = P2bodydist X < 60 && random < 200
trigger1 = P2bodydist Y< -80
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = movecontact
trigger4 = enemynear, movetype = H && enemynear, vel y > 3
trigger4 = p2bodydist x < 10
trigger5 = P2bodydist Y < -30 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -50
trigger5 = P2bodydist X< 20
trigger6 = enemynear, movetype = H && enemynear, vel y > 3
trigger6 = p2bodydist x < 10
trigger6 = ctrl
Trigger7 = ctrl && P2bodydist X< 50
trigger7 = p2statetype != A && enemynear, const(size.head.pos.y) < -50 && random%10 > 26

[State -1]
type = ChangeState
value = 1035
triggerall = var(15) != 1
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = P2bodydist X < 60 && random < 250
trigger1 = P2bodydist Y< -80
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = movecontact
trigger4 = enemynear, movetype = H && enemynear, vel y > 3
trigger4 = p2bodydist x < 10
trigger5 = P2bodydist Y < -30 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -50
trigger5 = P2bodydist X< 20
trigger6 = enemynear, movetype = H && enemynear, vel y > 3
trigger6 = p2bodydist x < 10
trigger6 = ctrl
Trigger7 = ctrl && P2bodydist X< 50
trigger7 = p2statetype != A && enemynear, const(size.head.pos.y) < -50 && random%10 > 26

;---------------------------------------------------------------------------
[State -1, AI: Energy ball throwing]
type = ChangeState
value = 10120
triggerall = var(15) != 0
triggerall = ifelse(var(49),1,random%430>405)
triggerall = RoundState=2
triggerall = var(59)
triggerall = ctrl
triggerall = statetype != A
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = P2bodydist X < 150 && random < 150
trigger1 = P2bodydist Y< -80
trigger1 = ctrl
trigger2 = enemynear, movetype = H && enemynear, vel y > 3
trigger2 = p2bodydist x < 30
trigger3 = P2bodydist Y < -50 && P2bodydist Y < 45 && enemynear, const(size.head.pos.y) < -50
trigger3 = P2bodydist X < 20
trigger4 = enemynear, movetype = H && enemynear, vel y > 3
trigger4 = p2bodydist x < 10
trigger4 = ctrl
Trigger5 = ctrl && P2bodydist X< 50
trigger5 = p2statetype != A && enemynear, const(size.head.pos.y) < -50 && random%10 > 26

;---------------------------------------------------------------------------
[State -1, AI: Rock Smash]
type = ChangeState
value = 10110
triggerall = var(15) != 0
triggerall = ifelse(var(49),1,random%850>825)
triggerall = RoundState=2
triggerall = var(59)
triggerall = p2statetype != L
triggerall = P2bodydist X< 100
triggerall = statetype != A
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = P2bodydist X> 30
trigger1 = ctrl
trigger2 = enemynear, movetype = H && enemynear, vel y > 3 && var(14)
trigger2 = p2bodydist x > 10
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, AI: Powerful Slash]
type = ChangeState
value = 10100
triggerall = var(15) != 0
triggerall = ifelse(var(49),1,random%850>825)
triggerall = RoundState=2
triggerall = var(59)
triggerall = p2statetype != L
triggerall = P2bodydist X< 80
triggerall = p2statetype = A
triggerall = P2bodydist Y< 90
triggerall = statetype != A
trigger1 = (p2statetype = A && p2movetype != H)
trigger1 = P2bodydist X> 20
trigger1 = ctrl
trigger2 = enemynear, movetype = H && enemynear, vel y > 3 && var(14)
trigger2 = p2bodydist x > 10
trigger2 = ctrl

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
ignorehitpause = 1

[State -1, Combo condition Check]
type = VarSet
trigger1 = movetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,240]) || (stateno = [400,420]) || (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 100 || stateno = 105
var(1) = 1

;---------------------------------------------------------------------------
;Energy Ball Throwing
[State -1, Energy Ball Throwing]
type = ChangeState
value = 10120
triggerall = var(15) = 1
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = var(16) = 1

;---------------------------------------------------------------------------
;Rock Smash
[State -1, Rock Smash]
type = ChangeState
value = 10110
triggerall = var(15) = 1
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = var(16) = 1

;---------------------------------------------------------------------------
;Powerful Slash
[State -1, Powerful Slash]
type = ChangeState
value = 10100
triggerall = var(15) = 1
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = var(16) = 1

;------------------------------------------------------------------------------
;Bat Monster
[State -1, Bat Monster]
type = ChangeState
value = 3040
triggerall = var(15) != 1
triggerall = command = "BatMonster"
triggerall = power >= 3000
triggerall = life < 300
triggerall = TeamMode != Simul ;Cus' Simul mode is broken with these sort of moves
triggerall = enemyNear,TeamMode != Simul
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BatStampede
[State -1, BatStampede]
type = ChangeState
value = 3020
triggerall = var(15) != 1
triggerall = command = "BatStampede"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

;---------------------------------------------------------------------------
;Monstrous-Morph Arm
[State -1, Monstrous-Morph Arm]
type = ChangeState
value = 3010
triggerall = var(15) != 1
triggerall = command = "Monstrous-MorphArm"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

;---------------------------------------------------------------------------
;Super Stereo Sonic Guitar
[State -1, Super Stereo Sonic Guitar]
type = ChangeState
value = 3000
triggerall = var(15) != 1
triggerall = command = "SuperStereo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

;---------------------------------------------------------------------------
;Arm Whip EX
[State -1, Arm Whip EX]
type = ChangeState
value = 2020
triggerall = var(15) != 1
triggerall = command = "ArmWhipEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;ArmsAxe
[State -1, ArmsAxe]
type = ChangeState
value = 2010
triggerall = var(15) != 1
triggerall = command = "ArmsAxeEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;Sonic Stereo Guitar EX
[State -1, Sonic Stereo Guitar EX]
type = ChangeState
value = 2000
triggerall = var(15) != 1
triggerall = numprojid(2002) = 0
triggerall = NumHelper(2001)+NumHelper(2002) = 0
triggerall = command = "GuitarEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;Arm Whip
[State -1, Arm Whip]
type = ChangeState
value = 1035
triggerall = var(15) != 1
triggerall = command = "ArmWhip2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;Arm Whip
[State -1, Arm Whip]
type = ChangeState
value = 1030
triggerall = var(15) != 1
triggerall = command = "ArmWhip"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;ArmsAxe
[State -1, ArmsAxe]
type = ChangeState
value = 1025
triggerall = var(15) != 1
triggerall = command = "ArmsAxe2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;ArmsAxe
[State -1, ArmsAxe]
type = ChangeState
value = 1020
triggerall = var(15) != 1
triggerall = command = "ArmsAxe"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;Sonic Stereo Guitar
[State -1, Sonic Stereo Guitar]
type = ChangeState
value = 1010
triggerall = var(15) != 1
triggerall = numprojid(1012) = 0
triggerall = NumHelper(1011)+NumHelper(1012) = 0
triggerall = command = "Guitar2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;---------------------------------------------------------------------------
;Sonic Stereo Guitar
[State -1, Sonic Stereo Guitar]
type = ChangeState
value = 1000
triggerall = var(15) != 1
triggerall = numprojid(1002) = 0
triggerall = NumHelper(1001)+NumHelper(1002) = 0
triggerall = command = "Guitar1"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact
trigger1 = var(1)

;===========================================================================

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = var(15) != 1
triggerall = StateType != A
triggerall = AILevel = 0
triggerall = command = "up"
trigger1 = var(8) = 1

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 45
triggerall = var(15) != 1
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = Time > 13
triggerall = Var(6) = 0 && var(7) = 0
trigger1 = command = "up"

[State -1, Jump cancel from Normals]
type = ChangeState
value = 45
triggerall = var(15) != 1
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = statetype != A && ctrl
trigger1 = StateNo = 200 && MoveHit
trigger2 = StateNo = 210 && MoveHit
trigger3 = StateNo = 220 && MoveHit
trigger4 = StateNo = 400 && MoveHit
trigger5 = StateNo = 410 && MoveHit
trigger6 = StateNo = 420 && MoveHit

;---------------------------------------------------------------------------
[State -1, Air Dash Cancel]
type = ChangeState
value = 110
triggerall = var(15) != 1
triggerall = AILevel = 0
triggerall = StateNo = [600,630]
triggerall = Var(6) = 0 && Var(7) = 0
triggerall = Pos Y <= -60
triggerall = command = "FF"
trigger1 = var(8) = 1

;--------------------------------------------------------------------------
[State -1, Air Dash Forward]
type = ChangeState
triggerall = var(15) != 1
value = Cond(command = "FF", 110, 115)
triggerall = !AIlevel
triggerall = !ishelper
triggerall = AILevel = 0
triggerall = StateNo = 50
triggerall = Pos Y <= -60
triggerall = command = "FF" || command = "BB"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dodge idle
[State -1, Dodge idle]
type = ChangeState
value = 300
triggerall = var(15) != 1
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = StateType != A
trigger1 = Statetype = S || Statetype = C
trigger1 = ctrl
trigger4 = stateno = 101

;---------------------------------------------------------------------------
; Dodge forward
[State -1, Dodge fwd]
type = ChangeState
value = 310
triggerall = var(15) != 1
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = StateType != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
; Dodge backwards
[State -1, Dodge back]
type = ChangeState
value = 320
triggerall = var(15) != 1
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = StateType != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
; Dodge air
[State -1, Dodge air]
type = ChangeState
value = 340
triggerall = var(15) != 1
triggerall = command = "y"
triggerall = StateType != S
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(15) != 1
triggerall = !AIlevel
triggerall = !ishelper
triggerall = command = "FF"
triggerall = stateno!=[100,101]
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(15) != 1
triggerall = !AIlevel
triggerall = !ishelper
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Super Jump]
type = ChangeState
value = 54
triggerall = var(15) != 1
triggerall = !AIlevel
triggerall = command = "DU"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 200 && MoveHit
trigger3 = StateNo = 210 && MoveHit
trigger4 = StateNo = 220 && MoveHit
trigger5 = StateNo = 400 && MoveHit
trigger6 = StateNo = 410 && MoveHit
trigger7 = StateNo = 420 && MoveHit

;---------------------------------------------------------------------------
;Blood sucking bite
[State -1, Blood sucking bite]
type = ChangeState
value = 700
triggerall = var(15) != 1
triggerall = command = "z"
triggerall = StateType != A
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = stateno != 100

;---------------------------------------------------------------------------
;Air Suplex
[State -1, Air Suplex]
type = ChangeState
value = 800
triggerall = var(15) != 1
triggerall = command = "z"
triggerall = StateType = A
triggerall = ctrl
trigger1 = stateno != 100

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Attack
;立ち弱キック
[State -1, Stand Light Attack]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 6
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;---------------------------------------------------------------------------
;Stand Strong Attack
;立ち強パンチ
[State -1, Stand Medium Attack]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = stateno = 200
Trigger2 = movecontact
Trigger3 = stateno = 400
Trigger3 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Attack
;立ち強キック
[State -1, Standing Strong Attack]
type = ChangeState
value = 220
triggerall = Command = "c"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = ctrl
Trigger2 = stateno = 200
Trigger2 = movecontact
Trigger3 = stateno = 400
Trigger3 = movecontact
Trigger4 = stateno = 210
Trigger4 = movecontact
Trigger5 = stateno = 410
Trigger5 = movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(15) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Attack
;しゃがみ弱キック
[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerall = var(15) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateType != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 6
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Attack
;しゃがみ強パンチ
[State -1, Crouching Strong Attack]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = StateType != A
trigger1 = statetype = C
trigger1 = ctrl
Trigger2 = stateno = 200
Trigger2 = movecontact
Trigger3 = stateno = 400
Trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Attack
;しゃがみ強キック
[State -1, Crouching Strong Attack]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = StateType != A
trigger1 = statetype = C
trigger1 = ctrl
Trigger2 = stateno = 200
Trigger2 = movecontact
Trigger3 = stateno = 400
Trigger3 = movecontact
Trigger4 = stateno = 210
Trigger4 = movecontact
Trigger5 = stateno = 410
Trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump Light Attack
[State -1, Jump Light Attack]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 15
trigger3 = stateno = 600
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Attack
[State -1, Jump Medium Attack]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Attack
;空中強キック
[State -1, Jump Strong Attack]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Air Ground Smash
[State -1, Air Ground Smash]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = StateType != C
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 650
trigger2 = movecontact

;---------------------------------------------------------------------------
;Guard Counter
[State -1, Guard Counter]
type = ChangeState
value = 900
triggerall = var(15) != 1
triggerall = command = "c" && command = "b" && command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1 = Statetype = S
trigger1 = stateno = 150 && power >= 500
trigger2 = stateno = 151 && power >= 500
