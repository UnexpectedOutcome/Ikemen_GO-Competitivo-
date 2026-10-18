; Common state file for M.U.G.E.N 1.0
;
; System variables usage
; ----------------------
; Var name    Type   Purpose
; --------    ----   -------
; sysvar(0)   Temp   Set by state 5081 (HITL_SLIDE) to 1 to prevent
;                    showing ground hit frame in state 5110 (HIT_LIEDOWN).
;                    Used by guarding states.
; sysvar(1)   Temp   Used by state 40 (Jump Start) amd 45 (Air Jump Start)
;                    to keep track of which way to jump.
;                    Used by state 5100 and 5110 to remember downward
;                    velocity of player just before hitting the ground.
;                    Used in state 5080 for storing the anim # to display.

; The following states have special handling within MUGEN, and should be
; overridden with caution:
; Jump Start (40): airjumping bookkeeping at time = 0
; All guard states (120-155): guard handling throughout state
; Hit_trip, shaking (5070): defense increases at time = 0
; Downed get-hit (hit ground from fall) (5100):
;   defense increases at time = 0, player becomes invincible if within 10
;   ticks of getting up
; Hit_liedown (5110): player changes to get-up state (5120) when ready
; Hit_getup (5120): player's defence is restored to normal at time = 0
; Hitfall_recover (5200): player's defence is restored at time = 0
; Hitfall_airrecover (5210): player's defence is restored at time = 0

;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050
ctrl = 0

;------------------------------
; Helicopter Blade
[StateDef 30050]
Type = A
MoveType = I
Physics = N
anim = 1+1*(ishelper(30051)||ishelper(30052))
SprPriority = 6-1*ishelper(30051)-2*ishelper(30052)
velset = 0,0

[State 30050, ChangAnim]
type = changeanim
trigger1 = anim!=(1+1*(ishelper(30051)||ishelper(30052)))
trigger1 = (root,movetype!=H) && (root,stateno!=[5000,5299])
value = 1+1*(ishelper(30051)||ishelper(30052))

[State 30050, ChangAnim]
type = changeanim
trigger1 = anim != 3 && anim != 1998
trigger1 = (root,movetype=H) || (root,stateno=[5000,5299])
value = cond((ishelper(30051)||ishelper(30052)),1998,3)

[State 30050, Emulate Hitpause]
type = changeanim
trigger1 = root,hitpausetime
value = anim
elem = animelemno((var(0)-animelemtime(1)));animelemno(-1)

[State 30050, Scale Me]
type = null
trigger1 = time=0
trigger1 = (fvar(0):=1.0)||1
trigger1 = (fvar(1):=0.25)||1

[State 30050, Bind Me - Default]
type = null
trigger1 = 1
trigger1 = (var(2):=-29)||1
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=-110)||1

[State 30050, Bind Me - State 0]
type = null
triggerall = root,stateno=0
trigger1 = root,animelemno(0)=1||root,animelemno(0)=6 ;-25, -66 -> 0,-110 (angle: -110, pole length ~= 51)
trigger1 = (var(2):=-29)||1
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=-110)||1
trigger2 = root,animelemno(0)=[2,5]
trigger2 = (var(2):=-29)||1
trigger2 = (var(0):=0)||1
trigger2 = (var(1):=-109)||1
trigger3 = root,animelemno(0)=7||root,animelemno(0)=13
trigger3 = (var(2):=-29)||1
trigger3 = (var(0):=0)||1
trigger3 = (var(1):=-111)||1
trigger4 = root,animelemno(0)=8||root,animelemno(0)=12
trigger4 = (var(2):=-29)||1
trigger4 = (var(0):=0)||1
trigger4 = (var(1):=-112)||1
trigger5 = root,animelemno(0)=[9,11]
trigger5 = (var(2):=-29)||1
trigger5 = (var(0):=0)||1
trigger5 = (var(1):=-113)||1

[State 30050, Bind Me - State 20 - Walk Fwd]
type = null
triggerall = root,stateno=20
triggerall = root,anim=20
trigger1 = root,animelemno(0)=1
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=-110)||1
trigger1 = (var(2):=-20)||1
trigger2 = root,animelemno(0)=2
trigger2 = (var(0):=20)||1
trigger2 = (var(1):=-105)||1
trigger2 = (var(2):=-30)||1
trigger3 = root,animelemno(0)=[3,8]
trigger3 = (var(0):=38)||1
trigger3 = (var(1):=-100)||1
trigger3 = (var(2):=-45)||1

[State 30050, Bind Me - State 20 - Walk Back]
type = null
triggerall = root,stateno=20
trigger1 = root,anim=21
trigger1 = (var(0):=-15)||1
trigger1 = (var(1):=-110)||1
trigger1 = (var(2):=-10)||1

[State 30050, Bind Me - State 40 - Jump Start]
type = null
triggerall = (root,stateno=40 && root,anim = 40)
trigger1 = root,animelemno(0)=1
trigger1 = (var(2):=-60)||1
trigger1 = (var(0):=-8+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger1 = (var(1):=-84+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger2 = root,animelemno(0)=2
trigger2 = (var(2):=-95)||1
trigger2 = (var(0):=10+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-84+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 50 - Jump]
type = null
triggerall = (root,stateno=50 && (root,anim = [41,43]))
trigger1 = root,animelemno(0)=1
trigger1 = (var(2):=-70)||1
trigger1 = (var(0):=6+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger1 = (var(1):=-84+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger2 = root,animelemno(0)=[2,5]
trigger2 = (var(2):=-60)||1
trigger2 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-84+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 52 - Jump Land]
type = null
triggerall = (root,stateno=52 && root,anim = 47)
trigger1 = root,animelemno(0)=[1,2]
trigger1 = (var(2):=-29)||1
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=-110)||1


[State 30050, Bind Me - State 100 - Dash FWD]
type = null
triggerall = root,stateno=100 && (root,anim=100||root,anim=102)
trigger1 = root,animelemno(0)=1
trigger1 = (var(0):=-27)||1
trigger1 = (var(1):=-100)||1
trigger1 = (var(2):=0)||1
trigger2 = root,animelemno(0)=2
trigger2 = (var(0):=-37)||1
trigger2 = (var(1):=-90)||1
trigger2 = (var(2):=40)||1
trigger3 = root,animelemno(0)=[3,7]
trigger3 = (var(0):=-58)||1
trigger3 = (var(1):=-80)||1
trigger3 = (var(2):=80)||1

[State 30050, Bind Me - State 101 - Dash FWD Skid]
type = null
triggerall = root,stateno=101
trigger1 = root,animelemno(0)=1
trigger1 = (var(0):=34)||1  ;-14
trigger1 = (var(1):=-90)||1 ;-73
trigger1 = (var(2):=-45)||1
trigger2 = root,animelemno(0)=2
trigger2 = (var(0):=23)||1
trigger2 = (var(1):=-100)||1
trigger2 = (var(2):=-40)||1
trigger3 = root,animelemno(0)=3
trigger3 = (var(0):=10)||1
trigger3 = (var(1):=-105)||1
trigger3 = (var(2):=-30)||1
trigger4 = root,animelemno(0)=4
trigger4 = (var(0):=0)||1
trigger4 = (var(1):=-110)||1
trigger4 = (var(2):=-20)||1

[State 30050, Bind Me - State 105/115 - Dash Back/Air Dash Back]
type = null
triggerall = (root,stateno=105 && root,anim = 105)||(root,stateno=115 && root,anim = 115)
trigger1 = root,animelemno(0)=1
trigger1 = (var(2):=-45)||1
trigger1 = (var(0):=-14+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger1 = (var(1):=-73+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger2 = root,animelemno(0)=2
trigger2 = (var(2):=-50)||1
trigger2 = (var(0):=-6+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-74+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=[3,6]
trigger3 = (var(2):=-60)||1
trigger3 = (var(0):=-12+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-73+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 110 - Air Dash FWD]
type = null
triggerall = root,stateno=110 && (root,anim=110)
trigger1 = root,animelemno(0)=1
trigger1 = (var(0):=-27)||1
trigger1 = (var(1):=-100)||1
trigger1 = (var(2):=0)||1
trigger2 = root,animelemno(0)=2
trigger2 = (var(0):=-37)||1
trigger2 = (var(1):=-90)||1
trigger2 = (var(2):=40)||1
trigger3 = root,animelemno(0)=[3,7]
trigger3 = (var(0):=-58)||1
trigger3 = (var(1):=-80)||1
trigger3 = (var(2):=80)||1
trigger4 = root,animelemno(0)=8
trigger4 = (var(0):=0)||1
trigger4 = (var(1):=-110)||1
trigger4 = (var(2):=-20)||1
trigger5 = root,animelemno(0)=9
trigger5 = (var(0):=34)||1  ;-14
trigger5 = (var(1):=-90)||1 ;-73
trigger5 = (var(2):=-45)||1
trigger6 = root,animelemno(0)=10
trigger6 = (var(0):=23)||1
trigger6 = (var(1):=-100)||1
trigger6 = (var(2):=-40)||1
trigger7 = root,animelemno(0)=11
trigger7 = (var(0):=10)||1
trigger7 = (var(1):=-105)||1
trigger7 = (var(2):=-30)||1
trigger8 = root,animelemno(0)=12
trigger8 = (var(0):=0)||1
trigger8 = (var(1):=-110)||1
trigger8 = (var(2):=-20)||1

[State 30050, Bind Me - State 106 - Dash Back Land]
type = null
triggerall = (root,stateno=106 && root,anim = 106)
trigger1 = root,animelemno(0)=1
trigger1 = (var(2):=0)||1
trigger1 = (var(0):=-25+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger1 = (var(1):=-62+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger2 = root,animelemno(0)=2
trigger2 = (var(2):=30)||1
trigger2 = (var(0):=-15+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-60+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=3
trigger3 = (var(2):=28)||1
trigger3 = (var(0):=-14+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-64+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = root,animelemno(0)=4
trigger4 = (var(2):=10)||1
trigger4 = (var(0):=-19+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-70+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - 5000-5007 & 5010-5017 - GETHIT ANIMS]
type = null
triggerall = (root,anim = [5000,5007])||(root,anim = [5010,5017])
trigger1 = ((root,anim=5000)&&(root,animelemno(0)=1))
trigger1 = (var(2):=0)||1
trigger1 = (var(0):=-32+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger1 = (var(1):=-69+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger2 = ((root,anim=5000)&&(root,animelemno(0)=2))||((root,anim=[5001,5002])&&(root,animelemno(0)=1))
trigger2 = (var(2):=45)||1
trigger2 = (var(0):=-30+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-55+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = ((root,anim=[5001,5002])&&(root,animelemno(0)=2))||((root,anim=[5006,5007])&&(root,animelemno(0)=1))
trigger3 = (var(2):=60)||1
trigger3 = (var(0):=-42+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-40+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = ((root,anim=5005)&&(root,animelemno(0)=1))||((root,anim=[5006,5007])&&(root,animelemno(0)=2))
trigger4 = (var(2):=60)||1
trigger4 = (var(0):=-38+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-40+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger5 = ((root,anim=5005)&&(root,animelemno(0)=2))||((root,anim=[5006,5007])&&(root,animelemno(0)=3))
trigger5 = (var(2):=10)||1
trigger5 = (var(0):=-25+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger5 = (var(1):=-62+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
;
trigger6 = ((root,anim=5010)&&(root,animelemno(0)=1))
trigger6 = (var(2):=-35)||1
trigger6 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger6 = (var(1):=-71+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger7 = ((root,anim=5010)&&(root,animelemno(0)=2))||((root,anim=[5011,5012])&&(root,animelemno(0)=1))
trigger7 = (var(2):=-45)||1
trigger7 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger7 = (var(1):=-71+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger8 = ((root,anim=[5011,5012])&&(root,animelemno(0)=2))||((root,anim=[5016,5017])&&(root,animelemno(0)=1))
trigger8 = (var(2):=-80)||1
trigger8 = (var(0):=-15+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger8 = (var(1):=-72+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger9 = ((root,anim=5015)&&(root,animelemno(0)=1))||((root,anim=[5016,5017])&&(root,animelemno(0)=2))
trigger9 = (var(2):=-30)||1
trigger9 = (var(0):=-9+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger9 = (var(1):=-71+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger10 = ((root,anim=5015)&&(root,animelemno(0)=2))||((root,anim=[5016,5017])&&(root,animelemno(0)=3))
trigger10 = (var(2):=-25)||1
trigger10 = (var(0):=-18+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger10 = (var(1):=-65+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73


[State 30050, Bind Me - Intro 1]
type = null
triggerall = root,stateno=191 && root,anim=19000
trigger1 = root,animelemno(0)=[1,15] ;-25, -66 -> 0,-110 (angle: -110, pole length ~= 51)
trigger1 = (var(2):=15)||1
trigger1 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-30
trigger1 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-64
trigger2 = root,animelemno(0)=16
trigger2 = (var(2):=7)||1
trigger2 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=17
trigger3 = (var(2):=-0)||1
trigger3 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = root,animelemno(0)=18
trigger4 = (var(2):=-20)||1
trigger4 = (var(0):=-20+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-66+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 200 - S.LP / State 600 - A.LP]
type = null
triggerall = (root,stateno=200) || (root,stateno=600)
trigger1 = root,animelemno(0)=[1,2] ;-25, -66 -> 0,-110 (angle: -110, pole length ~= 51)
trigger1 = (var(2):=cond((root,animelemno(0)=1),-29,-15))||1
trigger1 = (var(0):=-30+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-30
trigger1 = (var(1):=-64+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-64
trigger2 = root,animelemno(0)=[3,4]
trigger2 = (var(2):=cond((root,animelemno(0)=3),15,10))||1
trigger2 = (var(0):=-31+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-60+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=5
trigger3 = (var(2):=-5)||1
trigger3 = (var(0):=-28+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-63+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = root,animelemno(0)=6
trigger4 = (var(2):=-20)||1
trigger4 = (var(0):=-20+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-66+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger5 = root,animelemno(0)=[7,8]
trigger5 = (var(2):=20)||1
trigger5 = (var(0):=-28+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger5 = (var(1):=-61+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger6 = root,animelemno(0)=9
trigger6 = (var(2):=-5)||1
trigger6 = (var(0):=-22+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger6 = (var(1):=-65+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger7 = root,animelemno(0)=10
trigger7 = (var(2):=-25)||1
trigger7 = (var(0):=-27+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger7 = (var(1):=-69+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 210 - S.MP]
type = null
triggerall = root,stateno=210
trigger1 = root,animelemno(0)=1 ;-25, -66 -> 0,-110 (angle: -110, pole length ~= 51)
trigger1 = (var(2):=0)||1
trigger1 = (var(0):=-25+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-30
trigger1 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-64
trigger2 = root,animelemno(0)=[2,9]
trigger2 = (var(2):=15)||1
trigger2 = (var(0):=-26+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-64+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=10
trigger3 = (var(2):=-5)||1
trigger3 = (var(0):=-28+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-64+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 215 - S.F+MP]
type = null
triggerall = root,stateno=215
trigger1 = root,animelemno(0)=1 ;-25, -66 -> 0,-110 (angle: -110, pole length ~= 51)
trigger1 = (var(2):=10)||1
trigger1 = (var(0):=-14+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-30
trigger1 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-64
trigger2 = root,animelemno(0)=2
trigger2 = (var(2):=0)||1
trigger2 = (var(0):=-0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=3
trigger3 = (var(2):=-45)||1
trigger3 = (var(0):=10+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-65+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = root,animelemno(0)=4
trigger4 = (var(2):=-60)||1
trigger4 = (var(0):=18+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger5 = root,animelemno(0)=[5,6]
trigger5 = (var(2):=-60)||1
trigger5 = (var(0):=12+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger5 = (var(1):=-70+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger6 = root,animelemno(0)=7
trigger6 = (var(2):=-35)||1
trigger6 = (var(0):=-9+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger6 = (var(1):=-70+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger7 = root,animelemno(0)=8
trigger7 = (var(2):=-30)||1
trigger7 = (var(0):=-26+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger7 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 30050, Bind Me - State 220 - S.HP / State 1200 - 22P]
type = null
triggerall = (root,stateno=220)||(root,stateno=1200)
trigger1 = root,animelemno(0)=1+1*(root,stateno=1200)
trigger1 = (var(2):=-20)||1
trigger1 = (var(0):=-12+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-30
trigger1 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-64
trigger2 = root,animelemno(0)=2+1*(root,stateno=1200)
trigger2 = (var(2):=0)||1
trigger2 = (var(0):=-16+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger2 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger3 = root,animelemno(0)=3+1*(root,stateno=1200)
trigger3 = (var(2):=-20)||1
trigger3 = (var(0):=-22+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger3 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger4 = root,animelemno(0)=[4+1*(root,stateno=1200),6+1*(root,stateno=1200)]
trigger4 = (var(2):=20)||1
trigger4 = (var(0):=-22+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger4 = (var(1):=-64+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger5 = root,animelemno(0)=7+1*(root,stateno=1200)
trigger5 = (var(2):=5)||1
trigger5 = (var(0):=-22+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger5 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73
trigger6 = root,animelemno(0)=8+1*(root,stateno=1200)
trigger6 = (var(2):=-20)||1
trigger6 = (var(0):=-28+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
trigger6 = (var(1):=-68+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73


[State 30050, Bind Me - State 620 - J.HP]
type = null
triggerall = root,stateno=620
triggerall = root,anim=620
trigger1 = root,animelemno(0)=1
trigger1 = (var(0):=0)||1
trigger1 = (var(1):=-110)||1
trigger1 = (var(2):=-20)||1
trigger2 = root,animelemno(0)=2
trigger2 = (var(0):=20)||1
trigger2 = (var(1):=-105)||1
trigger2 = (var(2):=-30)||1
trigger3 = root,animelemno(0)=[3,12]
trigger3 = (var(0):=38)||1
trigger3 = (var(1):=-100)||1
trigger3 = (var(2):=-45)||1
;trigger4 = root,animelemno(0)=[13,17]
;trigger4 = (var(2):=-60)||1
;trigger4 = (var(0):=0+floor(51.0*cos((var(2)+90)*pi/180.0)))||1  ;-14
;trigger4 = (var(1):=-84+floor(51.0*sin((var(2)-90)*pi/180.0)))||1 ;-73

[State 0, Trans]
type = Trans
trigger1 = ishelper(30050);||ishelper(30052)
trans = addalpha
alpha = 256,256-cond(((root,movetype!=H) && (root,stateno!=[5000,5299])),0,256)
ignorehitpause = 1
[State 0, Trans]
type = Trans
trigger1 = ishelper(30052)
trans = addalpha
alpha = 192,256
ignorehitpause = 1
[State 0, Trans]
type = Trans
trigger1 = ishelper(30051)
trans = sub
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State Invis]
type = assertspecial
trigger1 = root,movetype=H
trigger1 = !((root,anim = [5000,5007])||(root,anim = [5010,5017]))
trigger1 = root,stateno!=[120,155]
trigger2 = root,stateno=1000||root,stateno=2000||root,stateno=2100||(root,stateno=[4000,4001])
trigger3 = (root,statetype=C)||(root,stateno=181&&root,anim=18110)
trigger4 = (root,stateno=801)||(root,stateno=811&&root,animelemtime(14)<0)
trigger5 = (root,stateno=181)&&(root,anim=18100)
trigger6 = root,stateno=625
trigger7 = (root,stateno=[890,899])
trigger8 = (root,stateno=5120)||(root,stateno=[5200,5210])
trigger9 = (root,stateno=191)&&(root,anim=19010)
flag = invisible
ignorehitpause = 1

[State T]
type = turn
trigger1 = facing!=root,facing

[State 20010, BTR]
type = bindtoroot
trigger1 = 1
pos = var(0),var(1)

[State 30050, Scaleme]
type = angledraw
trigger1 = 1
value = var(2)
scale = fvar(0),fvar(1)
ignorehitpause = 1

;---------------------
; AI JUMP BACK
[Statedef 1]
sprpriority = 0

[State 1, CS]
type = changestate
trigger1 = 1
value = 40


; AI JUMP FWD
[Statedef 2]
sprpriority = 0

[State 1, CS]
type = changestate
trigger1 = 1
value = 40

; AI JUMP NEUT
[Statedef 3]
sprpriority = 0

[State 1, CS]
type = changestate
trigger1 = 1
value = 40



;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = .75

[State 10, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

[State 10, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type    = C
physics = C
anim = 11
sprpriority = 0

[State 11, 1] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim = 6 && AnimTime = 0
value = 11

[State 11, 2] ;Stop moving if low velocity
type = VelSet
trigger1 = abs(vel x) < Const(movement.crouch.friction.threshold)
x = 0

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type    = S
physics = S
anim = 12

[State 12, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = !enemy, NumExplod(94646464) && !enemy, NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = enemy, NumExplod(94646464) || enemy, NumExplod(92468246)
trigger2 = command = "holdback"
x = const(velocity.walk.fwd.x)*cond((var(52)=3&&var(57)>0),1.5,1.0)

[State 20, VelSet]
type = VelSet
trigger1 = !enemy, NumExplod(94646464) && !enemy, NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = enemy, NumExplod(94646464) || enemy, NumExplod(92468246)
trigger2 = command = "holdfwd"
x = const(velocity.walk.back.x)*cond((var(52)=3&&var(57)>0),1.5,1.0)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20
[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21


;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
;anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 40]
Type=Changestate
Trigger1=time=0
;trigger1 = random<=500
Trigger1=AILevel>0
trigger1 = prevstateno != 1 && prevstateno != 2 && prevstateno != 3
value=0
ctrl=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 40
;elem = 1
;ignorehitpause = 
;persistent = 


[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = AILevel <= 0
trigger1 = command = "holdfwd"
trigger2 = AILevel > 0
trigger2 = prevstateno = 2
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = AILevel <= 0
trigger1 = command = "holdback"
trigger2 = AILevel > 0
trigger2 = prevstateno = 1
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))*cond((var(52)=3&&var(57)>0),1.5,1.0)
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)*cond((var(52)=3&&var(57)>0),1.5,1.0)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))*cond((var(52)=3&&var(57)>0),1.5,1.0)
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = prevstateno!=53
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > Const720p(-8)
trigger1 = SelfAnimExist(anim + 3)
trigger1 = anim >= 41 && anim <= 43
persistent = 0
value = Anim + 3

;[State 50, CS]
;type = changestate
;trigger1 = vel y > 0
;trigger1 = command="holdup"
;value = 53

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

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
[State 0, Explod]
type = RemoveExplod
trigger1 = numexplod(20626)
trigger1 = stateno != 625
ID = 20626
ignorehitpause = 1

;----------------------------------

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Crouch Guard Workaround]
type = StateTypeSet
trigger1 = command="holddown"
statetype = C
physics = C

[State 52, Stand Guard workaround]
type = StateTypeSet
trigger1 = command!="holddown"
statetype = S
physics = S

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

[State 52, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Float
[Statedef 53]
type    = A
physics = N
velset = (vel x),1.0

[State 53, VA]
type = veladd
triggerall = vel x = [-2.5,2.5]
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = ifelse(command="holdfwd",0.25,-0.25)

[State 53, VS]
type = velset
trigger1 = vel x < -2.5
x = -2.5
[State 53, VS]
type = velset
trigger1 = vel x > 2.5
x = 2.5

[State 50, 3]
type = Changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 52

[State 50, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = command!="holdup"
value = 50

;---------------------------------------------------------------------------
; Run forward
[Statedef 100]
type    = S
physics = S
anim = 100+2*(var(52)=1)
ctrl = 0
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0+1*(var(52)=1)
persistent = 0
[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
trigger1 = var(52)=1
value = 100,3
persistent = 0

[State 100, PSND]
type = playsnd
trigger1 = time=32
trigger1 = var(52)=2
value = 100,1
persistent = 0

[State 100, Physics]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = N
ignorehitpause = 1

[State 100, Velset]
type = velset
trigger1 = animelemtime(3)=0
x = const(velocity.run.fwd.x)*cond(var(52)=1,3.0,1.0)*cond((var(52)=2&&var(57)>0),1.5,1.0);Type-a dash behavior vs Type-ß run behavior

[State 100, Velset]
type = posadd
trigger1 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger1 = animelemtime(3)=[0,1]
x = floor(1.5*const(velocity.run.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0))

[State 100, Velset]
type = posadd
trigger1 = var(52)=1 ;TYPE-a Only
trigger1 = animelemtime(3)=[0,1]
x = floor(1.0*const(velocity.run.fwd.x))

[State 100, Velset]
type = posadd
trigger1 = var(52)=2 ;TYPE-ß Only
trigger1 = time>=32
x = floor(0.5*const(velocity.run.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0))

[State 100, Jump]
type = ChangeState
trigger1 = animelemtime(3)>1
trigger1 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger1 = !AILevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Crouch]
type = Null;ChangeState
trigger1 = animelemtime(3)>2
trigger1 = var(52)=1 ;Apply only to Type-a Behavior
trigger1 = !AILevel
trigger1 = command = "holddown"
value = 10
ctrl = 1

[State 100, Friction]
type = velmul
trigger1 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger1 = animelemtime(3)>0
trigger1 = vel x > const(velocity.run.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0)
x = 0.92

[State 100, Friction]
type = velset
trigger1 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger1 = animelemtime(3)>0
trigger1 = vel x < const(velocity.run.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0)
x = const(velocity.run.fwd.x)*cond((var(52)=2&&var(57)>0),1.5,1.0)

[State 100, Friction]
type = velmul;add
trigger1 = var(52)=1 ;Apply only to Type-a Behavior
trigger1 = animelemtime(3)>0
trigger1 = vel x > 0
x = 0.9;-0.0625*2.0

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
trigger2 = var(52)=2 && time=32
anim = 10100
ID = 10100
pos = -4,-37
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
trigger2 = var(52)=2 && time=32
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = 38,-42
postype = p1
stateno = 10100
ownpal = 1
facing = 1
pausemovetime = 99999999999

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 10102
ID = 10102
pos = 20-floor(81.0*random/1000.0),5-floor(66.0*random/1000.0)
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State -2, Spirit Gauge Charge - ß Type]
type = varadd
triggerall = movetype != H
triggerall = alive
triggerall = roundstate = 2
triggerall = var(52)=2 ;Type-ß only
triggerall = var(54)<ceil(lifemax*0.9);950 Life * 0.9
trigger1 = (stateno=100 && vel x > 0) || (stateno=110 && vel x > 0)
trigger1 = prevstateno!=1910
trigger1 = gametime%3=0;p2bodydist x = [-10,50]
trigger1 = animelemtime(3)>=0
var(54) = 2

[State 100, 4]
type = ChangeState
triggerall = time >= 16
trigger1 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger1 = command != "holdfwd"
trigger2 = var(52)!=1 ;Do not apply to Type-a Behavior
trigger2 = time >= 70
trigger3 = var(52)=1 ;Apply only to Type-a Behavior
trigger3 = time>=18
value = 101

;---------------------------------------------------------------------------
; Run forward
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1

[State 101, Halt All Vel in TypeB]
type = velset
trigger1 = time = 0
trigger1 = prevstateno=100
trigger1 = var(52)=1
x = 0.0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hop backwards
[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105
sprpriority = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause = 1

[State 105, SCA]
type = nothitby
trigger1 = time <= 8
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 105, STS]
type = statetypeset
trigger1 = animelemtime(3)=0
statetype = A
physics = N
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,0
persistent = 0

[State 105, 1]
type = VelSet
trigger1 = animelemTime(3) = 0
x = const(velocity.run.back.x)*1.25*cond((var(52)=3&&var(57)>0),1.5,1.0)
y = const(velocity.run.back.y)

[State 105, Gravity]
type = veladd
trigger1 = animelemtime(3) > 0;2
y = 0.5;2
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 10100
ID = 10100
pos = 10,-45
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
;removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = -5,-42
postype = p1
stateno = 10100
ownpal = 1
facing = -1
pausemovetime = 99999999999

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 10102
ID = 10102
pos = 20-floor(81.0*random/1000.0),5-floor(66.0*random/1000.0)
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106

;---------------------------------------------------------------------------
; Hop backwards (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
velset = 0,0
anim = 106

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause = 1

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = Null;playsnd
trigger1 = time = 0
value = 40,0

[State 106, 4]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
x = 0

[State 106, 5]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Dash forward
[Statedef 110]
type    = A
physics = N
velset = 0,0
ctrl = 0
anim = 110
sprpriority = 1
;Forward Dash: 
;1f~8f: No movement
;9f~35f: Double Movement, graze frames
;9f~32f: Dash lines
;33f~: Gravity

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard
flag2 = noautoturn
ignorehitpause = 1

[State -2, Spirit Gauge Charge - C Type]
type = varadd
triggerall = movetype != H
triggerall = alive
triggerall = roundstate = 2
triggerall = var(52)=3 ;Type C only
triggerall = var(54)<ceil(lifemax*0.9);950 Life * 0.9
trigger1 = (stateno=100 && vel x > 0) || (stateno=110 && vel x > 0)
trigger1 = prevstateno!=1910
trigger1 = gametime%3=0;p2bodydist x = [-10,50]
trigger1 = animelemno(0)=[3,4]
var(54) = 3

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,1;0
persistent = 0
[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,3;0
persistent = 0

[State 100, Physics]
type = statetypeset
trigger1 = animelemtime(3)=0
physics = N
ignorehitpause = 1

[State 100, Velset]
type = velset
trigger1 = animelemtime(3)=0
x = const(velocity.run.fwd.x)*cond((var(52)=3&&var(57)>0),1.5,1.0)
y = -0.5

[State 100, Velset]
type = posadd
trigger1 = animelemno(0)=[3,8]
x = floor(2.0*(vel x)*cond((var(52)=3&&var(57)>0),1.5,1.0))

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 10100
ID = 1010
pos = -4,-40
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = 40,-42
postype = p1
stateno = 10100
ownpal = 1
facing = 1
pausemovetime = 99999999999

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0
trigger1 = animelemtime(9)<0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 10102
ID = 10102
pos = 20-floor(81.0*random/1000.0),5-floor(66.0*random/1000.0)
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Friction]
type = velmul;add
;trigger1 = var(52)=2 ;Apply only to Type-B Behavior
trigger1 = animelemtime(3)>0
trigger1 = vel x > 0.0
x = 0.9

[State 110, Gravity]
type = veladd
trigger1 = animelemtime(3)>0;(9)>=0
y = 0.05+0.45*(animelemtime(9)>=0);0.5
ignorehitpause = 1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106


;---------------------------------------------------------------------------
; Air Dash backwards
[Statedef 115]
type    = A
physics = N
ctrl = 0
anim = 115
velset = 0,0
sprpriority = 1
;Backward Dash: 
;1f~8f: No movement
;9f~23f: Double Movement, Dash lines
;24f~: Gravity

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard
flag2 = NoAutoTurn
ignorehitpause = 1

[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,1;0
persistent = 0
[State 100, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 100,3;0
persistent = 0

[State 105, 1]
type = VelSet
trigger1 = animelemTime(3) = 0
x = -const(velocity.run.fwd.x)*cond((var(52)=3&&var(57)>0),1.5,1.0)
y = -0.5;-2.7

[State 100, Velset]
type = posadd
trigger1 = animelemno(0)=[3,6]
x = ceil(2.0*(vel x)*cond((var(52)=3&&var(57)>0),1.5,1.0))

[State 105, Gravity]
type = veladd
trigger1 = animelemtime(3)>0
y = 0.05+0.45*(animelemtime(7)>=0);0.5
ignorehitpause = 1

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)=0
anim = 10100
ID = 1010
pos = 10,-45
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
;removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Effect]
type = helper
trigger1 = animelemtime(3)=0
helpertype = normal
name = "Dash_FX"
ID = 10100
pos = -5,-42
postype = p1
stateno = 10100
ownpal = 1
facing = -1
pausemovetime = 99999999999

[State 100, Explod]
type = Explod
trigger1 = animelemtime(3)>=0&&animelemtime(7)<0
trigger1 = time%3=0
trigger1 = random%2=0
anim = 10102
ID = 10102
pos = 30-floor(81.0*random/1000.0),5-floor(66.0*random/1000.0)
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 99999999999
supermovetime = 99999999999

[State 100, Friction]
type = velmul;add
;trigger1 = var(52)=2 ;Apply only to Type-B Behavior
trigger1 = animelemtime(3)>0
trigger1 = vel x < 0.0
x = 0.9

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -(vel y)
value = 106


;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;---------------------------------------------------------------------------
; Stand guard (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

;---------------------------------------------------------------------------
; Crouch guard (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;---------------------------------------------------------------------------
; Air guard (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;---------------------------------------------------------------------------
; Guard (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51

;---------------------------------------------------------------------------
; Stand guard hit (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State -2, Spirit Add]
type = null
trigger1 = (time=0)
trigger1 = (var(16):=-1)||1
trigger1 = (var(19):=cond(var(17)=1,1,0))||1
trigger1 = (var(18):=gethitvar(damage))||1
;ignorehitpause = 1
;persistent=0

[State 4100, VarSet]
type = VarSet
triggerall = var(17) = 1
trigger1 = time = 1
var(17) = 2

[State 4100, VarSet]
type = VarSet
triggerall = var(17) != 1
trigger1 = time = 0
var(17) = -1

[State 150, Just Defend LifeAdd]
type = LifeAdd
trigger1 = (var(17) = 1) && (time=0)
value = var(18)

[State -2, Spirit Add]
type = varadd
triggerall = var(57)<=0 ;No Spell Rage
trigger1 = (stateno= 150||stateno=152||stateno=154) && (time=0) && (var(17)=1)
var(54) = 40;var(18)
[State -2, Spirit Gauge Limited]
type = varset
trigger1 = var(54)>ceil(lifemax*0.9);950 Life * 0.9
var(54) = ceil(lifemax*0.9)
[State 0, PalFX]
type = PalFX
trigger1 = (var(17) = 1) && (time=0)
time = 3
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1
[State 150, PSND]
type = playsnd
trigger1 = (var(17) = 1) && (time=0)
value = 2,1

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;---------------------------------------------------------------------------
; Stand guard hit (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
;trigger1 = (var(19)!=1)
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = cond(var(17)=1,0,130)
ctrl = 1

;---------------------------------------------------------------------------
; Crouch guard hit (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State -2, Spirit Add]
type = null
trigger1 = (time=0)
trigger1 = (var(16):=-1)||1
trigger1 = (var(19):=cond(var(17)=1,1,0))||1
trigger1 = (var(18):=gethitvar(damage))||1
;ignorehitpause = 1
;persistent=0

[State 4100, VarSet]
type = VarSet
triggerall = var(17) = 1
trigger1 = time = 1
var(17) = 2

[State 4100, VarSet]
type = VarSet
triggerall = var(17) != 1
trigger1 = time = 0
var(17) = -1

[State 150, Just Defend LifeAdd]
type = LifeAdd
trigger1 = (var(17) = 1) && (time=0)
value = var(18)

[State -2, Spirit Add]
type = varadd
triggerall = var(57)<=0 ;No Spell Rage
trigger1 = (stateno= 150||stateno=152||stateno=154) && (time=0) && (var(17)=1)
var(54) = 40;var(18)
[State -2, Spirit Gauge Limited]
type = varset
trigger1 = var(54)>ceil(lifemax*0.9);950 Life * 0.9
var(54) = ceil(lifemax*0.9)
[State 0, PalFX]
type = PalFX
trigger1 = (var(17) = 1) && (time=0)
time = 3
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1
[State 150, PSND]
type = playsnd
trigger1 = (var(17) = 1) && (time=0)
value = 2,1

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && ((!enemy, NumExplod(92828282) && !enemy, NumExplod(92468246) && command = "holddown") || ((enemy, NumExplod(92828282) || enemy, NumExplod(92468246)) && command = "holdup"))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;---------------------------------------------------------------------------
; Crouch guard hit (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
;trigger1 = (var(19)!=1)
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !enemy, NumExplod(92828282) && !enemy, NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = enemy, NumExplod(92828282) || enemy, NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = cond(var(17)=1,0,131)
ctrl = 1

;---------------------------------------------------------------------------
; Air guard hit (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State -2, Spirit Add]
type = null
trigger1 = (time=0)
trigger1 = (var(16):=-1)||1
trigger1 = (var(19):=cond(var(17)=1,1,0))||1
trigger1 = (var(18):=gethitvar(damage))||1
;ignorehitpause = 1
;persistent=0

[State 4100, VarSet]
type = VarSet
triggerall = var(17) = 1
trigger1 = time = 1
var(17) = 2

[State 4100, VarSet]
type = VarSet
triggerall = var(17) != 1
trigger1 = time = 0
var(17) = -1

[State 150, Just Defend LifeAdd]
type = LifeAdd
trigger1 = (var(17) = 1) && (time=0)
value = var(18)

[State -2, Spirit Add]
type = varadd
triggerall = var(57)<=0 ;No Spell Rage
trigger1 = (stateno= 150||stateno=152||stateno=154) && (time=0) && (var(17)=1)
var(54) = 40;var(18)
[State -2, Spirit Gauge Limited]
type = varset
trigger1 = var(54)>ceil(lifemax*0.9);950 Life * 0.9
var(54) = ceil(lifemax*0.9)
[State 0, PalFX]
type = PalFX
trigger1 = (var(17) = 1) && (time=0)
time = 3
add = 256,256,256
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1
[State 150, PSND]
type = playsnd
trigger1 = (var(17) = 1) && (time=0)
value = 2,1

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155

;---------------------------------------------------------------------------
; Air guard hit (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!enemy, NumExplod(94646464) && !enemy, NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;---------------------------------------------------------------------------
; Lose (time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Draw game (time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(175)
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Pre-intro
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191

;---------------------------------------------------------------------------
; Intro (override this state to give character an intro)
[Statedef 191]
type = S
ctrl = 0

[State 191, 1]
type = ChangeState
trigger1 = Time = 0
value = 0

;---------------------------------------------------------------------------
; Stand get-hit (shaking)
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0
movehitpersist=1

[State 5000, Reset if not Giant]
type = movehitreset
trigger1 = time = 0
trigger1 = var(56)<=0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;Stand get-hit (knocked back)

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

;---------------------------------------------------------------------------
; Stand get-hit (knocked back)
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch get-hit (shaking)
[Statedef 5010]
type    = C
movetype= H
physics = N
velset = 0,0

[State 5010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;Crouch get-hit (knocked back)

[State 5010, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Crouch get-hit (knocked back)
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5025 + GetHitVar(animtype)

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air get-hit (shaking)
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Air get-hit (knocked away)
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5030, 5]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050 ;HITA_FALL

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;Air get-hit (transition)

;---------------------------------------------------------------------------
; Air get-hit (transition)
[Statedef 5035]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, CA]
type = changeanim
triggerall = anim!=5040
triggerall = !hitfall
trigger1 = anim=5035 && animtime=0
trigger2 = time=0 && anim!=5035
value = 5040

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5040 ;Air get-hit (recovering in air, not falling)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;Air get-hit (falling)

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5070, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035 && anim!=5040
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 0;1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land

;---------------------------------------------------------------------------
; Air get-hit (falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; Tripped get-hit (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; Tripped get-hit (knocked away)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; Downed get-hit (shaking)
[Statedef 5080]
type    = L
movetype= H
physics = N
velset = 0,0

[State 5080, 1] ;Set default anim
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] ;If 5090 doesn't exist, default to 5030
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] ;Freeze
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5081 ;Downed get-hit (knocked back)

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;Air get-hit (knocked away)

;---------------------------------------------------------------------------
; Downed get-hit (knocked back)
[Statedef 5081]
type    = L
movetype= H
physics = C

[State 5081, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5081, 2]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, 3] ;Don't show hit ground frame
type = VarSet
trigger1 = Time = 0
sysvar(0) = 1

[State 5081, 4]
type = ChangeState
trigger1 = HitOver
value = 5110 ;Downed get-hit (lying down)

;---------------------------------------------------------------------------
; Downed get-hit (hit ground from fall)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 2004.04.14 behavior]
type = null;VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x < -1
x = -1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;Downed get-hit (lying down)

[State 5100, 8]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101 ;Downed get-hit (bounce off ground)

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Downed get-hit (bounce off ground)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 5101, 5]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 5101, 6] ;Acceleration
type = VelAdd
trigger1 = 1
y = Const(movement.down.bounce.yaccel)

[State 5101, 7] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; Downed get-hit (lying down)
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; Downed get-hit (getting up)
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Downed get-hit (lying defeated)
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -(vel y)
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = S;A
movetype= I;H
physics = N;A
anim = 5200
facep2=1
;30f - anim duration
;13f~24f - airborne duration

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7940+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+60;120
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
persistent = 0

[State 5200, PA]
type = varset
trigger1 = time=0
var(10) = 0

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
trigger2 = animelemtime(9)=0
x = 0
y = 0

[State 5200, PA]
type = varset
trigger1 = (command="holdfwd"&&command!="holdback")||(command!="holdfwd"&&command="holdback")
trigger1 = animelemtime(3)=0
var(10) = 0+1*(command="holdfwd")-1*(command="holdback")

[State 5201, PSND]
type = playsnd
trigger1 = time=0
;trigger2 = animelemtime(9)=0
value = 40,0

[State 5201, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 20,10

[State 5201, PSND]
type = playsnd
trigger1 = animelemtime(3)=0
value = 200,0
channel = 0

[State 5201, 2]
type = VelSet
trigger1 = animelemtime(3)=0
x = 9.0*var(10);12f, 108xdist

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 4]
type = Playerpush
trigger1 = var(10)!=0
trigger1 = animelemtime(1)>=0 && animelemtime(9)<0
value = 0
ignorehitpause = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time%6 = 0
trigger1 = time<15
time = 3
add = 128,128,128 ;256,256,256

[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
velset = 0,0
ctrl = 0

[State -2, Counterhit Explod]
type = Explod
trigger1 = time = 0
anim = 7942+1*(teamside!=1)
ID = 7900+1*(numexplod(7900)>0)
pos = ifelse(teamside=1,0,320),(20*numexplod(7900))+60;120
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
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = time=0
value = 0,1

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time%6 = 0
trigger1 = time<15
time = 3
add = 128,128,128 ;256,256,256

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 0
y = -6

[State 5210, 2] ;Go fwd
type = Velset
trigger1 = Time <= 1
trigger1 = Command = "holdfwd"
x = 3.0

[State 5210, 2] ;Go back
type = Velset
trigger1 = Time <= 1
trigger1 = Command = "holdback"
x = -3.0

[State 5210, 3]
type = NotHitBy
trigger1 = Time <= 15
value = SCA
time = 1

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 15
value = 1

[State 5210, 5]
type = VelAdd
trigger1 = Time
y = .5

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Continue screen animation
[Statedef 5500]
type = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5500, 1] ;Use continue animation if available
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5500)
value = 5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0
;last = 11

;[State 5900, 2] ;Clear all float variables
;type = VarSet
;trigger1 = 1
;fv = 12
;value = 1.0
[State 5900, VS]
type = varset
trigger1 = roundsexisted = 0
var(51) = palno

[State 5900, VS]
type = varset
trigger1 = roundsexisted = 0
var(52) = 1

[State 5900, Pal Selector on]
type=helper
triggerall = roundsexisted = 0
;triggerall=!numhelper(20002)&&!AILevel&&numenemy 
triggerall=!numhelper(20002)&&numenemy 
trigger1= roundno = 1 && matchno=1 && !(teammode = simul) && !(enemy, teammode = simul)
trigger2= !fvar(36) 
trigger3=(teammode = turns)
trigger3=!roundsexisted && (enemy,roundsexisted)
id=20002
stateno=20002
facing=facing
ownpal=1
pos = 0,0
;size.xscale = .25
;size.yscale = .25

[State 5900, Character Combo Rate]
type = varset
trigger1 = 1
fvar(30)=1.0

[State 5900, 3] ;Change palette
type = RemapPal
trigger1 = 1
source = 1,1
dest = 1,var(51);%10)+1;palno

;[State 5900, 2] ;Clear all float variables
;type = VarRangeSet
;trigger1 = roundsexisted = 0
;fvalue = 0
;first = 13

[State 5900, VS]
type = varset
trigger1 = 1
var(56)=0


;Reset Battery Bars
[State 5900, VS]
type = varset
trigger1 = roundsexisted<1
fvar(15)=500.0;1000.0

[State 5900, VS]
type = varset
trigger1 = 1
fvar(16)=0.0

;RESET SPECIAL CONDITION WINQUOTES
[State -2, RESET POWER]
type = varset
trigger1 = 1
var(20) = 0
ignorehitpause = 1


;RESET TRANCE
[State -2, RESET POWER]
type = powerset
trigger1 = var(52)=1 ;Type-a Only
trigger1 = var(57)>0
value = 0
ignorehitpause = 1

[State -2, Reset Trance]
type = varset
trigger1 = var(57)>0
var(57)=0
ignorehitpause = 1

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
trigger2 = roundsexisted = 0
trigger2 = teammode = turns
trigger2 = roundno > 1
value = 190