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

;-------------------------------------------------[AI Activators]----------

[Command]
name = "AI_1"
command = D,D,D,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "AI_16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "AI_17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "AI_18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "AI_19"
command = D,D,D,F,F,F,a+b,c,x,y,z
;

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "splatcharger"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "suctionbomb"   ;Same name as above
command = ~D, DF, F, D, DF, F, a+b
time = 20

[Command]
name = "killerwail"
command = ~D, DB, B, D, DB, B, x+y
time = 20

[Command]
name = "splashdown"   ;Same name as above
command = ~D, DB, B, D, DB, B, a+b
time = 20

[Command]
name = "FINISHER"
command = ~D, D, z
time = 30

;-| Special Motions |------------------------------------------------------

[command]
name = "splatbomb"
command = ~D,DB,B,a
time = 15

[command]
name = "splatbombEX"
command = ~D,DB,B,a+b

[command]
name = "splatbomb2"
command = ~D,DB,B,b
time = 15

[command]
name = "splatjumpEX"
command = ~D,DB,B,x+y
time = 15

[command]
name = "splatjump2"
command = ~D,DB,B,y
time = 15

[command]
name = "splatjump"
command = ~D,DB,B,x
time = 15

[Command]
name = "splatroller"
command = ~D,DF,F,a
time = 15

[Command]
name = "splatroller2"
command = ~D,DF,F,b
time = 15

[Command]
name = "splatrollerEX"
command = ~D,DF,F,a+b
time = 15

[Command]
name = "splattershot"
command = ~D,DF,F,x
time = 15

[Command]
name = "splattershot2"
command = ~D,DF,F,y
time = 15

[Command]
name = "splattershotEX"
command = ~D,DF,F,x+y
time = 15

[Command]
name = "GuardCancel"
command = c+z
time = 10
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

;;---------------------------------------------------------------------------
[State -1 ,ALL AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
trigger16 = command = "AI_16"
trigger17 = command = "AI_17"
trigger18 = command = "AI_18"
trigger19 = command = "AI_19"
v = 59
value = 1

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



[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*500)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*500)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI]
type = VarSet
triggerall = !var(58)
triggerall = RoundState = 2
trigger1 = Ailevel && ctrl
trigger2 = Var(59)
var(58) = 10

[State -1, AI powercharge]
type=changestate
value=930
triggerall = !NumHelper(3301)
triggerall = !NumHelper(3303)
triggerall = !NumHelper(3304)
triggerall = var(59) > 0
trigger1=roundstate=2&&statetype!=A&&power<3000&&ctrl
trigger1=random<50&&!inguarddist&&p2bodydist x>=100

;Combo #1
[State -1,AI Combo Attack]
type = ChangeState
value = 10009
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && statetype = S
trigger1 = (P2BodyDist X = [0,500]) && (Random  = [0,100])
trigger1 = p2statetype != C


;---------------------------------------------
[State -1, AI Stand Guarding]
type = ChangeState
value = 130
triggerall = !var(20)
triggerall = stateno != 130
triggerall = fvar(5) = 1
triggerall = !var(11)
triggerall = !var(24)
triggerall = var(59) != 0 && roundstate = 2
triggerall = enemy, stateno = [3000,4999]
triggerall = P2Movetype = A
triggerall = p2statetype != C
triggerall = p2bodydist X <= 100
trigger1 = statetype != A && ctrl
;---------------------------------------------
[State -1, AI Crouch Guarding]
type = ChangeState
value = 131
triggerall = !var(20)
triggerall = stateno != 131
triggerall = enemy, stateno = [3000,4999]
triggerall = fvar(5) = 1
triggerall = !var(11)
triggerall = !var(24)
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2statetype = C
triggerall = p2bodydist X <= 100
trigger1 = statetype != A && ctrl
;---------------------------------------------
[State -1, AI Air Guarding]
type = ChangeState
value = 132
triggerall = !var(20)
triggerall = stateno != 132
triggerall = enemy, stateno = [3000,4999]
triggerall = fvar(5) = 1
triggerall = !var(11)
triggerall = !var(24)
triggerall = var(59) != 0 && roundstate = 2
triggerall = P2Movetype = A
triggerall = p2bodydist X <= 100
trigger1 = statetype = A && ctrl
;-------------------------------------------------------------------------
[State -1, AI Guard Counter Attack]
type = ChangeState
value = 750
triggerall = var(59) > 0 && roundstate = 2
triggerall = enemy, stateno = [3000,4999]
triggerall = statetype != A
triggerall = stateno = [150,156]
triggerall = power >= 1000
triggerall = p2bodydist x <= 57
triggerall = p2bodydist Y >= -68
Trigger1 = Random<=var(59)*5.3
;===========================================================================
[State -1, Guard Counter Attack]
type = ChangeState
value = 750
triggerall = !var(59)
triggerall = command = "GuardCancel"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [150,153] 

[State -1, Parry]
type=hitoverride
triggerall = var(59)<1&&roundstate=2
triggerall=command="GuardCancel"
triggerall = power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
attr=SA,AA,AP
stateno=750
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, AI Stand Combo]
type = ChangeState
value = 750
triggerall = enemy, stateno = [3000,4999]
triggerall=alive
triggerall = var(59) = 1
triggerall=power>=1000
triggerall = p2bodydist X = [-250,250]
trigger1 = statetype != A
trigger1=stateno=[5000,5011]

[State -1, AI Stand Combo]
type = ChangeState
value = 750
triggerall = enemy, stateno = [3000,4999]
triggerall=alive
triggerall = var(59) = 1
triggerall=power>=1000
triggerall = p2bodydist X = [-250,250]
trigger1 = statetype != A
trigger1=stateno=[150,153]

;---------------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist && enemynear, stateno != 6003
triggerall = enemynear, statetype != L
triggerall = enemynear, movetype != A
triggerall = (enemynear, stateno != [1025,1028])
triggerall = ctrl
triggerall = enemynear, numproj <= 0
triggerall = random < var(59) * 60
trigger1 = p2bodydist X = [120,160]
value = ifelse(random<=500,41,42)


[State -1, AI running]
type = ChangeState
triggerall = var(59) && roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist || var(12)
triggerall = enemynear, movetype != A || var(12)
triggerall = stateno != [100,106]
trigger1 = enemynear, statetype != L || var(12)
triggerall = ctrl
trigger1 = p2bodydist X >= 150
trigger2 = enemynear, movetype = H
trigger2 = enemynear, statetype = A
trigger2 = p2bodydist X >= 70
trigger2 = enemynear, statetype != L
trigger3 = var(12) && (enemynear, stateno != [1025,12028]) || enemynear, stateno = 6003
trigger3 = p2dist X > 5
value = 100


[State -1, AI walking]
type = ChangeState
triggerall = var(59) >= 4 && roundstate = 2
triggerall = statetype != A
triggerall = (stateno != [100,106])
triggerall = stateno != [120,155]
triggerall = stateno != 21
trigger1 = ctrl
value = 21
ctrl = 1

;---------------------------------------------------------------------------
[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 999

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

;-------------------------------------------------------------------

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------
;==<STANDING NORMALS>==
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 450 
trigger2 = stateno != 252 && stateno != [201,203];Except for sweep kick
trigger2 = movecontact
var(9) = 1

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(6) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,619]) || (stateno = [630,699])
trigger2 = stateno != 620 ;Except for sweep kick
trigger2 = movecontact
var(6) = 1
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

[state -1]
type = changestate
TriggerAll=RoundState=3 && stateno != 195 && prevstateno != 195
triggerall = win
Trigger1=(statetype = s) && ctrl
triggerall = var(59)
value = 195


; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "c" 
trigger2 = stateno = [200,250]
trigger2 = movecontact
trigger3 = stateno = [100000,100004]

[State -1, AI throw them]
type = ChangeState
value = 800
triggerall = var(59)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != L
triggerall = enemynear,stateno != [1120,1122]
triggerall = enemynear,stateno != 5120
triggerall = enemynear,prevstateno != 5120
trigger1 = p2bodydist x <= 24
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = random<var(50)*0.5
trigger2 = enemynear, stateno >= 120 && enemynear, stateno <= 155 && p2bodydist x <= 24
trigger2 = p2statetype != A
trigger2 = p2movetype != H
trigger2 = random<var(50)*1.0
trigger2 = AILevel >= 5

;===========================================================================
[State -1]
type = ChangeState
value = 6000
triggerall = RoundState = 2
triggerall = command = "FINISHER"
triggerall = power  >= 3000
triggerall =  p2life < 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 230
trigger6 = statetype = C
trigger6 = ctrl = 1
trigger7 = movecontact = 1
trigger7 = stateno = 400
trigger8 = movecontact = 1
trigger8 = stateno = 410
trigger9 = movecontact = 1
trigger9 = stateno = 420
trigger10 = movecontact = 1
trigger10 = stateno = 430
trigger11 = movecontact = 1
trigger11 = stateno = 1020
trigger12 = movecontact = 1
trigger12 = stateno = 1030

;---------------------------------------------------------------------------
;OHKO

[State -1, AI_4]
type = ChangeState
value = 6000
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall =  p2life < 500
triggerall = statetype != A
triggerall = power >= 3000
trigger1 =(stateno = 200 || stateno = 410 || stateno = 210) && movehit
trigger2 = ctrl || stateno = 100 || (stateno = [120,141]) || stateno = 5120 && animtime = 0 || stateno = 52000 && animtime = 0
trigger2 = p2movetype = A
trigger2 = p2bodydist X = [-5,35]
trigger3 = ctrl || stateno = 100
trigger3 = p2bodydist X = [-5,35]
trigger3 = random < 100


; Splashdown
[State -1]
type = ChangeState
value = 3300
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = RoundState = 2
triggerall = command = "splashdown"
triggerall = power  >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 230
trigger5 = movecontact = 1
trigger5 = stateno = 240
trigger6 = statetype = C
trigger6 = ctrl = 1
trigger7 = movecontact = 1
trigger7 = stateno = 400
trigger8 = movecontact = 1
trigger8 = stateno = 410
trigger9 = movecontact = 1
trigger9 = stateno = 430
trigger10 = movecontact = 1
trigger10 = stateno = 440
trigger11 = movecontact = 1
trigger12 = statetype = A
trigger12 = ctrl = 1
trigger13 = movecontact = 1
trigger13 = stateno = 600
trigger14 = movecontact = 1
trigger14 = stateno = 610
trigger15 = movecontact = 1
trigger15 = stateno = 630
trigger16 = movecontact = 1
trigger16 = stateno = 640
trigger17 = ctrl || stateno=1200 || stateno=121086 || (stateno=[600,650]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 2000) && (random = [60,115]) && (statetype != A)
value = 3300
;---------------------------------------------------------------------------
; Jackhammer
[State -1, Jackhammer]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = Command = "killerwail"
triggerall = power>=2000
trigger1 = StateType != A
trigger1 = Ctrl
value = 3200
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0) && (p2stateno != [1242,1243])
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 2000) && (random = [60,115]) && (statetype != A)
value = 3200

;---------------------------------------------------------------------------
; Trigger Explosion
[State -1, Trigger Explosion]
type = ChangeState
value = 3100
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = Command = "suctionbomb"
triggerall = power>=1000
trigger1 = StateType != A
trigger1 = Ctrl

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0) && (p2stateno != [1025,1028])
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
trigger1 = (p2bodydist X = [0,200]) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype != A)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Statetype != A) && (p2statetype != L) && (p2stateno != 5120 && p2stateno != 5150) && (p2stateno != [5200,5210])
triggerall = power >= 1000
triggerall = p2movetype = H
triggerall = p2statetype != A
trigger1 = (ctrl || stateno = [100,101]) || (stateno = 1220 && animelemtime(5) > 0) && !numhelper(11001) || (stateno = 1000 && animelemtime(6) > 0) && prevstateno = 430
trigger1 = var(20) = 1 && p2bodydist x > 75
trigger2 = movehit && (stateno = 1000 || stateno = 1010)
trigger2 = animelemtime(2) > 0 && frontedgedist > 50
value = 3100
[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L) && p2dist y >= -40
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120) && (p2stateno != 5120 && p2stateno != 5150) && (p2stateno != [5200,5210])
trigger1 = (power >= 1000) && (random = [60,115])
value = 3100
;---------------------------------------------------------------------------
; Splat Charger
[State -1, Splat Sniper]
type = ChangeState
value = 3000
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = Command = "splatcharger"
triggerall = power>=1000
trigger1 = StateType != A
trigger1 = Ctrl

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = (roundstate = 2) && (var(59) != 0) && (p2stateno != [1242,1243])
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) 
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [60,115]) && (statetype != A)
value = 3000
;---------------------------------------------------------------------------
[State -1, Gold Spin]
type = ChangeState
value = 1320
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = command = "splatbombEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1320

[State -1, Gold Spin]
type = ChangeState
value = 1310
triggerall = command = "splatbomb2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1310

[State -1, Gold Spin]
type = ChangeState
value = 1300
triggerall = command = "splatbomb"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1300

;===========================================================================

[State -1, Gold Spin]
type = ChangeState
value = 1220
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = command = "splatjumpEX"
triggerall = power >= 500
trigger1 = statetype != C
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != C) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1220

[State -1, Gold Spin]
type = ChangeState
value = 1210
triggerall = command = "splatjump2"
trigger1 = statetype != C
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != C) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1210


[State -1, Gold Spin]
type = ChangeState
value = 1200
triggerall = command = "splatjump"
trigger1 = statetype != C
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != C) && (random = [50,135])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

;===========================================================================
[State -1, Gold Spin]
type = ChangeState
value = 1120
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = command = "splatrollerEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact


[State -1, Gold Spin]
type = ChangeState
value = 1110
triggerall = command = "splatroller2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Gold Spin]
type = ChangeState
value = 1100
triggerall = command = "splatroller"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (p2bodydist X <= 75) && (p2movetype = A)
triggerall = (prevstateno != 5120) && (p2movetype != H) && (Statetype = S)
trigger2 = (p2bodydist X <= 50) && (p2movetype = A)
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (p2bodydist X <= 75) && (p2movetype = A)
triggerall = (prevstateno != 5120) && (p2movetype != H) && (Statetype = S)
trigger2 = (p2bodydist X <= 50) && (p2movetype = A)
value = 1110

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = power >= 500
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A)
triggerall = (p2bodydist X <= 75) && (p2movetype = A) && (p2statetype != A)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (Statetype != A)
value = 1120

;===========================================================================

[State -1, GoldWave EX]
type = ChangeState
value = 1020
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = numprojid(1000) = 0
triggerall = command = "splattershotEX"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = power >= 500
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = numprojid(1000) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1, GoldWave]
type = ChangeState
value = 1010
triggerall = numprojid(1000) = 0
triggerall = command = "splattershot2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numprojid(1000) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010


[State -1, GoldWave]
type = ChangeState
value = 1000
triggerall = numprojid(1000) = 0
triggerall = command = "splattershot"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || (stateno=[200,840]) && MoveContact


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = numprojid(1000) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [50,135])
trigger1 = (p2bodydist X <= 270) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

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
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1310 || stateno = 1330 ;From blocking
var(1) = 1



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;5 LP
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Statetype = S
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 905
trigger3 = stateno = [100,106]

[State -1,AI Stand Light Punch]
type = ChangeState
value = 200
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
;5 HP
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = statetype = S
trigger1 = ctrl
triggerall = command != "holddown"
triggerall = command = "y"
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = [100,106]
trigger7 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 210
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
;5 LK
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = stateno != 216
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = [100,106]

[State -1,AI Stand Light Punch]
type = ChangeState
value = 230
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,15])

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = statetype = S
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = [100,106]
trigger7 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 240
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,15])
;---------------------------------------------------------------------------
;2 LP
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = stateno != 216
triggerall = statetype = C
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 400
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,25]) 

;---------------------------------------------------------------------------
;2 HP (launcher)
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = statetype = C
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200,210])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = (stateno = [430,449])&& movecontact              
trigger5 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 410
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,25])
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = statetype = C
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 430
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,25])


;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = statetype = C
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = (stateno = [200,239])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = (stateno = [430,439])&& movecontact
trigger5 = stateno = 905

[State -1,AI Stand Light Punch]
type = ChangeState
value = 440
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = S
trigger1 = Random <= 50
trigger1 = (P2BodyDist X = [0,55])


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [100000,100004]

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 600
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 640) && movecontact
trigger5 = (stateno = 650) && movecontact
trigger6 = stateno = [100000,100004]

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 610
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = stateno = [100000,100004]

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 630
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = stateno = [100000,100004]

[State -1,AI Stand Medium Punch]
type = ChangeState
value = 640
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = Ctrl && StateType = A
trigger1 = Random <= 100
trigger1 = (P2BodyDist X = [0,100])


;-------------------------------------------------------------------------------
;Terrestre
[State -1, Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "fwd" && command != "down" && command != "up" && command != "back"
trigger1 = ctrl || stateno = 700
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,AP,AA
slot = 0
stateno = 700
time = 8
forceair = 0


[State -1, Parry]
type=hitoverride
triggerall = RoundState = 2 && Var(59) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[150,153]),4,8)


;-------------------------------------------------------------------------------
;Aereo
[State -1, Parry]
type = HitOverride
triggerall = statetype = A 
triggerall = command = "fwd" && command != "down" && command != "up" && command != "back" 
trigger1 = ctrl || stateno = 701
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,AP,AA      
slot = 0
stateno = 701
time = 8
forceair = 0

[State AI Stand-Parry]
type = HitOverride
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,AP,AA
slot = 0
stateno = 700
time = 8
forceair = 0
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = statetype = S

trigger1 = ctrl || stateno = 700
trigger1 = p2movetype = A

;Aereo
[State AI Stand-Parry]
type = HitOverride
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,AP,AA     
slot = 0
stateno = 701
time = 8
forceair = 0
trigger1 = RoundState = 2 && Var(59) != 0
triggerall = statetype = A

trigger1 = ctrl || stateno = 701
trigger1 = p2movetype = A
;===========================================================================
[State -1, Guard Counter Attack]
type = ChangeState
value = 750
triggerall = !var(59)
triggerall = command = "GuardCancel"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = [150,153] 

[State -1, Parry]
type=hitoverride
triggerall = var(59)<1&&roundstate=2
triggerall=command="GuardCancel"
triggerall = power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
attr=SA,AA,AP
stateno=750
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, AI Stand Combo]
type = ChangeState
value = 750
triggerall = enemy, stateno = [3000,4999]
triggerall=alive
triggerall = var(59) = 1
triggerall=power>=1000
triggerall = p2bodydist X = [-250,250]
trigger1 = statetype != A
trigger1=stateno=[5000,5011]

[State -1, AI Stand Combo]
type = ChangeState
value = 750
triggerall = enemy, stateno = [3000,4999]
triggerall=alive
triggerall = var(59) = 1
triggerall=power>=1000
triggerall = p2bodydist X = [-250,250]
trigger1 = statetype != A
trigger1=stateno=[150,153]

;----------------------------------------------
;---------------------------------------------------------------------------

[State -1, Charge]
type = ChangeState
value = 930
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = !AILevel&& roundstate = 2
triggerall = power < powermax
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, AI powercharge]
type=changestate
value=930
triggerall = !NumHelper(3101)
triggerall = !NumHelper(3102)
triggerall = !NumHelper(3201)
triggerall = !NumHelper(3202)
triggerall = var(59) > 0
trigger1=roundstate=2&&statetype!=A&&power<3000&&ctrl
trigger1=random<50&&!inguarddist&&p2bodydist x>=100