
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
command.time = 12

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.


[Command]
name = "2141236ab"
command = ~D, DB, B, DB, D, DF, F, a+b
time = 25
[Command]
name = "2141236ab"
command = ~DB, B, DB, DF, F, a+b
time = 25
[Command]
name = "2141236ab"
command = ~D, DB, D, DF, a+b
time = 25

[Command]
name = "2141236b"
command = ~D, DB, B, DB, D, DF, F, b
time = 25
[Command]
name = "2141236b"
command = ~DB, B, DB, DF, F, b
time = 25
[Command]
name = "2141236b"
command = ~D, DB, D, DF, b
time = 25

[Command]
name = "641236ab"
command = ~F,B, DB, DF, F,a+b
time = 25

[Command]
name = "641236ab"
command = ~F,DB, D, DF, F,a+b
time = 25

[Command]
name = "22a"
command = ~D, D, a
time = 10

[Command]
name = "22b"
command = ~D, D, b
time = 10

;-| Special Motions |------------------------------------------------------


[Command]
name = "236a"
command = ~D, DF, F, a

[Command]
name = "236b"
command = ~D, DF, F, b

[Command]
name = "236x"
command = ~D, DF, F, x

[Command]
name = "623a"
command = ~F, D, DF, a

[Command]
name = "623b"
command = ~F, D, DF, b

[Command]
name = "214a"
command = ~D, DB, B, a

[Command]
name = "214b"
command = ~D, DB, B, b

[Command]
name = "421a"
command = ~B, D, DB, a

[Command]
name = "421b"
command = ~B, D, DB, b

[Command]
name = "412y"
command = ~B, DB, D, y

[Command]
name = "63214x"
command = ~F, D, B, x
command.time = 20

[Command]
name = "63214x"
command = ~F, DF, DB, B, x
command.time = 20

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
name = "F"     ;Required (do not remove)
command = F
time = 1
[Command]
name = "B"     ;Required (do not remove)
command = B
time = 1
[Command]
name = "U"     ;Required (do not remove)
command = U
time = 1
[Command]
name = "D"     ;Required (do not remove)
command = D
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "hx"
command = /x
time = 1

[Command]
name = "ha"
command = /a
time = 1

[Command]
name = "hb"
command = /b
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
============================================================================
;AI
[Command]
name = "AI0"
command = a,a,a,b
time = 0
[Command]
name = "AI1"
command = b,b,b,c
time = 0
[Command]
name = "AI2"
command = c,c,c,x
time = 0
[Command]
name = "AI3"
command = x,x,x,y
time = 0
[Command]
name = "AI4"
command = y,y,y,z
time = 0
[Command]
name = "AI5"
command = z,z,z,s
time = 0
[Command]
name = "AI6"
command = s,s,s,a
time = 0
[Command]
name = "AI7"
command = F,F,F,D
time = 0
[Command]
name = "AI8"
command = D,D,D,B
time = 0
[Command]
name = "AI9"
command = B,B,B,U
time = 0
[Command]
name = "AI10"
command = U,U,U,D
time = 0
[Command]
name = "AI11"
command = ~F, D, DF, a
time = 0
[Command]
name = "AI12"
command = ~F, D, DF, b
time = 0
[Command]
name = "AI13"
command = ~F, D, DF, x
time = 0
[Command]
name = "AI14"
command = ~D, DF, F, a
time = 0
[Command]
name = "AI15"
command = ~D, DF, F, b
time = 0
[Command]
name = "AI16"
command = ~D, DF, F, x
time = 0
[Command]
name = "AI17"
command = ~D, DB, B, a
time = 0
[Command]
name = "AI18"
command = ~D, DB, B, b
time = 0
[Command]
name = "AI19"
command = ~D, DB, B, x
time = 0
[Command]
name = "AI20"
command = ~D, DB, F, y
time = 0
[Command]
name = "AI21"
command = ~D, DB, B, x+y
time = 0
[Command]
name = "AI22"
command = ~B, F, DF, a+b
time = 0
[Command]
name = "AI23"
command = F,a,b
time = 0
[Command]
name = "AI24"
command = F,b,c
time = 0
[Command]
name = "AI25"
command = F,c,x
time = 0
[Command]
name = "AI26"
command = F,x,y
time = 0
[Command]
name = "AI27"
command = F,y,z
time = 0
[Command]
name = "AI28"
command = F,z,s
time = 0
[Command]
name = "AI29"
command = B,a,b
time = 0
[Command]
name = "AI30"
command = B,b,c
time = 0
[Command]
name = "AI31"
command = B,c,x
time = 0
[Command]
name = "AI32"
command = B,x,y
time = 0
[Command]
name = "AI33"
command = B,y,z
time = 0
[Command]
name = "AI34"
command = B,z,s
time = 0
[Command]
name = "AI35"
command = U,a,b
time = 0
[Command]
name = "AI36"
command = U,b,c
time = 0
[Command]
name = "AI37"
command = U,c,x
time = 0
[Command]
name = "AI38"
command = U,x,y
time = 0
[Command]
name = "AI39"
command = U,y,z
time = 0
[Command]
name = "AI40"
command = U,z,s
time = 0
[Command]
name = "AI41"
command = D,a,b
time = 0
[Command]
name = "AI42"
command = D,b,c
time = 0
[Command]
name = "AI43"
command = D,c,x
time = 0
[Command]
name = "AI44"
command = D,x,y
time = 0
[Command]
name = "AI45"
command = D,y,z
time = 0
[Command]
name = "AI46"
command = D,z,s
time = 0
[Command]
name = "AI47"
command = DF,a,b
time = 0
[Command]
name = "AI48"
command = DF,b,c
time = 0
[Command]
name = "AI49"
command = DF,x,y
time = 0
[Command]
name = "AI50"
command = DF,y,z
time = 0

[Statedef -1]

;--------------------------------------------------------------------------------------
[State -1]
type = VarSet
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
V = 59
Value = 0 ;ìÔà’ìxê›íË 1•Easy 2•Nomal 3•Hard 4•difficult(ëŒAIêÌóp)

;===========================================================================
;===========================================================================
;ínè„éÛêg
[State 5050, 4] 
type = ChangeState
triggerall = Command = "recovery"||var(6)=700
triggerall = alive
triggerall = (gethitvar(fall.recovertime)-gethitvar(fall.time)) <= 0 
triggerall = gethitvar(fall.recover) = 1
trigger1 = stateno = 5100 || (stateno = 5105 && time < 5) || (stateno = 5101 && vel Y < 0)
trigger2 = stateno = 5110 && anim = 5081 && prevstateno != 5081
value = 5200
;===========================================================================
;ãÛíÜïúãA
[State -1, Strong Kung Fu Blow]
type = ChangeState
triggerall = alive
triggerall = Command = "recovery"||var(6)=700
triggerall = stateno != [5100,5110]
trigger1 = gethitvar(fall) = 1
trigger1 = (gethitvar(fall.recovertime)-gethitvar(fall.time)) <= 0 
trigger1 = movetype = H
trigger1 = gethitvar(fall.recover) = 1
trigger1 = statetype = A 
trigger2 = (stateno=[5030,5040])&&gethitvar(fall)=0&&HitOver
value = 5210

;===========================================================================
;ïúãAñ≥ìG
[State -1, Strong Kung Fu Blow]
type = nothitby
triggerall = alive
trigger1 = stateno = 5040
trigger1 = HitOver
value = SCA,AA,AT,AP

;---------------------------------------------------------------------------
;óVí±âÿ
[State -1, 1000]
type = ChangeState
value = 500
triggerall = var(59) = 0
triggerall = var(51) >= 63
triggerall = power >= 1000 || var(16) != 0
triggerall = command = "641236ab"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0
trigger5 = movecontact && var(50) !=1
trigger5 = stateno = 340 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger6 = var(50) !=1
trigger6 = stateno = 345 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger7 = movecontact && var(50) !=1
trigger7 = stateno = 341 &&(animelemtime(5)>=0&&animelemtime(47)<6)
trigger8 = var(50) !=1
trigger8 = stateno = 346 &&(animelemtime(5)>=0&&animelemtime(47)<6)

[State -1, 200]
type = ChangeState
value = 500
triggerall = var(59) = 0
triggerall = var(51) >= 63
triggerall = power >= 1000 || var(16) != 0
triggerall = command = "641236ab"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;à®
[State -1, 1000]
type = ChangeState
value = 510
triggerall = var(59) = 0
triggerall = power >= 1000 || var(16) != 0
triggerall = command = "2141236ab"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0
trigger5 = movecontact && var(50) !=1
trigger5 = stateno = 340 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger6 = var(50) !=1
trigger6 = stateno = 345 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger7 = movecontact && var(50) !=1
trigger7 = stateno = 341 &&(animelemtime(5)>=0&&animelemtime(47)<6)
trigger8 = var(50) !=1
trigger8 = stateno = 346 &&(animelemtime(5)>=0&&animelemtime(47)<6)

[State -1, 200]
type = ChangeState
value = 510
triggerall = var(59) = 0
triggerall = power >= 1000 || var(16) != 0
triggerall = command = "2141236ab"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ïSâ‘„áóê
[State -1, 1000]
type = ChangeState
value = 520
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = power >= 1000 && var(16) != 0
triggerall = command = "2141236b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 520
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = power >= 1000 && var(16) != 0
triggerall = command = "2141236b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;é„îíïSçá
[State -1, 1000]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = command = "623a"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ã≠îíïSçá
[State -1, 1000]
type = ChangeState
value = 311
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 311
triggerall = var(59) = 0
triggerall = command = "623b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ó[äÁ
[State -1, 1000]
type = ChangeState
value = 350
triggerall = var(59) = 0
triggerall = command = "63214x"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 350
triggerall = var(59) = 0
triggerall = command = "63214x"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;é„ïèéq
[State -1, 1000]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = command = "236a"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ã≠ïèéq
[State -1, 1000]
type = ChangeState
value = 301
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 301
triggerall = var(59) = 0
triggerall = command = "236b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ã≠í÷
[State -1, 1000]
type = ChangeState
value = 331
triggerall = var(59) = 0
triggerall = command = "421b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 331
triggerall = var(59) = 0
triggerall = command = "421b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;é„í÷
[State -1, 1000]
type = ChangeState
value = 330
triggerall = var(59) = 0
triggerall = command = "421a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 330
triggerall = var(59) = 0
triggerall = command = "421a"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ã≠í©äÁ
[State -1, 1000]
type = ChangeState
value = 341
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 341
triggerall = var(59) = 0
triggerall = command = "214b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;é„í©äÁ
[State -1, 1000]
type = ChangeState
value = 340
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0

[State -1, 200]
type = ChangeState
value = 340
triggerall = var(59) = 0
triggerall = command = "214a"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0)&&(var(50)=0&movehit||var(50)=2)
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0)&&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)&&(var(50)=0&movehit||var(50)!=0&movecontact)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;â≤íO
[State -1, 601]
type = ChangeState
value = 320
triggerall = var(59) = 0
triggerall = command = "214a" || command = "214b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 40 && vel Y < 0
trigger3 = stateno = 711 && time > 20

[State -1, 601]
type = ChangeState
value = 320
triggerall = var(59) = 0
triggerall = command = "214a" || command = "214b"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 220 &&(animelemtime(4)>=0&&animelemtime(13)<0)
trigger2 = stateno = 221 &&(animelemtime(5)>=0&&animelemtime(16)<0)
trigger3 = stateno = 222 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger4 = stateno = 226 &&(animelemtime(5)>=0&&animelemtime(9)<0)

;---------------------------------------------------------------------------
;â‘ìVåéíníÜíi
[State -1, 1000]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = command = "22a"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0
trigger5 = movecontact && var(50) !=1
trigger5 = stateno = 340 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger6 = var(50) !=1
trigger6 = stateno = 345 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger7 = movecontact && var(50) !=1
trigger7 = stateno = 341 &&(animelemtime(5)>=0&&animelemtime(47)<6)
trigger8 = var(50) !=1
trigger8 = stateno = 346 &&(animelemtime(5)>=0&&animelemtime(47)<6)

[State -1, 200]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = command = "22a"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0) &&var(50)!=1
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0) &&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;â‘ìVåéínâ∫íi
[State -1, 1000]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = command = "22b"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 750 && anim != 752 && animelemtime(2) >= 0
trigger5 = movecontact && var(50) !=1
trigger5 = stateno = 340 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger6 = var(50) !=1
trigger6 = stateno = 345 &&(animelemtime(5)>=0&&animelemtime(35)<6)
trigger7 = movecontact && var(50) !=1
trigger7 = stateno = 341 &&(animelemtime(5)>=0&&animelemtime(47)<6)
trigger8 = var(50) !=1
trigger8 = stateno = 346 &&(animelemtime(5)>=0&&animelemtime(47)<6)

[State -1, 200]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = power >= 1000
triggerall = command = "22b"
triggerall = movecontact
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 &&(animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 206 &&(animelemtime(4)>=0&&animelemtime(18)<0) &&var(50)!=1
trigger6 = stateno = 210 &&(animelemtime(5)>=0&&animelemtime(9)<0) &&var(50)!=0
trigger7 = stateno = 211 &&(animelemtime(3)>=0&&animelemtime(9)<0)
trigger8 = stateno = 213 &&(animelemtime(2)>=0&&animelemtime(4)<0)
trigger9 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;íÜíi
[State -1, 220]
type = ChangeState
value = 208
triggerall = var(59) = 0
triggerall = var(50) = 1
triggerall = command = "bx"
triggerall = command != "y"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 208
triggerall = var(59) = 0
triggerall = command = "bx"
triggerall = command != "y"
triggerall = movecontact && var(50) = 1
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger6 = stateno = 211 && (animelemtime(3)>=0&&animelemtime(9)<0)
trigger7 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger10 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;ÉKÅ[Éhïsâ¬
[State -1, 220]
type = ChangeState
value = 207
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "bx"
triggerall = command != "y"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 207
triggerall = var(59) = 0
triggerall = command = "bx"
triggerall = command != "y"
triggerall = movecontact && var(50) = 2
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger6 = stateno = 211 && (animelemtime(3)>=0&&animelemtime(9)<0)
trigger7 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger8 = stateno = 1033 && animelemtime(4)>=0

;===========================================================================
;---------------------------------------------------------------------------
;É_ÉbÉVÉÖ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,101]
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;---------------------------------------------------------------------------
;å„ëﬁÉ_ÉbÉVÉÖ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != [100,101]
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;---------------------------------------------------------------------------
;íeÇ´ÉLÉÉÉìÉZÉãÉWÉÉÉìÉv
[State -1, 40]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = command = "holdup"
trigger1 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;---------------------------------------------------------------------------
;íeÇ´ÉLÉÉÉìÉZÉãï‡Ç´
[State -1, 40]
type = ChangeState
value = 20
triggerall = var(59) = 0
triggerall = command = "holdfwd"
trigger1 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
ctrl=1

;---------------------------------------------------------------------------
;ìäÇ∞
[State -1, 200]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "xy"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;---------------------------------------------------------------------------
;í«Ç¢ì¢Çø
[State -1, 200]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = command = "b" && command = "holdfwd" && command = "holddown"
triggerall = P2statetype= L
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;GCíeÇ´
[State -1, 1000]
type = ChangeState
value = 730
trigger1 = var(59) = 0
trigger1 = power >= 1000
trigger1 = command = "412y"
trigger1 = stateno = 151 || stateno = 153
trigger2 = var(6) = 730
trigger2 = stateno = 151 || stateno = 153

[State -1, 1000]
type = varset
var(6) = 730
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "412y"
trigger1 = stateno = 150 || stateno = 152

[State -1, 1000]
type = varset
var(5) = 30
triggerall = var(59) = 0
triggerall = var(6) = 730
trigger1 = stateno = 150 || stateno = 152

;---------------------------------------------------------------------------
;íeÇ´í«â¡çUåÇ
[State -1, 200]
type = ChangeState
value = 715+var(40)
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

;===========================================================================
;---------------------------------------------------------------------------
;óßíeÇ´
[State -1, 700]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "a" & command != "b" & command != "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 1033 && animelemtime(4)>=0&& movecontact

;---------------------------------------------------------------------------
;ã¸íeÇ´
[State -1, 700]
type = ChangeState
value = 701
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "a" & command != "b" & command != "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 1033 && animelemtime(4)>=0&& movecontact

;---------------------------------------------------------------------------
;îÚíeÇ´
[State -1, 701]
type = ChangeState
value = 702
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "a" & command != "b" & command != "x"
triggerall = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 711 && time > 20

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖçUåÇ
[State -1, 200]
type = ChangeState
value = 216
triggerall = var(59) = 0
triggerall = command = "a" || command = "b"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1 = stateno = 100 && time >= 10

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖ3çUåÇ
[State -1, 200]
type = ChangeState
value = 217
triggerall = var(59) = 0
triggerall = command = "a" || command = "b" || command = "x"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A 
trigger1 = stateno = 100 && time >= 10

;---------------------------------------------------------------------------
;4A
[State -1, 200]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 1033 && animelemtime(4)>=0 && movecontact
;---------------------------------------------------------------------------
;AA
[State -1, 200]
type = ChangeState
value = 202
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
;---------------------------------------------------------------------------
;A
[State -1, 200]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)


[State -1, 200]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;6B
[State -1, 220]
type = ChangeState
value = 204
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "x" && command != "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 204
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "x" && command != "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger6 = stateno = 211 && (animelemtime(3)>=0&&animelemtime(9)<0)
trigger7 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger8 = stateno = 1033 && animelemtime(4)>=0
;---------------------------------------------------------------------------
;B
[State -1, 200]
type = ChangeState
value = 203
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 203
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger5 = stateno = 1033 && animelemtime(4)>=0
;---------------------------------------------------------------------------
;6C
[State -1, 211]
type = ChangeState
value = 206
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 206
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger6 = stateno = 211 && (animelemtime(3)>=0&&animelemtime(9)<0)
trigger7 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger8 = stateno = 1033 && animelemtime(4)>=0
;---------------------------------------------------------------------------
;ABC
[State -1, 210]
type = ChangeState
value = 223
triggerall = var(59) = 0
triggerall = command = "x" && command != "holddown"
triggerall = movecontact && var(50) !=0 && var(31) =2
trigger1 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
;---------------------------------------------------------------------------
;C
[State -1, 210]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;2A
[State -1, 401]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;2B
[State -1, 401]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger5 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger6 = stateno = 1033 && animelemtime(4)>=0

;---------------------------------------------------------------------------
;3C
[State -1, 210]
type = ChangeState
value = 213
triggerall = var(59) = 0
triggerall = command = "x" && command = "holdfwd" && command = "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)

[State -1, 200]
type = ChangeState
value = 213
triggerall = var(59) = 0
triggerall = command = "x" && command = "holdfwd" && command = "holddown"
triggerall = movecontact && var(50) !=0
trigger1 = stateno = 200 &&(animelemtime(3)>=0&&animelemtime(5)<0)
trigger2 = stateno = 201 &&(animelemtime(3)>=0&&animelemtime(8)<0)
trigger3 = stateno = 202 && (animelemtime(3)>=0&&animelemtime(8)<0)
trigger4 = stateno = 203 && (animelemtime(5)>=0&&animelemtime(13)<0)
trigger5 = stateno = 210 && (animelemtime(5)>=0&&animelemtime(9)<0)
trigger6 = stateno = 211 && (animelemtime(3)>=0&&animelemtime(9)<0)
trigger7 = stateno = 216 && (animelemtime(7)>=0&&animelemtime(11)<0)
trigger8 = stateno = 1033 && animelemtime(4)>=0
;---------------------------------------------------------------------------
;2C
[State -1, 210]
type = ChangeState
value = 212
triggerall = var(59) = 0
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)
trigger4 = stateno = 1033 && animelemtime(4)>=0&&movecontact

;---------------------------------------------------------------------------
;JA
[State -1, 601]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 711 && time > 20

;---------------------------------------------------------------------------
;J2B
[State -1, 610]
type = ChangeState
value = 226
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 711 && time > 20

;---------------------------------------------------------------------------
;JB
[State -1, 601]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 711 && time > 20

;---------------------------------------------------------------------------
;JC
[State -1, 610]
type = ChangeState
value = 222+var(40)
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 711 && time > 20

;---------------------------------------------------------------------------
;Taunt
;íßî≠
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = statetype != A 
trigger1 = ctrl || (stateno = [100,101]) || stateno = 52
trigger2 = stateno = 40 && time >0 && vel Y = 0
trigger3 = (stateno = 710&&time>14)||(stateno=730&&movecontact)


[State -1, Taunt]
type = null;ChangeState
value = 5151
trigger1 = roundstate <= 3
trigger1 = stateno != [5040,5069]
trigger1 = stateno != [5071,5151]
trigger1 = life = 0
trigger1 = pos Y > -10
trigger1 = vel Y <= 0

;---------------------------------------------------------------------------
;êÊçsì¸óÕ
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="a" && command != "holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 201
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="a"&&command!="holddown"&&command="holdback"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 200
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="b"&&command!="holddown"&&command!="holdfwd"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 203
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="b"&&command!="holddown"&&command="holdfwd"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 204
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="xy"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 230
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="x"&&command!="holdfwd"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 205
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="x"&&command="holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 212
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="x"&&command="holdfwd"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 206
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="x"&&command="holdfwd"&&command="holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 213
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="a"&&command="holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 210
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="b"&&command="holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 211
ignorehitpause=1

[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(6) != 730
triggerall = command = "y" && command != "holddown"
trigger1 = movecontact && (stateno = [220,1999])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 700
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(6) != 730
triggerall = command = "y" && command = "holddown"
trigger1 = movecontact && (stateno = [220,229])
trigger2 = ctrl=0 && (stateno != [200,229]) && stateno !=750
var(6) = 701
ignorehitpause=1

[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = ctrl = 0 && stateno !=750
var(6) = 197
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="bx"
trigger1 = ctrl = 0 && stateno !=750
var(6) = ifelse(var(50)=1,208,207)
ignorehitpause=1

[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command = "holdfwd" && command = "holddown" && command = "b"
triggerall = P2statetype=L
triggerall = P2movetype = H
trigger1 = ctrl = 0 && stateno !=750
var(6) = 215

[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = command = "22a"
triggerall = power >= 1000
trigger1 = ctrl = 0
var(6) = 1000
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(50) != 0
triggerall = command = "22b"
triggerall = power >= 1000
trigger1 = ctrl = 0
var(6) = 1001
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="236a"
trigger1 = ctrl = 0
var(6) = 300
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="236b"
trigger1 = ctrl = 0
var(6) = 301
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="623a"
trigger1 = ctrl = 0
var(6) = 310
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="623b"
trigger1 = ctrl = 0
var(6) = 311
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="214a"
trigger1 = ctrl = 0
var(6) = 340
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="214b"
trigger1 = ctrl = 0
var(6) = 341
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="421a"
trigger1 = ctrl = 0
var(6) = 330
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="421b"
trigger1 = ctrl = 0
var(6) = 331
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command="63214x"
trigger1 = ctrl = 0
var(6) = 350
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "2141236b"
triggerall = power >= 1000 && var(16) != 0
trigger1 = ctrl = 0
var(6) = 520
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = command = "2141236ab"
triggerall = power >= 1000 || var(16) != 0
trigger1 = ctrl = 0
var(6) = 510
[State 200, 5]
type = varset
triggerall = var(59) = 0
triggerall = var(51) >= 63
triggerall = command = "641236ab"
triggerall = power >= 1000 || var(16) != 0
trigger1 = ctrl = 0
var(6) = 500

[State 200, 5]
type = varset
trigger1 = var(6) != 0
trigger1 = time=1&&(stateno=[200,1999])
var(5) = 0
ignorehitpause=1
[State 200, 5]
type = varset
triggerall = var(5) = 0
trigger1 = ctrl = 1
trigger2 = var(6)!=0
var(6) = 0
[State 200, 5]
type = varset
trigger1 = var(5) = 0
var(5) = -1
ignorehitpause=1
[State 200, 5]
type = varset
trigger1 = var(6) != 0
trigger1 = var(5) = -1
var(5) = var(26)*ifelse(movetype=H,ifelse(statetype=A,3,1),1)
ignorehitpause=1

;ê¬ì_ñ≈
[State -1, Taunt]
type = palfx
trigger1 = movetype != H
trigger1 = stateno = [1000,1899]
trigger1 = (gametime%4) = 0
add = -256,-256,256
time = 1
ignorehitpause = 1 
pausemovetime = 123456789
supermovetime = 123456789

[State -1, Taunt]
type = nothitby
trigger1 = roundstate >= 3
value = SCA,AA,AT,AP
ignorehitpause = 1 