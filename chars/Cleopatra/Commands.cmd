;This is the CMD file which contains all the commands for your character

[Remap] ;You can remap controls in game or here.
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
;Time parameter is basically how many ticks you have to perform the 
;command for it to work successfully.

command.time = 15 ;default time is 15 ticks.
;60 game ticks = 1 real time second

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;Put all your super move commands in this space:





;-| Special Motions |------------------------------------------------------
;Put all your special move commands in this space:



;--------------------------------------------------------------------------
;The following commands below are default commands for your character.
;you can change these at any time or keep them default (recommended)
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

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdc"
command = /c
time = 1
;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
;This is where you set what commands activate what states that you coded
;the characters moves in. 

; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.

[Statedef -1]
;---------------------------------------------------------------------------
;Run Fwd or Dash is left in here by default along with Run Back or Back Dash
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall=(Power>=1000)
trigger1 = command = "x" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall=(Power>=600)
trigger1 = command = "y" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 220
triggerall=(Power>=2500)
trigger1 = command = "z" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
trigger1 = command = "a" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall=(Power>=50)
trigger1 = command = "b" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall=(Power>=300)
trigger1 = command = "c" ;This command is listed above under default commands
trigger1 = statetype = S
trigger1 = ctrl
