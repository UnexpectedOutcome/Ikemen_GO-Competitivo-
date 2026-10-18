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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 3

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1
[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "charge"
command = /$c
time = 1
buffer.time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1
buffer.time = 1
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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1
[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1
[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1
[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1
[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1
[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1
[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1
;-| Super Desperation Move Motions |--------------------------------------------------
[Command]
name = "qcfhcb_xy"
command = ~D, F, $D, B, x+y
time = 30
[Command]
name = "qcbhcf_xy"
command = ~D, B, $D, F, x+y
time = 30
[Command]
name = "qcfhcb_ab"
command = ~D, F, $D, B, a+b
time = 30
[Command]
name = "qcbhcf_ab"
command = ~D, B, $D, F, a+b
time = 30

[Command]
name = "2qcf_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "2qcb_xy"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "2qcf_2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30
[Command]
name = "2qcb_2k"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "fhcf_xy"
command = ~F, B, $D, F, x+y
time = 30
[Command]
name = "bhcb_xy"
command = ~B, F, $D, B, x+y
time = 30

[Command]
name = "cbfbf_z"
command = ~30$B, $F, $B, F, z
time = 40
[Command]
name = "cfbfb_z"
command = ~30$F, $B, $F, B, z
time = 40


;-| Desperation Move Motions |--------------------------------------------------------
[Command]
name = "fhcf_p"
command = ~F, B, $D, F, x
time = 30
[Command]
name = "fhcf_p"
command = ~F, B, $D, F, y
time = 30
[Command]
name = "bhcb_p"
command = ~B, F, $D, B, x
time = 30
[Command]
name = "bhcb_p"
command = ~B, F, $D, B, y
time = 30

[Command]
name = "qcfhcb_p"
command = ~D, F, $D, B, x
time = 30
[Command]
name = "qcfhcb_p"
command = ~D, F, $D, B, y
time = 30
[Command]
name = "qcbhcf_p"
command = ~D, B, $D, F, x
time = 30
[Command]
name = "qcbhcf_p"
command = ~D, B, $D, F, y
time = 30


[Command]
name = "qcfhcb_k"
command = ~D, F, $D, B, a
time = 30
[Command]
name = "qcbhcf_k"
command = ~D, B, $D, F, a
time = 30
[Command]
name = "qcfhcb_k"
command = ~D, F, $D, B, b
time = 30
[Command]
name = "qcbhcf_k"
command = ~D, B, $D, F, b
time = 30

[Command]
name = "2hcb_p"
command = ~F, $D, B, F, $D, B, x
time = 40
[Command]
name = "2hcb_p"
command = ~F, $D, B, F, $D, B, y
time = 40
[Command]
name = "2hcf_p"
command = ~B, $D, F, B, $D, F, x
time = 40
[Command]
name = "2hcf_p"
command = ~B, $D, F, B, $D, F, y
time = 40



[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "2qcf_p"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "2qcb_p"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "2qcb_p"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "2qcf_k"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcb_k"
command = ~D, DB, B, D, DB, B, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "fbf_a"
command = ~F, B, F, a
time = 30
[Command]
name = "fbf_b"
command = ~F, B, F, b
time = 30
[Command]
name = "fbf_x"
command = ~F, B, F, x
time = 30
[Command]
name = "fbf_y"
command = ~F, B, F, y
time = 30

[Command]
name = "bfb_a"
command = ~F, B, F, a
time = 30
[Command]
name = "bfb_b"
command = ~F, B, F, b
time = 30
[Command]
name = "bfb_x"
command = ~F, B, F, x
time = 30
[Command]
name = "bfb_y"
command = ~F, B, F, y
time = 30

[Command]
name = "cdbf_k"
command = ~30$DB, $F, a
time = 15
[Command]
name = "cdbf_k"
command = ~30$DB, $F, b
time = 15
[Command]
name = "cdfb_k"
command = ~30$DF, $B, a
time = 15
[Command]
name = "cdfb_k"
command = ~30$DF, $B, b
time = 15

[Command]
name = "dbf_k"
command = ~DB, F, a
time = 15
[Command]
name = "dbf_k"
command = ~DB, F, b
time = 15
[Command]
name = "dfb_k"
command = ~DF, B, a
time = 15
[Command]
name = "dfb_k"
command = ~DF, B, b
time = 15

[Command]
name = "cbf_p"
command = ~30$B, $F, x
time = 15
[Command]
name = "cbf_p"
command = ~30$B, $F, y
time = 15
[Command]
name = "cfb_p"
command = ~30$F, $B, x
time = 15
[Command]
name = "cfb_p"
command = ~30$F, $B, y
time = 15

[Command]
name = "bf_p"
command = ~B, F, x
time = 15
[Command]
name = "bf_p"
command = ~B, F, y
time = 15
[Command]
name = "fb_p"
command = ~F, B, x
time = 15
[Command]
name = "fb_p"
command = ~F, B, y
time = 15

[Command]
name = "cbf_k"
command = ~30$B, $F, a
time = 15
[Command]
name = "cbf_k"
command = ~30$B, $F, b
time = 15
[Command]
name = "cfb_k"
command = ~30$F, $B, a
time = 15
[Command]
name = "cfb_k"
command = ~30$F, $B, b
time = 15

[Command]
name = "bf_k"
command = ~B, F, a
time = 15
[Command]
name = "bf_k"
command = ~B, F, b
time = 15
[Command]
name = "fb_k"
command = ~F, B, a
time = 15
[Command]
name = "fb_k"
command = ~F, B, b
time = 15

[Command]
name = "cdu_k"
command = ~30$D, $U, a
time = 15
[Command]
name = "cdu_k"
command = ~30$D, $U, b
time = 15
[Command]
name = "cdu_p"
command = ~30$D, $U, x
time = 15
[Command]
name = "cdu_p"
command = ~30$D, $U, y
time = 15

[Command]
name = "du_k"
command = ~D, U, a
time = 15
[Command]
name = "du_k"
command = ~D, U, b
time = 15
[Command]
name = "du_p"
command = ~D, U, x
time = 15
[Command]
name = "du_p"
command = ~D, U, y
time = 15

[Command]
name = "rdp_k"
command = ~B, D, DB, a
time = 20
[Command]
name = "rdp_k"
command = ~B, D, DB, b
time = 20
[Command]
name = "rdp_p"
command = ~B, D, DB, y
time = 20
[Command]
name = "rdp_p"
command = ~B, D, DB, x
time = 20

[Command]
name = "dp_k"
command = ~F, D, DF, a
time = 20
[Command]
name = "dp_k"
command = ~F, D, DF, b
time = 20
[Command]
name = "dp_p"
command = ~F, D, DF, y
time = 20
[Command]
name = "dp_p"
command = ~F, D, DF, x
time = 20

[Command]
name = "hcbf_p"
command = ~F, D, B, F, y
time = 30
[Command]
name = "hcbf_p"
command = ~F, D, B, F, x
time = 30
[Command]
name = "hcfb_p"
command = ~F, D, B, F, y
time = 30
[Command]
name = "hcfb_p"
command = ~F, D, B, F, x
time = 30

[Command]
name = "hcb_a"
command = ~F, $D, B, a
time = 20
[Command]
name = "hcb_b"
command = ~F, $D, B, b
time = 20
[Command]
name = "hcf_a"
command = ~B, $D, F, a
time = 20
[Command]
name = "hcf_b"
command = ~B, $D, F, b
time = 20

[Command]
name = "hcb_x"
command = ~F, $D, B, x
time = 20
[Command]
name = "hcb_y"
command = ~F, $D, B, y
time = 20

[Command]
name = "qcf_k"
command = ~D, DF, F, a
time = 20
[Command]
name = "qcf_k"
command = ~D, DF, F, b
time = 20
[Command]
name = "qcb_k"
command = ~D, DB, B, a
time = 20
[Command]
name = "qcb_k"
command = ~D, DB, B, b
time = 20

[Command]
name = "qcf_p"
command = ~D, DF, F, x
time = 20
[Command]
name = "qcf_p"
command = ~D, DF, F, y
time = 20
[Command]
name = "qcb_p"
command = ~D, DB, B, x
time = 20
[Command]
name = "qcb_p"
command = ~D, DB, B, y
time = 20

[Command]
name = "qcf_z"
command = ~D, DF, F, z
time = 20


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = ~F, F
time = 5
[Command]
name = "BB"     ;Required (do not remove)
command = ~B, B
time = 5

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "charge";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "roll"
command = x+a
time = 3
[Command]
name = "knock"
command = y+b
time = 10
[Command]
name = "max";Required (do not remove)
command = a+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "hijump"
command = ~$D, $U
time = 18

[Command]
name = "chargedhijump"
command = ~13$D, $U

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

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
name = "hold_start2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "recovery2";Required (do not remove)
command = c
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

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State esp]
Type = Helper
Trigger1 = !NumHelper(999999)
helperType = normal
name = "command check"
ID = 999999
pos = 0,0
posType = p1
facing = 1
StateNo = 999999
keyctrl = 1
ownpal = 1
supermoveTime = 65535
pausemoveTime = 65535
size.xscale = 1
size.yscale = 1
size.ground.back = 21
size.ground.front = 14
size.air.back = 16
size.air.front = 18
size.height = 1
size.proj.doscale = 1
size.head.pos = -6,-5
size.mid.pos = -5,-62

;MAX Into: Spade, Diamond, Heart
;MAX out of: Follow up Spade, Diamond.

[State -3, MAX CANCEL PALFX]
type = VarAdd
trigger1 = var(50)
var(50) = -1
ignorehitpause = 1
[State -3, MAX CANCELS]
type = VarSet
trigger1 = 1
var(53) = 0
[State -3, MAX CANCELS]
type = VarSet
triggerall = var(51) ;MAX On
trigger1 = stateno = [200,599] ;Non aerial basic moves
trigger2 = stateno = [600,749] ;Aerial basic moves
trigger2 = movecontact
trigger3 = stateno = [800,899] ;Command moves
trigger3 = movecontact = 1
trigger4 = stateno = 980 ;CD Attack
trigger5 = stateno = 990 ;Air CD Attack
trigger5 = movecontact
;MAX out of moves:
trigger6 = stateno = 1100  ;Critical Wing
trigger6 = movecontact = 1
trigger7 = stateno = 1000  ;Augmentor Wing
trigger7 = movecontact = 1
var(53) = 1
ignorehitpause = 1

;===========================================================================
;Computer Controlled Behavior
;---------------------------------------------------------------------------
;None, sorry. :(
;===========================================================================
;Player Controlled Behavior
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;VAPOR TRAIL
[State -1, VAPOR TRAIL]
type = ChangeState
value = 3300
triggerall = var(35)
triggerall = ifelse((Anim!=[5,6]),(command="qcbhcf_ab"),(command="qcfhcb_ab"))
triggerall = statetype != A
triggerall = (power >= 3000) || (life <= 300) && (power >= 1000 && var(51)) && var(33) || (power >= 2000) && var(51)
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger6 = stateno = 400 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 405 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 505 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger9 = stateno = 980 && animelemtime(7) > 0 && animelemtime(8) < 0
;---------------------------------------------------------------------------
;HEXADRIVE
[State -1, HEXADRIVE]
type = ChangeState
value = 3200
triggerall = RoundState < 3
triggerall = ifelse((p2dist x > 0),(command="qcbhcf_ab"),(command="qcfhcb_ab"))
triggerall = Statetype != C
triggerall = Statetype = A
triggerall = (power >= 2000 && !var(33)) || (power >= 2000 && var(33) && !var(51)) ||  (power >= 1000 && var(33) && var(51))
trigger1 = ctrl
trigger2 = stateno = 990 && animelemtime(4) > 0 && animelemtime(5) < 0
;Special moves cancelable into DMs and SDMs
trigger3 = stateno = [1300,1304]
trigger3 = movecontact && movetype = A
trigger3 = (fvar(5) >= 1000 && !var(33)) || (power >= 3000 && var(33)) || (power >= 1000 && var(33) && var(51))
;MAX cancels
trigger4 = var(53)
;---------------------------------------------------------------------------
;Shock
[State -1, Shock]
type = ChangeState
value = 3100
triggerall = RoundState < 3
triggerall = ifelse((p2dist x > 0),(command="qcbhcf_k"),(command="qcfhcb_k"))
triggerall = Statetype != C
triggerall = Statetype = A
triggerall = (power >= 1000 || var(51))
trigger1 = ctrl
trigger2 = stateno = 990 && animelemtime(4) > 0 && animelemtime(5) < 0
;Special moves cancelable into DMs and SDMs
trigger3 = stateno = [1300,1304]
trigger3 = movecontact && movetype = A
trigger3 = (fvar(5) >= 1000 && !var(33)) || (power >= 3000 && var(33)) || (power >= 1000 && var(33) && var(51))
;MAX cancels
trigger4 = var(53)
;---------------------------------------------------------------------------
;Wave Rider
[State -1, Wave Rider]
type = ChangeState
value = 3000
triggerall = RoundState < 3
triggerall = ifelse((Anim!=[5,6]),(command="2qcf_k"),(command="2qcb_k"))
triggerall = statetype != A
triggerall = (power >= 1000 || var(51))
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger6 = stateno = 400 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 405 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 505 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger9 = stateno = 980 && animelemtime(7) > 0 && animelemtime(8) < 0
;Special moves cancelable into DMs and SDMs
trigger10 = stateno = 1100 && movecontact && movetype = A
trigger10 = (fvar(5) >= 1000 && !var(33)) || (power >= 3000 && var(33)) || (power >= 1000 && var(33) && var(51))
;MAX cancels
trigger11 = var(53)
;---------------------------------------------------------------------------
;Augmentor Wing
[State -1, Augmentor Wing]
type = ChangeState
value = 1000
triggerall = ifelse((Anim!=[5,6]),(command="dp_p"),(command="rdp_p"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger6 = stateno = 400 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 405 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 505 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger9 = stateno = 980 && animelemtime(7) > 0 && animelemtime(8) < 0
;MAX cancels
trigger10 = var(53)
trigger10 = var(50) := 7 && var(51) := var(51)-128
;---------------------------------------------------------------------------
;Mayday mayday
[State -1, Hien Ryuujin Kyaku]
type = ChangeState
value = 1300
triggerall = RoundState < 3
triggerall = ifelse((p2dist x > 0),(command="qcb_k"),(command="qcf_k"))
triggerall = Statetype != C
triggerall = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 710 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger3 = stateno = 990 && animelemtime(4) > 0 && animelemtime(5) < 0
;MAX cancels
trigger4 = var(53)
trigger4 = var(50) := 7 && var(51) := var(51)-128
;---------------------------------------------------------------------------
;Critical Wing
[State -1, Critical Wing]
type = ChangeState
value = 1100
triggerall = ifelse((Anim!=[5,6]),(command="qcb_p"),(command="qcf_p"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger6 = stateno = 400 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 405 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 505 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger9 = stateno = 980 && animelemtime(7) > 0 && animelemtime(8) < 0
;MAX cancels
trigger10 = var(53) && stateno != 1100
trigger10 = var(50) := 7 && var(51) := var(51)-128
;---------------------------------------------------------------------------
;Diver Jens
[State -1, Diver Jens]
type = ChangeState
value = 1200
triggerall = !numhelper(1210)
triggerall = ifelse((Anim!=[5,6]),(command="qcf_p"),(command="qcb_p"))
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = stateno = 200 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 205 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 310 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger6 = stateno = 400 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 405 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 505 && animelemtime(3) > 0 && animelemtime(5) < 0
trigger9 = stateno = 980 && animelemtime(7) > 0 && animelemtime(8) < 0
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 956
triggerall = RoundState < 3
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = RoundState < 3
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;--------------------------------------------------------------------------
;MAX
[State -1, MAX]
type = ChangeState
value = 780
triggerall = !numhelper(70001) && !numhelper(70002)
triggerall = var(33)
triggerall = power >= 1000
triggerall = (command = "max")
triggerall = statetype != A
trigger1 = ctrl || stateno = [100,101]
trigger2 = stateno = [200,899]
trigger2 = movecontact = 1 && power >= 2000
;---------------------------------------------------------------------------
;Roll 1
[State -1, Roll 1]
type = ChangeState
value = 750
triggerall = RoundState < 3
triggerall = (command = "c" || command = "roll" || command = "roll" && command = "holdfwd")
triggerall = command != "holddown" && command != "holdback"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 101
;---------------------------------------------------------------------------
;Roll 2
[State -1, Roll 1]
type = ChangeState
value = 760
triggerall = RoundState < 3
triggerall = (command = "c" || command = "roll")
triggerall = command != "holddown" && command = "holdback"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 && power >= 1000
trigger3 = stateno = 151 && power >= 1000
trigger4 = stateno = 101
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = RoundState < 3
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = RoundState < 3
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = RoundState < 3
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Knockdown (Ground)
[State -1, Knockdown (Ground)]
type = ChangeState
value = 980
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Knockdown Counter
[State -1, Knockdown Counter]
type = ChangeState
value = 981
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = stateno = 150 && power >= 1000
trigger2 = stateno = 151 && power >= 1000
;---------------------------------------------------------------------------
;Knockdown (Air)
[State -1, Knockdown (Air)]
type = ChangeState
value = 990
triggerall = RoundState < 3
triggerall = (command = "z" || command = "knock")
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Fokker
[State -1, Fokker]
type = ChangeState
value = 800
triggerall = command = "holddown" && command = "a"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Light Punch
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall = RoundState < 3
triggerall = command = "x"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Light Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 700
triggerall = RoundState < 3
triggerall = command = "a"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Hard Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 710
triggerall = RoundState < 3
triggerall = command = "b"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jumping Hard Punch
[State -1, Jumping Hard Punch]
type = ChangeState
value = 610
triggerall = RoundState < 3
triggerall = command = "y"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "x" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 400 && animelemtime(2) > 3
trigger4 = stateno = 500 && animelemtime(2) > 2
;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 405
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "y" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 500
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "a" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 400 && animelemtime(2) > 3
trigger4 = stateno = 500 && animelemtime(2) > 2
;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 505
triggerall = RoundState < 3
triggerall = command = "holddown" && command = "b" && command != "holdup"
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Light Punch (Close)
[State -1, Light Punch (Close)]
type = ChangeState
value = 205
triggerall = RoundState < 3
triggerall = command = "x" && (helper(999999),command != "holddown")
triggerall = P2bodydist X < 16
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(3) > 2
;---------------------------------------------------------------------------
;Light Punch (Far)
[State -1, Light Punch (Far)]
type = ChangeState
value = 200
triggerall = RoundState < 3
triggerall = command = "x" && (helper(999999),command != "holddown")
triggerall = P2bodydist X >= 16
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(3) > 2
trigger4 = stateno = 200 && animelemtime(4) > 3
;---------------------------------------------------------------------------
;Light Kick
[State -1, Light Kick]
type = ChangeState
value = 300
triggerall = RoundState < 3
triggerall = command = "a" && (helper(999999),command != "holddown")
triggerall = P2bodydist X >= 20;P2dist X >= 39
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 305 && animelemtime(3) > 2
;---------------------------------------------------------------------------
;Light Kick (Close)
[State -1, Light Kick (Close)]
type = ChangeState
value = 305
triggerall = RoundState < 3
triggerall = command = "a" && (helper(999999),command != "holddown")
triggerall = P2bodydist X < 20;P2dist X < 39
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 305 && animelemtime(3) > 2
;---------------------------------------------------------------------------
;Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 210
triggerall = RoundState < 3
triggerall = command = "y" && command != "holddown"
triggerall = P2bodydist X >= 30;P2dist X >= 49
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Hard Punch (Close)
[State -1, Hard Punch (Close)]
type = ChangeState
value = 215
triggerall = RoundState < 3
triggerall = command = "y" && command != "holddown"
triggerall = P2bodydist X < 30;P2dist X < 49
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Hard Kick
[State -1, Hard Kick]
type = ChangeState
value = 310
triggerall = RoundState < 3
triggerall = command = "b" && command != "holddown"
triggerall = P2bodydist X >= 24;P2dist X >= 49
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;Hard Kick (Close)
[State -1, Hard Kick (Close)]
type = ChangeState
value = 310
triggerall = RoundState < 3
triggerall = command = "b" && command != "holddown"
triggerall = Statetype != A
triggerall = P2bodydist X < 24;P2dist X < 49
trigger1 = ctrl
trigger2 = stateno = 101



[statedef 999999]
anim = 1
ctrl=0

;helper for command check

[State esp]
Type = null
Trigger1 = 0
;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
