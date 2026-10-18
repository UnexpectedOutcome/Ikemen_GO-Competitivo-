;==GiGi's Command file==


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

;-| Special Motions |------------------------------------------------------
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
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "DD_x"
command = D, D, x
time = 25

[Command]
name = "DD_y"
command = D, D, y
time = 25

[Command]
name = "DD_z"
command = D, D, z
time = 25

[Command]
name = "2QCF_x"
command = ~D, F, D, F, x
time = 25

[Command]
name = "2QCF_y"
command = ~D, F, D, F, y
time = 25

[Command]
name = "2QCF_z"
command = ~D, F, D, F, z
time = 25

[Command]
name = "Jump"
command = $D, $U
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
var(1) = 1

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------
[State -1, Kitsushiza]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "2QCF_x"
triggerall = command != "QCB_x"
triggerall = command != "QCF_x"
triggerall = command != "DD_x"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && time > 12

;---------------------------------------------------------------------------
[State -1, Pakusaza]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "2QCF_y"
triggerall = command != "QCB_y"
triggerall = command != "QCF_y"
triggerall = command != "DD_y"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6

;---------------------------------------------------------------------------
[State -1, Zahikinguza]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "2QCF_z"
triggerall = command != "QCB_z"
triggerall = command != "QCF_z"
triggerall = command != "DD_z"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 210) && time > 6

;---------------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Kurugyuru
[State -1, Kurugyuru]
type = ChangeState
value = 15
triggerall = command = "a"
trigger1 = anim = 0 && ctrl
trigger2 = anim = 1 && ctrl


;---------------------------------------------------------------------------
;Jump Zahikinguza 1
[State -1, Jump Zahikinguza 1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 12
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Zahikinguza 2
[State -1, Jump Zahikinguza 2]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Kienpiza
[State -1, Kienpiza]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Melichiakachiaku
[State -1, Melichiakachiaku]
type = ChangeState
value = 1000
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;lunliguzachiaku
[State -1, Lunliguzachiaku]
type = ChangeState
value = 1200
triggerall = command != "2QCF_x"
triggerall = command != "2QCF_y"
triggerall = command != "2QCF_z"
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Weak Zakikukan
[State -1, Weak Zakikukan]
type = ChangeState
value = 1300
triggerall = command = "DD_x"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Med Zakikukan
[State -1, Med Zakikukan]
type = ChangeState
value = 1301
triggerall = command = "DD_y"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Heavy Zakikukan
[State -1, Heavy Zakikukan]
type = ChangeState
value = 1302
triggerall = command = "DD_z"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Pichikikan 1
[State -1, Pichikikan 1]
type = ChangeState
value = 15000
triggerall = power >= 1000
triggerall = command = "2QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Pichikikan 2
[State -1, Pichikikan 2]
type = ChangeState
value = 15100
triggerall = power >= 1000
triggerall = command = "2QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Pichikikan 3
[State -1, Pichikikan 3]
type = ChangeState
value = 15200
triggerall = power >= 1000
triggerall = command = "2QCF_z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 900
triggerall = command = "Jump"
trigger1 = statetype = S
trigger1 = ctrl


;------------------------------
[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(20) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 20
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(20) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 20
value = 0


;Auto Blocking AI from the tutorial by K3nShiN

; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(20) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
;trigger1 = random <= 800 ;triggers at 80% probability
trigger1 = 1
value = 130 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
;trigger1 = random <= 800
trigger1 = 1
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
;trigger1 = random <= 800
trigger1 = 1
value = 132



;ASD-4 hitter
;---------------
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2dist x <= 120
triggerall = statetype!=A
triggerall = ctrl && pos y = 0
triggerall = p2life > 0
trigger1 = random <= 500
value = 200

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = stateno = 200
triggerall = movehit
trigger1 = animtime = 0
value = 210

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2dist x <= 200
triggerall = statetype!=A
triggerall = ctrl && pos y = 0
triggerall = p2life > 0
trigger1 = random <= 500
value = 210

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = stateno = 210
triggerall = movehit
trigger1 = animtime = 0
value = 240

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2dist x <= 200
triggerall = statetype!=A
triggerall = ctrl && pos y = 0
triggerall = p2life > 0
trigger1 = random <= 500
value = 240



;Air hits
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2dist x <= 120
triggerall = statetype!=A
triggerall = ctrl && pos y < 0
triggerall = p2life > 0
trigger1 = random <= 500
value = 600

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2dist x <= 120
triggerall = statetype!=A
triggerall = ctrl && pos y < 0
triggerall = p2life > 0
trigger1 = random <= 500
value = 610

[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = stateno = 600 || stateno = 610
triggerall = movehit
trigger1 = animtime = 0
value = 620



;Hit while down
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2stateno >= 5100
triggerall = p2life > 0
triggerall = power >= 1000
triggerall = ctrl && pos y = 0
triggerall = power >= 1000
trigger1 = random <= 600
value = 15000 + 100*(random%2)


;Steeple Combo
;----------------

;Kienpiza
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = p2statetype = A
triggerall = p2dist y <= -7 && abs(p2bodydist x) <= 50
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life > 0
trigger1 = 1;random <= 900
value = 1300+(random%3)

;Melichiakachiaku OR Lunliguzachiaku
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = stateno = 1300 || stateno = 1301 || stateno = 1302
triggerall = movehit
trigger1 = animtime = 0
value = ifelse(random<=500,1000,1200)




;Regular Specials... oxymoron...  Does anyone read this?
;-----------------------------------------------------------

;Melichiakachiaku
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life >0
trigger1 = random <= 20
value = 1000


;Lunliguzachiaku
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life >0
trigger1 = random <= 20
value = 1200




;Special Specials
;-----------------------------------------------------------
;Pichikikan 1 Pillars
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life >0
triggerall = power >= 1000
trigger1 = random <= 10
value = 15000


;Pichikikan 2 Spears
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life >0
triggerall = power >= 1000
trigger1 = random <= 10
value = 15100

;Pichikikan 1 Blocks
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = ctrl && pos y = 0
triggerall = p2life >0
triggerall = power >= 1000
trigger1 = random <= 10
value = 15200




