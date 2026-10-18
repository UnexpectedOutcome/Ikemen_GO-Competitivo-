;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]
;------------------------------------
; Explodsive Buffering Helper by JMorphman
[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

;------------------------------------------------------------
; Sound Player
;------------------------------------------------------------
[State -2, Helper Hitsound]
type = playsnd
trigger1 = var(44)>0
trigger1 = var(44)=24000
trigger1 = (var(44):=0)||1
value = 1,2
channel = 7
abspan = 0
ignorehitpause = 1
[State -2, Helper Hitsound]
type = playsnd
trigger1 = var(44)>0
trigger1 = var(44)=2
trigger1 = (var(44):=0)||1
value = 2,0
channel = 7
abspan = 0
ignorehitpause = 1

;------------------------------------------------------------
; Piano Input Counter (based on code by PotS & JMorphman)
;------------------------------------------------------------

[State -2, Timer Decrement]
type = VarAdd
trigger1 = var(38) > 0
var(38) = -1

[State -2, Counter Reset]
type = VarSet
trigger1 = var(38) <= 0
trigger2 = time <= 1
trigger2 = StateNo = 1100
var(37) = 0

[State -2, Counter Increment]
type = VarAdd
trigger1 = command = "x"
trigger1 = (var(38) := 12)||1
trigger2 = command = "y"
trigger2 = (var(38) := 12)||1
trigger3 = command = "z"
trigger3 = (var(38) := 12)||1
var(37) = 1

;-----------------------------------
;Armor Detection
[State -2, Armor Detection]
type = varset
trigger1 = 1
sysvar(3) = 0
ignorehitpause = 1

[State -2, Armor Detection]
type = varset
trigger1 = numenemy
sysvar(4) = enemynear(0),sysvar(3)
ignorehitpause = 1

;-----------------------------------
; Remove Excess Explods
[State -2, REX]
type = removeexplod
trigger1 = numexplod(20210)
trigger1 = stateno != 210
id = 20210
ignorehitpause = 1
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20225)
trigger1 = stateno != 225
ID = 20225
ignorehitpause = 1
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20410)
trigger1 = stateno != 410
ID = 20410
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20420)
trigger1 = stateno != 420
ID = 20420
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20610)
trigger1 = stateno != 610
ID = 20610
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20620)
trigger1 = stateno != 620
ID = 20620
ignorehitpause = 1
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20625)
trigger1 = stateno != 625
ID = 20625
ignorehitpause = 1

;----------------------------------
; Overdrive Juggle Check Disabled
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = (var(57)>0 && var(52)=2)
flag = nojugglecheck
ignorehitpause = 1

;----------------------------------
; Just Defend Related Code
[State -2, 46]
type = VarSet
trigger1 = roundstate = 0
var(17) = -1

[State -2, 47]
type = VarAdd
trigger1 = var(16) >= 0
var(16) = 1
ignorehitpause = 1

[State -2, 46]
type = VarSet
triggerall = var(16) > 12
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
var(16) = -1

[State -2, 46]
type = VarSet
triggerall = var(16) = -1
triggerall = stateno != [140,149]
triggerall = NumHelper(90000005)
trigger1 = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90000014))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90000016))
trigger2 = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90000011))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90000013))
trigger3 = (ifElse(P2dist x<0&&StateType!=A,Facing=-1,Facing=1)&&NumExplod(90000017))||(ifElse(P2dist x<0&&StateType!=A,Facing=1,Facing=-1)&&NumExplod(90000019))
var(16) = 0

[State -2, 46]
type = VarSet
triggerall = var(16) = [0,6]
trigger1 = cond(p2dist x<0,(command!="holdfwd"),(command!="holdback"))
var(16) = 7

[State 180, 1]
type = VarSet
trigger1 = stateno != [120,155]
var(17) = 0
ignorehitpause = 1

[State 4100, VarSet]
type = VarSet
triggerall = var(17) != -1
triggerall = (stateno=150||stateno=152||stateno=154) && time = 0
trigger1 = (var(16) = [0,6]) && !AILevel
trigger2 = Random <= 150 && AILevel
var(17) = 1


;-----------------------------------
; Sound Effect Channel Stop When Hit
[State -2, StopSound]
type = stopsnd
trigger1 = movetype = H
trigger1 = time <=2
channel = 7

[State -2, Varset]
type = Varset
trigger1 = (statetype = S) || (statetype = C)
trigger1 = var(8) >= 1
v = 8
value = 0

[State -2, AI Helper]
type = helper
trigger1 = AILevel > 0
trigger1 = roundstate=2
trigger1 = numhelper(20010)=0
name = "AI Helper"
ID = 20010
pos = 0,0
postype = p1
stateno = 20010
ownpal = 0
facing = 1
ignorehitpause = 1

[State -2, Spirit Gauge]
type = helper
trigger1 = roundstate=2
trigger1 = numhelper(30000)=0
name = "Spirit Gauge"
ID = 30000
pos = 0,0
postype = p1
stateno = 30000
ownpal = 1
facing = 1
ignorehitpause = 1

;===================================
;Rotor Effect handling
;===================================
[State -2, Rotor]
type = helper
trigger1 = numhelper(30050)=0
;trigger1 = animelemtime(1)=0
name = "RotorBlade_Upper"
ID = 30050
pos = 0,0
postype = p1
stateno = 30050
ownpal = 0;1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999
[State -2, Rotor]
type = helper
trigger1 = numhelper(30051)=0
;trigger1 = animelemtime(1)=0
name = "RotorBlade_Mid"
ID = 30051
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999
[State -2, Rotor]
type = helper
trigger1 = numhelper(30052)=0
;trigger1 = animelemtime(1)=0
name = "RotorBlade_Lower"
ID = 30052
pos = 0,0
postype = p1
stateno = 30050
ownpal = 1
facing = 1
ignorehitpause = 1
supermovetime = 999999999
pausemovetime = 999999999


;===================================
;Battery Gauge handling
;===================================
[State -2, Battery Gauge]
type = Helper
triggerall = roundstate=2
trigger1 = numhelper(31800)=0
name = "Battery Gauge"
helpertype = normal
ID = 31800
stateno = 31800
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State -2, Spirit Gauge Charge - A Type]
type = varadd
triggerall = movetype != H
triggerall = alive
triggerall = roundstate = 2
triggerall = var(52)=1 ;|| var(52)=2 ;Type A only
triggerall = var(54)<ceil(lifemax*0.9);950 Life * 0.9
triggerall = !(var(57)>0)
trigger1 = gametime%5=0;p2bodydist x = [-10,50]
trigger1 = stateno!=[4000,4099]
trigger1 = stateno!=1920
var(54) = 1

[State -2, Spirit Gauge Charge - C Type]
type = varadd
triggerall = movetype != H
triggerall = alive
triggerall = roundstate = 2
triggerall = var(52)=2 ;Type C only
triggerall = var(54)<ceil(lifemax*0.9);950 Life * 0.9
trigger1 = (stateno=20 && vel x > 0) || (stateno=50 && vel x > 0)
trigger1 = gametime%3=0;p2bodydist x = [-10,50]
;trigger2 = (stateno=100 && vel x > 0) || (stateno=110 && vel x > 0)
;trigger2 = prevstateno!=1910
;trigger2 = gametime%3=0;p2bodydist x = [-10,50]
var(54) = cond(stateno=20||stateno=50,1,2)

[State -2, Spirit Gauge Limiter]
type = varset
trigger1 = var(54)>ceil(lifemax*0.9);950 Life * 0.9
var(54) = ceil(lifemax*0.9)

[State -2, PS]
type = powerset
trigger1 = var(52)=1 ;Type-A Only
trigger1 = var(57)>0
value = var(57)
ignorehitpause = 1


;---------------------------
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Var(55) = %d  Hitstun Decay = %d damage dampen = %f\nWind = %f Var(7) = %d\thttp://ricepigeon.neocities.org"
params = Var(55),var(34),fvar(11),fvar(19),var(7)
ignorehitpause = 1
;persistent = 

;--------------------------------
[State Reset Hitstun Decay Timer]
type = varset
triggerall = var(33)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype != H && (enemynear,statetype != L)
;trigger3 = var(36)>0 ;Reset during Sakuya's World
var(33) = 0
ignorehitpause = 1 
[State Set Hitstun Decay Values]
type = varset
trigger1 = 1
;Sets the hitstun decay if not in Overdrive and certain time has elapsed
var(34) = cond(var(33)<120||(var(57)>0 && var(52)=2),0,cond(var(33)<360,-2,cond(var(33)<480,-5,cond(var(33)<660,-10,-999))))
ignorehitpause = 1
[State Reset Hitstun Decay Timer]
type = varadd
;triggerall = var(33)<=0
trigger1 = numenemy
trigger1 = !((enemynear,movetype != H) && (enemynear,statetype != L))
var(33) = 1
ignorehitpause = 1 

[State reset Groundbounce vars]
type = VarSet
triggerall = var(14)
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear,movetype != H || enemynear,movetype=I; || ((enemynear,statetype != A) && (enemynear,statetype != L))
var(14) = 0
ignorehitpause = 1

;===============================================================================
; COUNTER HIT (Taken from Vans, who based his on Sander's Method)
;===============================================================================

[State -2, VarSet];Checks if opponent is in attack state
type = VarSet
triggerall = numenemy
triggerall = !enemynear,movereversed
trigger1 = enemy, movetype = A
var(42) = 1
ignorehitpause = 1

[State -2, VarSet];This resets the condition if counter not succesful and succesful
type = VarSet
triggerall = numenemy
trigger1 = enemy, movetype = I || var(43) >= 1  ;Enemy is Idle | Counter was Succesful
trigger2 = var(43) > 10 && enemy, movetype = H  ;10 ticks passed & enemy is on gethit state
trigger3 = (time<=1) && (stateno!=[5000,5199]) && (movetype!=H)
var(42) = 0
ignorehitpause = 1

[State -2, VarSet];Counter Hit Succesful
type = VarSet
triggerall = numenemy
triggerall = !enemynear,movereversed
trigger1 = var(42) = 1 && movehit ;Counter Check Ok, Move Hit Succesfully.
trigger1 = stateno != [190,199] ;Does not activate during intros.
trigger1 = stateno != [800,899] ;Does not activate during throws.
trigger1 = stateno != [950,951] ;Don't activate during throws.
;trigger1 = stateno != [1400,1401] ;Does not activate during Intolerant Avici
var(43) = 1
ignorehitpause = 1

[State -2, VarAdd];Counter Hit Timer
type = VarAdd
trigger1 = var(43) >= 1 ;Counter was succesful
var(43) = 1
ignorehitpause = 1

[State -2, VarSet];Counter Hit Reset
type = VarSet
trigger1 = var(43) >= 22 && movehit ;Reset if 22 ticks passed and move hit
trigger2 = p2movetype != H ;Reset if P2 is no longer in gethit state
trigger3 = movetype = H ;Reset if P1 is getting hit
var(43) = 0
ignorehitpause = 1

[State -2, Counterhit Explod]
type = Explod
triggerall = numenemy
triggerall = stateno != [800,899] ;Does not activate during throws.
triggerall = stateno != [950,951] ;Don't activate during throws.
;triggerall = stateno != [1400,1401] ;Does not activate during Intolerant Avici
triggerall = !enemynear,movereversed
triggerall = var(42) = 1
triggerall = enemy, movetype = h ;Enemy was indeed HIT, otherwise this'd be retarded.
;triggerall = numexplod(7900)+numexplod(7901)=0
trigger1 = movehit ;Move hits
anim = 7900+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+80;120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 65535
supermovetime = 65535
sprpriority = 999
scale = 0.6,0.6
ontop = 1
ownpal = 1
ignorehitpause = 1

;-----------------------------------------------
; Invalid Combo Identifier
;---------------------------
[State -2, Invalid Combo Explod]
type = Explod
trigger1 = numhelper(27944)
trigger1 = numexplod(27944)=0
trigger1 = helper(27944),var(59)=1
anim = 1998
ID = 27944
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vel = 0,0
removetime = 999999999
pausemovetime = 999999999
supermovetime = 999999999
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State -2, Invalid Combo RemoveExplod]
type = RemoveExplod
triggerall = numexplod(27944)
trigger1 = numhelper(27944)
trigger1 = helper(27944),var(59)=1
trigger1 = (helper(27944),var(0)=0)||(helper(27944),var(0)>100)
trigger1 = numenemy
trigger1 = enemynear(0),movetype!=H
trigger2 = numhelper(27944)=0
id = 27944
ignorehitpause = 1

[State -2, Invalid Combo Helper]
type = helper
trigger1 = numexplod(27944)=0
trigger1 = numenemy
trigger1 = P2StateType = A && P2MoveType = H
trigger1 = EnemyNear,CanRecover
trigger1 = (p2stateno != [120,155]) && (p2stateno!=[250,262]) && (p2stateno!=[450,451]) && p2stateno!=350
trigger1 = movehit=0
helpertype = normal
name = "Invalid Combo"
ID = 27944
pos = 0,-100
postype = p1
stateno = 27944
ownpal = 1
facing = 1
pausemovetime = 999999999
supermovetime = 999999999

[State -2, Helper Movehit Flag]
type = varadd
trigger1 = var(35)>0
var(35)=-1
ignorehitpause = 1

;--------------------
; Palette & Alignment Selection
[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(1) > 0
trigger1 = helper(20002),var(1) <= helper(20002),var(5)
var(51) = helper(20002),var(1)

[State -2, Remap Palettes]
type = remappal
trigger1 = numhelper(20002)
source = 1,1
dest = 1,var(51)

[State -2, VS]
type = varset
trigger1 = numhelper(20002)
trigger1 = helper(20002),var(10) > 0
trigger1 = helper(20002),var(10) <= 3
var(52) = helper(20002),var(10)

;----------------------------------
; Custom Cornerpush System by PotS
;----------------------------------
[State -2, Superpause Check]
type = null;VarAdd
trigger1 = Var(9)
var(9) = -1

[State -3, Corner Push Reset]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push Initial Vel]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5) = (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push Apply]; Apply corner push
type= posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall = (target, statetype = S || target, statetype = C || target,statetype = A) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -2, Freeze Pos During Superpause]
type = null;PosFreeze
trigger1 = Var(9)
value = 1

[State -3, Corner Push Friction]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85

;-----MODIFIED DAMAGE DAMPENER-----------------------------

[State -2, Min Scaling Test]
type = null
trigger1 = (stateno=[200,620])
trigger1 = (fvar(9):=0.1) || 1
trigger2 = (stateno=[1000,1999])
trigger2 = (fvar(9):=0.1) || 1
trigger3 = (stateno=[2000,4999])
trigger3 = (fvar(9):=0.1) || 1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(10) = 1.0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(4) = 0

[State -2, Reset Groundbounce when the opponent recovers]
type = Varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(15) = 0

[State -2, Normal & Special Dampen]
type = null
trigger1 = (stateno!=[2000,4999])
trigger1 = (fvar(11) := ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*ifelse(var(4)>0,0.5,1)*cond(var(52)=2,0.8,1.0)) || 1
ignorehitpause = 1

[State -2, Spellcard Dampen]
type = null
trigger1 = (stateno=[2000,3999])
trigger1 = (fvar(11) := ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*cond(var(52)=2,0.8,1.0)) || 1
ignorehitpause = 1

[State -2, Last Word Dampen]
type = null
trigger1 = (stateno=[4000,4999])
;trigger1 = (fvar(11) := ifelse(0.5>fvar(10),0.5,fvar(10))*cond(var(52)=2,0.8,1.0)) || 1
trigger1 = (fvar(11) := ifelse(fvar(9)>fvar(10),fvar(9),fvar(10))*cond(var(52)=2,0.8,1.0)) || 1
ignorehitpause = 1

[State reset Combo Rate Flag]
type = VarSet
triggerall = var(55)
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
var(55) = 0
ignorehitpause = 1

;------------------------------
;Underground Juggle Prevention
[State Movehitoner]
type = VarSet
trigger1 = numenemy
var(31) = ifelse(movehit=1&&(enemynear,movereversed!=[1,2]),var(31)+1,0)
ignorehitpause = 1
[State -3, Prevent Undergound Juggles by POTS, modified by RP]
type= targetbind
trigger1= var(31)=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State -2, Throws Allowed]
type = varset
triggerall = numenemy
trigger1 = (enemynear,stateno != [150,155]);enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5020, 5120])
var(30) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, statetype != A && !var(20) && (enemynear,stateno = [150,155]);enemynear, movetype = H
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(30) = 1
ignorehitpause = 1


;----START COPY PASTE FOR -2 to go in chars for compatability---

;this resets the var so he will go to state 5170 correctly in all instances
[State -2, System Variable Set]
type = VarSet
trigger1 = StateType = S || Statetype = C
sysvar(0) = 0
ignorehitpause = 1

[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime % 2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1

;===============Applying various status to opponent outside of custom states================
[State -2, AssertSpecial]
type = AssertSpecial
triggerall = numenemy
trigger1 = enemy, NumExplod(99980000);create this explod ID and the opponent will become invisible if compatible
flag = invisible
ignorehitpause = 1

[State -2, CtrlSet]
type = CtrlSet
triggerall = numenemy
trigger1 = enemy, NumExplod(99980001);create this explod ID and the opponent will lose ctrl if compatible
value = 0

[State -2, CtrlSet]
type = CtrlSet
triggerall = numenemy
trigger1 = enemy, NumExplod(99980002);create this explod ID and the opponent will gain ctrl if compatible
value = 1



;===============Pal FX applied by opponent================
;MUGEN does not allow us to give P2 a PalFX outside of a custom state so this work around was developed
;Use these expod ID ranges for their corresponding fx 
;these are more SNK style with inverted colors
;99991000 = Fire by O Illusionista
;99991001 = Ice by O Illusionista
;99991002 = Green Poison by O Illusionista
;99991003 = Purple Poison by O Illusionista
;99991004 = Blue Shock by O Illusionista
;99991005 = B&W Shock by O Illusionista
;99991006 = Evil Red by O Illusionista
;99991007 = Evil Purple by O Illusionista
;99991008 = Slow Pulse Fire by Elix
;99991009 = Yellow/Orange Burn by Sander71113
;99991010 = Blue/Violet/Crimson Burn  by Sander71113
;99991011 = Red/Blood Burn by Sander71113
;99991012 = Dust/Gray Burn by Sander71113
;99991013 = Fade to Darker fade to brighter by Odb718
;99991014 = Black and White Negative by Odb718
;99991015 = Rainbow by altoiddealer
;99991016 = White
;99991017 = Red
;99991018 = Blue
;99991019 = Green
;99991020 = Yellow
;99991021 = Pink
;99991022 = Light Blue
;99991023 = Black

;these make the fx not inverted more like Capcom
;99992000 = Fire by O Illusionista
;99992001 = Ice by O Illusionista
;99992002 = Green Poison by O Illusionista
;99992003 = Purple Poison by O Illusionista
;99992004 = Blue Shock by O Illusionista
;99992005 = B&W Shock by O Illusionista
;99992006 = Evil Red by O Illusionista
;99992007 = Evil Purple by O Illusionista
;99992008 = Slow Pulse Fire by Elix
;99992009 = Yellow/Orange Burn by Sander71113
;99992010 = Blue/Violet/Crimson Burn  by Sander71113
;99992011 = Red/Blood Burn by Sander71113
;99992012 = Dust/Gray Burn by Sander71113
;99992013 = Fade to Darker fade to brighter by Odb718
;99992014 = Black and White Negative by Odb718
;99992015 = Rainbow by altoiddealer

[State -2, SNK Fire PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991000)
time = 1
add = Ceil(240 + 110 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10)),Ceil(120 + 85 * sin(2 * pi * gametime / 10))
mul = 250,224,120 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Ice PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991001)
time = 1
add = Ceil(0 + 85 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10)),Ceil(240 + 110 * sin(2 * pi * gametime / 10))
mul = 120,224,150 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Green Poison PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991002)
time = 1
add = Ceil(0 + 85 * sin(2 * pi * gametime / 10)),Ceil(100 + 110 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10))
mul = 20,120,24 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Purple Poison PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991003)
time = 1
add = Ceil(100 + 85 * sin(2 * pi * gametime / 10)),Ceil(0 + 110 * sin(2 * pi * gametime / 10)),Ceil(100 + 55 * sin(2 * pi * gametime / 10))
mul = 120,20,124 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Blue Shock PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991004)
time = 1
add = Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(180 -80 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK B&W Shock PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991005)
time = 1
add = Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Evil Red PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991006)
time = 1
add = Ceil(0 + 40 * sin(2 * pi * gametime / 10)),Ceil(-200 + 80 * sin(2 * pi * gametime / 10)),Ceil(-200 + 40 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Evil Purple PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991007)
time = 1
add = Ceil(0 + 40 * sin(2 * pi * gametime / 10)),Ceil(-200 + 80 * sin(2 * pi * gametime / 10)),Ceil(0 + 40 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Slow Pulse Fire PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991008)
time = 1
add = Ceil(224 -160 * sin(2 * pi * gametime / 14)),Ceil(68 -160 * sin(2 * pi * gametime / 14)),Ceil(-40 -160 * sin(2 * pi * gametime / 14))
mul = 256,192,128
color = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Yellow/Orange Burn PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991009)
time = 1
add = Ceil(40 + 40 * sin(2 * pi * gametime / 10)),Ceil(-70 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 0 * sin(2 * pi * gametime / 10))
color     = 0                                             
invertall = 1   
ignorehitpause = 1

[State -2, SNK Blue/Violet/Crimson Burn PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991010)
time = 1
add = Ceil(-104 + 56 * sin(2 * pi * gametime / 10)),Ceil(-104 + 56 * sin(2 * pi * gametime / 10)),Ceil(7 + 0 * sin(2 * pi * gametime / 10))
color     = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Red/Blood Burn PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991011)
time = 1
add = Ceil(7 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 0 * sin(2 * pi * gametime / 10))
color     = 0                                            
invertall = 1  
ignorehitpause = 1

[State -2, SNK Dust/Gray Burn PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991012)
time = 1
add = Ceil(-100 -10 * sin(2 * pi * gametime / 10)),Ceil(-100 -10 * sin(2 * pi * gametime / 10)),Ceil(-100 -10 * sin(2 * pi * gametime / 10))
color     = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Fade to Darker fade to brighter PalFX]
type = PalFX
triggerall = numenemy
trigger1 = enemy, NumExplod(99991013)
time = 1
add = Ceil(0 -65 * sin(2 * pi * gametime / 26)),Ceil(0 -65 * sin(2 * pi * gametime / 26)),Ceil(0 -65 * sin(2 * pi * gametime / 26))
mul = 164,164,164
invertall = 1
color = 256
ignorehitpause = 1

[State -2, SNK Black and White Negative PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991014)
time = 1
add = Ceil(0 + 55 * sin(2 * pi * gametime / 10)),Ceil(0 + 55 * sin(2 * pi * gametime / 10)),Ceil(0 + 55 * sin(2 * pi * gametime / 10))
mul = 200,200,200
invertall = 1
color = 0 
ignorehitpause = 1

[State -2, SNK Rainbow PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991015)
time = 1
add = Floor(sin(GameTime/8)*64),Floor(sin((GameTime-85)/8)*64),Floor(sin((GameTime-170)/8)*64)
invertall = 1 
ignorehitpause = 1

[State 0, White PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991016)
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Red PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991017)
time = 1
add = 256,0,0
mul = 256,0,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Blue PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991018)
time = 1
add = 0,0,256
mul = 0,0,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Green PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991019)
time = 1
add = 0,256,0
mul = 0,256,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Yellow PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991020)
time = 1
add = 256,256,0
mul = 256,256,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Pink PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991021)
time = 1
add = 256,0,256
mul = 256,0,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Light Blue PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991022)
time = 1
add = 0,256,256
mul = 0,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Black PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99991023)
time = 1
add = 256,256,256
mul = 0,0,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, CAPCOM Fire PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992000)
time = 1
add = Ceil(240 + 110 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10)),Ceil(120 + 85 * sin(2 * pi * gametime / 10))
mul = 250,224,120 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Ice PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992001)
time = 1
add = Ceil(0 + 85 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10)),Ceil(240 + 110 * sin(2 * pi * gametime / 10))
mul = 120,224,150 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Green Poison PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992002)
time = 1
add = Ceil(0 + 85 * sin(2 * pi * gametime / 10)),Ceil(100 + 110 * sin(2 * pi * gametime / 10)),Ceil(50 + 55 * sin(2 * pi * gametime / 10))
mul = 20,120,24 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Purple Poison PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992003)
time = 1
add = Ceil(100 + 85 * sin(2 * pi * gametime / 10)),Ceil(0 + 110 * sin(2 * pi * gametime / 10)),Ceil(100 + 55 * sin(2 * pi * gametime / 10))
mul = 120,20,124 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Blue Shock PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992004)
time = 1
add = Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(180 -80 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM B&W Shock PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992005)
time = 1
add = Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10)),Ceil(100 -80 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Evil Red PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992006)
time = 1
add = Ceil(0 + 40 * sin(2 * pi * gametime / 10)),Ceil(-200 + 80 * sin(2 * pi * gametime / 10)),Ceil(-200 + 40 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Evil Purple PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992007)
time = 1
add = Ceil(0 + 40 * sin(2 * pi * gametime / 10)),Ceil(-200 + 80 * sin(2 * pi * gametime / 10)),Ceil(0 + 40 * sin(2 * pi * gametime / 10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Slow Pulse Fire PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992008)
time = 1
add = Ceil(224 -160 * sin(2 * pi * gametime / 14)),Ceil(68 -160 * sin(2 * pi * gametime / 14)),Ceil(-40 -160 * sin(2 * pi * gametime / 14))
mul = 256,192,128
color = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Yellow/Orange Burn PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992009)
time = 1
add = Ceil(40 + 40 * sin(2 * pi * gametime / 10)),Ceil(-70 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 0 * sin(2 * pi * gametime / 10))
color     = 0                                        
invertall = 0  
ignorehitpause = 1

[State -2, CAPCOM Blue/Violet/Crimson Burn PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992010)
time = 1
add = Ceil(-104 + 56 * sin(2 * pi * gametime / 10)),Ceil(-104 + 56 * sin(2 * pi * gametime / 10)),Ceil(7 + 0 * sin(2 * pi * gametime / 10))
color     = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Red/Blood Burn PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992011)
time = 1
add = Ceil(7 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 30 * sin(2 * pi * gametime / 10)),Ceil(-200 + 0 * sin(2 * pi * gametime / 10))
color     = 0 
ignorehitpause = 1

[State -2, CAPCOM Dust/Gray Burn PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992012)
time = 1
add = Ceil(-100 -10 * sin(2 * pi * gametime / 10)),Ceil(-100 -10 * sin(2 * pi * gametime / 10)),Ceil(-100 -10 * sin(2 * pi * gametime / 10))
color     = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Fade to Darker fade to brighter PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992013)
time = 1
add = Ceil(0 -65 * sin(2 * pi * gametime / 26)),Ceil(0 -65 * sin(2 * pi * gametime / 26)),Ceil(0 -65 * sin(2 * pi * gametime / 26))
mul = 164,164,164
invertall = 0
color = 256
ignorehitpause = 1

[State -2, CAPCOM Black and White Negative PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992014)
time = 1
add = Ceil(0 + 55 * sin(2 * pi * gametime / 10)),Ceil(0 + 55 * sin(2 * pi * gametime / 10)),Ceil(0 + 55 * sin(2 * pi * gametime / 10))
mul = 200,200,200
invertall = 0
color = 0 
ignorehitpause = 1

[State -2, CAPCOM Rainbow PalFX]
type = PalFX
trigger1 = enemy, NumExplod(99992015)
time = 1
add = Floor(sin(GameTime/8)*64),Floor(sin((GameTime-85)/8)*64),Floor(sin((GameTime-170)/8)*64)
invertall = 0
ignorehitpause = 1


;===============poisoning P2 see state 1510 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990000 = -1
;99990001 = -2
;99990002 = -3
;99990003 = -4
;99990004 = -5
;99990005 = -10
;99990006 = -15
;99990007 = -20
;99990008 = -25
;99990009 = -30
;ID ranges include; each represents how much life per tick is gained
;99990010 = +1
;99990011 = +2
;99990012 = +3
;99990013 = +4
;99990014 = +5
;99990015 = +10
;99990016 = +15
;99990017 = +20
;99990018 = +25
;99990019 = +30

;this explod tells how long the duration of poison should last
[State 0, Explod]
type = Explod
trigger1 = NumProjID(99990008)
anim = 1998
ID = 99990003; 4+4 Damage
removetime = 1 ;adjusts how long p2 is in poison status
removeongethit = 1 ;removes poison when you are hit
ignorehitpause = 1

;this explod tells how long the duration of poison should last
[State 0, Explod]
type = Explod
trigger1 = NumProjID(99990010)||numprojid(99990012)
anim = 1998
ID = 99990004; 5+5 Damage
removetime = 1 ;adjusts how long p2 is in poison status
removeongethit = 1 ;removes poison when you are hit
ignorehitpause = 1
;this explod tells how long the duration of poison should last

;this explod tells how long the duration of poison should last
[State 0, Explod]
type = Explod
trigger1 = NumProjID(99990012)
anim = 1998
ID = 99990000; 6+6 Damage
removetime = 1 ;adjusts how long p2 is in poison status
removeongethit = 1 ;removes poison when you are hit
ignorehitpause = 1

;this explod tells how long the duration of poison PalFX should last
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990003)||NumExplod(99990004)||NumExplod(99990000);||NumExplod(99990005)
anim = 1998
ID = 99992003
removetime = 1 
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990020 = -1
;99990021 = -2
;99990022 = -3
;99990023 = -4
;99990024 = -5
;99990025 = -10
;99990026 = -15
;99990027 = -20
;99990028 = -25
;99990029 = -30
;ID ranges include; each represents how much life per tick is gained
;99990030 = +1
;99990031 = +2
;99990032 = +3
;99990033 = +4
;99990034 = +5
;99990035 = +10
;99990036 = +15
;99990037 = +20
;99990038 = +25
;99990039 = +30

;this explod tells how frequently the poison should take life
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990000)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990020
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990001)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990021
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990002)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990022
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990003)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990023
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990004)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990024
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990005)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990025
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990006)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990026
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990007)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990027
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990008)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990028
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990009)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990029
removetime = 1

;this explod tells how frequently the poison should give life
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990010)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990030
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990011)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990031
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990012)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990032
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990013)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990033
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990014)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990034
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990015)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990035
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990016)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990036
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990017)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990037
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990018)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990038
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990019)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990039
removetime = 1

;===============poisoning yourself see state 1520 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990040 = -1
;99990041 = -2
;99990042 = -3
;99990043 = -4
;99990044 = -5
;99990045 = -10
;99990046 = -15
;99990047 = -20
;99990048 = -25
;99990049 = -30
;ID ranges include; each represents how much life per tick is gained
;99990050 = +1
;99990051 = +2
;99990052 = +3
;99990053 = +4
;99990054 = +5
;99990055 = +10
;99990056 = +15
;99990057 = +20
;99990058 = +25
;99990059 = +30

;this explod tells how long the duration of poison should last
[State 0, Explod]
type = Explod
trigger1 = NumProjID(99990040)
anim = 1998
ID = 99990040
removetime = 300

[State 0, RemoveExplod];removes poison when you hit P2
type = RemoveExplod
trigger1 = P2MoveType = H
id = 99990040
ignorehitpause = 1

;this explod tells how long the duration of poison PalFX should last
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990040)
anim = 1998
ID = 1509
removetime = 1
ignorehitpause = 1

[State 0, RemoveExplod];removes poison PalFX when you hit P2
type = RemoveExplod
trigger1 = P2MoveType = H
id = 1509
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990060 = -1
;99990061 = -2
;99990062 = -3
;99990063 = -4
;99990064 = -5
;99990065 = -10
;99990066 = -15
;99990067 = -20
;99990068 = -25
;99990069 = -30
;ID ranges include; each represents how much life per tick is gained
;99990070 = +1
;99990071 = +2
;99990072 = +3
;99990073 = +4
;99990074 = +5
;99990075 = +10
;99990076 = +15
;99990077 = +20
;99990078 = +25
;99990079 = +30

;this explod tells how frequently the poison should take or give life
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990040)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990060
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990041)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990061
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990042)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990062
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990043)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990063
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990044)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990064
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990045)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990065
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990046)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990066
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990047)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990067
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990048)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990068
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990049)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990069
removetime = 1

;this explod tells how frequently the poison should take or give life
[State 0, Explod]
type = Explod
trigger1 = NumExplod(9999005)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990070
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990051)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990071
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990052)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990072
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990053)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990073
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990054)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990074
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990055)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990075
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990056)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990076
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990057)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990077
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990058)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990078
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990059)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often the poison takes/gives life
anim = 1998
ID = 99990079
removetime = 1

;===============it's time to take or give the life from poisoning================
; opponent poisons you
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990020)
value = -1
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990021)
value = -2
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990022)
value = -3
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990023)
value = -4
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990024)
value = -5
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990025)
value = -10
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990026)
value = -15
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990027)
value =-20
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990028)
value = -25
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990029)
value = -30
kill = 0

; opponent heals you
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990030)
value = 1
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990031)
value = 2
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990032)
value = 3
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990033)
value = 4
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990034)
value = 5
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990035)
value = 10
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990036)
value = 15
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990037)
value = 20
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990038)
value = 25
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = enemy, NumExplod(99990039)
value = 30
kill = 0

;you poison yourself
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990060)
value = -1
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990061)
value = -2
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990062)
value = -3
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990063)
value = -4
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990064)
value = -5
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990065)
value = -10
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990066)
value = -15
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990067)
value = -20
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990068)
value = -25
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990069)
value = -30
kill = 0

;you heal yourself
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990070)
value = 1
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990071)
value = 2
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990072)
value = 3
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990073)
value = 4
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990074)
value = 5
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990075)
value = 10
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990076)
value = 15
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990077)
value = 20
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990078)
value = 25
kill = 0
[State 0, LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990079)
value = 30
kill = 0

;===============taking power from P2: this is pretty much identical to poisoning so no examples are given in char================

;ID ranges include; each represents how much meter per tick is lost
;99990100 = -1
;99990101 = -2
;99990102 = -3
;99990103 = -4
;99990104 = -5
;99990105 = -10
;99990106 = -15
;99990107 = -20
;99990108 = -25
;99990109 = -30
;ID ranges include; each represents how much meter per tick is gained
;99990110 = +1
;99990111 = +2
;99990112 = +3
;99990113 = +4
;99990114 = +5
;99990115 = +10
;99990116 = +15
;99990117 = +20
;99990118 = +25
;99990119 = +30

;this explod tells how long the duration of meter drain/give should last
[State 0, Explod]
type = null;Explod
trigger1 = NumProjID(99990100)
anim = 1998
ID = 99990100
removetime = 300 ;adjusts how long p2 is meter drain/give status
removeongethit = 1 ;removes status when you are hit

;ID ranges include; each represents how much meter per tick is lost
;99990120 = -1
;99990121 = -2
;99990122 = -3
;99990123 = -4
;99990124 = -5
;99990125 = -10
;99990126 = -15
;99990127 = -20
;99990128 = -25
;99990129 = -30
;ID ranges include; each represents how much meter per tick is gained
;99990130 = +1
;99990131 = +2
;99990132 = +3
;99990133 = +4
;99990134 = +5
;99990135 = +10
;99990136 = +15
;99990137 = +20
;99990138 = +25
;99990139 = +30

;this explod tells how frequently to take meter
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990100)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990120
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990101)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990121
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990102)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990122
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990103)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990123
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990104)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990124
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990105)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990125
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990106)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990126
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990107)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990127
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990108)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990128
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990109)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990129
removetime = 1

;this explod tells how frequently to give meter
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990110)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990130
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990111)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990131
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990112)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990132
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990113)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990133
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990114)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990134
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990105)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990135
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990116)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990136
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990117)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990137
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990118)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990138
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990119)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990139
removetime = 1

;===============poisoning yourself see state 1520 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990140 = -1
;99990141 = -2
;99990142 = -3
;99990143 = -4
;99990144 = -5
;99990145 = -10
;99990146 = -15
;99990147 = -20
;99990148 = -25
;99990149 = -30
;ID ranges include; each represents how much life per tick is gained
;99990150 = +1
;99990151 = +2
;99990152 = +3
;99990153 = +4
;99990154 = +5
;99990155 = +10
;99990156 = +15
;99990157 = +20
;99990158 = +25
;99990159 = +30

;this explod tells how long the duration of taking/giving meter should last
[State 0, Explod]
type = Null;Explod
trigger1 = NumProjID(99990140)
anim = 1998
ID = 99990140
removetime = 300

[State 0, RemoveExplod];removes meter status when you hit P2
type = Null;RemoveExplod
trigger1 = P2MoveType = H
id = 99990140
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990160 = -1
;99990161 = -2
;99990162 = -3
;99990163 = -4
;99990164 = -5
;99990165 = -10
;99990166 = -15
;99990167 = -20
;99990168 = -25
;99990169 = -30
;ID ranges include; each represents how much life per tick is gained
;99990170 = +1
;99990171 = +2
;99990172 = +3
;99990173 = +4
;99990174 = +5
;99990175 = +10
;99990176 = +15
;99990177 = +20
;99990178 = +25
;99990179 = +30

;this explod tells how frequently the status should take or give meter
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990140)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990160
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990141)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990161
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990142)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990162
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990143)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990163
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990144)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990164
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990145)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990165
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990146)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990166
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990147)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990167
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990148)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990168
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990149)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990169
removetime = 1

;this explod tells how frequently the status should take or give meter
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990150)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990170
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990151)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990171
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990152)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990172
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990153)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990173
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990154)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990174
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990155)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990175
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990156)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990176
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990157)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990177
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990158)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990178
removetime = 1
[State 0, Explod]
type = Explod
trigger1 = NumExplod(99990159)
trigger1 = GameTime%15 = 0 ;edit gametime% to change how often it takes/gives meter
anim = 1998
ID = 99990179
removetime = 1

;===============it's time to take or give the meter================
; opponent drains meter
[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990120)
value = -1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990121)
value = -2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990122)
value = -3

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990123)
value = -4

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990124)
value = -5

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990125)
value = -10

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990126)
value = -15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990127)
value =-20

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990128)
value = -25

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990129)
value = -30


; opponent gives meter
[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990130)
value = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990131)
value = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990132)
value = 3

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990133)
value = 4

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990134)
value = 5

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990135)
value = 10

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990136)
value = 15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990137)
value = 20

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990138)
value = 25

[State 0, PowerAdd]
type = PowerAdd
trigger1 = enemy, NumExplod(99990139)
value = 30


;you take your own meter
[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990160)
value = -1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990161)
value = -2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990162)
value = -3

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990163)
value = -4

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990164)
value = -5

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990165)
value = -10

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990166)
value = -15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990167)
value = -20

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990168)
value = -25

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990169)
value = -30


;you add to your own meter
[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990170)
value = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990171)
value = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990172)
value = 3

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990173)
value = 4

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990174)
value = 5

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990175)
value = 10

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990176)
value = 15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990177)
value = 20

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990178)
value = 25

[State 0, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990179)
value = 30
;---END COPY PASTE CODE FOR -2---

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Prevent Corner Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Hitsound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5000
trigger2 = StateNo = 5020
value = 5000, 0
channel = 0

[State -3, Hitsound 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5010
trigger2 = StateNo = 5070
value = 5000, 1
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5030
value = 5000, 2
channel = 0

[State -3, Hitsound 3]
type = PlaySnd
triggerall = Time = 1
triggerall = Random <= 500
triggerall = Life > 0 ;Too lazy to use Alive trigger
trigger1 = StateNo = 5120
value = 5120, 0
channel = 0

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = Null;PlaySnd ;Nitori never touches ground, why is this here?
trigger1 = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 100
trigger2 = time > 2
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 40, 0