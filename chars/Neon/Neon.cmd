;   slash (/) - means the key must be held down
;   tilde (~) - to detect key releases
;   dollar ($) - Direction-only: detect as 4-way
;   plus (+) - Buttons only: simultaneous press
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
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
name = "Phat Beat Combo"
command = ~D,F,D,x
time = 10
;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]

;===================================================;
;                   HYPER MOVES                     ;
;===================================================;

;===================================================;
;                   SUPER MOVES                     ;
;===================================================;
; Phat Beat Combo
[State -1, Phat Beat Combo]
type = ChangeState
value = 900
triggerall = command = "Phat Beat Combo" 
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
;===================================================;
;                 SPECIAL MOVES                     ;
;===================================================;
; Charge
[State -1, Charge]
type = ChangeState
value = 2500
triggerall = statetype !=A
triggerall = var(21)=0
trigger1 = command = "a" || command = "b" || command ="c"
trigger1 = ctrl

;Grab A Roo
[State -1, Grab A Roo]
type = ChangeState
value = 1000
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===================================================;
;                  NORMAL MOVES                     ;
;===================================================;
; Dash X
[State -1, Auto Combo X]
type = ChangeState
value = 107
triggerall = command = "x"
triggerall = stateno = 100
trigger1 = ctrl

; Dash Y
[State -1, Auto Combo Y]
type = ChangeState
value = 108
triggerall = command = "y"
triggerall = stateno = 100
trigger1 = ctrl

; Dash Z
[State -1, Auto Combo Z]
type = ChangeState
value = 109
triggerall = command = "z"
triggerall = stateno = 100 || stateno = 105
trigger1 = ctrl


;Crouch X
[State -1, Crouch X]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C 
trigger1 = ctrl

;Crouch X
[State -1, Crouch Y]
type = ChangeState
value = 520
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C 
trigger1 = ctrl


; X
[State -1, X]
type = ChangeState
value = 200
triggerall = command = "x" 
triggerall = statetype != A
trigger1 = ctrl

; Y
[State -1, Y]
type = ChangeState
value = 300
triggerall = command = "y" 
triggerall = statetype != A
trigger1 = ctrl

; Z
[State -1, Z]
type = ChangeState
value = 400
triggerall = command = "z" 
triggerall = statetype != A
trigger1 = ctrl


;Air X
[State -1, Air X]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype != S
trigger1 = ctrl

;Air Y
[State -1, Air Y]
type = ChangeState
value = 620
trigger1 = command = "y"
trigger1 = statetype != S
trigger1 = ctrl

;Air Z
[State -1, Air Z]
type = ChangeState
value = 640
trigger1 = command = "z"
trigger1 = statetype != S
trigger1 = ctrl
;===================================================;
;           MISCELLANEOUS MOVES                     ;
;===================================================;
; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Run Backward
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
