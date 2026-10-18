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
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
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
name = "AI0" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b 
time = 0 
[Command] 
name = "AI1" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a 
time = 0 
[Command] 
name = "AI2" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0 
[Command] 
name = "AI3" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI4" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI5" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0
[Command] 
name = "AI6" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0
[Command] 
name = "AI7" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI8" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI9" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI10" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0 
[Command] 
name = "AI11" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI12" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a 
time = 0 
[Command] 
name = "AI13" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI14" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI15" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI16" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI17" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI18" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI19" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI20" 
command = a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI21" 
command = b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI22" 
command = c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI23" 
command = a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI24" 
command = b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI25" 
command = a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI26" 
command = b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI27" 
command = c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI28" 
command = a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI29" 
command = b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI30" 
command = x,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI31" 
command = x,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI32" 
command = x,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI33" 
command = x,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI34" 
command = x,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI35" 
command = x,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI36" 
command = x,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI37" 
command = x,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI38" 
command = x,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI39" 
command = x,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI40" 
command = x,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI41" 
command = x,y,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI42" 
command = x,y,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI43" 
command = x,y,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI44" 
command = x,y,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI45" 
command = x,y,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI46" 
command = x,y,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI47" 
command = x,y,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI48" 
command = x,y,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI49" 
command = x,y,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI50" 
command = x,y,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI51" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a 
time = 0 
[Command] 
name = "AI52" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0 
[Command] 
name = "AI53" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI54" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI55" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0
[Command] 
name = "AI56" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0
[Command] 
name = "AI57" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI58" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI59" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI60" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b 
time = 0 
[Command] 
name = "AI61" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI62" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a 
time = 0 
[Command] 
name = "AI63" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI64" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI65" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI66" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI67" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI68" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI69" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI70" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI71" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI72" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI73" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI74" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI75" 
command = x,y,z,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI76" 
command = x,y,z,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI77" 
command = x,y,z,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI78" 
command = x,y,z,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI79" 
command = x,y,z,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI80" 
command = x,y,z,x,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI81" 
command = x,y,z,x,b,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI82" 
command = x,y,z,x,c,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI83" 
command = x,y,z,x,a,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI84" 
command = x,y,z,x,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI85" 
command = x,y,z,x,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI86" 
command = x,y,z,x,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI87" 
command = x,y,z,x,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI88" 
command = x,y,z,x,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI89" 
command = x,y,z,x,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI90" 
command = x,y,z,x,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI91" 
command = x,y,z,x,y,b,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI92" 
command = x,y,z,x,y,c,c,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI93" 
command = x,y,z,x,y,a,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI94" 
command = x,y,z,x,y,b,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI95" 
command = x,y,z,x,y,a,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI96" 
command = x,y,z,x,y,b,b,b,b,b,b,b,b,a
time = 0 
[Command] 
name = "AI97" 
command = x,y,z,x,y,c,c,c,c,c,c,c,c,b
time = 0 
[Command] 
name = "AI98" 
command = x,y,z,x,y,a,a,a,a,a,a,a,b
time = 0 
[Command] 
name = "AI99" 
command = x,y,z,x,y,b,b,b,b,b,b,b,a
time = 0 

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

[State -1, ai] 
type = varset 
triggerall = var(59) = 0 
trigger1 = Command = "AI0" 
trigger2 = Command = "AI1" 
trigger3 = Command = "AI2" 
trigger4 = Command = "AI3" 
trigger5 = Command = "AI4" 
trigger6 = Command = "AI5" 
trigger7 = Command = "AI6" 
trigger8 = Command = "AI7" 
trigger9 = Command = "AI8" 
trigger10 = Command = "AI9" 
trigger11 = Command = "AI10" 
trigger12 = Command = "AI11" 
trigger13 = Command = "AI12" 
trigger14 = Command = "AI13" 
trigger15 = Command = "AI14" 
trigger16 = Command = "AI15" 
trigger17 = Command = "AI16" 
trigger18 = Command = "AI17" 
trigger19 = Command = "AI18" 
trigger20 = Command = "AI19" 
trigger21 = Command = "AI20" 
trigger22 = Command = "AI21" 
trigger23 = Command = "AI22" 
trigger24 = Command = "AI23" 
trigger25 = Command = "AI24" 
trigger26 = Command = "AI25" 
trigger27 = Command = "AI26" 
trigger28 = Command = "AI27" 
trigger29 = Command = "AI28" 
trigger30 = Command = "AI29" 
trigger31 = Command = "AI30"  
trigger32 = Command = "AI31" 
trigger33 = Command = "AI32" 
trigger34 = Command = "AI33" 
trigger35 = Command = "AI34" 
trigger36 = Command = "AI35" 
trigger37 = Command = "AI36" 
trigger38 = Command = "AI37" 
trigger39 = Command = "AI38" 
trigger40 = Command = "AI39" 
trigger41 = Command = "AI40"
trigger42 = Command = "AI41" 
trigger43 = Command = "AI42" 
trigger44 = Command = "AI43" 
trigger45 = Command = "AI44" 
trigger46 = Command = "AI45" 
trigger47 = Command = "AI46" 
trigger48 = Command = "AI47" 
trigger49 = Command = "AI48" 
trigger50 = Command = "AI49" 
trigger51 = Command = "AI50" 
trigger52 = Command = "AI51" 
trigger53 = Command = "AI52" 
trigger54 = Command = "AI53" 
trigger55 = Command = "AI54" 
trigger56 = Command = "AI55" 
trigger57 = Command = "AI56" 
trigger58 = Command = "AI57" 
trigger59 = Command = "AI58" 
trigger60 = Command = "AI59" 
trigger61 = Command = "AI60" 
trigger62 = Command = "AI61" 
trigger63 = Command = "AI62" 
trigger64 = Command = "AI63" 
trigger65 = Command = "AI64" 
trigger66 = Command = "AI65" 
trigger67 = Command = "AI66" 
trigger68 = Command = "AI67" 
trigger69 = Command = "AI68" 
trigger70 = Command = "AI69" 
trigger71 = Command = "AI70" 
trigger72 = Command = "AI71" 
trigger73 = Command = "AI72" 
trigger74 = Command = "AI73" 
trigger75 = Command = "AI74" 
trigger76 = Command = "AI75" 
trigger77 = Command = "AI76" 
trigger78 = Command = "AI77" 
trigger79 = Command = "AI78" 
trigger80 = Command = "AI79" 
trigger81 = Command = "AI80"  
trigger82 = Command = "AI81" 
trigger83 = Command = "AI82" 
trigger84 = Command = "AI83" 
trigger85 = Command = "AI84" 
trigger86 = Command = "AI85" 
trigger87 = Command = "AI86" 
trigger88 = Command = "AI87" 
trigger89 = Command = "AI88" 
trigger90 = Command = "AI89" 
trigger91 = Command = "AI90"
trigger92 = Command = "AI91" 
trigger93 = Command = "AI92" 
trigger94 = Command = "AI93" 
trigger95 = Command = "AI94" 
trigger96 = Command = "AI95" 
trigger97 = Command = "AI96" 
trigger98 = Command = "AI97" 
trigger99 = Command = "AI98" 
trigger100 = Command = "AI99" 
var(59) = 1

[State ]
type = varset
triggerall = var(59)=1
trigger1 = !var(58)=[20,21]
trigger2 = var(58)=20
trigger2 = var(0)>40
trigger2 = P2Dist X < 400*Const (size.xscale)
trigger3 = var(58)=21
trigger3 = var(0)>40
trigger3 = P2Dist X > -200*Const (size.xscale)
var(58)=0

[State ]
type = varset
triggerall = var(59)=1
trigger1 = ctrl
trigger1 = P2Dist X > 400*Const (size.xscale)
trigger2 = P2Dist X > 0
trigger2 = enemynear,stateno=2004&&enemynear,movetype=H
var(58)=20

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
trigger1 = P2Dist X < -200*Const (size.xscale)
trigger2 = P2Dist X > -120*Const (size.xscale)
trigger2 = P2Dist X < -50*Const (size.xscale)
trigger3 = P2Dist X < 0
trigger3 = enemynear,stateno=2004&&enemynear,movetype=H
var(58)=21
[State ]
type = varset
triggerall = var(59)=1
trigger1 = ctrl
trigger1 = P2Dist X < -100*Const (size.xscale)
trigger1 = random<50
var(58)=5

[State ]
type = varset
triggerall = var(59)=1
trigger1 = var(58)=20
trigger1 = P2Dist X > 760*Const (size.xscale)
var(58)=100

[State ]
type = varset
triggerall = var(59)=1
trigger1 = var(58)=21
trigger1 = P2Dist X < -600*Const (size.xscale)
var(58)=105

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = gametime%3=0
trigger1 = P2Dist X > 1200*Const (size.xscale)
trigger1 = random<300
trigger2 = enemynear,stateno!=2004&&enemynear,movetype!=H
trigger2 = random<50
var(58)=200

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = gametime%3=1
trigger1 = P2Dist X > -50*Const (size.xscale)
trigger1 = P2Dist X < 800*Const (size.xscale)
trigger1 = enemynear,stateno!=2004&&enemynear,movetype!=H
trigger1 = random>750
var(58)=300

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = P2Dist X > -350*Const (size.xscale)
triggerall = P2Dist X < 550*Const (size.xscale)
trigger1 = enemynear,stateno=2004&&enemynear,movetype=H
trigger2 = random<20
var(58)=400

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = enemynear,stateno!=2004&&enemynear,movetype!=H
trigger1 = random<(helper(13),var(0)+helper(13),var(0))/10
var(58)=500

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = enemynear,stateno!=2004&&enemynear,movetype!=H
trigger1 = random<50
var(58)=600

[State ]
type = varset
triggerall = var(59)=1
triggerall = ctrl
triggerall = enemynear,movetype!=H
trigger1 = random<40
trigger1 = P2Dist X > 100*Const (size.xscale)
var(58)=700
