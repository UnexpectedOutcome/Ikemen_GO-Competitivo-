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
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "DDD_ab"
command = ~D, D, a+b

[Command]
name = "DDD_ab"
command = D, D, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "DDD_ab"
command = ~D, D, b+c

[Command]
name = "DDD_ab"
command = D, D, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "DDD_ab"
command = ~D, D, a+c

[Command]
name = "DDD_ab"
command = D, D, a+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DD_a"
command = ~D, D, a

[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = ~D, D, b

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF"
command = ~D, DF, F
time = 15

[Command]
name = "QCF"
command = ~D, F
time = 15

[Command]
name = "QCB"
command = ~D, DB, B
time = 15

[Command]
name = "QCB"
command = ~D, B
time = 15

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

[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

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
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /z
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

[Command]
name = "y+z"
command = y+z
time = 1

;-| Directional |--------------------------------------------------------------
[Command]
name = "F";Required (do not remove)
command = /F
time = 1

[Command]
name = "UF";Required (do not remove)
command = /UF
time = 1

[Command]
name = "U" ;Required (do not remove)
command = /U
time = 1

[Command]
name = "UB";Required (do not remove)
command = /UB
time = 1

[Command]
name = "B";Required (do not remove)
command = /B
time = 1

[Command]
name = "DB";Required (do not remove)
command = /DB
time = 1

[Command]
name = "D";Required (do not remove)
command = /D
time = 1

[Command]
name = "DF";Required (do not remove)
command = /DF
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
;   type = null;ChangeState          ;Don't change this
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

[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y






 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)<=-1
trigger1=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=901)
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = Varset
triggerall=fvar(34)>0 && fvar(34)-fvar(5) !=[-99,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-99,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-99,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-99,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(35)<0 
fv =  35
value =-fvar(35)
[State -2 , 1]
type = Varset
triggerall=fvar(34)=0||fvar(34)-fvar(5) =[-99,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-99,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-99,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-99,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(34)<0 
fv =  34
value =-fvar(34)
[State -2 , 1]
type = Varset
triggerall=fvar(33)=0||fvar(33)-fvar(5) =[-99,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-99,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-99,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(33)<0 
fv =  33
value =-fvar(33)
[State -2 , 1]
type = Varset
triggerall=fvar(32)=0||fvar(32)-fvar(5) =[-99,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-99,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(32)<0 
fv =  32
value =-fvar(32)
[State -2 , 1]
type = Varset
triggerall=fvar(31)=0||fvar(31)-fvar(5) =[-99,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(31)<0 
fv =  31
value =-fvar(31)
[State -2 , 1]
type = Varset
triggerall=fvar(30)=0||fvar(30)-fvar(5) =[-99,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(30)<0 
fv =  30
value =-fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(30)=0||root,fvar(30)-fvar(5) =[-99,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(30)<0 
fv =  30
value =-root,fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)=0||root,fvar(33)-fvar(5) =[-99,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(33)<0 
fv =  33
value =-root,fvar(33)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(32)=0||root,fvar(32)-fvar(5) =[-99,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(32)<0 
fv =  32
value =-root,fvar(32)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(39)=0||root,fvar(39)-fvar(5) =[-99,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(39)>=0
trigger1=fvar(5) >0
fv = 39
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(39)<0 
fv =  39
value =-root,fvar(39)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(38)=0||root,fvar(38)-fvar(5) =[-99,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(38)>=0
trigger1=fvar(5) >0
fv = 38
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(38)<0 
fv =  38
value =-root,fvar(38)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(37)=0||root,fvar(37)-fvar(5) =[-99,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(37)>=0
trigger1=fvar(5) >0
fv = 37
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(37)<0 
fv =  37
value =-root,fvar(37)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(36)=0||root,fvar(36)-fvar(5) =[-99,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(36)>=0
trigger1=fvar(5) >0
fv = 36
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(36)<0 
fv =  36
value =-root,fvar(36)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(35)=0||root,fvar(35)-fvar(5) =[-99,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(35)<0 
fv =  35
value =-root,fvar(35)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(34)=0||root,fvar(34)-fvar(5) =[-99,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(34)<0 
fv =  34
value =-root,fvar(34)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(31)=0||root,fvar(31)-fvar(5) =[-99,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(31)<0 
fv =  31
value =-root,fvar(31)





[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 25
value =0
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(24)>1 && root,fvar(24)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(9)>1 && root,fvar(9)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(8)>1 && root,fvar(8)-enemynear(Var(36)),stateno*1000 !=[0,999]
trigger1=root,fvar(25)=0 && var(14)<2
fv = 25
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 25
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 24
value =0
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(9)>1 && root,fvar(9)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(8)>1 && root,fvar(8)-enemynear(Var(36)),stateno*1000 !=[0,999]
trigger1=root,fvar(24)=0 && var(14)<2
fv = 24
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 24
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(9)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 9
value =0
[State -2 , 1]
type = parentVarset 
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(8)>1 && root,fvar(8)-enemynear(Var(36)),stateno*1000 !=[0,999]
trigger1=root,fvar(9)=0 && var(14)<2
fv = 9
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(9)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 9
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 26
value =0
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[0,999]
triggerall=root,fvar(8)>1 && root,fvar(8)-enemynear(Var(36)),stateno*1000 !=[0,999]
trigger1=root,fvar(26)=0 && var(14)<2
fv = 26
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 26
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 27
value =0
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(8)>1 && root,fvar(8)-enemynear(Var(36)),stateno*1000 !=[0,999]
trigger1=root,fvar(27)=0 && var(14)<2
fv = 27
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 27
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(8)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 8
value =0
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=root,fvar(8)=0 && var(14)<2
fv = 8
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(8)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 8
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A||(root,stateno=900||root,stateno=902)
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14)+ifelse((root,teamside=1),0,-1)+ifelse((root,stateno=901),-1,0))
Ignorehitpause=1












[State -2:         VarSet] 
type     = parentVarSet 
triggerall=root,fvar(1)=[0,999999]
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=(var(13)=0);;;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
fv = 1
value =root,fvar(1)+1000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
fv = 1
value =root,fvar(1)-1000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=[1,999]
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=var(13)>0 
fv = 1
value =-root,fvar(1)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=0
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=var(13)>0 
fv = 1
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
fv = 1
value =ifelse(root,fvar(1)<=-1000000,-root,fvar(1)-1000000,ifelse(root,fvar(1)>=-999,0,-root,fvar(1)-(ceil(-root,fvar(1)/1000)-ifelse(-root,fvar(1)-(ceil(-root,fvar(1)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
fv = 1
value =-root,fvar(1)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 1
value =root,fvar(1)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(1)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,fvar(1)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,fvar(1)-(ceil(root,fvar(1)/1000)-ifelse(root,fvar(1)-(ceil(root,fvar(1)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
fv = 1
value =root,fvar(1)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[0,999999]
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=(var(13)=0);;;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
fv = 2
value =root,fvar(2)+1000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
fv = 2
value =root,fvar(2)-1000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[1,999]
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=var(13)>0 
fv = 2
value =-root,fvar(2)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=0 && root,fvar(1)=[999,999999]
trigger1=(root,stateno!=[220,221])
trigger1=(root,stateno=400)
trigger1=var(13)>0 
fv = 2
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
fv = 2
value =ifelse(root,fvar(2)<=-1000000,-root,fvar(2)-1000000,ifelse(root,fvar(2)>=-999,0,-root,fvar(2)-(ceil(-root,fvar(2)/1000)-ifelse(-root,fvar(2)-(ceil(-root,fvar(2)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
fv = 2
value =-root,fvar(2)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 2
value =root,fvar(2)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(2)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,fvar(2)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,fvar(2)-(ceil(root,fvar(2)/1000)-ifelse(root,fvar(2)-(ceil(root,fvar(2)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
fv = 2
value =root,fvar(2)+2000000
[State -2:         VarSet] 
type     = VarSet 
triggerall=var(50)=[0,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=(root,stateno!=[220,229])
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899])||(root,stateno=10109)
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999] 
trigger1=(root,stateno=[1500,1599])
trigger1=(var(13)=0);;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=[1500,1599])
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=[1500,1599])
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=[1500,1599])
trigger1=(var(13)=0);||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=[1500,1599])
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=[1500,1599])
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;;&& var(5)=[999,999999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&var(35)!=[1,9])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[2000,3999])||(root,stateno=[8000,8099])||(root,stateno=1009)||(root,stateno=1102)
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&var(35)!=[1,9])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,ctrl&&(helper(218),var(35)!=[1,9])&&(root,statetype!=A))||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
triggerall=(root,stateno=[42,44])||(root,stateno=[47,48])||(root,stateno=[220,222])
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,ctrl&&(helper(218),var(35)!=[1,9])&&(root,statetype!=A))||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
fv = 17
value =-root,fvar(17)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
fv = 17
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
fv = 17
value =-root,fvar(17)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 17
value =root,fvar(17)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(17)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,fvar(17)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,fvar(17)-(ceil(root,fvar(17)/1000)-ifelse(root,fvar(17)-(ceil(root,fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
fv = 17
value =root,fvar(17)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(18)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
fv = 18
value =-root,fvar(18)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(18)=0 && root,fvar(17)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
fv = 18
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(18)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
fv = 18
value =-root,fvar(18)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(18)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 18
value =root,fvar(18)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(18)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,fvar(18)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,fvar(18)-(ceil(root,fvar(18)/1000)-ifelse(root,fvar(18)-(ceil(root,fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
fv = 18
value =root,fvar(18)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=[160,162])||(root,stateno=[1300,1399])
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 45
value =var(45)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[0,999999]
triggerall=(root,stateno=1100)
trigger1=(var(13)=0)||root,stateno=198
v = 42
value =var(42)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 42
value =var(42)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1,999]
triggerall=(root,stateno=1100)
trigger1=var(13)>0 
v = 42
value =-var(42)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=0
triggerall=(root,stateno=1100)
trigger1=var(13)>0 
v = 42
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 42
value =ifelse(var(42)<=-1000000,-var(42)-1000000,ifelse(var(42)>=-999,0,-Var(42)-(ceil(-Var(42)/1000)-ifelse(-Var(42)-(ceil(-Var(42)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 42
value =-var(42)
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 42
value =var(42)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(42)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(42)-(ceil(Var(42)/1000)-ifelse(Var(42)-(ceil(Var(42)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 42
value =var(42)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[0,999999]
triggerall=(root,stateno=1100)
trigger1=(var(13)=0)
v = 43
value =var(43)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 43
value =var(43)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1,999]
triggerall=(root,stateno=1100)
trigger1=var(13)>0 
v = 43
value =-var(43)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=0 && var(42)=[999,999999]
triggerall=(root,stateno=1100)
trigger1=var(13)>0 
v = 43
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 43
value =ifelse(var(43)<=-1000000,-var(43)-1000000,ifelse(var(43)>=-999,0,-Var(43)-(ceil(-Var(43)/1000)-ifelse(-Var(43)-(ceil(-Var(43)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 43
value =-var(43)
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 43
value =var(43)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(43)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(43)-(ceil(Var(43)/1000)-ifelse(Var(43)-(ceil(Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 43
value =var(43)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[0,999999]
trigger1=(root,stateno=105)
trigger1=(var(13)=0)
v = 37
value =var(37)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 37
value =var(37)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[1,999]
trigger1=(root,stateno=105)
trigger1=var(13)>0 
v = 37
value =-var(37)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=0 ;;&& var(5)=[999,999999]
trigger1=(root,stateno=105)
trigger1=var(13)>0 
v = 37
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)||((root,Ctrl||(root,stateno=[0,39])||(root,StateNo =[120,149]))&&var(35)!=[1,9])
v = 37
value =ifelse(var(37)<=-1000000,-var(37)-1000000,ifelse(var(37)>=-999,0,-Var(37)-(ceil(-Var(37)/1000)-ifelse(-Var(37)-(ceil(-Var(37)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 37
value =-var(37)
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 37
value =var(37)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(37)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(37)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(37)-(ceil(Var(37)/1000)-ifelse(Var(37)-(ceil(Var(37)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 37
value =var(37)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[0,999999]
trigger1=(root,stateno=105)
trigger1=(var(13)=0)
v = 38
value =var(38)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 38
value =var(38)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[1,999]
trigger1=(root,stateno=105)
trigger1=var(13)>0 
v = 38
value =-var(38)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=0 && var(37)=[999,999999]
trigger1=(root,stateno=105)
trigger1=var(13)>0 
v = 38
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)||((root,Ctrl||(root,stateno=[0,39])||(root,StateNo =[120,149]))&&var(35)!=[1,9])
v = 38
value =ifelse(var(38)<=-1000000,-var(38)-1000000,ifelse(var(38)>=-999,0,-Var(38)-(ceil(-Var(38)/1000)-ifelse(-Var(38)-(ceil(-Var(38)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 38
value =-var(38)
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 38
value =var(38)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(38)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(38)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(38)-(ceil(Var(38)/1000)-ifelse(Var(38)-(ceil(Var(38)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 38
value =var(38)+2000000



 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(16)=[-99999,0]
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
fv = 16
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(16)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
fv = 16
value =0
[State -2:         VarSet]
type     = parentVarSet 
triggerall=root,fvar(16)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
fv = 16
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(16)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
fv = 16
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(16)=[-199999,-100000]
trigger1=1
fv = 16
value =-root,fvar(16)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(16)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
fv = 16
value =root,fvar(16)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)=[-99999,0]
triggerall=root,fvar(16)>0&&root,fvar(16)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
fv = 15
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,fvar(16)<=0||root,fvar(16)=-root,fvar(15)
fv = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
fv = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
fv = 15
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)=[-199999,-100000]
trigger1=1
fv = 15
value =-root,fvar(15)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,fvar(15)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
fv = 15
value =root,fvar(15)-100000

















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L||root,stateno=[18300,18399]
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A||root,stateno=[18300,18399]
trigger2=var(14)<=10||root,stateno=[18300,18399]
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
trigger5=(var(35)=[100,101])||(var(35)=[200,201])
trigger6=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger6=(enemynear(Var(36)),pos x<=root,pos x)
trigger6=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger7=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger7=(enemynear(Var(36)),pos x>=root,pos x)
trigger7=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,fvar(30)>999 && root,fvar(30)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,fvar(30)>999 && root,fvar(30)-((ceil(root,fvar(30)/1000)-ifelse(root,fvar(30)-(ceil(root,fvar(30)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,fvar(33)>999 && root,fvar(33)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,fvar(33)>999 && root,fvar(33)-((ceil(root,fvar(33)/1000)-ifelse(root,fvar(33)-(ceil(root,fvar(33)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,fvar(32)>999 && root,fvar(32)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,fvar(32)>999 && root,fvar(32)-((ceil(root,fvar(32)/1000)-ifelse(root,fvar(32)-(ceil(root,fvar(32)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,fvar(39)>999 && root,fvar(39)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,fvar(39)>999 && root,fvar(39)-((ceil(root,fvar(39)/1000)-ifelse(root,fvar(39)-(ceil(root,fvar(39)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,fvar(38)>999 && root,fvar(38)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,fvar(38)>999 && root,fvar(38)-((ceil(root,fvar(38)/1000)-ifelse(root,fvar(38)-(ceil(root,fvar(38)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,fvar(37)>999 && root,fvar(37)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,fvar(37)>999 && root,fvar(37)-((ceil(root,fvar(37)/1000)-ifelse(root,fvar(37)-(ceil(root,fvar(37)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=root,fvar(36)>999 && root,fvar(36)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=root,fvar(36)>999 && root,fvar(36)-((ceil(root,fvar(36)/1000)-ifelse(root,fvar(36)-(ceil(root,fvar(36)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(35)>999 && root,fvar(35)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(35)>999 && root,fvar(35)-((ceil(root,fvar(35)/1000)-ifelse(root,fvar(35)-(ceil(root,fvar(35)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(34)>999 && root,fvar(34)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(34)>999 && root,fvar(34)-((ceil(root,fvar(34)/1000)-ifelse(root,fvar(34)-(ceil(root,fvar(34)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(31)>999 && root,fvar(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(31)>999 && root,fvar(31)-((ceil(root,fvar(31)/1000)-ifelse(root,fvar(31)-(ceil(root,fvar(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
trigger1=root,stateno !=[8300,8305]
trigger1=root,stateno !=[18300,18305]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
;trigger5=inguarddist
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)
[State -2, Run Back]
type     = varadd
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger1=root,var(49)
v        = 15
value    =1





[State -2 , 1]
type = Varset
triggerall=(var(21)=[10000,19999])||(-var(21)=[10000,19999])
triggerall=(var(21)>0&&var(21)-10000-enemynear(Var(36)),pos x!=[-80,80])||(var(21)<0&&var(21)+10000-enemynear(Var(36)),pos x!=[-80,80])
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 21
value =20000
[State -2 , 1]
type = Varset
triggerall=(var(21)=[10000,19999])||(-var(21)=[10000,19999])
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 21
value =0
[State -2 , 1]
type = Varset
trigger1=(var(21)=[10000,19999])||(-var(21)=[10000,19999])
trigger1=(enemynear(Var(36)),stateno =[5000,5059])
v = 21
value =0
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),life>0
trigger1=var(21)=0 && enemynear(Var(36)),stateno=[5100,5120]
v = 21
value =ifelse((enemynear(Var(36)),pos x>=0),(enemynear(Var(36)),pos x+10000),(enemynear(Var(36)),pos x-10000))
[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=(root,stateno=[1100,1199])||enemynear(Var(36)),stateno =5145||enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000














[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=root,stateno=305
v = 19
value =2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl 
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||(root,stateno=[700,719])||(root,stateno=3020)
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-200,200]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),stateno>200 && enemynear(Var(36)),movetype=H
trigger1=root,movetype!=H
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno -var(13)!=[-9,9]
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,10000)
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=7||var(35)=[4,5]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =ifelse((var(35)=[4,5]),95,3)
[State -2 , 1]
type = Varset
;;trigger1=var(35)!=[10,39]
trigger1=(root,stateno=10047)
v = 35
value =99
[State -2 , 1]
type = Varset
trigger1=var(35)!=[13,15]
trigger1=(root,stateno=[20130,20132])
v = 35
value =98
[State -2 , 1]
type = Varset
trigger1=0;(root,stateno=6000) && var(13)>0
v = 35
value =ifelse(var(13)>0,7,2)
[State -2 , 1]
type = Varset
trigger1=var(35)=[7,8]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =2
[State -2 , 1] 
type = Varset
trigger1=var(35)!=95
trigger1=var(35)!=5
trigger1=var(35)!=[7,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||root,fvar(16)>=2000000||root,fvar(17)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
;;triggerall=((var(35)!=[5,40])&&(var(35)!=[95,300]));||var(35)=8
trigger1=(root,prevstateno=5120&&root,stateno=161) && var(13)>0
v = 35
value =7
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[95,300]));||var(35)=8
trigger1=(root,stateno=108)||(root,stateno=105)||(root,stateno=[41,49])||(root,stateno=[160,162])||(root,stateno=[1300,1309])
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<2
triggerall=root,stateno=420||enemynear(Var(36)),stateno!=854
trigger1=(root,stateno=[800,899]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=[3000,3999]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger3=(var(35)!=15)||(root,stateno!=200)
trigger3=(var(35)!=19);||(root,stateno!=200)
trigger3=(root,stateno=[200,499]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger4=(var(35)!=20)||(root,stateno!=[1100,1299])
trigger4=(root,stateno=[1000,1999]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger5=(root,stateno=[620,629]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[600,699]) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno<200) && enemynear(Var(36)),statetype!=A
trigger2=(root,stateno=[200,499]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno<200 && enemynear(Var(36)),statetype!=A
v = 35
value =13
[State -2 , 1]
type = Varset
;;trigger1=(var(35)!=21)
trigger1=(root,stateno=[600,609]) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno>200) && enemynear(Var(36)),statetype!=A
;;trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger2=(root,stateno=[220,221]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),statetype!=A
v = 35
value =12;;ifelse((root,stateno=[600,609]),14,ifelse((root,stateno=[220,229]),15,12))
[State -2 , 1]
type = Varset
triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=(root,stateno=1001) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno>200) ;;&& enemynear(Var(36)),statetype!=A
trigger2=(root,stateno=[810,819]) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno>200) ;;&& enemynear(Var(36)),statetype!=A
v = 35
value =14
[State -2 , 1]
type = Varset
triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=(root,stateno=1101) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno>200) ;;&& enemynear(Var(36)),statetype!=A
trigger1=0;(root,prevstateno=[600,699])
v = 35
value =16
[State -2 , 1]
type = Varset
trigger1=(root,stateno=610) && (root,prevstateno!=[600,699]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),pos y>-60
v = 35
value =18
[State -2 , 1]
type = Varset
trigger1=((root,stateno=[6060,6061])||(root,prevstateno=[6060,6061])) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =19
[State -2 , 1]
type = Varset
triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=(root,stateno=[3050,3059]) && enemynear(Var(36)),movetype=H && (enemynear(Var(36)),stateno>200)
v = 35
value =20
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[8050,8059]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
;;trigger2=(root,stateno=6060) && (root,prevstateno=[3050,3051]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =22
[State -2 , 1]
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=98)||(var(35)=95)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A
trigger2=(var(35)=[9,39]);||(var(35)=[100,199])
trigger2=(var(35)!=16)||root,movetype=H||enemynear(Var(36)),statetype!=A
trigger2=(var(35)!=10)||root,movetype=H||enemynear(Var(36)),movetype=A||(root,stateno<40&&root,statetype!=A)||root,movetype=A
trigger2=(var(35)!=11)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(var(35)!=9)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5120])
trigger3=(var(35)=99)
trigger3=(root,movetype=A)||(root,movetype=H)||(root,stateno<200&&root,statetype!=A);;&&(root,stateno!=410)
trigger4=(var(35)=18)
trigger4=0;(root,stateno=[600,699])
v = 35
value =0








[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 20 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 20 
value =-fvar(20)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && enemynear(Var(36)),statetype!=A
fv = 20 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)>0 && enemynear(Var(36)),stateno=fvar(20) && (root,stateno=410||root,stateno=1500)
fv = 20 
value =fvar(20)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(20)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 20 
value =ifelse((root,movetype=H),fvar(20)+100000,fvar(20)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
fv = 21 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 21 
value =-fvar(21)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && fvar(20)>0 && enemynear(Var(36)),statetype!=A
fv = 21
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)>0 && enemynear(Var(36)),stateno=fvar(21) && (root,stateno=410||root,stateno=1500)
fv = 21
value =fvar(21)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(21)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 21 
value =ifelse((root,movetype=H),fvar(21)+100000,fvar(21)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
trigger3=fvar(21)=enemynear(Var(36)),stateno||fvar(21)-100000=enemynear(Var(36)),stateno||fvar(21)-200000=enemynear(Var(36)),stateno
fv = 22 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 22
value =-fvar(22)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && fvar(20)>0 && fvar(21)>0 && enemynear(Var(36)),statetype!=A
fv = 22
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)>0 && enemynear(Var(36)),stateno=fvar(22) && (root,stateno=410||root,stateno=1500)
fv = 22
value =fvar(22)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(22)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 22
value =ifelse((root,movetype=H),fvar(22)+100000,fvar(22)-100000)




[State -2 , 1]
type = Varadd
triggerall=var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000)<998
trigger1=var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=13311
trigger2=var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000)>0
v = 1
value =1
[State -2 , 1]
type = Varset
triggerall=var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000)>0
triggerall=enemynear(Var(36)),stateno!=13311
trigger1=enemynear(Var(36)),ctrl||enemynear(Var(36)),stateno<200
v = 1
value =(var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000))*1000
[State -2 , 1]
type = Varset
triggerall=var(1)-((ceil(var(1)/1000)-ifelse(var(1)-(ceil(var(1)/1000)*1000)<0,1,0))*1000)>0
triggerall=enemynear(Var(36)),stateno!=13311
trigger1=enemynear(Var(36)),vel x!=[-1,1]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),statetype=A
v = 1
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(2)=1
trigger1=(root,stateno!=[40,49])&&root,statetype!=A
trigger2=root,movetype=H||root,movetype=A
v = 2
value =0
[State -2 , 1]
type = Varadd
triggerall=var(2)=0
trigger1=root,stateno=[43,44]
v = 2
value =1
[State -2 , 1]
type = Varadd
triggerall=var(3)=[0,999]
trigger1=1
v = 3
value =1
[State -2 , 1]
type = Varset
triggerall=var(3)>0
trigger1=enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>200
v = 3
value =ifelse(var(3)>600,-300,0)
[State -2 , 1]
type = Varset
triggerall=var(3)<0
trigger1=enemynear(Var(36)),movetype!=H;;&&enemynear(Var(36)),stateno>200
v = 3
value =-var(3)
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 5
value =0
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 5
value =ifelse((-var(5)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(5)=0 && enemynear(Var(36)),movetype=A
trigger1=root,stateno=[120,159]
v = 5
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 7
value =0
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 7
value =ifelse((-var(7)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(7)=0 && enemynear(Var(36)),movetype=A
trigger1=var(6)>0&&enemynear(Var(36)),stateno-var(6)!=[-99,99]
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 7
value =-root,life
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=(root,stateno=200||root,stateno=400) && enemynear(Var(36)),movetype=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=enemynear(Var(36)),movetype!=H
value =-10
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=(var(13)-enemynear(Var(36)),stateno!=[-99,99])
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,SA,SP,HA,HP
v = 12
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/100000)-ifelse(var(12)-(ceil(var(12)/100000)*100000)<0,1,0))*100000)=[0,9999]
triggerall=enemynear(Var(36)),movetype=H
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger1=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<20000||random<=400
trigger1=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<40000||random<=400
trigger1=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=400
trigger1=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=400
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)=[20,29]
trigger2=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<20000||random<=500||enemynear(Var(36)),life<root,life
trigger2=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<40000||random<=500;;||enemynear(Var(36)),life<root,life
trigger2=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
trigger2=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
trigger3=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)=[0,19]
trigger3=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500||enemynear(Var(36)),life<root,life
trigger3=root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500||enemynear(Var(36)),life<root,life
v = 12
value =10000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/100000)-ifelse(var(12)-(ceil(var(12)/100000)*100000)<0,1,0))*100000)=[0,9999]
trigger1=enemynear(Var(36)),movetype=H
v = 12
value =20000
[State -2 , 1]
type = Varset
trigger1=var(12)-((ceil(var(12)/100000)-ifelse(var(12)-(ceil(var(12)/100000)*100000)<0,1,0))*100000)=[10000,29999]
trigger1=(enemynear(Var(36)),movetype!=H)&&(enemynear(Var(36)),statetype!=L)
v = 12
value =var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)+((ceil(var(12)/100000)-ifelse(var(12)-(ceil(var(12)/100000)*100000)<0,1,0))*100000)
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=-2) && p2movetype=A 
trigger1=enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=-2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && p2movetype=A 
v = 11
value =-2
[State -2 , 1] 
type = Varset
triggerall= (root,stateno<200 && enemynear(helper(218),Var(36)),movetype!=H);;;||root,stateno=1400||root,stateno=3050||root,stateno=6060||(root,stateno=210&&var(35)=[18,19])
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)>0
v = 10
value =((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)
[State -2 , 1] 
type = Varadd
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<4
triggerall= (root,stateno=1001||root,stateno=410||root,stateno=[201,202]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H && enemynear(helper(218),Var(36)),statetype=A
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=0
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=2
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=4
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=6
trigger5=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=8
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[200,202])&&(root,stateno!=1001)&&(root,stateno!=410)
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=3
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=5
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=7
v = 10
value =1
[State -2 , 1] 
type = Varset
triggerall= enemynear(helper(218),Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)>=10
v = 10
value =var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)+((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[1400,1401]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H;; && enemynear(helper(218),Var(36)),statetype=A
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[20,29]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[40,49]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[60,69]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[1400,1499])
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[10,19]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[30,39]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[50,59]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[70,79]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=1200||root,numhelper(6120)||(root,stateno=47&&root,stateno=[200,499])) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H;; && enemynear(helper(218),Var(36)),statetype=A
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger2=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[200,299]
trigger3=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[400,499]
trigger4=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[600,699]
v = 10
value =100
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=1200)&&(root,stateno!=47)&&root,numhelper(6120)=0
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger2=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[300,399]
trigger3=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[500,599]
trigger4=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[700,799]
v = 10
value =100
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[280,290]);;;; && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/10000)-ifelse(var(10)-(ceil(var(10)/10000)*10000)<0,1,0))*10000)=[0,999]
v = 10
value =1000
[State -2 , 1] 
type = Varadd
;;triggerall=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
triggerall= (root,stateno=[1000,1499])||root,stateno=210
;;triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)<=0&&(enemynear(Var(36)),stateno!=[5000,5550])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)<10000
v = 10
value =10000
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[200,1999])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[10000,19999]
v = 10
value =ifelse((root,movetype=H)&&(root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=20),20000,10000)
[State -2 , 1] 
type = Varadd
triggerall= random<=8
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 10
value =-20000
[State -2 , 1] 
type = Varadd
triggerall= var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[30000,39999]
triggerall=(root,stateno<200||root,movetype!=H)
trigger1=random<=4 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=6 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
v = 10
value =-30000
[State -2 , 1] 
type = Varadd
triggerall=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)<100000
trigger1=enemynear(Var(36)),statetype=A 
trigger2=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
v = 10
value =ifelse((root,facing>0),100000,200000)
[State -2 , 1] 
type = Varset
triggerall=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
trigger1=root,movetype=H||root,movetype=A
trigger2=enemynear(helper(218),Var(36)),statetype!=A
trigger2=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)<=0&&(enemynear(Var(36)),stateno!=[5100,5150])
v = 10
value =var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)+((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=var(10)<1000000
trigger1=roundstate=[3,4]
trigger1=root,stateno=195;;[1390,1392]
v = 10
value =1000000
[State -2 , 1] 
type = Varset
triggerall= (root,stateno<200 && enemynear(helper(218),Var(36)),movetype!=H)||root,stateno=1400||root,stateno=3050||root,stateno=6060||(root,stateno=210&&var(35)=[18,19])
trigger1=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)>0
fv = 10
value =((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)
[State -2 , 1] 
type = Varadd
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
triggerall= (root,stateno=1101) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H ;;;&& enemynear(helper(218),Var(36)),statetype!=A
trigger1=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=0
trigger2=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=2
trigger3=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=4
trigger4=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=6
trigger5=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=8
fv = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=1101)
trigger1=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=1
trigger2=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=3
trigger3=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=5
trigger4=fvar(10)-((ceil(fvar(10)/10)-ifelse(fvar(10)-(ceil(fvar(10)/10)*10)<0,1,0))*10)=7
fv = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall=fvar(10)-((ceil(fvar(10)/100000)-ifelse(fvar(10)-(ceil(fvar(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall=fvar(10)-((ceil(fvar(10)/100000)-ifelse(fvar(10)-(ceil(fvar(10)/100000)*100000)<0,1,0))*100000)<90000||random<=100
trigger1=(root,stateno!=161)&&(root,stateno<200||((root,movetype!=H)&&(root,movetype!=A))||(enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H))
fv = 10
value =ifelse((fvar(10)-((ceil(fvar(10)/100000)-ifelse(fvar(10)-(ceil(fvar(10)/100000)*100000)<0,1,0))*100000)>=90000),-90000,10000)
[State -2 , 1] 
type = Varadd
triggerall=fvar(10)-((ceil(fvar(10)/100000)-ifelse(fvar(10)-(ceil(fvar(10)/100000)*100000)<0,1,0))*100000)<10000
trigger1=root,stateno=161 && root,prevstateno=5120
fv = 10
value =10000
[State -2 , 1] 
type = Varset
trigger1=root,movetype=H
trigger1=fvar(10)-((ceil(fvar(10)/1000000)-ifelse(fvar(10)-(ceil(fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
trigger2=random<=2
trigger2=fvar(10)-((ceil(fvar(10)/1000000)-ifelse(fvar(10)-(ceil(fvar(10)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
fv = 10
value =fvar(10)-((ceil(fvar(10)/100000)-ifelse(fvar(10)-(ceil(fvar(10)/100000)*100000)<0,1,0))*100000)+((ceil(fvar(10)/1000000)-ifelse(fvar(10)-(ceil(fvar(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=root,movetype=H
triggerall=fvar(10)-((ceil(fvar(10)/1000000)-ifelse(fvar(10)-(ceil(fvar(10)/1000000)*1000000)<0,1,0))*1000000)<100000
trigger1=random<=700
;trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
;trigger2=(root,var(59)-((ceil(root,var(59)/10000)-ifelse(root,var(59)-(ceil(root,var(59)/10000)*10000)<0,1,0))*10000)>=2000)
;trigger3=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
;trigger3=(root,var(59)-((ceil(root,var(59)/100000)-ifelse(root,var(59)-(ceil(root,var(59)/100000)*100000)<0,1,0))*100000)>=20000)
fv = 10
value =100000
[State -2 , 1] 
type = Varadd
triggerall=root,movetype=H
trigger1=fvar(10)-((ceil(fvar(10)/1000000)-ifelse(fvar(10)-(ceil(fvar(10)/1000000)*1000000)<0,1,0))*1000000)<100000
fv = 10
value =200000




[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=enemynear(Var(36)),movetype!=A
v = 20
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(20)<0
trigger1=enemynear(Var(36)),movetype=A
trigger1=enemynear(Var(36)),animtime<var(20)
trigger1=enemynear(Var(36)),anim=var(22)
v = 20
value =99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(20)!=99999
v = 20
value =enemynear(Var(36)),animtime
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(22) !=enemynear(Var(36)),anim
v = 22
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(22)>=0
v = 22
value =enemynear(Var(36)),anim
Ignorehitpause=1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1





[Statedef 20219]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = velset
trigger1=1
x=120

[State -2 , 1]
type = Varadd
trigger1=frontedgebodydist>0
v = 59
value =1

[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2= NoAutoTurn 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=[230,239]
trigger1 = enemynear(helper(218),Var(36)),movetype!=H































































; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]




;-------------------------■AI設定■--------------------------------------------------------










[State -2:         VarSet];■AI+コンボ設定(combo)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=0 && AIlevel;;(palno!=1) && (palno!=7)
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =                    1                        ;(ここを1以上にするとＡＩが入ります+コンボ設定。0~3)


[State -2:         VarSet];■立ち回り設定(movement)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,9]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =10*                 1                        ;(立ち回り設定。0~3)




[State -2:         VarSet];■超反応設定(counter)■
type     = VarSet
triggerall=!ishelper
trigger1=fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=fvar(14)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 14
value    =                    7            ;(0~10、超反応設定。数字が高いほど攻撃に対する反撃が厳しくなる)



[State -2:         VarSet];■ガード設定(guard)■
type     = VarSet
triggerall=!ishelper
trigger1=fvar(14) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 14
value    =fvar(14)+1000*       8             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)


[State -2:         VarSet];■投げ抜け設定(throw escape)■
type     = VarSet
triggerall=!ishelper
trigger1=fvar(21)=0
fv        = 21
value    =                    0              ;(0or1、対AIで相手に投げ抜けを許すかどうか。0で抜けあり)



































           
[State -1, Stand]
type = ChangeState 
value =195;ifelse(random<=333,1390,ifelse(random<=666,1391,1392))
triggerall = !IsHelper
triggerall = roundstate!=4;;helper(218),var(35)!=16
triggerall = helper(218),var(10)<1000000
triggerall = var(59)!=0 
triggerall = win && Alive && statetype!=A
triggerall=p2bodydist x>=-20 && prevstateno!=[3900,3999]
triggerall=ctrl||stateno=[0,39]
trigger1=var(59)>0 ;;&& var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100
trigger2=-var(59)>0 ;;&& -var(59)-((ceil(-var(59)/1000)-ifelse(-var(59)-(ceil(-var(59)/1000)*1000)<0,1,0))*1000)>=100
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=fvar(13) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 13
value    =fvar(13)+1000*       11             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=fvar(13)-((ceil(fvar(13)/1000)-ifelse(fvar(13)-(ceil(fvar(13)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(fvar(13)-((ceil(fvar(13)/1000)-ifelse(fvar(13)-(ceil(fvar(13)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 13
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=fvar(13)<100000
triggerall=random>((ceil(fvar(13)/1000)-ifelse(fvar(13)-(ceil(fvar(13)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 13
value    =100000 
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 14
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=fvar(14)<100000
triggerall=random>((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
fv        = 14
value    =100000 









[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(1) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(2) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(17) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(18) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(15) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(16) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(39) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(38) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(37) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(36) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(35) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(34) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(33) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(32) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(31) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(30) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(9) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(8) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(27) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(26) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(25) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(24) =0






[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(59)!=0
triggerall = var(42)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(42) = 0
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=220)&&(prevstateno=[200,499])&&time<=1&&(p2stateno=[150,159])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=0)
trigger2=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=2)
trigger3=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=4)
trigger4=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=6)
var(42) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2
triggerall =(stateno<100&&statetype!=A)||(movetype=H&&stateno>200)||(movehit&&p2movetype=H)
trigger1=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=1)
trigger2=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=3)
trigger3=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=5)
trigger4=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)=7)
var(42) = ifelse(movetype=H,1,-1)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=820||stateno=840) && p2stateno=[150,159]
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/100)-ifelse(var(42)-(ceil(var(42)/100)*100)<0,1,0))*100)=[0,9])
var(42) = 10
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(p2movetype!=H)||stateno<200||p2life<=0||(p2movetype=H&&p2stateno>200)
trigger1=(var(42)-((ceil(var(42)/100)-ifelse(var(42)-(ceil(var(42)/100)*100)<0,1,0))*100)=[10,19])
var(42) = ifelse(p2movetype=A||p2life<=0||(p2movetype=H&&p2stateno>200),-10,10)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =stateno=210&&(prevstateno=[200,499])&&time<=1&&p2movetype=H&&p2stateno>200&&p2statetype=C
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[0,99])
var(42) = 100
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =stateno=210&&(prevstateno=[200,499])&&time<=1&&p2movetype=H&&p2stateno>200&&p2statetype=S
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[0,99])
trigger2=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[200,299])
var(42) = 500
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=211&&p2movetype=H)||p2life<=0||p2movetype!=H
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[100,199])
var(42) = ifelse((stateno=211&&p2movetype=H)||p2life<=0||p2movetype=A,-100,100)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=211&&p2movetype=H)||p2life<=0||p2movetype!=H
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[500,599])
trigger2=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[700,799])
var(42) = ifelse((stateno=211&&p2movetype=H)||p2life<=0||p2movetype=A,-500,ifelse((var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)=[700,799]),100,300))
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=210||stateno=310||stateno=211)
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(42) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2
triggerall =(stateno<100&&statetype!=A)||(movetype=H&&stateno>200)||(movehit&&p2movetype=H)
trigger1=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(42)-((ceil(var(42)/10000)-ifelse(var(42)-(ceil(var(42)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(42) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=10023)||(stateno=230)||(stateno=10021)||(stateno=211)
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[0,9999])
trigger2=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[20000,29999])
trigger3=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[40000,49999])
trigger4=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[60000,69999])
var(42) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno<100)||(movetype=H&&stateno>200)||(movehit&&p2movetype=H)
trigger1=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[10000,19999])
trigger2=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[30000,39999])
trigger3=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[50000,59999])
trigger4=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)=[70000,79999])
var(42) = ifelse(movetype=H,10000,-10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = var(42)<1000000
trigger1 = win
var(42) = 1000000

[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)+((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[1000,1499])||(stateno=210)
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(59) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno!=[200,1499])&&(stateno!=6000)
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(59) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[10040,10049])||(stateno=[42,49])||(stateno=[220,222]);;;||(stateno=[1100,1199])
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[0,9999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[20000,29999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[40000,49999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[60000,69999])
var(59) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno<40)||(movetype=H&&stateno>200)||(movehit&&p2movetype=H)
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[10000,19999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[30000,39999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[50000,59999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[70000,79999])
var(59) = ifelse(movetype=H,10000,-10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[200,220])||(stateno=260)||(stateno=240)
triggerall=time<=1 && p2movetype=H && p2stateno>200 && p2statetype=S
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[0,99999])
trigger2=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999])
var(59) = 500000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[200,220])||(stateno=260)||(stateno=240)
triggerall=time<=1 && p2movetype=H && p2stateno>200 && p2statetype=C
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[0,99999])
var(59) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall=movehit||p2life<=0||p2movetype!=H
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
var(59) = ifelse(p2movetype=A||movehit||p2life<=0,-100000,100000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall=movehit||p2life<=0||p2movetype!=H
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999])
trigger2=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999])
var(59) = ifelse(p2movetype=A||movehit||p2life<=0,-500000,100000)
[State -3:         VarSet] 
type     = VarSet 
triggerall=!ishelper
trigger1 = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=13311||p2stateno=[5100,5150]
trigger1 = var(59)<1000000 && (stateno=[1000,1099])
var(59) = var(59)+1000000
[State -3:         VarSet] 
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0 && (stateno<200||movetype=H||p2life<=0)
trigger1 = var(59)=[1000000,1999999]
var(59) = ifelse(stateno<200||p2life<=0,-1000000,1000000)
[State -3:         VarSet] 
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<233
trigger1=RoundState !=2
var(59) = var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=RoundState !=2
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)<0
trigger1=RoundState=2 && ctrl
v        = 59
value    =-var(59)

[State -2]
Type = Helper
triggerall=!ishelper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1

[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
trigger1=var(55)>=0
trigger1=0;numprojid(20219)
v        = 55
value    =1
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
trigger1=var(55)>0
trigger1=(stateno!=[200,399])
trigger1=0;p2movetype!=H
v        = 55
value    =0

[State -2, 1]
type = Projectile
triggerall=!ishelper
triggerall=var(59)
triggerall=var(55)=0 && !ishelper
trigger1=0;(stateno=[2300,2399])
projanim = 20218 
projid= 20219
projhitanim = 1112
velocity=50,0;120, 0
projpriority=4
projsprpriority=2
projstagebound=0
projedgebound=99999
offset=0, 0
;;postype=right
supermovetime=99999
pausemovetime=99999
projremovetime=20;;-1















[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<100,200,100)
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=p2stateno=857 && (p2bodydist x<100||stateno!=100)
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=p2bodydist x>=-50
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,39])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
;;trigger1=(helper(218),var(35)!=1)||enemynear(helper(218),Var(36)),vel y>0||p2bodydist y>=-10
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger1=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2movetype=H&&p2stateno>200);;;||helper(218),var(35)=13||helper(218),var(35)=23
[State -1, Stand]
type = ChangeState 
value =1200
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=helper(218),var(35)=20
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,39])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
;;trigger1=(helper(218),var(35)!=1)||enemynear(helper(218),Var(36)),vel y>0||p2bodydist y>=-10
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger1=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2movetype=H&&p2stateno>200);;;||helper(218),var(35)=13||helper(218),var(35)=23
[State -1, Stand]
type = ChangeState 
value =100
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=helper(218),var(35)=19 && (stateno!=100)
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=p2bodydist x>=100
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,39])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
;;trigger1=(helper(218),var(35)!=1)||enemynear(helper(218),Var(36)),vel y>0||p2bodydist y>=-10
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger1=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2movetype=H&&p2stateno>200);;;||helper(218),var(35)=13||helper(218),var(35)=23
[State -1, Stand]
type = ChangeState 
value =410
triggerall = !IsHelper
triggerall =var(59)>0
triggerall=helper(218),var(35)=19
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)
triggerall=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*13=[-80,20]);;||p2bodydist y>-60
triggerall=p2bodydist x>=-50
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,39])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
;;trigger1=(helper(218),var(35)!=1)||enemynear(helper(218),Var(36)),vel y>0||p2bodydist y>=-10
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger1=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=(p2movetype=H&&p2stateno>200);;;||helper(218),var(35)=13||helper(218),var(35)=23
[State -1]
type = ChangeState 
value = 161
triggerall = !ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive 
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall =statetype != A
triggerall = stateno=5120 && time>=3
;triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/100000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/100000)*100000)<0,1,0))*100000)<10000
;triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=p2movetype=H&&p2stateno>200;;;&&p2bodydist y<-100;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=partner,life<=0
trigger2=partner,life>0&&((facing>0&&partner,pos x<pos x)||(facing<0&&partner,pos x>pos x))
[State -1, Stand]
type = ChangeState
value =3900
triggerall = !IsHelper
triggerall = var(59)>0 && var(42)>=1000000
triggerall = power >= 2000
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A);;;||p2bodydist y>=-20;;;||()
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;;triggerall =P2BodyDist X <= 150
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<=-12
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1]
type = ChangeState 
value = 1500
triggerall = !ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(35)=16
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)>=3
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109);;||(StateNo = [100,101])
triggerall=p2bodydist x>-30 && p2bodydist x<180
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
;triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150])
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=p2movetype=H&&p2stateno>200;;;&&p2bodydist y<-100;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1
[State -1]
type = ChangeState 
value = 100
triggerall = !ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive 
triggerall=((helper(218),var(35)=12&&p2statetype!=A)||p2stateno=5145)&&(stateno!=[100,101])
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)>=3
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109);;||(StateNo = [100,101])
triggerall=p2bodydist x>20
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
;triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150])
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;;;&&p2bodydist y<-100;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1
[State -1]
type = ChangeState
value =ifelse(backedgebodydist>100&&p2bodydist x>=-50,103,102)
triggerall = !ishelper
triggerall = var(59)>0 && stateno!=[900,909]
triggerall = var(11) = 1
triggerall = cond(vel y < 0,pos y <= -40,1)
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
triggerall=helper(218),var(35)!=9
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149]);;||((stateno = [108,109]) && time >= 6)
triggerall=p2bodydist x=[-150,150]
;;triggerall=p2statetype!=A
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=vel x=0 && vel y>0 && p2movetype!=H
trigger1=(p2bodydist x<-30&&frontedgebodydist>100)||(p2bodydist x>=-30&&backedgebodydist>100)||(p2bodydist x<40&&frontedgebodydist>100)||(p2bodydist x>=-50&&backedgebodydist>100)
[State -1]
type = ChangeState
value =ifelse(p2bodydist x<200||random<=750,610,620)
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=95)||p2movetype=H||vel x>0
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x<=400
triggerall=p2bodydist x>150
triggerall=vel y<=0 && (pos y=[-40,-20]) && p2statetype!=A
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
trigger1=0;helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0)
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2stateno<200||p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1]
type = ChangeState
value =ifelse(vel x>=0,102,103)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
triggerall = var(11)>0 && (stateno!=[100,109]) && (prevstateno!=[100,109]) && (prevstateno!=46)
;;triggerall = cond(vel y < 0,pos y <= -40,1)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;triggerall=helper(218),var(35)!=9
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149]);;||((stateno = [108,109]) && time >= 6)
;;triggerall=p2bodydist x=[-150,150]
triggerall=vel x<0||p2statetype!=A
triggerall=vel x<0||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
triggerall=vel y<0 && pos y<-20 && (vel x!=0) && pos y>=-50;(pos y<-40||p2bodydist x<30) && ((pos y>-50&&vel x>=0)||(vel x<0&&pos y=[-80,-60]));vel x<0; && pos y=[-50,-20];;pos y=[-50,ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30,0,-40)]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5
trigger1=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger1=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger1=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger1=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger1=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger1=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);;||helper(218),var(14)<2
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
[State -1, Stand]
type = ChangeState
value =610
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)=1
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype =A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A 
triggerall=p2bodydist x>150 && p2bodydist x<=600 && vel y>=0 ;;;&& pos y=[-80,-61]
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger6=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)<ifelse(p2bodydist x>150,30,20)
trigger7=p2bodydist x>200
[State -1]
type = ChangeState
value =ifelse(stateno=600,601,600)
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=95)||p2movetype=H||vel x>0
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(movecontact>=10&&stateno = 600)
triggerall=p2bodydist x<=90+ifelse(vel x>0,40,0)||(movecontact>=ifelse(vel y>0,1,10)&&stateno = 600)
;;triggerall=p2bodydist x>-50
triggerall=((pos y>=-80 && vel y<0)||(movecontact>=10&&stateno = 600)) && p2statetype!=A
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0)
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1]
type = ChangeState
value =600;;ifelse(p2statetype=A||vel x<0||p2bodydist x>50+ifelse(vel x=0&&(prevstateno!=49),0,30)+ifelse((stateno=[102,103])||(prevstateno=[102,103]),50,0),600,620)
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=95)||p2movetype=H||vel x>0
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149]);;||(animelemtime(20) >= 1&&stateno = [1100,1101])
triggerall=p2bodydist x<=90+ifelse(vel x=0&&(prevstateno!=49),0,30)+ifelse((stateno=[102,103])||(prevstateno=[102,103]),50,0)
triggerall=p2bodydist x>-50
triggerall=(p2statetype=A && p2bodydist y=[-5,80])||(pos y>=-100 && (vel y>0||(stateno=[102,103])||(prevstateno=[102,103])||(stateno=[1400,1499])||(prevstateno=[1400,1499])) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0)
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1]
type = ChangeState
value =1501
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=95)||p2movetype=H||vel x>0
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(movecontact>=10&&stateno = 600)
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x=[150,230]
triggerall=p2bodydist x>150
triggerall=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*28=[-200,0]) && p2statetype=A
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
trigger1=0;helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0)
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2stateno<200||p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1]
type = ChangeState
value =103
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = var(11)>0 && (stateno!=[100,109]) && (prevstateno!=[100,109]) && (prevstateno!=46)
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=95)||p2movetype=H||vel x>0
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(movecontact>=10&&stateno = 600)
triggerall=p2bodydist x>0 && backedgebodydist >60
triggerall= p2statetype=A
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150]))
trigger1=0;helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0)
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2stateno<200||p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1, Stand]
type = ChangeState 
value =47;200;220;10024;420;800;400;ifelse(p2bodydist x<=60,400,ifelse(p2bodydist x<=130,200,420))
triggerall = !IsHelper
triggerall =0;facing>0;var(59)>0 
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=130;270;=[260,270];13;[290,300];15;<=230;30;140;160;180;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=ifelse(p2bodydist x<=60,-8,ifelse(p2bodydist x<=130,-10,-12))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=1;(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=ifelse(p2bodydist x<=60,-9,ifelse(p2bodydist x<=130,-11,-13))||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-12)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =200
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2||random<=500
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=90;70;50;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-13||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7 && p2bodydist x<100
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=-14||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-13)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=180,400,420)
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
;triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=230;70;50;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=ifelse(p2bodydist x<=140,-11,ifelse(p2bodydist x<=160,-12,ifelse(p2bodydist x<=180,-13,-15)))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7 && p2bodydist x<100
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=ifelse(p2bodydist x<=140,-12,ifelse(p2bodydist x<=160,-13,ifelse(p2bodydist x<=180,-14,-16)))||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-15)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =10024
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
;triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>180
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=300;70;50;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=ifelse(p2bodydist x<=260,-14,-16)||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7 && p2bodydist x<100
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=-16||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-15)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =210
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
;triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>300
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=300;70;50;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-22||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7 && p2bodydist x<100
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=-23||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-23)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =800
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=30;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-6||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=0;(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=-7||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-6)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =10109
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0||p2stateno=5145
triggerall=(helper(218),var(35)!=12)||p2bodydist x<10||time>=10||stateno!=100
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=S);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=p2bodydist x<=40;140-ifelse((helper(218),var(35)=12),10,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-5||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=0;(p2movetype=H&&p2stateno>200);;||helper(218),var(35)=13
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger3=enemynear(helper(218),Var(36)),animtime=-6||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-5)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=130,200,210)
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=stateno!=29
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)||partner,life>0
triggerall=p2stateno!=857
triggerall=(p2stateno!=854)||p2movetype!=H
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)
triggerall=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x<=130,13,22)=[-40,20]);;||p2stateno=5145
triggerall=p2bodydist x>=-50
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
;;triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])
;;trigger1=(helper(218),var(35)!=1)||enemynear(helper(218),Var(36)),vel y>0||p2bodydist y>=-10
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime>=helper(218),var(20)&&helper(218),var(20)!=99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=35,6,ifelse(p2bodydist x<=70,7,13))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200);;;||helper(218),var(35)=13||helper(218),var(35)=23
[State -1]
type = ChangeState 
value = ifelse(p2bodydist x>20,27,28)
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = stateno!=[100,109]
triggerall = RoundState = 2 && Alive
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=[22,23])||((helper(218),var(35)=[15,16])&&p2bodydist x<40)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2
triggerall =statetype!= A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109);;;;||(stateno=[100,101]);;;;||(stateno=410&&movehit)||(stateno=420&&movehit)||(stateno=210&&movehit&&p2bodydist y>-5)
triggerall=p2bodydist x>-50
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&(p2stateno=5145||p2stateno !=[5100,5150])
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;;&&p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=p2bodydist x<=20&&(stateno!=28)&&(time>=5||helper(218),var(35)=23)
trigger2=p2bodydist x>20&&(stateno!=27)&&(time>=5||helper(218),var(35)=23)














[State -1]
type = ChangeState
value =ifelse(statetype=A,1401,ifelse(facing>0,1500,3000));;ifelse(facing<0,10109,10023);150;ifelse(facing<0,ifelse(random<=500,3000,3050),3900)
triggerall =var(59)=0
;;triggerall =var(12) <= 0
trigger1 =Command = "start";;;||(statetype=A&&vel x=0)||pos y=[-30,-20];;;||pos y<-40
;trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
[State -1, Stand]
type = ChangeState
value =204
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive
triggerall=alive
triggerall=power>=1000
triggerall=Stateno=[150,152]
triggerall = p2movetype=A && helper(218),var(14)<2 && p2statetype!=A
triggerall=p2bodydist x=[-20,80]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=backedgebodydist<30
trigger2=(fvar(16)>0 && fvar(16)=p2stateno)||(fvar(15)>0 && fvar(15)=p2stateno)
[State -1, Stand]
type = ChangeState
value =8050
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = power<1000&&Var(50) != 1
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(p2stateno<800&&partner,stateno=[5000,5150])
triggerall=(facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||enemynear(helper(218),Var(36)),vel x>=0
triggerall=(p2statetype !=A)||(p2bodydist x>0&&((p2bodydist y>-20&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*6<=0&&enemynear(helper(218),Var(36)),vel y>=1)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*6=[-20,20])))
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*13),0)<=40
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-6||p2statetype=A
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger23=partner,life>0
trigger24=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
[State -1, Stand]
type = ChangeState
value =8000
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
triggerall = statetype != L
triggerall=alive
triggerall=stateno=[5000,5119]
triggerall = p2movetype=A
trigger1=(stateno=5000||stateno=5010||stateno=5020)&&time=0
trigger1=life<300
trigger2=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger2=(stateno=5000||stateno=5010||stateno=5020)&&time=0
trigger2=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)=1
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger3=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA)
trigger3=(p2bodydist x=[-70,70])&&(p2bodydist y=[-40,40])
trigger4=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger4=(stateno=5000||stateno=5010||stateno=5020)&&time=0
trigger4=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,HA,HT,HP)
ignorehitpause=1
[State -1, Stand]
type = ChangeState
value =220
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype =C
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <=270
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=enemynear(helper(218),Var(36)),animtime<=-29
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
[State -1, Stand]
type = ChangeState
value =200
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2||random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 90
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
[State -1, Stand]
type = ChangeState
value =400
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <=180
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=140,11,ifelse(p2bodydist x<=160,12,13))
[State -1, Stand]
type = ChangeState
value =420
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 230
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
[State -1, Stand]
type = ChangeState
value =10024
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>180 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 300
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=260,14,16)
[State -1, Stand]
type = ChangeState
value =210
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;;triggerall =P2BodyDist X <= 230
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=22
[State -1, Stand]
type = ChangeState
value =800
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <=30
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,6,6)
[State -1, Stand]
type = ChangeState
value =10109
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype =S
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <=40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=ifelse(p2bodydist x<=75,5,6)
[State -1, Stand]
type = ChangeState
value =410
triggerall = !IsHelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20||life<p2life||random<=100
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = ((helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8]))||stateno=901
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype!=H
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall=p2statetype=A && p2bodydist x>=ifelse(p2bodydist y>=-40,0,0) ;;&& enemynear(helper(218),Var(36)),vel x>=0
triggerall=((p2bodydist x)/enemynear(helper(218),Var(36)),vel x)>=12||p2bodydist y+enemynear(helper(218),Var(36)),vel y*((p2bodydist x)/enemynear(helper(218),Var(36)),vel x)>=-100||enemynear(helper(218),Var(36)),vel x=0
triggerall=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*12=[-140,-20]) && p2bodydist y<-20;;||(p2bodydist y>=-100&&enemynear(helper(218),Var(36)),vel y=[-2,1]);;&&(p2bodydist y>=-60||p2bodydist x-enemynear(helper(218),Var(36)),vel x*5>0)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*12),0)=[50,230]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=12
trigger17 = (p2movetype!=A)&&inguarddist=0&&p2movetype!=H
[State -1, Stand]
type = ChangeState
value =1500
triggerall = !IsHelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20||life<p2life||random<=100
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = ((helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8]))||stateno=901
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
;;triggerall = p2movetype=A
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall=p2statetype=A && p2bodydist x>=ifelse(p2bodydist y>=-40,0,0) && enemynear(helper(218),Var(36)),vel x>=0
triggerall=((p2bodydist x)/enemynear(helper(218),Var(36)),vel x)>=24||p2bodydist y+enemynear(helper(218),Var(36)),vel y*((p2bodydist x)/enemynear(helper(218),Var(36)),vel x)>=-100||enemynear(helper(218),Var(36)),vel x=0
triggerall=(p2bodydist y+enemynear(helper(218),Var(36)),vel y*24=[-100,-60]);;||(p2bodydist y>=-100&&enemynear(helper(218),Var(36)),vel y=[-2,1]);;&&(p2bodydist y>=-60||p2bodydist x-enemynear(helper(218),Var(36)),vel x*5>0)
triggerall=p2bodydist x>=-30 && enemynear(helper(218),Var(36)),vel y>0
triggerall=P2bodyDist X -ifelse(p2statetype=A,(enemynear(helper(218),Var(36)),vel x*24),0)<=230
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=0
[State -1, Stand]
type = ChangeState
value =47
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;;triggerall = stateno != [100,105]
triggerall = (p2bodydist x=[-40,100])&&p2statetype!=A
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
;;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(fvar(17)>=2000000||fvar(18)>=2000000||fvar(17)=p2stateno||fvar(18)=p2stateno)
triggerall=(fvar(14)-((ceil(fvar(14)/100000)-ifelse(fvar(14)-(ceil(fvar(14)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(14)<2
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=3
trigger1=fvar(18)>0&&(fvar(18)-(p2stateno*100) =[-999,999])
trigger2=fvar(18)>0&&(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger3=fvar(17)>0&&(fvar(17)-(p2stateno*100) =[-999,999])
trigger4=fvar(17)>0&&(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger5=(fvar(18)!=[0,1999999])||(fvar(17)!=[0,1999999])
trigger6=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)
[State -1, Stand]
type = ChangeState
value =220
triggerall = !IsHelper
triggerall = var(59)>0 && partner,life<=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;;triggerall = stateno != [100,105]
triggerall = (p2bodydist x=[100,280])&&p2statetype!=A
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
;;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(fvar(17)>=2000000||fvar(18)>=2000000||fvar(17)=p2stateno||fvar(18)=p2stateno)
triggerall=(fvar(14)-((ceil(fvar(14)/100000)-ifelse(fvar(14)-(ceil(fvar(14)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(14)<2
trigger1=fvar(18)>0&&(fvar(18)-(p2stateno*100) =[-999,999])
trigger2=fvar(18)>0&&(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger3=fvar(17)>0&&(fvar(17)-(p2stateno*100) =[-999,999])
trigger4=fvar(17)>0&&(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger5=(fvar(18)!=[0,1999999])||(fvar(17)!=[0,1999999])
trigger6=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)
[State -1, Stand]
type = ChangeState
value =1500
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;;triggerall = stateno != [100,105]
triggerall = (p2bodydist x=[-40,230]);;&&p2statetype!=A
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
;;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(fvar(17)>=2000000||fvar(18)>=2000000||fvar(17)=p2stateno||fvar(18)=p2stateno)
triggerall=(fvar(14)-((ceil(fvar(14)/100000)-ifelse(fvar(14)-(ceil(fvar(14)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(44)<2000000 && helper(218),var(43)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(43)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(43)-(ceil(helper(218),Var(43)/1000)-ifelse(helper(218),Var(43)-(ceil(helper(218),Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(14)<5
trigger1=fvar(18)>0&&(fvar(18)-(p2stateno*100) =[-999,999])
trigger2=fvar(18)>0&&(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger3=fvar(17)>0&&(fvar(17)-(p2stateno*100) =[-999,999])
trigger4=fvar(17)>0&&(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger5=(fvar(18)!=[0,1999999])||(fvar(17)!=[0,1999999])
trigger6=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)
[State -1, Stand]
type = ChangeState
value =105;;ifelse(backedgebodydist<80,47,44);;105
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(37)=0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109);;||(stateno=[100,101])
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(fvar(17)>=2000000||fvar(18)>=2000000||fvar(17)=p2stateno||fvar(18)=p2stateno)
triggerall=(fvar(14)-((ceil(fvar(14)/100000)-ifelse(fvar(14)-(ceil(fvar(14)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=fvar(18)>0&&(fvar(18)-(p2stateno*100) =[-999,999])
trigger2=fvar(18)>0&&(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger3=fvar(17)>0&&(fvar(17)-(p2stateno*100) =[-999,999])
trigger4=fvar(17)>0&&(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) =0
trigger5=(fvar(18)!=[0,1999999])||(fvar(17)!=[0,1999999])
trigger6=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)
[State -1, Stand]
type = ChangeState
value =161
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),var(35)!=98)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 10109);;|| (stateno = [100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X < 100||partner,life<=0
;triggerall=p2bodydist x>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
triggerall=fvar(18)<=0||(fvar(18)-(p2stateno*100) !=[-999,999])
triggerall=fvar(18)<=0||(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=fvar(17)<=0||(fvar(17)-(p2stateno*100) !=[-999,999])
triggerall=fvar(17)<=0||(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=(fvar(18)=[0,1999999])&&(fvar(17)=[0,1999999])
triggerall=helper(218),var(45)<2000000 && helper(218),var(44)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(enemynear(helper(218),Var(36)),animtime<-30)
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,13]
trigger17=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=helper(218),var(11)-((ceil(helper(218),var(11)/10)-ifelse(helper(218),var(11)-(ceil(helper(218),var(11)/10)*10)<0,1,0))*10)!=[-1,0]
trigger17=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger17=0;(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)
trigger18=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)
trigger18=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),var(14)>=3 && helper(218),fvar(5)!=-99999
trigger18=0;(prevstateno=[150,159])||(prevstateno=[5100,5150])||(enemynear(helper(218),Var(36)),vel x>=2&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*5<0)||p2bodydist x<50
trigger19=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30&&p2bodydist x<=45&&frontedgebodydist -p2bodydist x>50
trigger20=0;p2bodydist x<=80&&partner,life>0&&(helper(218),var(14)=[2,10])
trigger21=(p2bodydist x<=50&&frontedgebodydist-p2bodydist x>50)
[State -1, Stand]
type = ChangeState
value =160
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),var(35)!=98)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 10109);;|| (stateno = [100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X < 120
;triggerall=p2bodydist x>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(18)<=0||(fvar(18)-(p2stateno*100) !=[-999,999])
triggerall=fvar(18)<=0||(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=fvar(17)<=0||(fvar(17)-(p2stateno*100) !=[-999,999])
triggerall=fvar(17)<=0||(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=(fvar(18)=[0,1999999])&&(fvar(17)=[0,1999999])
triggerall=helper(218),var(45)<2000000 && helper(218),var(44)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(enemynear(helper(218),Var(36)),animtime<-26)
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger17=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=helper(218),var(11)-((ceil(helper(218),var(11)/10)-ifelse(helper(218),var(11)-(ceil(helper(218),var(11)/10)*10)<0,1,0))*10)!=[-1,0]
trigger17=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger17=0;(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)
trigger18=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)
trigger18=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),var(14)>=3 && helper(218),fvar(5)!=-99999
trigger18=0;(prevstateno=[150,159])||(prevstateno=[5100,5150])||(enemynear(helper(218),Var(36)),vel x>=2&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*5<0)||p2bodydist x<50
trigger19=0;var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30&&p2bodydist x<=45&&frontedgebodydist -p2bodydist x>50
trigger20=0;p2bodydist x<=80&&partner,life>0&&(helper(218),var(14)=[2,10])
[State -1, Stand]
type = ChangeState
value =162
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),var(35)!=98)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype =A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno = 100 && time >= 3 || (stateno = [101,102]) && time >= 1)
triggerall = p2movetype=A
;triggerall=(p2statetype !=A)||(p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*5<=20)
triggerall=p2bodydist x>0 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X < 100||partner,life<=0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(18)<=0||(fvar(18)-(p2stateno*100) !=[-999,999])
triggerall=fvar(18)<=0||(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=fvar(17)<=0||(fvar(17)-(p2stateno*100) !=[-999,999])
triggerall=fvar(17)<=0||(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=(fvar(18)=[0,1999999])&&(fvar(17)=[0,1999999])
triggerall=helper(218),var(45)<2000000 && helper(218),var(44)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger17=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=helper(218),var(11)-((ceil(helper(218),var(11)/10)-ifelse(helper(218),var(11)-(ceil(helper(218),var(11)/10)*10)<0,1,0))*10)!=[-1,0]
trigger17=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger18=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),var(14)>=4
trigger19=p2bodydist x<=80&&partner,life>0&&(helper(218),var(14)=[2,10])
[State -1, Stand]
type = ChangeState
value =3000
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = var(42)<1000000||(var(21)!=0)||p2life<200||(power>=2000&&p2life>800)||partner,life>0||(power>=1500&&var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3)
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) && power>=1000 && (random<=200||p2life<200);;
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10<0;;;||()
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall =P2BodyDist X <= 120
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<=-10
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger23=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger23=0;(prevstateno=[150,159])||(prevstateno=[5000,5150])||enemynear(helper(218),Var(36)),vel x>=2||(enemynear(helper(218),Var(36)),HitDefAttr =SCA,SA,ST,SP)
trigger24=partner,life>0||(power>=1500&&var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3)
[State -1, Stand]
type = ChangeState
value =1500
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A);; && power>=1000 && var(18)!=0
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A);;;||()
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 230
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<=-24
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger17=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger23=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger23=(prevstateno=[150,159])||(prevstateno=[5000,5150])||enemynear(helper(218),Var(36)),vel x>=2||(enemynear(helper(218),Var(36)),HitDefAttr =SCA,SA,ST,SP)
trigger24=partner,life>0
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x<=120,47,10108)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[7,8]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109);;||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger6=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x<=120,47,10108)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[7,8]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109);;||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
triggerall=helper(218),var(3)>=600
trigger1=fvar(9)>999&&fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(9)>999&&fvar(9)-((ceil(fvar(9)/1000)-ifelse(fvar(9)-(ceil(fvar(9)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger6=fvar(8)>999&&fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(8)>999&&fvar(8)-((ceil(fvar(8)/1000)-ifelse(fvar(8)-(ceil(fvar(8)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
[State -1, Stand]
type = ChangeState
value =105
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),var(35)!=98)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno = 100 && time >= 3 || (stateno = [101,102]) && time >= 1)
triggerall = p2movetype=A
triggerall=enemynear(helper(218),Var(36)),vel x<=0;;(p2statetype !=A);;;||(p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*5<=20)
triggerall=p2bodydist x>-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X < 100||partner,life<=0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(18)<=0||(fvar(18)-(p2stateno*100) !=[-999,999])
triggerall=fvar(18)<=0||(fvar(18)-(ceil(fvar(18)/1000)-ifelse(fvar(18)-(ceil(fvar(18)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=fvar(17)<=0||(fvar(17)-(p2stateno*100) !=[-999,999])
triggerall=fvar(17)<=0||(fvar(17)-(ceil(fvar(17)/1000)-ifelse(fvar(17)-(ceil(fvar(17)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0)) !=0
triggerall=(fvar(18)=[0,1999999])&&(fvar(17)=[0,1999999]) 
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA)||(fvar(16)>0 && fvar(16)=p2stateno)||(fvar(15)>0 && fvar(15)=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,HA)||enemynear(helper(218),Var(36)),animtime<=-40||(fvar(16)>0 && fvar(16)=p2stateno)||(fvar(15)>0 && fvar(15)=p2stateno)
triggerall=helper(218),var(37)<2000000 && helper(218),var(38)<2000000
triggerall=(helper(218),var(37)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(37)-(ceil(helper(218),Var(37)/1000)-ifelse(helper(218),Var(37)-(ceil(helper(218),Var(37)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(38)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(38)-(ceil(helper(218),Var(38)/1000)-ifelse(helper(218),Var(38)-(ceil(helper(218),Var(38)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,10]
trigger17=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(9)<=999||(fvar(9)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(8)<=999||(fvar(8)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,HA)





















[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=212,1400,ifelse(stateno=202,210,212))
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && power>=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200);;||p2statetype!=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = (stateno = 212) && numhelper(7792)
trigger2 = (stateno = 211) && numhelper(7791)
trigger3 = (stateno = 202) && numhelper(7782) && frontedgebodydist<100
[State -1]
type = ChangeState
value =1401
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && power>=500
triggerall=(helper(218),var(35)=18)
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall=p2bodydist x>-50
;triggerall=(p2statetype=A && p2bodydist y=[-10,60])||(pos y>=-80 && (vel y>0||((stateno = [108,109]) && time >= 6)) && p2statetype!=A)
;triggerall=(stateno!=105)||(p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(stateno>=610||p2statetype=A)&&(p2movetype=H&&p2stateno>200)
trigger1 = (stateno = 611) && numhelper(7796) && time>28
[State -1, Roman Cancel]
type = changestate
value = ifelse(statetype=A,6061,6060)
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=(helper(218),var(35)!=13)
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<70
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A
trigger1 = (movecontact||numhelper(7777)) && time>20 && stateno=1500 && power>=1000
trigger2 = time>230 && stateno=3001 && movecontact=1 && power>=500
[State -1, Stand]
type = ChangeState 
value =3900
triggerall = !IsHelper
triggerall = var(59)>0 && var(42)>=1000000
triggerall = power >= 2000
triggerall = p2life <= lifemax/4
triggerall = var(21) = 0
;triggerall=(helper(218),var(35)!=13)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(p2movetype=H&&p2stateno>200)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<=130;;ifelse((stateno=[210,211]),80,60)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200)&&p2bodydist y>=-40;;;||(stateno=420&&p2statetype!=A)
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = 0;ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
[State -1, Stand]
type = ChangeState
value =1500
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0||(partner,stateno<200)||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A);; && power>=1000 && var(18)!=0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)>=50000||movecontact
triggerall = p2movetype=A
;triggerall=(p2statetype !=A);;;||()
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 230
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1 = 0;ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=211,1001,210)
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)<200)||stateno=211||p2statetype!=C
triggerall=(var(42)-((ceil(var(42)/1000)-ifelse(var(42)-(ceil(var(42)/1000)*1000)<0,1,0))*1000)<500)||stateno=211||p2statetype=A
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<160
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200);;||p2statetype!=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = (stateno = 211) && numhelper(7791)
trigger2 = 0;(stateno = 202) && numhelper(7782)
trigger3 = (stateno = 200) && numhelper(7780)
trigger4 = (stateno = 400) && numhelper(7785)
;trigger3 = (stateno = 212) && numhelper(7792)
;trigger4 = (stateno = 420) && numhelper(7788)
;trigger5 = (stateno = 421) && numhelper(7789)
[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=400||stateno=210,47,ifelse(var(32) = 1,400,210))
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=(helper(218),var(35)!=13)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerAll =(p2movetype=H&&p2stateno>200)&&(p2statetype=A)
trigger1 = (stateno = 400) && numhelper(7785)
trigger2 = var(32) = 1||(var(31) = 1&&frontedgebodydist<80)
trigger2 = (stateno = 202) && numhelper(7782) && p2bodydist x<=100
trigger3 = (stateno = 210) && numhelper(7790) && frontedgebodydist<80
[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=202,ifelse(random<=500||p2statetype=S,420,400),47)
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=(helper(218),var(35)!=13)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;triggerall=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)<2)||random<=200
;triggerall=(var(42)-((ceil(var(42)/10)-ifelse(var(42)-(ceil(var(42)/10)*10)<0,1,0))*10)<4)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||p2statetype=A||random<=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2stateno=[150,159])&&p2statetype!=A
;;triggerall =((stateno!=202)&&(stateno!=410))||(time>35&&movecontact=1)
trigger1 = (stateno = 400) && prevstateno=202 && numhelper(7785) && p2bodydist x<120
trigger2 = var(32) = 1
trigger2 = (stateno = 202) && numhelper(7782) && p2bodydist x<ifelse(p2statetype=S,150,100)
[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=410,411,ifelse(p2bodydist y>=-70,210,1001))
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=(helper(218),var(35)!=13)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||p2statetype=A||random<=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<ifelse(stateno=410,70,140)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = (stateno = 410) && numhelper(7786) && time>=22
trigger2 = (stateno = 411) && numhelper(7787) ;&& p2bodydist y>=-70
[State -1, Stand]
type = ChangeState 
value =ifelse(stateno=400||stateno=410||stateno=420,ifelse(p2bodydist x<=130,200,210),ifelse(stateno=202&&random<=500,210,stateno+1))
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall=(helper(218),var(35)!=13)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||p2statetype=A||random<=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<ifelse(stateno=410,70,140)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = (stateno = 200) && numhelper(7780)
trigger2 = (stateno = 201) && numhelper(7781) && (p2movetype=H&&p2stateno>200)
trigger3 = (stateno = 202) && numhelper(7782)
trigger4 = (stateno = 400) && numhelper(7785)
trigger5 = (stateno = 410) && numhelper(7786) && ((p2movetype!=H)||(p2statetype!=A)||(p2movetype!=H))
trigger6 = 0;(stateno = 411) && numhelper(7787)
trigger7 = (stateno = 420) && numhelper(7788)
trigger8 = 0;(stateno = 421) && numhelper(7789)
trigger9 = (stateno = 210) && numhelper(7790)
trigger10 = (stateno = 211) && numhelper(7791) && (p2movetype=H&&p2stateno>200)
[State -1, Stand]
type = ChangeState 
value =3000
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall = var(42)<1000000||(var(21)!=0)||p2life<100||(power>=2000&&p2life>800)||partner,life>0;;||(power>=1500&&var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3)
triggerall = statetype != A
triggerall = RoundState = 2 && Alive && (random<=300||p2life<100); && partner,life<=0
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||p2statetype=A||random<=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;;&& p2bodydist x<120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200);;||p2statetype!=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = 0;ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786) && ((p2movetype!=H)||(p2statetype!=A)||(p2movetype!=H))
trigger7 = 0;(stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<160,1000,1200)
triggerall = !IsHelper
triggerall =var(59)>0 
triggerall = statetype != A
triggerall = RoundState = 2 && Alive ;;;&& (random<=300||power>=4000); && partner,life<=0
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||p2statetype=A||random<=500
;;triggerall = NumHelper(1010) <= 0||(NumHelper(1010) <= 1&&Helper(1010),StateNo = [1012,1016])
;triggerall=((stateno!=420)&&(stateno!=211))||movecontact>=5||(p2statetype!=A)||p2stateno<200||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2movetype!=H
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<160
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A
;;triggerall =(stateno!=202)||(time>40&&movecontact=1)
trigger1 = 0;ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786) && ((p2movetype!=H)||(p2statetype!=A)||(p2movetype!=H))
trigger7 = 0;(stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
[State -1]
type = ChangeState
value =ifelse(var(11) = 1,45,ifelse(power>=1000&&(var(42)<1000000||(var(21)!=0)||p2life<100||(power>=2000&&p2life>800))&&(random<=333 && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3),3050,1101))
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall=(helper(218),var(35)!=11)||stateno>=600||vel x>=0;;;||frontedgebodydist>100
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall=p2bodydist x>-50
;triggerall=(p2statetype=A && p2bodydist y=[-10,60])||(pos y>=-80 && (vel y>0||((stateno = [108,109]) && time >= 6)) && p2statetype!=A)
;triggerall=(stateno!=105)||(p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(stateno>=610||p2statetype=A)&&(p2movetype=H&&p2stateno>200);;||(stateno=620&&(p2stateno<200||p2movetype!=H));||p2stateno<=200||p2stateno=[5100,5110] 
trigger1 = (stateno = 611) && numhelper(7796) && time>28
;;trigger1 = var(11) = 1
[State -1]
type = ChangeState
value =ifelse(stateno=600,601,ifelse(stateno=601,610,ifelse(stateno=610,611,ifelse(stateno=611,ifelse(power>=1000&&(var(42)<1000000||(var(21)!=0)||p2life<100||(power>=2000&&p2life>800)),3050,620),600))))
triggerall = !ishelper
triggerall = var(59)>0 
;triggerall = (P2StateNo!=[236, 238])||(P2MoveType!=H)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3
triggerall=(helper(218),var(35)!=11)||stateno>=600||vel x>=0;;;||frontedgebodydist>100
triggerall=(helper(218),var(35)!=18)||partner,life<=0
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall=p2bodydist x>-50
;triggerall=(p2statetype=A && p2bodydist y=[-10,60])||(pos y>=-80 && (vel y>0||((stateno = [108,109]) && time >= 6)) && p2statetype!=A)
;triggerall=(stateno!=105)||(p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]))
triggerall=stateno>=600||(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;;;||p2statetype!=A
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(stateno>=610||p2statetype=A)&&(p2movetype=H&&p2stateno>200);;||(stateno=620&&(p2stateno<200||p2movetype!=H));||p2stateno<=200||p2stateno=[5100,5110] 
trigger1 =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149]);;;||((stateno = [1100,1101])&&animelemtime(20) >= 1)
trigger1=p2bodydist x<=ifelse(vel x>0,110,80) && ((p2bodydist y=[ifelse(vel y<0,-100,-20),20])||stateno=102||prevstateno=45)
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796) && time>28






























































[State -1]
type = ChangeState
value=ifelse(statetype=A,840,800)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))||p2bodydist x>100||partner,life>0||p2movetype=H
;triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype = A)&&(p2statetype=A)&&p2bodydist X<=20&&p2bodydist Y=[-20,20])
triggerall=p2bodydist x>=-30
;triggerall = stateno != 100 
triggerall=p2movetype=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])||(time>=12&&StateNo = [1300,1302])
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1]
type = ChangeState
value=ifelse(statetype=A,840,800)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = time<30||partner,life>0||stateno!=0
;triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = fvar(14)-((ceil(fvar(14)/1000)-ifelse(fvar(14)-(ceil(fvar(14)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A)&&p2bodydist X <30)||((statetype = A)&&(p2statetype=A)&&p2bodydist X<20&&p2bodydist Y=[-20,20])
triggerall=p2bodydist x>=-30
;triggerall = stateno != 100 
triggerall=p2movetype!=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||statetype=A;||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||(StateNo = [100,101])||(time>=12&&StateNo = [1300,1302])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =p2bodydist x<10&&random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;||p2movetype=A;+ifelse(var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)>=30,-100,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =((p2stateno=[50,59]) && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20)
trigger3 =stateno=10109
trigger4 = statetype=A
[State -1]
type = ChangeState
value=10109
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(helper(218),var(35)!=13)
triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = RoundState = 2 && Alive  && stateno!=3
;;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=partner,life>0||helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype=S));;;;;;;||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-20
triggerall = p2bodydist X <=40
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse((p2bodydist x>150||random<=500)&&(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2bodydist x>110),220,47)
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
;triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20;;;||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||random<=333
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=ifelse((partner,life<=0),180,100)
triggerall = (p2statetype !=A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149]);;||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =random<=50||(p2movetype=H&&p2statetype=C&&((random<=250&&partner,life<=0)||(partner,life>0&&partner,movetype=A)));;||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>=180,420,400)
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
;triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=ifelse((p2movetype=H||partner,life>0||random<=200),230,100)
triggerall = (p2statetype !=A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2bodydist x<=100,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=100&&random<=500,10023,ifelse(p2bodydist x<=130,200,1000))
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
;triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=50
triggerall=p2bodydist x<=ifelse(random<=200,170,100)
triggerall = (p2statetype !=A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2bodydist x<=100,-100,0);;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=150,1500,410)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=13)
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life||life<400,20,30)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && partner,life<=0
triggerall = statetype != A
triggerall=p2bodydist x>0
triggerall=p2bodydist x<=230;;||p2bodydist x=[101,199] ;;;&& enemynear(helper(218),Var(36)),animtime<=-4
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =(helper(218),fvar(20)>0 && helper(218),fvar(20)=p2stateno)||(helper(218),fvar(21)>0 && helper(218),fvar(21)=p2stateno)||(helper(218),fvar(22)>0 && helper(218),fvar(22)=p2stateno)
trigger1 =p2stateno!=[105,109]
[State -1]
type = ChangeState
value=3000
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=partner,life<=0||(partner,movetype!=H)||partner,stateno<200||(partner,stateno=[5000,5150])
triggerall = RoundState = 2 && Alive && partner,life>0 && power>=1000
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,20,30)||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
;;triggerall=p2bodydist x>100
;triggerall=P2bodyDist X<300;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype!=H
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=1;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=facing*enemynear(helper(218),Var(36)),facing>0
trigger3=p2bodydist x>150&&((facing>0&&partner,pos x>pos x+50)||(facing<0&&partner,pos x<pos x-50))
[State -1]
type = ChangeState
value=ifelse(((facing*enemynear(helper(218),Var(36)),facing<0&&p2movetype=A)||p2statetype=A)&&p2bodydist x<230,1500,ifelse(p2bodydist x<180,400,10024))
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life>0 
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,20,30)||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=statetype != A 
triggerall=p2bodydist x>ifelse(p2movetype=A,-30,100)
triggerall=P2bodyDist X<300;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
triggerall = (p2statetype != A)||(p2bodydist y>=-150&&p2bodydist x<230);;(var(26) = 0&&power>=500);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno<200||p2movetype!=H
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
;;triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=facing*enemynear(helper(218),Var(36)),facing>0
trigger3=1;p2bodydist x>0&&((facing>0&&partner,pos x>pos x+50)||(facing<0&&partner,pos x<pos x-50))
trigger4=statetype=A
[State -1]
type = ChangeState
value=ifelse(statetype=A,1201,210)
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life>0 
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,20,30)||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=pos y>-100||statetype != A 
triggerall=p2bodydist x>100;ifelse(backedgebodydist>80,70,100)
;;triggerall=P2bodyDist X<400;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
triggerall = (p2statetype != A);;;||(var(26) = 0&&power>=500);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
;;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2stateno<200||p2movetype!=H
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
;;triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000
trigger2=facing*enemynear(helper(218),Var(36)),facing>0
trigger3=p2bodydist x>120&&((facing>0&&partner,pos x>pos x+50)||(facing<0&&partner,pos x<pos x-50))
trigger4=statetype=A
[State -1]
type = ChangeState
value=10021
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
;triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && partner,life<=0
triggerall=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)<20000)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=333
triggerall=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)<40000)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=333
triggerall=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)<60000)||random<=333
triggerall=(var(42)-((ceil(var(42)/100000)-ifelse(var(42)-(ceil(var(42)/100000)*100000)<0,1,0))*100000)<80000)||random<=333
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>110
triggerall=p2bodydist x<=150
triggerall = (p2statetype !=A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1 =0;random<=100;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<300&&p2bodydist x>180&&random<=500,10024,210)
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,20,30)||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=333
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>100
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>100;;||partner,life>0
triggerall=P2bodyDist X<400;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
triggerall = (p2statetype != A)||partner,life>0||p2bodydist y=[-10,100];||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>130))
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1 =random<=50
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1001
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=333
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>150
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>150;;||partner,life>0
triggerall=P2bodyDist X<400;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
triggerall = (p2statetype != A)||partner,life>0||p2bodydist y=[-10,100];||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>130))
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1 =random<=50
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500&&p2bodydist x<ifelse((partner,life>0),200,250),1100,1200)
triggerall = !ishelper
triggerall = var(59)>0
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=500,20,30)||p2bodydist x>100
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=333
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=200
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>150
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>150;;||partner,life>0
triggerall=P2bodyDist X<400;ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,140)
triggerall = (p2statetype != A)||partner,life>0||p2bodydist y=[-10,100];||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>130))
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1 =random<=50
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=700||(partner,life>0)||(helper(218),var(3)>=600),47,48)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=numhelper(2130)=0||((helper(2130),stateno!=6130)&&(helper(2130),stateno!=1064))||p2bodydist x>100||partner,life>0||p2movetype=H
triggerall = time<30||partner,life>0||stateno!=0
triggerall=(helper(218),var(35)!=13)||partner,life>0
triggerall=(p2movetype!=H)||(p2statetype=A)||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && partner,life<=0;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =random<=800
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=ifelse(life>p2life,30,20)
;triggerall =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0||random<=500
;triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<233||var(11)=0||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=333
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=333
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=[100,101])
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=p2stateno=5145||(p2stateno=5145||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]))
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<ifelse(random<=500,150,200),1100,1200)+ifelse(statetype=A,1,0)
triggerall = !ishelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=13)
triggerall = RoundState = 2 && Alive 
;triggerall=(helper(218),var(35)!=14)
;;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3&&(partner,life<=0||power>=1500)&&(var(42)<1000000||var(21)||partner,life>0)
;;triggerall = p2bodydist x<=150||stateno!=100
;triggerall = statetype!=A 
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=(p2bodydist x>100);;||(helper(218),var(35)=11&&p2statetype=A);ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,120);;[0,120]);;||(p2bodydist x=[100,120]);;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=(helper(218),var(18)<1000&&p2stateno!=5120)||partner,life>0
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>30000||p2bodydist x>150;;||statetype=A
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000<70000
;trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>ifelse(p2bodydist x>150,30000,50000)||p2bodydist x>200;;;=[22000,ifelse(random<=500,26000,23000)]
trigger3=(helper(218),var(35)=11)&&(p2statetype=A||p2stateno=854)
[State -1]
type = ChangeState
value=48
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
;triggerall=(helper(218),var(35)!=13)
triggerall = RoundState = 2 && Alive 
;triggerall=(helper(218),var(35)!=14)
;;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3&&(partner,life<=0||power>=1500)&&(var(42)<1000000||var(21)||partner,life>0)
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=(p2bodydist x<150 && backedgebodydist>60);;||(helper(218),var(35)=11&&p2statetype=A);ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,100,120);;[0,120]);;||(p2bodydist x=[100,120]);;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=(helper(218),var(18)<1000&&p2stateno!=5120)||partner,life>0
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>50000||p2bodydist x>150;;||statetype=A
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000<90000
;trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>ifelse(p2bodydist x>150,30000,50000)||p2bodydist x>200;;;=[22000,ifelse(random<=500,26000,23000)]
trigger3=(helper(218),var(35)=11)&&(p2statetype=A||p2stateno=854)
[State -1]
type = ChangeState
value=47
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
triggerall=(helper(218),var(35)!=9)
triggerall=(helper(218),var(35)!=10);||partner,life>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0;ifelse(p2stateno=13311,30,500)
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=(p2bodydist x=[-50,50]) && frontedgebodydist-p2bodydist x>40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = 0;Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=100)||(stateno=[101,102])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;(helper(218),var(21)<20000&&helper(218),var(18)<1000&&p2stateno!=5120)||partner,life>0
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=(helper(218),var(21)<20000&&helper(218),var(18)>3000);;||(enemynear(helper(218),Var(36)),vel x<0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[40000,ifelse(random<=100,48000,41000)];;;;=[22000,ifelse(random<=500,26000,23000)]
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>50,ifelse(p2bodydist x>120,10108,47),49)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
triggerall=(helper(218),var(35)!=9)
triggerall=(helper(218),var(35)!=10);||partner,life>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && partner,life<=0;ifelse(p2stateno=13311,30,500)
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
;triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=(p2bodydist x=[0,150]);;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(stateno=100)||(stateno=[101,102])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;(helper(218),var(21)<20000&&helper(218),var(18)<1000&&p2stateno!=5120)||partner,life>0
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=(helper(218),var(21)<20000&&helper(218),var(18)>3000);;||(enemynear(helper(218),Var(36)),vel x<0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[20000,ifelse(random<=100,28000,21000)];;;;=[22000,ifelse(random<=500,26000,23000)]
[State -1]
type = ChangeState
value=10108
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=96)
triggerall=(helper(218),var(35)!=13)
;triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
triggerall=(helper(218),var(35)!=11)||(p2movetype!=H)||(p2stateno=[5100,5150])
;triggerall=p2stateno!=80103
triggerall = RoundState = 2 && Alive && numenemy=1 && numpartner=0
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)
triggerall =(p2statetype!=A);||(helper(218),var(35)=8)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])
trigger2 =p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=50 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]




















[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(53)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||((stateno=5120||(stateno=161&&prevstateno=5120))&&AnimTime=0)||(stateno=[100,101])
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [100,108]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=fvar(14)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse(statetype=A,132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(53)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||((stateno=5120||(stateno=161&&prevstateno=5120))&&AnimTime=0)||(stateno=[100,101])
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [100,108]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=fvar(14)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse(statetype=A,132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(53)!=[1000,1999]
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||((stateno=5120||(stateno=161&&prevstateno=5120))&&AnimTime=0)||(stateno=[100,101])
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [100,108]
triggerall = prevStateNo != [110,111]
triggerall=statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=fvar(14)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(fvar(16)>0 && fvar(16)=p2stateno)||(fvar(15)>0 && fvar(15)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(53)!=[1000,1999]
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||((stateno=5120||(stateno=161&&prevstateno=5120))&&AnimTime=0)||(stateno=[100,101])
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [100,108]
triggerall = prevStateNo != [110,111]
triggerall=statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=fvar(14)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(fvar(16)<=0||fvar(16) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(fvar(15)<=0 ||fvar(15) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
;triggerall=var(52)=[-999999,999]
;triggerall=var(53)!=[1000,1999]
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = StateNo != 102
triggerall = StateNo != [100,108]
triggerall=inguarddist||helper(218),inguarddist
triggerall=fvar(14)<100000
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 10109)||((stateno=5120||(stateno=161&&prevstateno=5120))&&AnimTime=0)||(stateno=[50,51]);;||(stateno=105&&time>=2)
triggerall=statetype=A
trigger1=1
value      = 132









[State -1, Stand1]
type = ChangeState
value =100
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)||p2bodydist x>150
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=[13,14])
;triggerall = (helper(218),var(35)!=16)
;triggerall = (helper(218),var(35)!=[12,13])||p2statetype!=A
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||fvar(14)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x>20||frontedgebodydist>60
;;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250 && p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>250
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=random<=10 && p2bodydist x>150 && p2movetype!=H
trigger3=p2movetype=H && p2stateno>200 && p2bodydist x>100 && ((p2bodydist y>=-60&&p2bodydist x>60)||p2bodydist x>120||p2statetype!=A)
trigger3=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=stateno!=29
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=28 && (random<=200||helper(218),var(35)=20));;||(stateno=28 && (helper(218),var(35)=18||helper(218),var(35)=[20,26]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);;||var(53)=[1000,1999];||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger1=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger2=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger2=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger3=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger3=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger3=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger4=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger4=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger4=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger4=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger5=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger5=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger5=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger5=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger6=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger6=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger6=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger6=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger7=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger7=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger7=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger7=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger8=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger8=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger8=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger8=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
[State -1, Stand1]
type = ChangeState
value =28;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=stateno!=29
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=27 && (random<=200||helper(218),var(35)=20));;||(stateno=28 && (helper(218),var(35)=18||helper(218),var(35)=[20,26]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||fvar(14)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);;||var(53)=[1000,1999];||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger1=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger2=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger2=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger3=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger3=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger3=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger4=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)<200000
trigger4=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger4=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,50))
trigger4=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger5=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger5=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger5=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger5=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger6=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger6=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)>=20000
trigger6=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),230,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger6=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger7=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger7=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger7=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger7=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
;trigger1=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger8=helper(218),fvar(10)-((ceil(helper(218),fvar(10)/1000000)-ifelse(helper(218),fvar(10)-(ceil(helper(218),fvar(10)/1000000)*1000000)<0,1,0))*1000000)>=200000
trigger8=helper(218),var(12)-((ceil(helper(218),var(12)/100000)-ifelse(helper(218),var(12)-(ceil(helper(218),var(12)/100000)*100000)<0,1,0))*100000)<20000
trigger8=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||(helper(218),var(35)=11),30,ifelse(p2movetype=H&&p2stateno>200,0,70))
trigger8=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
;trigger2=(helper(218),var(35)!=[10,11])&&(helper(218),var(35)!=20);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0


[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && time
triggerall = time>=10 && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-30||time>=300;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
;;trigger3 = helper(218),var(35)=18 && p2bodydist x=[-20,20]
ctrl=1
[State -1, Stand]
type = ChangeState
value = 101;ifelse(time <= 12, 101, 102)
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall =stateno=100 && time>2 && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<50)&&time>=30)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<180||p2bodydist x<=180
trigger3 =p2bodydist x<ifelse(p2statetype=A,10,0)
trigger4 =helper(218),Var(35)=14
trigger4 =p2bodydist x<100
ctrl=1
[State -1, Stand]
type = ChangeState
value = stateno+1
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall =0;(stateno=1501||stateno=1511) && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<50)&&time>=30)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<150||p2bodydist x<=150||random<=10
trigger3 =p2bodydist x<ifelse(p2statetype=A,10,0)
trigger4=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger4=enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
;;ctrl=1











[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=0;numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A&&(helper(218),var(3)<600)&&p2bodydist x<130&&(helper(218),var(35)!=1),28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1



















































[State -1]
type = ChangeState
value =4200;;14400;ifelse(random<=500,14500,14600);ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =0;var(59)=0
trigger1 = stateno = 230
trigger1 = movecontact && AnimElemTime(8) <= 1
trigger2 = var(58) = [1,2]
trigger2 = stateno = 310
trigger2 = movecontact && AnimElemTime(7) <= 3
[State -1]
type = ChangeState
value =ifelse(random<=333,1100,ifelse(random<=666,1110,1120));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 =Command = "start"
trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
;trigger2=(stateno = 320) && (Time >= 35)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)<=0
trigger1=0;stateno=[3000,3999]
v        = 59
value    =99
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=0;stateno!=[3000,3999]
v        = 59
value    =0








































;===========================================================================
;===========================================================================
[State -1, In The Darkness]
type = ChangeState
value = 3900
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DDD_ab"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = p2life <= lifemax*.35
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 830) && movecontact
trigger14 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Nail Torrent]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 830) && movecontact
trigger14 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Nail Torrent]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)
;---------------------------------------------------------------------------
[State -1, Impalement]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 830) && movecontact
trigger14 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Trifurcate]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = stateno = 5120 && time >= 3
trigger14 = (stateno = 240) && numhelper(7780)

;---------------------------------------------------------------------------
[State -1, Air Trifurcate]
type = ChangeState
value = 1501
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "DP_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)
;---------------------------------------------------------------------------
[State -1, Condensity Gloom]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Air Condensity Gloom]
type = ChangeState
value = 1101
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)
;---------------------------------------------------------------------------
[State -1, Interference A]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)

;---------------------------------------------------------------------------
[State -1, Interference B]
type = ChangeState
value = 1001
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)

;---------------------------------------------------------------------------
[State -1, Aspersivity]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)

;---------------------------------------------------------------------------
[State -1, Air Aspersivity]
type = ChangeState
value = 1201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)
;---------------------------------------------------------------------------
[State -1, Pillar of Revenance]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCF_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Fallen Pain]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)
trigger10 = (stateno = 210) && numhelper(7790)
trigger11 = (stateno = 211) && numhelper(7791)
trigger12 = (stateno = 212) && numhelper(7792)
trigger13 = (stateno = 240) && numhelper(7780)
;---------------------------------------------------------------------------
[State -1, Air Fallen Pain]
type = ChangeState
value = 1401
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "QCB_c"
triggerall = statetype = A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Ultra Burst]
type = ChangeState
value = 8050
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Ultra Guard Cancel]
type = ChangeState
value = 8060
triggerall = !ishelper
triggerall = !AIlevel
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
trigger1 = stateno = [120,155]

;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = stateno != 100

[State -1, Running Grab]
type = ChangeState
value = 820
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype != A
trigger1 = stateno = 100

[State -1, Air Grab]
type = ChangeState
value = 840
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, 5A]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || numexplod(5990)
triggerall = command != "holddown"
triggerall = var(30) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) && numhelper(7785)
trigger3 = (stateno = 410) && numhelper(7786)
trigger4 = (stateno = 420) && numhelper(7788)

;---------------------------------------------------------------------------
[State -1, 5AA]
type = ChangeState
value = 201
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || numexplod(5990)
triggerall = command != "holddown"
trigger1 = (stateno = 200) && numhelper(7780)

;---------------------------------------------------------------------------
[State -1, 5AAA]
type = ChangeState
value = 202
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || numexplod(5990)
triggerall = command != "holddown"
trigger1 = (stateno = 201) && numhelper(7781)

;---------------------------------------------------------------------------
[State -1, 5AAAA]
type = ChangeState
value = 203
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || numexplod(5990)
triggerall = command != "holddown"
trigger1 = (stateno = 202) && numhelper(7782)

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = command != "holddown"
triggerall = var(31) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)
trigger7 = (stateno = 411) && numhelper(7787)
trigger8 = (stateno = 420) && numhelper(7788)
trigger9 = (stateno = 421) && numhelper(7789)

;---------------------------------------------------------------------------
[State -1, 5BB]
type = ChangeState
value = 211
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = command != "holddown"
trigger1 = (stateno = 210) && numhelper(7790)

;---------------------------------------------------------------------------
[State -1, 5BBB]
type = ChangeState
value = 212
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = command != "holddown"
trigger1 = (stateno = 211) && numhelper(7791)
;---------------------------------------------------------------------------
[State -1, 5C]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || numexplod(5992)
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = Stateno = 100
trigger7 = (stateno = 210) && numhelper(7790)
trigger8 = (stateno = 211) && numhelper(7791)
trigger9 = (stateno = 212) && numhelper(7792)

;---------------------------------------------------------------------------
[State -1, 66A]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
[State -1, 66B]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = Stateno = 100

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, 2A]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a" || numexplod(5990)
triggerall = command = "holddown"
triggerall = var(32) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 410) && numhelper(7786)
trigger6 = (stateno = 420) && numhelper(7788)
;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = command = "holddown"
triggerall = var(33) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 420) && numhelper(7788)
;---------------------------------------------------------------------------
[State -1, 2BBB]
type = ChangeState
value = 411
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = (stateno = 410)
trigger1 = animelemtime(9) >= 0
trigger2 = numhelper(7786)
;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || numexplod(5992)
triggerall = command = "holddown"
triggerall = var(34) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && numhelper(7780)
trigger3 = (stateno = 201) && numhelper(7781)
trigger4 = (stateno = 202) && numhelper(7782)
trigger5 = (stateno = 400) && numhelper(7785)
trigger6 = (stateno = 410) && numhelper(7786)

;---------------------------------------------------------------------------
[State -1, 2BBB]
type = ChangeState
value = 421
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || numexplod(5992)
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = (stateno = 420)
trigger1 = animelemtime(9) >= 0
trigger2 = numhelper(7787)
;---------------------------------------------------------------------------
[State -1, jA]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = var(35) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 1005
trigger3 = movecontact && animelemtime(6) > 3

;---------------------------------------------------------------------------
[State -1, jAA]
type = ChangeState
value = 601
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movecontact

;---------------------------------------------------------------------------
[State -1, jB]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = var(36) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,601]
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, jBB]
type = ChangeState
value = 611
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b" || numexplod(5991)
triggerall = statetype = A
trigger1 = (stateno = 610) && numhelper(7795)

;---------------------------------------------------------------------------
[State -1, jC]
type = ChangeState
value = 620
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "c" || numexplod(5992)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = Stateno = 100
trigger2 = (stateno = 400) && numhelper(7785)
trigger3 = (stateno = 210) && numhelper(7790)

;---------------------------------------------------------------------------
[State -1, Air Jump]
type = ChangeState
value = 45
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(15) < 6
trigger1 = ctrl && vel y > 0
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)

;---------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "FF"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)

;---------------------------------------------------------------------------
[State -1, Air Dash Back]
type = ChangeState
value = 103
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "BB"
triggerall = statetype = A
triggerall = var(11) = 1
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = 610) && numhelper(7795)
trigger4 = (stateno = 611) && numhelper(7796)

;---------------------------------------------------------------------------
[State -1, backdash alternate command]
type = ChangeState
value = 105
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Dodge]
type = ChangeState
value = 160
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Forward Dodge]
type = ChangeState
value = 161
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holdback"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 5120 && time >= 3

;---------------------------------------------------------------------------
[State -1, Air Dodge]
type = ChangeState
value = 162
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 8000
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777)

;---------------------------------------------------------------------------
[State -1, Air Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 1000
triggerall = !ctrl
triggerall = stateno != 8000
triggerall = stateno != [3000,3999]
triggerall = time > 0
trigger1 = movecontact
trigger2 = numhelper(7777)

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6060
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype != A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != 8000
trigger1 = stateno = [3000,3001]
trigger2 = stateno = 3050

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = movecontact
triggerall = stateno != 8000
trigger1 = stateno = [3000,3001]
trigger2 = stateno = 3050

;---------------------------------------------------------------------------
[State -1, Force Roman Cancel]
type = ChangeState
value = 6061
triggerall = !ishelper
triggerall = !AIlevel
triggerall =  movetype != H
triggerall = statetype = A
triggerall = command = "x" && power >= 500
triggerall = !ctrl
triggerall = numhelper(7777)
triggerall = stateno != 8000
trigger1 = stateno = [3000,3001]

;---------------------------------------------------------------------------
[State -1, Guard Cancel]
type = ChangeState
value = 204
triggerall = !ishelper
triggerall = !AIlevel
triggerall = statetype != A
trigger1 = command = "x" || command = "b+c"
trigger1 = command = "holdfwd"
trigger1 = power >= 1000
trigger1 = StateNo = 150 || StateNo = 152 || StateNo = 151 || StateNo = 153

;---------------------------------------------------------------------------
[State -1, Burst]
type = ChangeState
value = 8000
triggerall = !ishelper
triggerall = !AIlevel
triggerall = stateno != [120,155]
triggerall = numhelper(9000)
triggerall = helper(9000),var(3) <= 0
triggerall = Var(50) != 1
triggerall = command = "y+z"
triggerall = alive && Roundstate = 2
triggerall = movetype = H
triggerall = enemy,hitdefattr != SCA,HA,HP,AT
triggerall = enemy,stateno != [120,155]
triggerall = enemy,stateno != [800,899]
triggerall = enemy,stateno != [3000,4999]
trigger1 = !ctrl
trigger2 = numenemy
trigger2 = enemy,movehit && p2stateno != [3000,4999]
trigger3 = enemy,numhelper
trigger3 = movetype = H && p2stateno != [3000,4999]
trigger4 = numenemy
trigger4 = enemy,movehit && p2stateno != [800,899]
