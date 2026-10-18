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
name = "charge"
command = /$c
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
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

;-| Hold Button |-----------------------------------------------------------
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
name = "hold_start"
command = /s
time = 1

;-| Super Desperation Move Motions |--------------------------------------------------
[Command]
name = "dd_ybz"
command = ~D, D, y+b+z
time = 20

[Command]
name = "dd_ybz"
command = ~D, D, c+z
time = 20

[Command]
name = "hcfufd_a"
command = ~B, $D, F, UF, $D, a
time = 30
buffer.time = 3

[Command]
name = "hcfufd_b"
command = ~B, $D, F, UF, $D, b
time = 30
buffer.time = 3

[Command]
name = "hcbubd_a"
command = ~F, $D, B, UB, $D, a
time = 30
buffer.time = 3

[Command]
name = "hcbubd_b"
command = ~F, $D, B, UB, $D, b
time = 30
buffer.time = 3

[Command]
name = "hcbhcb_z"
command = ~F, $D, B, F, $D, B, z
time = 40

[Command]
name = "hcfhcf_z"
command = ~B, $D, F, B, $D, F, z
time = 40

[Command]
name = "qcfhcb_z"
command = ~D, DF, F, $D, B, z
time = 30

[Command]
name = "qcbhcf_z"
command = ~D, DB, B, $D, F, z
time = 30

[Command]
name = "hcbf_z"
command = ~F, $D, B, F, z
time = 30

[Command]
name = "hcfb_z"
command = ~B, $D, F, B, z
time = 30

[Command]
name = "qcfhcb_xy"
command = ~D, DF, F, DF, B, x+y
time = 30

[Command]
name = "qcfhcb_xy"
command = ~D, F, D, B, x+y
time = 30

;-| Desperation Move Motions |--------------------------------------------------------
[Command]
name = "qcfhcb_x"
command = ~D, DF, F, DF, B, x
time = 30

[Command]
name = "qcfhcb_x"
command = ~D, F, D, B, x
time = 30

[Command]
name = "qcbhcf_x"
command = ~D, DB, B, DB, F, x
time = 30

[Command]
name = "qcbhcf_x"
command = ~D, B, D, F, x
time = 30

[Command]
name = "qcfhcb_y"
command = ~D, DF, F, DF, B, y
time = 30

[Command]
name = "qcfhcb_y"
command = ~D, F, D, B, y
time = 30

[Command]
name = "qcbhcf_y"
command = ~D, DB, B, DB, F, y
time = 30

[Command]
name = "qcbhcf_y"
command = ~D, B, D, F, y
time = 30

[Command]
name = "qcfhcb_a"
command = ~D, DF, F, DF, B, a
time = 30

[Command]
name = "qcfhcb_a"
command = ~D, F, D, B, a
time = 30

[Command]
name = "qcbhcf_a"
command = ~D, DB, B, DB, F, a
time = 30

[Command]
name = "qcbhcf_a"
command = ~D, B, D, F, a
time = 30

[Command]
name = "qcfhcb_b"
command = ~D, DF, F, DF, B, b
time = 30

[Command]
name = "qcfhcb_b"
command = ~D, F, D, B, b
time = 30

[Command]
name = "qcbhcf_b"
command = ~D, DB, B, DB, F, b
time = 30

[Command]
name = "qcbhcf_b"
command = ~D, B, D, F, b
time = 30

[Command]
name = "hcfrqcf_a"
command = ~B, DB, F, DF, D, a
time = 30

[Command]
name = "hcfrqcf_a"
command = ~B, D, F, D, a
time = 30

[Command]
name = "hcbrqcb_a"
command = ~F, DF, B, DB, D, a
time = 30

[Command]
name = "hcbrqcb_a"
command = ~F, D, B, D, a
time = 30

[Command]
name = "hcfrqcf_b"
command = ~B, DB, F, DF, D, b
time = 30

[Command]
name = "hcfrqcf_b"
command = ~B, D, F, D, b
time = 30

[Command]
name = "hcbrqcb_b"
command = ~F, DF, B, DB, D, b
time = 30

[Command]
name = "hcbrqcb_b"
command = ~F, D, B, D, b
time = 30

[Command]
name = "2qcf_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "2qcf_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "2qcb_x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "2qcb_y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "2qcf_a"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "2qcf_b"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "2qcb_a"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "2qcb_b"
command = ~D, DB, B, D, DB, B, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "rdp_a"
command = ~B, D, DB, a
time = 20

[Command]
name = "rdp_b"
command = ~B, D, DB, b
time = 20

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "dp_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "dp_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "dp_z"
command = ~F, D, DF, z
time = 20

[Command]
name = "rdp_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "rdp_x"
command = ~B, D, DB, x
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
command = ~F, D, B, a
time = 20

[Command]
name = "hcb_b"
command = ~F, D, B, b
time = 20

[Command]
name = "hcf_a"
command = ~B, D, F, a
time = 20

[Command]
name = "hcf_b"
command = ~B, D, F, b
time = 20

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 20

[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 20

[Command]
name = "qcf_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "qcf_b"
command = ~D, DF, F, b
time = 20

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "qcf_y"
command = ~D, DF, F, y
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

;===========================================================================
;Computer Controlled Behavior
;---------------------------------------------------------------------------
;None, sorry. :(
;===========================================================================
;Player Controlled Behavior
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Okugi! Musou Ranbu [L] [MAX2] [LDM2]
[State -1, Okugi! Musou Ranbu [L] [MAX2] [LDM2]]
type = ChangeState
value = 3300
;triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="qcfhcb_z"),(command="qcbhcf_z"))
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;Command moves cancelable into DMs and SDMs
trigger14 = stateno = 850 && animelemtime(8) > 0 && animelemtime(9) < 0
;Special moves cancelable into DMs and SDMs
trigger15 = stateno = 1000 && movetype = A
trigger15 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
trigger16 = stateno = 1301 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger16 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
;DMs cancelable into LDMs
trigger17 = stateno = 3000 && var(55) = 3000
trigger17 = (fvar(5) >= 1000 && !var(33))
trigger18 = stateno = 3100 && var(55) = 3100
trigger18 = (fvar(5) >= 1000 && !var(33))
;---------------------------------------------------------------------------
;Okugi! Musou Ranbu [M] [SDM] [LDM1]
[State -1, Okugi! Musou Ranbu [M] [SDM] [LDM1]]
type = ChangeState
value = 3200
;triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="hcbf_z"),(command="hcfb_z"))
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;Command moves cancelable into DMs and SDMs
trigger14 = stateno = 850 && animelemtime(8) > 0 && animelemtime(9) < 0
;Special moves cancelable into DMs and SDMs
trigger15 = stateno = 1000 && movetype = A
trigger15 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
trigger16 = stateno = 1301 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger16 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
;DMs cancelable into LDMs
trigger17 = stateno = 3000 && var(55) = 3000
trigger17 = (fvar(5) >= 1000 && !var(33))
trigger18 = stateno = 3100 && var(55) = 3100
trigger18 = (fvar(5) >= 1000 && !var(33))
;---------------------------------------------------------------------------
;Gen'ei Hikon
[State -1, Gen'ei Hikon]
type = ChangeState
value = 3100
triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="2qcb_x"||command="2qcb_y"),(command="2qcf_x" || command="2qcf_y"))
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;Command moves cancelable into DMs and SDMs
trigger14 = stateno = 850 && animelemtime(8) > 0 && animelemtime(9) < 0
;Special moves cancelable into DMs and SDMs
trigger15 = stateno = 1000 && movetype = A
trigger15 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
trigger16 = stateno = 1301 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger16 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
;---------------------------------------------------------------------------
;Nendou Hikon
[State -1, Nendou Hikon)]
type = ChangeState
value = 3000
triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="2qcf_x"||command="2qcf_y"),(command="2qcb_x" || command="2qcb_y"))
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;Command moves cancelable into DMs and SDMs
trigger14 = stateno = 850 && animelemtime(8) > 0 && animelemtime(9) < 0
;Special moves cancelable into DMs and SDMs
trigger15 = stateno = 1000 && movetype = A
trigger15 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
trigger16 = stateno = 1301 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger16 = (fvar(5) >= 1000 && !var(33)) || (power >= 1000 && var(33))
;---------------------------------------------------------------------------
;Hitsue Nage Jutsu (A)
[State -1, Reppu Satsu]
type = ChangeState
value = 1401
triggerall = var(15) && !numhelper(1410)
triggerall = command="qcf_x"||command="qcf_y"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 1201 && time > 2
;---------------------------------------------------------------------------
;Catch
[State -1, Catch (Air)]
type = ChangeState
value = 1407
triggerall = var(15) && (numhelper(1410)||numhelper(3110)||numhelper(3111)||numhelper(3112))
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Catch
[State -1, Catch (Clow)]
type = ChangeState
value = 1406
triggerall = var(15) && (numhelper(1410)||numhelper(3110)||numhelper(3111)||numhelper(3112))
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Catch
[State -1, Catch (Syao)]
type = ChangeState
value = 1405
triggerall = var(15) && (numhelper(1410)||numhelper(3110)||numhelper(3111)||numhelper(3112))
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = WinKO && (stateno = 0 || stateno = 180)
;---------------------------------------------------------------------------
;Hitsue Nage Jutsu (S)
[State -1, Hitsue Nage Jutsu (S)]
type = ChangeState
value = 1400
triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="qcf_x"||command="qcf_y"),(command="qcb_x" || command="qcb_y"))
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;---------------------------------------------------------------------------
;Kyouretsu Kiri
[State -1, Kyouretsu Kiri]
type = ChangeState
value = 1300
triggerall = var(15) && !numhelper(1410)
triggerall = ifelse((Anim!=[5,6]),(command="qcb_y"),(command="qcf_y"))
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;---------------------------------------------------------------------------
;Kuchuu Asoka Kyaku
[State -1, Kuchuu Asoka Kyaku]
type = ChangeState
value = 1203
triggerall = ifelse((Anim!=[5,6]),(command="qcb_a" || command = "qcb_b"),(command="qcf_a" || command="qcf_b"))
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 1201 && time > 2
;---------------------------------------------------------------------------
;Asoka Kyaku
[State -1, Asoka Kyaku]
type = ChangeState
value = 1200
triggerall = ifelse((Anim!=[5,6]),(command="qcb_a" || command = "qcb_b"),(command="qcf_a" || command="qcf_b"))
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;---------------------------------------------------------------------------
;Reppu Satsu
[State -1, Reppu Satsu]
type = ChangeState
value = 1100
triggerall = (command = "x" || command = "y")  && command = "holddown"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = stateno = 1201 && time > 2
;---------------------------------------------------------------------------
;Hiten Shou Ou Kyaku
[State -1, Hiten Shou Ou Kyaku]
type = ChangeState
value = 1000
triggerall = ifelse((Anim!=[5,6]),(command="dp_a" || command = "dp_b"),(command="rdp_a" || command="rdp_b"))
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger3 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger5 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger8 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger9 = stateno = 505 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger10 = stateno = 980 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger11 = stateno = 981 && animelemtime(4) > 0 && animelemtime(5) < 0
;Command moves cancelable into Specials, DMs and SDMs
trigger12 = stateno = 810 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger13 = stateno = 830 && animelemtime(5) > 0 && animelemtime(6) < 0
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 956
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
triggerall = var(19) = 0 ; Opponent isn't in guarding state
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Roll 1
[State -1, Roll 1]
type = ChangeState
value = 750
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
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;---------------------------------------------------------------------------
;Knockdown (Ground)
[State -1, Knockdown (Ground)]
type = ChangeState
value = 980
triggerall = (command = "z" || command = "knock")
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;---------------------------------------------------------------------------
;Knockdown Counter
[State -1, Knockdown Counter]
type = ChangeState
value = 981
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
triggerall = (command = "z" || command = "knock")
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Mr. Gan catch cancel
trigger2 = stateno = 1407
;---------------------------------------------------------------------------
;Hitsue Otoshi Kiri
[State -1, Hitsue Otoshi Kiri]
type = ChangeState
value = 840
triggerall = var(15) && !numhelper(1410)
triggerall = command = "holdback" && command != "holdup" && command = "y"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hitsue Naname Kiri
[State -1, Hitsue Naname Kiri]
type = ChangeState
value = 830
triggerall = var(15) && !numhelper(1410)
triggerall = command = "holddown" && command = "holdfwd" && command = "y" && command != "holdup"
triggerall = P2bodydist X < 48;P2dist X < 80
triggerall = Statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;Basic moves cancelable into Specials, DMs and SDMs
trigger5 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger8 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger9 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger10 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger11 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;---------------------------------------------------------------------------
;Hitsue Naname Kiri
[State -1, Hitsue Naname Kiri]
type = ChangeState
value = 820
triggerall = var(15) && !numhelper(1410)
triggerall = command = "holddown" && command = "holdfwd" && command = "y" && command != "holdup"
triggerall = P2bodydist X >= 48;P2dist X >= 80
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;---------------------------------------------------------------------------
;Hitsue Kesa Kiri
[State -1, Hitsue Kesa Kiri]
type = ChangeState
value = 810
triggerall = var(15) && !numhelper(1410)
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
triggerall = P2bodydist X < 48;P2dist X < 80
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;Basic moves cancelable into Specials, DMs and SDMs
trigger5 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger8 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger9 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger10 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger11 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;---------------------------------------------------------------------------
;Hiji Ate
[State -1, Hiji Ate]
type = ChangeState
value = 850
triggerall = command = "y" && command = "holdback" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;Basic moves cancelable into Specials, DMs and SDMs
trigger5 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger6 = stateno = 215 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger7 = stateno = 305 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger8 = stateno = 315 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger9 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger10 = stateno = 405 && animelemtime(5) > 0 && animelemtime(6) < 0
trigger11 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;---------------------------------------------------------------------------
;Hitsue Soku Kyaku
[State -1, Hitsue Soku Kyaku]
type = ChangeState
value = 800
triggerall = var(15) && !numhelper(1410)
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
triggerall = P2bodydist X >= 48;P2dist X >= 80
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;---------------------------------------------------------------------------
;Jumping Light Punch
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Mr. Gan catch cancel
trigger2 = stateno = 1407
;---------------------------------------------------------------------------
;Jumping Light Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 700
triggerall = command = "a"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Mr. Gan catch cancel
trigger2 = stateno = 1407
;---------------------------------------------------------------------------
;Jumping Hard Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 710
triggerall = command = "b"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Mr. Gan catch cancel
trigger2 = stateno = 1407
;---------------------------------------------------------------------------
;Jumping Hard Punch
[State -1, Jumping Hard Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Mr. Gan catch cancel
trigger2 = stateno = 1407
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "holddown" && command = "x" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 405
triggerall = command = "holddown" && command = "y" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger4 = stateno = 1405
trigger5 = stateno = 1406
;LP
trigger6 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 500
triggerall = command = "holddown" && command = "a" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 505
triggerall = command = "holddown" && command = "b" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;LP
trigger7 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;---------------------------------------------------------------------------
;Light Punch (Close)
[State -1, Light Punch (Close)]
type = ChangeState
value = 205
triggerall = command = "x" && (helper(999999),command != "holddown")
triggerall = P2bodydist X < 7;P2dist X < 39
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;---------------------------------------------------------------------------
;Light Punch (Far)
[State -1, Light Punch (Far)]
type = ChangeState
value = 200
triggerall = command = "x" && (helper(999999),command != "holddown")
triggerall = P2bodydist X >= 7;P2dist X >= 39
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger4 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;---------------------------------------------------------------------------
;Light Kick
[State -1, Light Kick]
type = ChangeState
value = 300
triggerall = command = "a" && (helper(999999),command != "holddown")
triggerall = P2bodydist X >= 7;P2dist X >= 39
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 400 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;---------------------------------------------------------------------------
;Light Kick (Close)
[State -1, Light Kick (Close)]
type = ChangeState
value = 305
triggerall = command = "a" && (helper(999999),command != "holddown")
triggerall = P2bodydist X < 7;P2dist X < 39
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
trigger4 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger5 = stateno = 1405
trigger6 = stateno = 1406
;---------------------------------------------------------------------------
;Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
triggerall = P2bodydist X >= 17;P2dist X >= 49
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;LP
trigger5 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;---------------------------------------------------------------------------
;Hard Punch (Close)
[State -1, Hard Punch (Close)]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown"
triggerall = P2bodydist X < 17;P2dist X < 49
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger4 = stateno = 1405
trigger5 = stateno = 1406
;LP
trigger6 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;---------------------------------------------------------------------------
;Hard Kick
[State -1, Hard Kick]
type = ChangeState
value = 310
triggerall = command = "b" && command != "holddown"
triggerall = P2bodydist X >= 17;P2dist X >= 49
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
;Mr. Gan catch cancel
trigger3 = stateno = 1405
trigger4 = stateno = 1406
;LP
trigger5 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0
;---------------------------------------------------------------------------
;Hard Kick (Close)
[State -1, Hard Kick (Close)]
type = ChangeState
value = 315
triggerall = command = "b" && command != "holddown"
triggerall = Statetype != A
triggerall = P2bodydist X < 17;P2dist X < 49
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 500 && animelemtime(3) > 0 && animelemtime(4) < 0
;Mr. Gan catch cancel
trigger4 = stateno = 1405
trigger5 = stateno = 1406
;LP
trigger6 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger7 = stateno = 205 && animelemtime(4) > 0 && animelemtime(5) < 0


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
