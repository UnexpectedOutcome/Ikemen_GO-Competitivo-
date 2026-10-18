;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 0, 1]
type = ChangeAnim
triggerall = var(59) = 2
trigger1 = Anim != 10000
value = 10000

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
trigger2 = RoundsExisted = 0
trigger2 = TeamMode = Turns
trigger2 = RoundNo > 0
value = 190

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno > 1
trigger1 = var(59) = 1
value = 192

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
[State 10, 2]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
[State 20, 2]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
[State 10, 2]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; No Run
[Statedef 100]
[State 10, 2]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1
[Statedef 105]
[State 10, 2]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S;A
physics = S
sprpriority = 0
vel = 0,0

[State 0, Debug Zeeky]
type = destroyself
trigger1 = ishelper

[State 0, ASS]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 0, 1]
type = ChangeAnim
triggerall = var(59) != 2
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 1]
type = ChangeAnim
triggerall = var(59) = 2
trigger1 = Anim != 10000
value = 10000

[State 0, 2]
type = VelSet
triggerall = var(59) != 2
trigger1 = ctrl = 1
x = ifelse(command="holdfwd",2,ifelse(command="holdback",-2,0))

[State 0, VS]
type = velset
triggerall = var(59) != 2
trigger1 = ctrl = 1
y = ifelse(command="holddown",2,ifelse(command="holdup",-2,0))

[State 0, PS]
type = posset
triggerall = var(59) != 2
trigger1 = pos y > 0
trigger2 = pos y < -100
y = ifelse(pos y >= 0,0,-100)

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; GetHit
[Statedef 5000]
type    = A
movetype= H
physics = N
anim = 5000
velset = 0,0

[State 5000, PP]
type = playerpush
trigger1 = 1
value = 0

[State 5000, PFX]
type = palfx
trigger1 = time%7=0
time = 3
invertall = 1

[State 5000, PSND]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno = [0,4999]
value = 5000,3
channel = 0

[State 181, VR]
type = varrandom
trigger1 = time = 0
v = 8
range = 0,2

[State 5000, PSND]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno != [0,4999]
value = 5000,var(8)
channel = 0
lowpriority = 1

[State 5000, PSND]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno = 5000
trigger1 = random <= 666
trigger1 = random > 333
value = 5000,1
channel = 0

[State 5000, PSND]
type = playsnd
trigger1 = time = 0
trigger1 = prevstateno = 5000
trigger1 = random > 666
value = 5000,2
channel = 0

[State 5000, NHB]
type = nothitby
trigger1 = 1
value = SCA, AT

[State 5000, HB]
type = hitby
trigger1 = 1
value = SCA, AA, AP

[State 5000, PF]
type = posfreeze
trigger1 = 1
value = 1

[State 5000, VA]
type = varadd
trigger1 = var(7) > 0
v = 7
value = -1
ignorehitpause = 1

[State 0, Debug Zeeky]
type = destroyself
trigger1 = ishelper

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 5000, Teleport]
type = ChangeState
trigger1 = alive
trigger1 = var(7) <= 0
value = 200

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = S
movetype= H
physics = S
sprpriority = 0
anim = 5000

[State 5050, CS]
type = changeanim
trigger1 = var(59) = 2
trigger1 = anim != 10002
value = 10002

[State 5050, ASS]
type = assertspecial
trigger1 = matchover = 1
trigger1 = lose = 1
trigger2 = palno = 7
trigger3 = palno = 8
trigger4 = palno = 9
trigger5 = palno = 10
trigger6 = palno = 11
trigger7 = palno = 12
trigger8 = name = "Cyber_Naraku_MkII"
flag = nomusic

[State 5000, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 5000, PP]
type = playerpush
trigger1 = 1
value = 0

[State 5050, CS]
type = changestate
trigger1 = time = 59
trigger1 = var(59) = 2
value = 5051

[State 5000, PFX]
type = palfx
trigger1 = time < 60
trigger1 = time%7=0
time = 3
invertall = 1

[State 5000, PSND]
type = playsnd
trigger1 = time = 60
value = 5000,3
channel = 0

[State 5000, NHB]
type = nothitby
trigger1 = 1
value = SCA, AA, AP, AT

[State 200, PF]
type = palfx
trigger1 = time >= 60
time = 1
add = 0,128,0
mul = 0,256,0

[State 5000, PSND]
type = playsnd
trigger1 = time = 60
value = 900,2

[State 200, ASS]
type = assertspecial
triggerall = time >= 60
trigger1 = time%4=[0,2]
;trigger2 = time%4=1
flag = invisible

[State 200, AD]
type = angledraw
trigger1 = time >= 60
scale = (time-58)/2.0,1.0

[State 5050, 6]
type = ChangeState
trigger1 = time >= 120
value = 5150 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; Form 2 KO
[Statedef 5051]
type    = S
movetype= H
physics = S
sprpriority = 0
anim = 10002

[State 5050, ASS]
type = assertspecial
trigger1 = 1
flag = nomusic

[State 5000, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 5000, PP]
type = playerpush
trigger1 = 1
value = 0

[State 5000, PSND]
type = playsnd
trigger1 = time = 1
value = 5000,1
channel = 0

[State 5000, PSND]
type = playsnd
trigger1 = time = 61
value = 5000,2
channel = 0

[State 5051, PFX]
type = palfx
trigger1 = time = 1
trigger2 = time = 61
trigger3 = time = 91
trigger4 = time >= 121
trigger4 = time%7=0
trigger4 = time < 420
trigger5 = time = 106
add = 256,256,256
time = 3

[State 1100, Shake]
type = EnvShake
trigger1 = time = 121
time  = 360
ampl  = 10
freq  = 180

[State 5000, PSND]
type = playsnd
trigger1 = time = 121
value = 15100,0

[State 5000, NHB]
type = nothitby
trigger1 = 1
value = SCA, AA, AP, AT

[State 5000, PSND]
type = playsnd
trigger1 = time = 321
value = 5000,3
channel = 0

[State -2, Explod]
type = Explod
trigger1 = time >= 121
trigger1 = time%15 = 0
trigger1 = time < 480
anim = 11002
ID = 11002
pos = 0,-84
random = 84,84
bindtime = -1
removetime = 11
sprpriority = 5
ownpal = 1
scale = 0.5,0.5

[State 15100, AllPalFX]
type = allpalfx
trigger1 = time >= 420
trigger1 = time < 480
time = 1
add = (time-420)*4,(time-420)*4,(time-420)*4

[State 15100, AllPalFX]
type = allpalfx
trigger1 = time >= 480
trigger1 = time < 560
time = 1
add = 256,256,256

[State 15100, AllPalFX]
type = allpalfx
trigger1 = time >= 560
trigger1 = time < 620
time = 1
add = (620-time)*4,(620-time)*4,(620-time)*4

[State 200, ASS]
type = assertspecial
trigger1 = time >= 480
flag = invisible

[State 15100, REX]
type = removeexplod
trigger1 = time = 480
ID = 10000

[State 15100, REX]
type = removeexplod
trigger1 = time = 480
ID = 10003

[State 15100, REX]
type = removeexplod
trigger1 = time = 480
ID = 10004

[State 15100, REX]
type = removeexplod
trigger1 = time = 480
ID = 10005

[State 5050, 6]
type = ChangeState
trigger1 = time >= 620
value = 5150 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = 0

[State 5050, ASS]
type = assertspecial
trigger1 = matchover = 1
trigger1 = lose = 1
trigger2 = palno = 7
trigger3 = palno = 8
trigger4 = palno = 9
trigger5 = palno = 10
trigger6 = palno = 11
trigger7 = palno = 12
trigger8 = name = "Cyber_Naraku_MkII"
flag = nomusic

[State 5150, VS]
type = varset
trigger1 = 1;palno = 7
v = 59
value = 1

[State 5000, PP]
type = playerpush
trigger1 = 1
value = 0

[State 5150, PS]
type = posset
trigger1 = 1
pos = 0,9000

[State 5150, ASS]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]
[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

; This controller is optional.  It allows you treat the AI flag as a boolean
; value rather than an integer value, letting you trigger your AI directives
; with "var(0)" instead of "var(58)>0", and letting you make moves usable only
; by humans by using "!var(0)" instead of "var(58)<1", thus slightly improving
; the size and efficiency of your code.
; Another benefit is that it makes it much easier for users to disable your AI,
; if they so choose.
[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(0):=0
var(0) = 1	; Another option is to replace 1 with something like MatchNo, if
		; you want to design your AI to have varying levels of difficulty.
IgnoreHitPause = 1

[state -2, ATCB]
type = displaytoclipboard
trigger1 = 1
text = "AI: %d \t Hitstun Timer %d \t Second Form: %d"
params = var(58),var(7),var(59)

[State -2, W]
type = width
trigger1 = var(59) = 2
value = 32,32
ignorehitpause = 1

[State -2, LA]
type = Lifeadd
triggerall = var(59) = 2
triggerall = alive
trigger1 = numhelper(500)=1
trigger1 = helper(500),stateno=501
value = -floor(0.5*(helper(500),gethitvar(damage)))

[State -2, LA]
type = Lifeadd
;Lifeadd for Red Shield
triggerall = var(59) = 2
triggerall = alive
trigger1 = numhelper(950)=1
trigger1 = helper(950),stateno=951
value = floor(0.4*(helper(950),gethitvar(damage)))

[State -2, LS]
type = lifeset
triggerall = var(59) = 2
triggerall = alive
trigger1 = numhelper(950)=0
trigger1 = life <= floor(lifemax/2)
value = floor(lifemax/2)


[State 5150, VS]
type = varset
trigger1 = name = "Cyber_Naraku_MkII"
trigger1 = var(58) = 0
v = 58
value = 1

;[State 500, DMS]
;type = defencemulset
;trigger1 = name = "Cyber_Naraku_MkII"
;trigger2 = var(59) = 2
;value = 2.0;1.33

[State 5150, VS]
type = varset
trigger1 = name = "Cyber_Naraku_MkII"
trigger1 = var(59) = 0
v = 59
value = 1

[State -2, PFX]
type = palfx
triggerall = var(59) = 2
triggerall = alive
trigger1 = numhelper(500) = 1
trigger1 = (helper(500),stateno = 501)
trigger1 = (time%7)=0
trigger1 = !ishelper
time = 3
mul = 512,0,0;256,256,0
color = 0

[State -2, Hitbox]
type = helper
triggerall = var(59) = 2
trigger1 = numhelper(500) = 0 ;Hitbox doesn't exist
helpertype = normal
name = "Hitbox"
ID = 500
pos = 0,0
stateno = 500
pausemovetime = 999999

[State -2, Explod]
type = Explod
triggerall = alive
triggerall = var(59) = 2
trigger1 = numexplod(10000) = 0
trigger1 = stateno != [192,193]
anim = 10001
ID = 10000
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = -1
ownpal = 0;1
shadow = -1,-1,-1

[State -2, Core]
type = Explod
triggerall = alive
triggerall = var(59) = 2
trigger1 = numexplod(10003) = 0
trigger1 = stateno != [192,193]
anim = 10003
ID = 10003
pos = -131,0
bindtime = -1
removetime = -1
sprpriority = 0
ownpal = 0
shadow = -1,-1,-1

[State -2, Explod]
type = Explod
triggerall = alive
triggerall = var(59) = 2
trigger1 = numexplod(10004) = 0
trigger1 = stateno != [192,193]
anim = 10004
ID = 10004
pos = -65,0
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 0;1

[State -2, Explod]
type = Explod
triggerall = alive
triggerall = var(59) = 2
trigger1 = numexplod(10005) = 0
trigger1 = stateno != [192,193]
anim = 10005
ID = 10005
pos = 0,0
bindtime = -1
removetime = -1
sprpriority = 0
ownpal = 1

[State 2000, Jukebox]
type = Helper
trigger1 = NumHelper(10000) = 0
trigger1 = stateno != [192,193]
trigger1 = var(59) = 2
helpertype = Normal
name = "Jukebox"
id = 10000
pos = 0,0
postype = p1
facing = -1
stateno = 10000
keyctrl = 0
ownpal = 1
supermovetime = 999999999
pausemovetime = 999999999

[State -2, PP]
type = playerpush
trigger1 = 1
value = 0

[State -2, ASS]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State -2, ASS]
type = assertspecial
trigger1 = var(59) = 2
flag = noautoturn

[State 0, ASS]
type = assertspecial
trigger1 = 1
flag = timerfreeze

[State -2, NHB]
type = nothitby
trigger1 = var(5) != 2
trigger2 = var(59) = 2
value = SCA,AA,AP,AT

[State -2, NHB]
type = nothitby
trigger1 = var(5) = 2
trigger1 = var(59) != 2
value = SCA,AT

[State -2, Vulnerable]
type = varset
trigger1 = var(5) = 1
trigger1 = numhelper(900) = 0
v = 5
value = 2

[State 900, HOR]
type = hitoverride
trigger1 = var(5) = 2
trigger1 = var(59) != 2
attr = SCA,AA,AP
stateno = 5000
forceair = 1

[State -2, HB]
type = hitby
trigger1 = var(5) = 2
trigger1 = var(59) != 2
value = SCA,AA,AP

[State -2, CA]
type = changeanim
triggerall = anim != 10000
triggerall = alive
trigger1 = var(59) = 2
value = 10000

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

[State -3, RCSC Helper]
type = Helper
triggerall = var(58)!=1 && !IsHelper
triggerall = !NumHelper(9743)
triggerall = Alive && RoundState = 2
trigger1 = MatchNo = 1
trigger2 = NumPartner
trigger2 = ID > Partner,ID
HelperType = normal
name = "Recent Custom State Check"
ID = 9743
pos = 9999999,99999
StateNo = 9743
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = var(57) = GameTime-1
triggerall = NumHelper(9743)
triggerall = !(Helper(9743),var(1))
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "holda" ^^ command = "holda2"
trigger9 = command = "holdb" ^^ command = "holdb2"
trigger10 = command = "holdc" ^^ command = "holdc2"
trigger11 = command = "holdx" ^^ command = "holdx2"
trigger12 = command = "holdy" ^^ command = "holdy2"
trigger13 = command = "holdz" ^^ command = "holdz2"
trigger14 = command = "holdstart" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(58) = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0
