; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)



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
[Command]
name = "paralos"
command = ~D, F, B, D, F, B, D,  x+y
time = 50

[Command]
name = "paralos cp"
command = ~B, B, B, B, a+b+c+s
time = 1

[Command]
name = "deadly cyclone a"
command = ~D, B, D, F, x+y
time = 30

[Command]
name = "deadly cyclone b"
command = ~D, F, D, B, x+y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "hellfire"
command = ~B, D, F, x

[Command]
name = "hellfire"
command = ~B, D, F, y

[Command]
name = "nyoro_x"
command = ~D, DF, F, x

[Command]
name = "nyoro_y"
command = ~D, DF, F, y

[Command]
name = "back_y"
command = ~D, DB, B, y


[Command]
name = "atomicray"
command = ~B, D, F, a

[Command]
name = "2waylaser"
command = ~D, DF, F, a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = ~F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = ~B, B
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

[Command]
name = "down_x"
command = /$D,x
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

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
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
;パラダイスロスト
[State -1, paradise lost]
type = ChangeState
value = 3000
triggerall = power >= 3000
triggerall = ctrl
trigger1 = command = "paralos"
trigger1 = life <= 500
trigger2 = command = "paralos cp"

;---------------------------------------------------------------------------
;デッドリーサイクロン
[State -1, deadly cyclone a]
type = ChangeState
value = 2000
triggerall = command = "deadly cyclone a"
trigger1 = statetype != C
trigger1 = power >= 2000
trigger1 = ctrl

[State -1, deadly cyclone b]
type = ChangeState
value = 2005
triggerall = command = "deadly cyclone b"
trigger1 = statetype != C
trigger1 = power >= 2000
trigger1 = ctrl

;---------------------------------------------------------------------------
;地獄の炎
[State -1, Hell Fire]
type = ChangeState
value = 1500
triggerall = command = "hellfire"
trigger1 = statetype = S
trigger1 = power >= 20
trigger1 = ctrl

;---------------------------------------------------------------------------
;謎の発光体
[State -1, nyoro]
type = ChangeState
value = 1000
triggerall = command = "nyoro_x"
trigger1 = Numhelper(1005) = 0
trigger1 = ctrl

[State -1, nyoro]
type = ChangeState
value = 1010
triggerall = command = "nyoro_y"
trigger1 = Numhelper(1015) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;弱パンチ
[State -1, Stand Light Punch 1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 14

[State -1, Stand Light Punch 2]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = time >= 7
trigger1 = statetype = S
trigger1 = stateno = 200
trigger2 = statetype = A
trigger2 = stateno = 600
trigger2 = pos Y >=  0

[State -1, Stand Light Punch 3]
type = ChangeState
value = 250
triggerall = statetype = S
trigger1 = command = "x"
trigger1 = stateno = 210
trigger1 = time >= 7

;---------------------------------------------------------------------------
;強パンチ２
[State -1, Stand heavy Punch 2]
type = ChangeState
value = 350
triggerall = command = "back_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = time >= 14

;---------------------------------------------------------------------------
;強パンチ
[State -1, Stand heavy Punch]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = time >= 14

;---------------------------------------------------------------------------
;キック
[State -1, kick]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 9

;---------------------------------------------------------------------------
;空中キック
[State -1, Air kick]
type = ChangeState
value = 610
triggerall = command = "down_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = time >= 9
trigger3 = stateno = 600
trigger3 = time >= 7

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = pos Y < 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 610
trigger3 = time >= 9

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Air heavy Punch]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = pos Y < 0
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 610
trigger3 = time >= 9

;---------------------------------------------------------------------------
;アトミックレイ
[State -1, laser3]
type = ChangeState
value = 1300
triggerall = command = "atomicray"
triggerall = statetype = S
trigger1 = Numhelper(1300) = 0
trigger1 = power >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
;2ウェイレーザー
[State -1, laser2]
type = ChangeState
value = 1200
triggerall = command = "2waylaser"
trigger1 = Numhelper(1100) = 0
trigger1 = Numhelper(1200) = 0
trigger1 = Numhelper(1300) = 0
trigger1 = power >= 600
trigger1 = ctrl

;---------------------------------------------------------------------------
;レーザー
[State -1, laser]
type = ChangeState
value = 1100
triggerall = command = "a"
trigger1 = Numhelper(1100) = 0
trigger1 = Numhelper(1200) = 0
trigger1 = Numhelper(1300) = 0
trigger1 = power >= 300
trigger1 = ctrl

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = ctrl
triggerall = power >= 300
trigger1 = statetype = S
trigger2 = statetype = A
trigger2 = Vel Y <= 0

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = ctrl
triggerall = power >= 300
triggerall = BackEdgeDist > 30
trigger1 = statetype = S
trigger2 = statetype = A
trigger2 = Vel Y <= 0

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = Numhelper(195) = 0
trigger1 = power >= 500
trigger1 = ctrl

;---------------------------------------------------------------------------
