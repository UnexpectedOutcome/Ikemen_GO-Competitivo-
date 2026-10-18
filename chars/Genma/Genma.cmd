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
;火洪穿
[Command]
name = "seki_kuzushi_a"
command = ~D, DF, F, D, DF, F, a
time = 20

;火洪穿
[Command]
name = "seki_kuzushi_b"
command = ~D, DF, F, D, DF, F, b
time = 20

;火洪穿
[Command]
name = "seki_kuzushi_c"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

;櫓返し
[Command]
name = "yagura_c"
command = ~F, DF, D, c

;櫓返し
[Command]
name = "yagura_b"
command = ~F, DF, D, b

;櫓返し
[Command]
name = "yagura_a"
command = ~F, DF, D, a

;赤火刃
[Command]
name = "sekka"
command = ~D, DF, F, c

;飛燕
[Command]
name = "hien"
command = ~D, DF, F, b

;大礫
[Command]
name = "thubute"
command = ~D, DF, F, a


;破城槌_C
[Command]
name = "hajyo_C"
command = ~D, DB, B, c

;破城槌_B
[Command]
name = "hajyo_B"
command = ~D, DB, B, b

;破城槌_A
[Command]
name = "hajyo_A"
command = ~D, DB, B, a

[Command]
name = "enraku_A"
command = ~F, D, DF, a

[Command]
name = "enraku_B"
command = ~F, D, DF, b

[Command]
name = "enraku_C"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

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

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "a+b"
command = a+b
time = 1


[Command];無空
name = "burst"
command = a+b+c
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
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "start"
command = s
time = 1

[Command];無限無空
name = "S_start"
command = ~60$s
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
name = "holda" ;Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdb" ;Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdc" ;Required (do not remove)
command = /$c
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

;===========================================================================



;---------------------------------------------------------------------------
;火洪穿
[State -1, seki-kuzushi]
type = ChangeState
value = 6200
triggerall = (statetype = S) || (statetype = C) 
triggerall = (command = "seki_kuzushi_a") || (command = "seki_kuzushi_b")  || (command = "seki_kuzushi_c")
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && (movecontact)
trigger3 = Var(50) = 0 || Var(50) = 2
trigger3 = (stateno = [6000,6999]) && (movecontact)
trigger4 = Var(50) = 0 || Var(50) = 2
trigger4 = (stateno = [60000,60999]) && (movecontact)

;---------------------------------------------------------------------------
;飛燕
[State -1, hien]
type = ChangeState
value = 6003
triggerall = stateno = 60021
trigger1 = ScreenPos X <= -10
trigger2 = ScreenPos X >= 310
trigger3 = command = "a"
trigger4 = command = "b"
trigger5 = command = "c"
trigger6 = command = "holda"
trigger7 = command = "holdb"
trigger8 = command = "holdc"

;---------------------------------------------------------------------------
;飛燕（岩への跳躍）
[State -1, hien]
type = ChangeState
value = 60020
triggerall = command = "hien"
triggerall = var(10) = [-300,300]
triggerall = var(14) = 1
triggerall = var(16) = 1
triggerall = MoveType != H
triggerall = stateno != 60020
triggerall = (numHelper(80030) = 1) || (numHelper(80031) = 1) 
trigger1 = ctrl
trigger2 = (stateno = [200,699]) && (movecontact)
trigger3 = (stateno = 60001) && (Time >= 13)
trigger4 = (stateno = 60108) && (movecontact)
trigger5 = (stateno = 6022) && (pos Y <= -40)

;---------------------------------------------------------------------------
;櫓返し
[State -1, yagura]
type = ChangeState
value = 6000
triggerall = Pos Y  <= -25 
triggerall = (command = "yagura_a") || (command = "yagura_b") || (command = "yagura_c")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;赤火刃
[State -1, sekka-jin]
type = ChangeState
value = 6001
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "sekka"
triggerall = var(16) >= 1
triggerall = MoveType != H
trigger1 = stateno = 60001
trigger1 = time > 10
trigger2 = var(10) = [55,105]
trigger2 = facing = 1
trigger2 = var(12) = 1
trigger2 = (ctrl) || (stateno = [200,499]) && (movecontact) || (stateno = [60100,60999]) && (movecontact)
trigger3 = var(10) = [55,105]
trigger3 = facing = -1
trigger3 = var(12) = -1
trigger3 = (ctrl) || (stateno = [200,499]) && (movecontact) || (stateno = [60100,60999]) && (movecontact)
trigger4 = var(10) = [-105,-55]
trigger4 = facing = 1
trigger4 = var(12) = -1
trigger4 = (ctrl) || (stateno = [200,499]) && (movecontact) || (stateno = [60100,60999]) && (movecontact)
trigger5 = var(10) = [-105,-55]
trigger5 = facing = -1
trigger5 = var(12) = 1
trigger5 = (ctrl) || (stateno = [200,499]) && (movecontact) || (stateno = [60000,60999]) && (movecontact)

;---------------------------------------------------------------------------
;大礫
[State -1, oh-thubute]
type = ChangeState
value = 6004
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "thubute"
triggerall = (ctrl) || (stateno = [200,499]) && (movecontact) || (stateno = [60100,60999]) && (movecontact) || (stateno = [801,802]) && (time >= 40)
trigger1 = var(20) = [-30,30]
trigger1 = numHelper(800312) = 1
trigger1 = helper(800312),StateNo = 8003120
trigger2 = var(22) = [-30,30]
trigger2 = numHelper(800313) = 1
trigger2 = helper(800313),StateNo = 8003130
trigger3 = var(24) = [-30,30]
trigger3 = numHelper(800314) = 1
trigger3 = helper(800314),StateNo = 8003140


;---------------------------------------------------------------------------
;無限無空終了（トレーニング用テストコマンド）
[State -1, Zero_and_Infinity]
type = ChangeState
value = 1236
triggerall = numhelper(8510) = 1
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "S_start"
;triggerall = Life = 1000
;triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
;無限無空（トレーニング用テストコマンド）
[State -1, Zero_and_Infinity]
type = ChangeState
value = 1235
triggerall = numhelper(8510) = 0
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "S_start"
triggerall = Life = 1000
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
;集中力MAX（トレーニング用テストコマンド）
[State -1, Concentrate MAX]
type = ChangeState
value = 1234
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "start"
triggerall = Life = 1000
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
;魂奔り_C
[State -1, enraku-C]
type = ChangeState
value = 60202
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "enraku_C"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;魂奔り_C
[State -1, enraku-C]
type = ChangeState
value = 60202
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "enraku_B"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;魂奔り_A
[State -1, enraku-A]
type = ChangeState
value = 60200
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "enraku_A"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;破城槌_C
[State -1, hajyo-tsui]
type = ChangeState
value = 60105
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "hajyo_C"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;破城槌_B
[State -1, hajyo-tsui]
type = ChangeState
value = 60102
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "hajyo_B"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;---------------------------------------------------------------------------
;破城槌_A
[State -1, hajyo-tsui]
type = ChangeState
value = 6010
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "hajyo_A"
trigger1 = (ctrl) || (stateno = [200,499]) && (movecontact)

;===========================================================================

;---------------------------------------------------------------------------
;ガードキャンセル技
[State -1, hajyo-tsui]
type = ChangeState
value = 6500
triggerall = (statetype = S) || (statetype = C) 
triggerall = command = "F" || command = "holdfwd"
triggerall = command = "a+b" || command = "a+c" || command = "b+c"
triggerall = power >= 1000
trigger1 = stateno = 150 || stateno = 152
trigger2 = stateno = 151 || stateno = 153
trigger2 = time <= 5

;---------------------------------------------------------------------------
;空中ダッシュ(フォワード)
[State -1, Air Run Fwd]
type = ChangeState
value = 110
triggerall = Pos Y  <= -15 
triggerall = var(8) = 0
triggerall = Var(50) = 0 || Var(50) = 2
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (movecontact)

;---------------------------------------------------------------------------
;空中ダッシュ(バック)
[State -1, Air Run Back]
type = ChangeState
value = 115
triggerall = Pos Y  <= -15 
triggerall = var(8) = 0
triggerall = Var(50) = 0 || Var(50) = 2
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (movecontact)

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 99
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
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X <= 10
trigger2 = command = "holdback"
trigger2 = p2bodydist X <= 15

;---------------------------------------------------------------------------
;無空
[State -1, burst]
type = ChangeState
value = 2000
triggerall = StateNo != [2000,2001]
triggerall = StateNo != [801,802]
triggerall = numHelper(8500) = 0
triggerall = alive && roundstate = 2
triggerall = var(45) >= 1000
triggerall = movetype != H
trigger1 = command = "burst"

;---------------------------------------------------------------------------
;小ジャンプ
[State -1, Small Jump]
type = ChangeState
value = 55
triggerall = command = "holddown"
triggerall = command = "b+c"
triggerall = statetype = S ||  statetype = C 
triggerall = Var(42) = 0
trigger1 = ctrl
trigger2 = Var(50) = 0 || Var(50) = 2
trigger2 = (stateno = [200,499]) && (movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = stateno = 400
trigger3 = time > 4

;---------------------------------------------------------------------------
;立ち中
[State -1, Stand Light Kick]
type = ChangeState
value = 205
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = (stateno = 200) && time > 7
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = (stateno = 230) && time > 9
trigger4 = (var(50) = 0) || (var(50) = 2)
trigger4 = (stateno = 200) && time > 5
trigger4 = movecontact
trigger5 = (var(50) = 0) || (var(50) = 2)
trigger5 = (stateno = 400) && time > 5
trigger5 = movecontact

;---------------------------------------------------------------------------
;立ち強
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = (stateno = 200) || (stateno = 400)
trigger2 = (time > 10) || (movecontact && time > 8)
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = stateno = 205
trigger3 = (time > 12) || (movecontact && time > 10)
trigger4 = (var(50) = 0) || (var(50) = 2)
trigger4 = stateno = 430
trigger4 = (time > 10) || (movecontact && time > 8)

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = stateno = 400
trigger2 = time > 4
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = stateno = 200
trigger3 = time > 6

;---------------------------------------------------------------------------
;しゃがみ中
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = (stateno = 200) && time > 7
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = (stateno = 230) && time > 9
trigger4 = (var(50) = 0) || (var(50) = 2)
trigger4 = (stateno = 200) && time > 5
trigger4 = movecontact
trigger5 = (var(50) = 0) || (var(50) = 2)
trigger5 = (stateno = 400) && time > 3
trigger5 = movecontact

;---------------------------------------------------------------------------
;しゃがみ強
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = (stateno = 200) || (stateno = 400)
trigger2 = (time > 10) || (movecontact && time > 8)
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = stateno = 205
trigger3 = (time > 12) || (movecontact && time > 10)
trigger4 = (var(50) = 0) || (var(50) = 2)
trigger4 = stateno = 430
trigger4 = (time > 10) || (movecontact && time > 9)

;---------------------------------------------------------------------------
;ジャンプ弱
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;ジャンプ中
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;ジャンプ強
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = (var(50) = 0) || (var(50) = 2)
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;２段ジャンプ
[State -1]
Type = ChangeState
Value = 45
TriggerAll = StateType = A
TriggerAll = Command = "holdup"
TriggerAll = Var(6) = 0
TriggerAll = Var(7) >= 1
Trigger1 = Ctrl
trigger2 = (var(50) = 0) || (var(50) = 2)
trigger2 = (stateno = [600,699]) && (movecontact)

;---------------------------------------------------------------------------
;ジャンプ
[State -1]
Type = ChangeState
Value = 40
TriggerAll = Var(6) = 0
TriggerAll = StateType != A
TriggerAll = Command = "holdup"
Trigger1 = Ctrl
trigger2 = var(50) = 0 || var(50) = 2
trigger2 = (stateno = [200,499]) && (movecontact)

