;--- STATEDEF -2 ---
;Think of StateDef -2 as, "passive" states.
;They are always active. The trigger conditions are checked every single tick the engine renders.
;One immediate exception to this, is if the character is within an enemy's custom state. (e.g. being thrown.)

[Statedef -2]

[State -2, BBTag Super Finish BG]
type = Helper
triggerall = !NumHelper(7010)
triggerall = WinKo
trigger1 = StateNo = 3000 || StateNo = 3010 || StateNo = 3020
helpertype = Normal
stateno = 7010
ID = 7010
pos = 0,0
postype = p1
facing = 1
ownpal = 0
ignorehitpause = 1
persistent = 0

[State -2, JoJo HFTF KO BG]
type = Helper
triggerall = !NumHelper(7010)
triggerall = WinKo && RoundState = 3
trigger1 = NumHelper(7000) = 0
stateno = 7000
ID = 7000
ownpal = 1
ignorehitpause = 1
persistent = 0

[State -2, Get full HP when proceed in the next round (mostly for Survival and Turns modes)]
type = LifeSet
trigger1 = RoundState < 2
value = LifeMax

[State -2, Air Dash Limiter]
type = VarSet
trigger1 = statetype != A
trigger2 = movetype = H
var(13) = 1

[State -2, Reset]
type = VarSet
trigger1 = (stateno != [670,679]) && stateno != 710
var(6) = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; Damage Dampener
[State -2, Reset Var when the opponent recovers]
type = VarSet
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype != H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
fvar(10) = 1

[State -2, Final Dampen]
type = Null
trigger1 = (fvar(11) := cond(fvar(10)>0.1,fvar(10),0.1)) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = AttackMulSet
trigger1 = 1
value = fvar(11)
ignorehitpause = 1

;---------------------------------------------------------------------------
;--- STATEDEF -3 ---
;Think of StateDef -3 as, "conditional" states.
;These states act whenever the conditions of the trigger are met.
;One example of this would be to heal your character for 50 HP every time they land from a jump.

[Statedef -3]

[State -3, Invincible before and after the match]
type = NotHitBy
trigger1 = RoundState != 2
trigger1 = 0 && Var(5):=(Var(5)|2)-2
trigger2 = RoundState = 2 && Ctrl
trigger2 = 0 && Var(5):=(Var(5)|2)
trigger3 = !(Var(5)&2)
value2 = SCA
time = 2
ignorehitpause = 1

[State -3, GetHit Snd]
type = PlaySnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < 250
value = s5000,0+random%2
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = PlaySnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear,hitdefattr = SCA,SA,HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000,5199])
value = s5000,0+random%2
channel = 0
ignorehitpause = 1

[State -3, StopSnd for Power Charge]
type = StopSnd
trigger1 = StateNo != 900
channel = 2
ignorehitpause = 1

[State -3, Win Prep]
type = PlaySnd
triggerall = StateNo = 3050 && RoundState = 3
trigger1 = NumHelper(7000)
trigger1 = Helper(7000),Time = 50
value = s7020,0

[State -3, Win Prep]
type = Explod
triggerall = StateNo = 3050 && RoundState = 3
trigger1 = NumHelper(7000)
trigger1 = Helper(7000),Time = 50
anim = 7005
ID = 303030
pos = 0,0
postype = left
facing = 1
bindtime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 320,240
ontop = 1
ownpal = 1

[State -3, Win Prep]
type = AssertSpecial
trigger1 = NumExplod(303030)
flag = nofg
ignorehitpause = 1

[State -3, Get up from LieDown sound]
type = PlaySnd
triggerall = time = 1
trigger1 = Life <= 500
trigger1 = Life != 0
trigger1 = StateNo = 5120
value = s5001,0
channel = 0
ignorehitpause = 1