;================================================================================================
;                                         STRIDER BY MGMURROW
;================================================================================================

;================================================================================================
;                         States that are always executed (use statedef -2)
;================================================================================================

[Statedef -2]

;Debug
[State -2, Debug Flag Display]
type = DisplayToClipboard
trigger1 = 1
text = "AI=%d , P2BodyDist Y: %f , P2BodyDist X: %f" 
params = var(52) , P2BodyDist Y , P2Bodydist X


;================================================================================================
;                                  DANGER SOUND AND DISPLAY TRIGGERS
;================================================================================================
;Danger!
[State -2, Danger]
type = PlaySnd
triggerall = Var(12) = 1
triggerall = (Teamside =1 && IsHomeTeam) || (Teamside =2 && !IsHomeTeam) || (TeamSide=1 && !IsHomeTeam)
trigger1 = Life <= 200
value = 5,0

[State -2, Danger]
type = Explod
trigger1 = NumExplod(8000) = 0
trigger1 = Var(12) = 1
anim = 8000
sprpriority = 100
postype = Left
pos = ifelse(TeamSide = 2,240,80),55
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1
scale=.8,.8
size.shadowoffset = -9999
id = 8000

[State -2, Danger VarAdd]
type = varadd
triggerall = Life <= 200
trigger1 = Var(12) <= 2 
v = 12
value = 1
;================================================================================================
;                                   KO/CHEAP DEATH SOUND TRIGGERS
;================================================================================================
;[State -2, KO1]
;type = VarSet
;trigger1 =life>=1
;Var(13) = 0

;[State -2, KO2]
;type = VarSet
;trigger1 = life = 0
;trigger1 = Var(13) = 0
;Var(13) = 1
;ignorehitpause = 1

;[State -2, KO3]
;type = VarAdd
;trigger1 = life = 0
;trigger1 = Var(13) >= 1
;Var(13) = 1

;[State -2,KO4 playsnd]
;type = playsnd
;trigger1 = RoundState > 2
;trigger1 = life = 0
;trigger1 = Var(13) = 3
;value = 2,ifelse(stateno=5130,-1,0)
;channel = 1
;volume=255

;[State -2, KO5]
;type = VarSet
;trigger1 = Var(13) = 3
;Var(13) = -1

;================================================================================================
;                                        Remove Explodes
;================================================================================================




;================================================================================================
;                              Damage Dampener (Combos take less damage)
;================================================================================================

;BASIC ATTACKS
[State -2, Damage based on hits]
type=varset
trigger1=numenemy
fvar(12)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[State -2, Reset var when the opponent recovers]
type=varset
trigger1=numenemy
trigger1=(enemynear,movetype!=H)
trigger2=!numenemy
fvar(12)=1

[State -2, Dampener]
type=varset
trigger1=1
trigger1=stateno!=[3000,3999]
fvar(10)= ifelse(fvar(12)=0, 1, ifelse(fvar(12)=1, .9, .8**fvar(12)))
ignorehitpause=1

[State -2, Dampener itself]
type=attackmulset
trigger1=1
trigger1=stateno!=[3000,3999]
value=fvar(10)
ignorehitpause=1

[State -2, Dampener itself]
type=attackmulset
trigger1=1
trigger1=stateno=[3000,3999]
value=1
ignorehitpause=1

;===============================================================================================
;                                         Dizzy State 
;===============================================================================================
;DIZZY STATES
[State -2]
type = Varset
triggerall = life > 0 && time = 0
triggerall = stateno = [5000,5999]
trigger1 = stateno = [9005,9010]
var(8) = 0
ignorehitpause = 1

;This is used to recover the stun meter when the character is not hit.
[State -2]
type = VarAdd
triggerall = (Var(8) > 0)
trigger1 = 1
v = 8
value = -1
ignorehitpause = 1

[State -2,0 for light]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 0
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,15,70))
ignorehitpause = 1 

[State -2,1 for medium]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 1
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,20,100))
ignorehitpause = 1 

[State -2,2 for heavy]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 2
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,30,130))
ignorehitpause = 1 

[State -2,3 for back]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 3
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H 
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,25,60))
ignorehitpause = 1 

[State -2, 4 for up]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 4
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,35,70))
ignorehitpause = 1 

[State -2, 5 for diag-up]
type = VarAdd
triggerall = life > 0 && time = 0
triggerall = var(8) <= 999
triggerall = gethitvar(animtype) = 5
triggerall = stateno!= [120,155]
trigger1 = stateno = [5000,5999]
trigger1 = Movetype = H
var(8) =ifelse(enemynear,stateno>=3000,0,ifelse(enemynear,stateno>=1000,40,80))
;persistent = 0;------persistent does not work in negative states
ignorehitpause = 1

[State -2]
type = ChangeState
triggerall = life > 0
trigger1 = var(8) >= 1000
trigger1 = HitShakeOver
value = 9010
ctrl = 0
ignorehitpause= 1
;================================================================================================
;                                     Hitspark/Guardspark Positions
;================================================================================================
[State -2, HitPause]
type=varset
trigger1= movecontact!=1
var(36)=gametime+2

[State -2, HitSparks]
type=helper
trigger1= var(36)=gametime
trigger1= movehit=1 && numenemy
trigger1= var(30)=8010 || var(30)=8015 || var(30)=8020 || var(30)=8025 || var(30)=8030
helpertype=normal
stateno=var(30)
ID=8000
name="Spark"
postype=p2
pos= (enemynear,const(size.ground.front) + var(32)) * (enemynear,facing) * (-facing), floor(pos y-enemynear,pos y) + var(33)
facing= ifelse((enemynear,facing = facing), 1, -1)
ownpal=1
size.xscale=.5
size.yscale=.5
pausemovetime=65535
supermovetime=65535
ignorehitpause=1

[State -2, GuardSparks]
type=helper
trigger1= var(36)=gametime
trigger1= moveguarded=1 && numenemy
trigger1= var(31)=8000 || var(31)=8001
helpertype=normal
stateno=8001;var(31)
ID=8000
name="Spark"
postype=p2
pos= (enemynear,const(size.ground.front) + var(32)) * (enemynear,facing) * (-facing), floor(pos y-enemynear,pos y) + var(33)
facing= ifelse((enemynear,facing = facing), 1, -1)
ownpal=1
size.xscale=.5
size.yscale=.5
pausemovetime=65535
supermovetime=65535
ignorehitpause=1

[State -2, Reset]
type=varrangeset
trigger1= movetype=I 
trigger2= movetype=H && time
first=30
last=36
value=-1
ignorehitpause=1
[State -2, HitPause]
type=varadd
trigger1= var(36)>0
var(36)=-1
ignorehitpause=1

;=============================================================================================
;           States that are executed when in self's state file (use statedef -3)
;=============================================================================================

[Statedef -3]


[State -3, resetAI]
type=varset
trigger1=var(0)&&(!alive||roundstate!=2)
var(0)=0
ignorehitpause=1
[State -3, AIactivation]
type=helper
trigger1=!numhelper(9741)&&roundstate=2&&alive&&!var(0)
helpertype=normal
name="Characters's AI"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647



[State -3: ChangeState]
type = ChangeState
triggerall = (Var(0)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
trigger2 = (p2bodydist X <= 150) && (Facing = 1) && (EnemyNear, Facing = -1) && (P2MoveType = A)
trigger3 = (p2bodydist X <= 150) && (Facing = -1) && (EnemyNear, Facing = 1) && (P2MoveType = A)
trigger4 = (stateno=0) && (prevstateno=5120) && (EnemyNear, Stateno=[3000,3999])
value = 130

[State -3: ChangeState]
type = ChangeState
triggerall = (Var(0)) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 131

[State -3: ChangeState]
type = ChangeState
triggerall = (Var(0)) && (StateType = A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
trigger1 = (vel x !=const(velocity.airjump.fwd.x)) && (vel y >=1) && (p2statetype=A)
value = 132

;===============================================================================================
;                                          Corner Push 
;===============================================================================================

[State -3, Corner Push1]
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= target,hitover || (target,gethitvar(hitshaketime)>0 && target,time<=0)
fvar(5)= 0

[State -3, Corner Push2]
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= target,gethitvar(xvel)
ignorehitpause= 1

[State -3, Corner Push4]
type= posadd
triggerall= fvar(5)
triggerall= statetype!=L && numtarget
triggerall= (target,statetype!=L)
triggerall= !hitpausetime && target,gethitvar(hitshaketime)<=0
trigger1= target,frontedgebodydist<=abs(target,vel x)
trigger1= (target,gethitvar(xvel) * target,facing)>0
trigger2= target,backedgebodydist<=abs(target,vel x)
trigger2= (target,gethitvar(xvel) * target,facing)<0
x= ifelse(target,frontedgebodydist<=0, -1, 1) * (target,facing) * fvar(5)

[State -3, Corner Push5]
type= varset
trigger1= numtarget
trigger1= target,gethitvar(hitshaketime)<=0
fvar(5)= fvar(5)*.85

;================================================================================================
;                                         COLLAPSE/CHEAP DEATH
;================================================================================================
[State -3, Cheap KO]
type=null;changestate
trigger1= !alive && (stateno=[5000,5010])
trigger1= (prevstateno=[130,131]) || (prevstateno=[140,141]) || (prevstateno=[150,153])
value=5130
ignorehitpause=1

;===============================================================================================
;                                       Variable State Set 
;===============================================================================================



;===============================================================================================
;                                    Normal & Special KO States 
;===============================================================================================

[State -3, VarSet]
type=VarSet
trigger1=roundstate=2
var(58)=0

[state -3, VarSet]
type=VarSet
triggerall=var(58)=0
triggerall=winko
trigger1=stateno=[200,661]
var(58)=1
ignorehitpause=1

[state -3, helper]
type=helper
triggerall=NumHelper(4200)=0
triggerall=var(58)=1
triggerall=numenemy=1
trigger1=numtarget
stateno=4200
ID=4200
pos=0,0
postype=p1
helpertype=normal
name="ko-sounds"
pausemovetime=999
supermovetime=999
ignorehitpause = 1
;===============================================================================================
;                                         Hyper KO States 
;===============================================================================================

[State -3, VarSet]
type=VarSet
trigger1=roundstate=2
var(58)=0

[state -3, VarSet]
type=VarSet
triggerall=var(58)=0
triggerall=winko
trigger1=stateno=[3000,3999]
var(58)=2
ignorehitpause=1

[state -3, helper]
type=helper
triggerall=NumHelper(4300)=0
triggerall=var(58)=2
triggerall=numenemy=1
trigger1=numtarget
stateno=4300
ID=4300
pos=0,0
postype=p1
helpertype=normal
name="Hko-sounds"
pausemovetime=999
supermovetime=999
ignorehitpause = 1



;===============================================================================================
;                                          VARIABLE LIST                    
;===============================================================================================
; Var(0) 	- AI
; Var(1) 	- Used in Leo.cmd for combo condition (updated every tick)
; var(2)        - Win - Random 
; Var(3) 	- Intro - Random
; Var(4) 	- Taunt - Random
; Var(5) 	- Aerial Rave Finisher
; Var(6) 	- Aerial Rave Finisher - HIT COUNTER
; Var(7) 	- Air Dash System
; Var(8) 	- Dizzy
; Var(9)        - Dizzy Button Mash
; var(10)       - Used in Hyper Combo Finish BG
; var(11)       - Guard Push
; var(12)       - Danger sound and text display
; var(13)       - KO/Cheap Death Sounds
; var(30)       - Sparkxy
; var(31)       - Sparkxy
; var(32)       - Sparkxy
; var(33)       - Sparkxy
; var(34)       - Sparkxy
; var(35)       - Sparkxy
; var(36)       - Sparkxy
; Var(58) 	- Normal & Special KO Sounds
; Var(59) 	- AI
; Var(60) 	- Satellite Laser Hyper

; fvar(5) - Corner Push
; fvar(10) - Sets the Damage Dampener in the AttackMulSet sctrl...
; fvar(12) - Counts how many hit s you got in current combo







