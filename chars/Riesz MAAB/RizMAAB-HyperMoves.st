;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 超必殺技定義 ‖ 超必殺技ステート
; Hyper Moves Definition
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Vacuum Wave Spear
; 真空波動槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3000]
type = S
movetype = A
physics = S
;anim = 3000
velset = 0,0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 3000, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3000

[State 3000, 2]
type = ChangeAnim
triggerall = Time = 0
trigger1 = PrevStateNo = 1200
trigger2 = PrevStateNo = 1300
value = 3001

[State 3000, 3]
type = SuperPause
trigger1 = AnimElem = 1
time = 59
anim = -1
sound = -1
movetime = 59
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 1

[State 3000, 4]
type = HitBy
trigger1 = 1
value = SCA, HA, SP, HP, HT
time = 1
ignorehitpause = 1

[State 3000, 5]
type = Explod
trigger1 = Time = 0
anim = 10050
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/1.86,screenheight/2)
;pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58;59
supermovetime = 58;59
pausemovetime = 58;59
sprpriority = -5

[State 3000, 6]
type = Explod
trigger1 = Time = 0
anim = 10051
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/2.14,screenheight/2)
;pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3000, 7]
type = Explod
trigger1 = Time = 0
anim = 10052
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/1.86)+6,screenheight/2+6)
;pos = cond(facing = 1,0,screenwidth),screenheight/2+6
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3000, 8]
type = Explod
trigger1 = Time = 0
anim = 10053
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/2.14)-6,screenheight/2-6)
;pos = cond(facing = 1,0,screenwidth),screenheight/2-6
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3000, 9]
type = Explod
trigger1 = Time = 0
anim = 10010
ownpal = 1
id = 10000
space = screen
facing = facing
pos = cond(facing = 1,0,screenwidth),0
scale = screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,1.33,1.00)
;scale = screenwidth/1920,screenheight/1080
removetime = 59
supermovetime = 59
pausemovetime = 59
sprpriority = -5

[State 3000, 10]
type = Explod
trigger1 = Time = 0
anim = 10000
ownpal = 1
id = 10000
space = screen
pos = cond(facing = 1,0,screenwidth),screenheight
scale = cond(1.0*screenwidth/screenheight < 1.34,1.40,1.00)*screenwidth/1920,1.00*screenheight/1080 ;X軸 1.40→4:3比例 1.00→16:9比例
facing = facing
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3000, 11 (Moves Font)]
type = Explod
trigger1 = Time = 0
anim = 10060+(facing = -1)
ownpal = 1
id = 10000
space = screen
facing = 1
pos = cond(facing = 1,screenwidth,0),24*screenheight/1080 ;因容易被卡牌和同伴的能量條遮住 所以字體移到上方
scale = cond(1.0*screenwidth/screenheight < 1.34,1.122,1.20),1.20 ;X軸 1.122→4:3比例 1.20→16:9比例
;scale = cond(1.0*screenwidth/screenheight < 1.34,1.122,1.20)*screenwidth/1920,1.20*screenheight/1080
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3000, 12 (Whirlwind Land Effect 2)]
type = Explod
trigger1 = Anim = 3000 && AnimElemTime(3) = 0 || Anim = 3001 && AnimElemTime(1) = 0
trigger2 = Anim = 3000 && AnimElemTime(7) = 0 || Anim = 3001 && AnimElemTime(5) = 0
trigger3 = Anim = 3000 && AnimElemTime(11) = 0 || Anim = 3001 && AnimElemTime(9) = 0
trigger4 = Anim = 3000 && AnimElemTime(15) = 0 || Anim = 3001 && AnimElemTime(13) = 0
trigger5 = Anim = 3000 && AnimElemTime(19) = 0 || Anim = 3001 && AnimElemTime(17) = 0
trigger6 = Anim = 3000 && AnimElemTime(23) = 0 || Anim = 3001 && AnimElemTime(21) = 0
trigger7 = Anim = 3000 && AnimElemTime(27) = 0 || Anim = 3001 && AnimElemTime(25) = 0
anim = 7055
id = 7055
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7055,1
sprpriority = -3
removetime = 12
supermovetime = 59
pausemovetime = 59
scale = fvar(21)*1.78,fvar(22)*1.78
removeongethit = 1

[State 3000, 13 (Whirlwind Land Effect 1)]
type = Explod
trigger1 = Anim = 3000 && AnimElemTime(3) = 0 || Anim = 3001 && AnimElemTime(1) = 0
trigger2 = Anim = 3000 && AnimElemTime(7) = 0 || Anim = 3001 && AnimElemTime(5) = 0
trigger3 = Anim = 3000 && AnimElemTime(11) = 0 || Anim = 3001 && AnimElemTime(9) = 0
trigger4 = Anim = 3000 && AnimElemTime(15) = 0 || Anim = 3001 && AnimElemTime(13) = 0
trigger5 = Anim = 3000 && AnimElemTime(19) = 0 || Anim = 3001 && AnimElemTime(17) = 0
trigger6 = Anim = 3000 && AnimElemTime(23) = 0 || Anim = 3001 && AnimElemTime(21) = 0
trigger7 = Anim = 3000 && AnimElemTime(27) = 0 || Anim = 3001 && AnimElemTime(25) = 0
anim = 7054
id = 7054
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
sprpriority = -3
removetime = 12
supermovetime = 59
pausemovetime = 59
scale = fvar(21)*2.46,fvar(22)*2.46
removeongethit = 1

[State 3000, 14]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 28, < 0
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 3000, 15]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 28, < 0
flag = NoShadow

[State 3000, 16]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 29, < 2
flag = TimerFreeze

[State 3000, 17]
type = TargetState
triggerall = NumTarget ;*
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = S
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5812
ignorehitpause = 1

;*建議添加此項 告訴系統目標的數量 
; 不添加的話 在Debug調試模式左上方會有 Has Not Target With Hit ID -1 訊息

[State 3000, 18]
type = TargetState
triggerall = NumTarget
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = C
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5822
ignorehitpause = 1

[State 3000, 19]
type = PlaySnd
trigger1 = AnimElem = 3
value = s10,0
channel = 20

[State 3000, 20 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s5,30
channel = 0

[State 3000, 21]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Vacuum Wave Spear Super Pause Effect"
id = 8000
stateno = 8000
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 25 ;數值取自於StateNo = 8000內最長的Explod時間
pausemovetime = 25
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3000, 22 (Vacuum Wave Spear Slash A)]
type = Explod
triggerall = NumExplod(7720) = 0
trigger1 = AnimElemTime(4) = 0
anim = 7720
id = 7720
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.60,fvar(22)*1.60
removeongethit = 1
removetime = 52
supermovetime = 52
pausemovetime = 52
sprpriority = 4
ignorehitpause = 0

[State 3000, 23 (Vacuum Wave Spear Slash A Subtraction)]
type = Explod
triggerall = NumExplod(7721) = 0
trigger1 = AnimElemTime(4) = 0
anim = 7721
id = 7721
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7600,1
scale = fvar(21)*1.60,fvar(22)*1.60
removeongethit = 1
removetime = 52
supermovetime = 52
pausemovetime = 52
sprpriority = 4
ignorehitpause = 0

[State 3000, 24]
type = Zoom
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 4,< 2
trigger1 = CameraZoom < 1.2 ;*
scale = (1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))
pos = pos x/(1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))*camerazoom,0

;*場景CameraZoom實際數值
; 可以利用type = DisplayToClipBoard取得

[State 3000, 25]
type = Zoom
trigger1 = AnimElem = 4,>= 2
trigger1 = AnimElem = 22,< 2
trigger1 = CameraZoom < 1.2
scale = 1.2/camerazoom
pos = pos x/(1.2/camerazoom)*camerazoom,0

[State 3000, 26]
type = Zoom
trigger1 = AnimElem = 22,>= 2
trigger1 = AnimElem = 26,< 1
trigger1 = CameraZoom < 1.2
scale = (1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(22)-1))
pos = pos x/(1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(22)-1))*camerazoom,0

[State 3000, 27 (Spear Waving Sound)]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 25
trigger13 = AnimElem = 27
trigger14 = AnimElem = 29
value = s6,1
channel = 21

[State 3000, 28 (To Next State 3010)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3010
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Vacuum Wave Spear / Launch Wave
; 真空波動槍 / 發射波動
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3010]
type = S
movetype = A
physics = S
anim = 3010
velset = 0,0
ctrl = 0
juggle = 6
facep2 = 1
sprpriority = 2

[State 3010, 1 (Vacuum Wave Spear Slash B)]
type = Explod
triggerall = NumExplod(7730) = 0
trigger1 = AnimElemTime(1) = 0
anim = 7730
id = 7730
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 44
removeongethit = 1
ignorehitpause = 0

[State 3010, 2 (Vacuum Wave Spear Slash B Subtraction)]
type = Explod
triggerall = NumExplod(7731) = 0
trigger1 = AnimElemTime(1) = 0
anim = 7731
id = 7731
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7600,2
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 44
removeongethit = 1
ignorehitpause = 0

[State 3010, 3 Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelSet
triggerall = AnimElemTime(2) >= 1
trigger1 = FrontEdgeBodyDist < 700
x = -((700-frontedgebodydist)*0.062)

[State 3010, 4 Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelAdd
triggerall = Vel X < 0
triggerall = AnimElemTime(2) >= 1
trigger1 = FrontEdgeBodyDist < 700
x = 0.22

[State 3010, 5]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(16) >= 0 && AnimElemTime(30) < 0
player = 142*(floor(const(size.xscale))),0
ignorehitpause = 1

[State 3010, 6 (Character Voice)]
type = PlaySnd
trigger1 = AnimElem = 3
value = s5,31
channel = 0

[State 3010, 7]
type = Helper
triggerall = NumHelper(7740) = 0
trigger1 = AnimElemTime(3) = 0
id = 7740
stateno = 7740
pos = 400*fvar(21),0
name = "Vacuum Wave Spear Projectile 1"
postype = p1 
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = fvar(21)*2.00
size.yscale = fvar(22)*2.00

[State 3010, 8 (Vacuum Wave Spear Slash C)]
type = Explod
triggerall = NumExplod(7735) = 0
trigger1 = AnimElemTime(15) = 0
anim = 7735
id = 7735
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 42
removeongethit = 1
ignorehitpause = 0

[State 3010, 9 (Vacuum Wave Spear Slash C Subtraction)]
type = Explod
triggerall = NumExplod(7736) = 0
trigger1 = AnimElemTime(15) = 0
anim = 7736
id = 7736
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7600,1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 42
removeongethit = 1
ignorehitpause = 0

[State 3010, 10]
type = Helper
triggerall = NumHelper(7760) = 0
trigger1 = AnimElemTime(16) = 0
id = 7760
stateno = 7760
pos = 400*fvar(21),0
name = "Vacuum Wave Spear Projectile 2"
postype = p1 
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = fvar(21)*2.00
size.yscale = fvar(22)*2.00

[State 3010, 11 (Character Voice)]
type = PlaySnd
trigger1 = AnimElem = 17
value = s5,32
channel = 0

[State 3010, 12 (Effect Sound)]
type = PlaySnd
trigger1 = AnimElem = 27
value = s6,7
channel = 16

[State 3010, 13 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear
; 流星衝
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
velset = 0,0
ctrl = 0
juggle = 4
facep2 = 1
sprpriority = 2

[State 3100, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 59
anim = -1
sound = -1
movetime = 59
darken = 0
p2defmul = 1
poweradd = -700
unhittable = 0

[State 3100, 2]
type = Explod
trigger1 = Time = 0
anim = 10050
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/1.86,screenheight/2)
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58;59
supermovetime = 58;59
pausemovetime = 58;59
sprpriority = -5

[State 3100, 3]
type = Explod
trigger1 = Time = 0
anim = 10051
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/2.14,screenheight/2)
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3100, 4]
type = Explod
trigger1 = Time = 0
anim = 10052
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/1.86)+6,screenheight/2+6)
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3100, 5]
type = Explod
trigger1 = Time = 0
anim = 10053
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/2.14)-6,screenheight/2-6)
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3100, 6]
type = Explod
trigger1 = Time = 0
anim = 10010
ownpal = 1
id = 10000
space = screen
facing = facing
pos = cond(facing = 1,0,screenwidth),0
scale = screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,1.33,1.00)
removetime = 59
supermovetime = 59
pausemovetime = 59
sprpriority = -5

[State 3100, 7]
type = Explod
trigger1 = Time = 0
anim = 10000
ownpal = 1
id = 10000
space = screen
pos = cond(facing = 1,0,screenwidth),screenheight
scale = cond(1.0*screenwidth/screenheight < 1.34,1.40,1.00)*screenwidth/1920,1.00*screenheight/1080 ;X軸 1.40→4:3比例 1.00→16:9比例
facing = facing
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3100, 8 (Moves Font)]
type = Explod
trigger1 = Time = 0
anim = 10062+(facing = -1)
ownpal = 1
id = 10000
space = screen
facing = 1
pos = cond(facing = 1,screenwidth,0),24*screenheight/1080
scale = cond(1.0*screenwidth/screenheight < 1.34,1.122,1.20),1.20 ;X軸 1.122→4:3比例 1.20→16:9比例
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3100, 9]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(7) < 0
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3100, 10]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 6, < 0
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 3100, 11]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 6, < 0
flag = NoShadow

[State 3100, 12]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 7, < 0
flag = TimerFreeze

[State 3100, 13]
type = TargetState
triggerall = NumTarget
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = S
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5812
ignorehitpause = 1

[State 3100, 14]
type = TargetState
triggerall = NumTarget
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = C
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5822
ignorehitpause = 1

[State 3100, 15]
type = Zoom
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 3,< 4
trigger1 = CameraZoom < 1.2
scale = (1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))
pos = pos x/(1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))*camerazoom,0

[State 3100, 16]
type = Zoom
trigger1 = AnimElem = 3,>= 4
trigger1 = AnimElem = 4,< 8
trigger1 = CameraZoom < 1.2
scale = 1.2/camerazoom
pos = pos x/(1.2/camerazoom)*camerazoom,0

[State 3100, 17]
type = Zoom
trigger1 = AnimElem = 4,>= 8
trigger1 = AnimElem = 6,< 3
trigger1 = CameraZoom < 1.2
scale = (1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(4)-7))
pos = pos x/(1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(4)-7))*camerazoom,0

[State 3100, 18]
type = PlaySnd
trigger1 = AnimElemTime(3) = 4
value = s10,0
channel = 20

[State 3100, 19 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(3) = 4
value = s5,33
channel = 0

[State 3100, 20]
type = Helper
trigger1 = AnimElem = 3,= 4
name = "Vacuum Wave Spear Super Pause Effect"
id = 8001
stateno = 8001
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 25 ;數值取自於stateno = 8000內最長的Explod時間
pausemovetime = 25
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3100, 21 (Forward Movement Bonus)] ;前移加成
type = PosAdd
triggerall = AnimElemTime(7) = 0
trigger1 = PrevStateNo = 220 ;通常攻擊5Y*3 / 連鎖亂擊(三)
trigger2 = PrevStateNo = 222 || PrevStateNo = 1000 ;通常攻擊5Y*4 (百花槍) / 連鎖亂擊(四) || 百花槍
trigger3 = PrevStateNo = 1202 ;旋風槍 (向前攻擊) / 組合二
trigger4 = PrevStateNo = 1302 ;旋風槍 (向下攻擊) / 組合二
x = 150

[State 3100, 22 (Meteor Spear Land 1 Slash)]
type = Explod
triggerall = NumExplod(7771) = 0
trigger1 = AnimElemTime(7) = 0
anim = 7771
id = 7770
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.50,fvar(22)*1.50
sprpriority = 4
removetime = 23
removeongethit = 1
ignorehitpause = 0

[State 3100, 23 (Meteor Spear Kick Slash)]
type = Explod
triggerall = NumExplod(7780) = 0
trigger1 = AnimElemTime(7) = 0
anim = 7780
id = 7780
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.90,fvar(22)*1.90
sprpriority = 4
removetime = 24
removeongethit = 1
ignorehitpause = 0

[State 3100, 24 (Meteor Spear Kick Slash Subtraction)]
type = Explod
triggerall = NumExplod(7781) = 0
trigger1 = AnimElemTime(7) = 0
anim = 7781
id = 7780
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7770,1
scale = fvar(21)*1.90,fvar(22)*1.90
sprpriority = 4
removetime = 24
removeongethit = 1
ignorehitpause = 0

[State 3100, 25 (Meteor Spear Land 1 Slash)]
type = Explod
triggerall = NumExplod(7770) = 0
trigger1 = AnimElemTime(7) = 0
anim = 7770
id = 7770
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.80,fvar(22)*1.80
sprpriority = 4
removetime = 23
removeongethit = 1
ignorehitpause = 0

[State 3100, 26]
type = HitDef
triggerall = RoundState = 2 ;限定戰鬥中有效 (避免中途播放勝利動作造成招式中斷)
triggerall = !MoveContact && !MoveReversed
trigger1 = AnimElemTime(9) >= 0
trigger1 = 1 || var(21):= 420 ;Hit Spark X
trigger1 = 1 || var(22):= -500 ;Hit Spark Y
trigger1 = 1 || var(23):= 7290 ;Hit Spark ID
trigger1 = 1 || var(24):= 7360 ;Guard Spark ID
trigger1 = 1 || var(25):= Random%360 ;Hit Spark Angle
trigger1 = 1 || var(36):= 3100 ;HitDef ID
attr = S, HA
hitflag = MAFD ;增加D 可以擊中躺在地上的對手(就可以擊中Statedef 1302招式中的地面反彈狀態的對手)
guardflag = MA
damage = cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.160))*fvar(13)),160*fvar(13)),cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.080))*fvar(13)),80*fvar(13))
priority = 7, Hit
pausetime = 0,0
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = -1
getpower = 0,0
givepower = 0,0
hitsound = s6,5
guardsound = s8,11
p1sprpriority = 1
p2sprpriority = 0
ground.slidetime = 28
ground.hittime = 28
guard.slidetime = 32
guard.hittime = 32
air.hittime = 28
airguard.ctrltime = 32
;p1stateno = 3101
;p2stateno = 3111
p1facing = 1
p2facing = 1
fall = 1
kill = 1
guard.kill = 1
hitonce = 1 ;只對一位角色有效
id = 3100

[State 3100, 27 (Meteor Spear / Blue Background)]
type = Explod
trigger1 = AnimElemTime(10) = 2
trigger1 = MoveHit && NumTarget(3100) ;必須要擊中目標
trigger1 = Target(3100),StateNo = 3111 ;將目標的狀態編號帶入我方的狀態3111編號
anim = 10025
id = 10025
space = screen
pos = 0,0
facing = 1
ownpal = 1
sprpriority = -5
scale = 4.22*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,5.64,4.22)
removetime = -1
removeongethit = 1
ignorehitpause = 0
persistent = 1

[State 3100, 28]
type = AssertSpecial
trigger1 = MoveHit && NumTarget(3100)
trigger1 = Target(3100),StateNo = 3111
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3100, 29]
type = NotHitBy
trigger1 = MoveHit && NumTarget(3100)
trigger1 = Target(3100),StateNo = 3111
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3100, 30] ;藍色背景特效開炲淡入
type = ModifyExplod
trigger1 = AnimElemTime(10) >= 1
trigger1 = MoveHit && NumTarget(3100) ;必須要擊中目標
trigger1 = Target(3100),StateNo = 3111 ;將目標的狀態編號帶入我方的狀態3111編號
id = 10025
trans = add
alpha = 0+(time-69)*32,256

[State 3100, 31 (Land Slash Remove / If MoveHit)]
type = RemoveExplod
trigger1 = AnimElemTime(12) >= 0
trigger1 = MoveHit && NumTarget(3100)
trigger1 = Target(3100),StateNo = 3111
id = 7770

[State 3100, 32] ;藍色背景特效淡入完成後關閉場景 (包含帶有前景效果的場景)
type = AssertSpecial
trigger1 = AnimElemTime(12) >= 1
trigger1 = MoveHit && NumTarget(3100)
trigger1 = Target(3100),StateNo = 3111
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3100, 33 (Give Enemy a StateNo)]
type = TargetState
triggerall = NumTarget
triggerall = Anim = 3100 && AnimElemTime(9) >= 0
trigger1 = MoveHit && NumTarget(3100)
trigger1 = (Target(3100),StateNo = 5000) || (Target(3100),StateNo = 5010) ||(Target(3100),StateNo = 5020)
value = 3111

[State 3100, 34 (To Next State 3101 / Hit Success State)]
type = ChangeState
trigger1 = Anim = 3100 && AnimElemTime(15) >= 3
trigger1 = MoveHit && NumTarget(3100) ;必須要擊中目標
trigger1 = Target(3100),StateNo = 3111 ;將目標的狀態編號帶入我方的狀態3111編號
value = 3101

[State 3100, 35 (Moves End / Opponent State Separation)] ;如果目標丟失(例如使用GameTime式脫離) 招式將強制結束
type = PosSet
trigger1 = AnimTime = 0
trigger1 = NumTarget(3100) = 0
y = 0

[State 3100, 36 (Moves End / Opponent State Separation)] ;如果目標丟失(例如使用GameTime式脫離) 招式將強制結束
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = NumTarget(3100) = 0
id = -1 ;移除所有的Explod

[State 3100, 37 (Moves End / Trigger Fail)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 1
; 流星衝 / 第一段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3101]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
juggle = 1
poweradd = -300
sprpriority = 2

[State 3101, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3101

[State 3101, 2]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3101, 3]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3101, 4]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3101, 5]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3101, 6 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3100) = 0
y = 0

[State 3101, 7 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3100) = 0
id = 10025

[State 3101, 8 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3100) = 0
value = 0
ctrl = 1

[State 3101, 9 (To Next State 3102)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3102
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 2
; 流星衝 / 第二段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3102]
type = S
movetype = I
physics = N
velset = 0,-74
ctrl = 0
juggle = 1
sprpriority = 2

[State 3102, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3102
elem = 1

[State 3102, 2 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3100) = 0
y = 0

[State 3102, 3 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3100) = 0
id = 10025

[State 3102, 4 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3100) = 0
value = 0
ctrl = 1

[State 3102, 5]
type = StateTypeSet
trigger1 = AnimElemTime(1) = 2
statetype = A
movetype = I
physics = N

[State 3102, 6]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3102, 7]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3102, 8]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3102, 9]
type = PlayerPush
trigger1 = 1
value = 0

[State 3102, 10 (Character Voice)]
type = PlaySnd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(1) = 10
value = s5,34
channel = 0

[State 3102, 11] ;由本參數改變對手的狀態
type = TargetState
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(1) = 27
value = 3112

[State 3102, 12 (Moves Screen Zoom Start)]
type = Zoom ;*
trigger1 = AnimElemTime(2) >= 1
;trigger1 = CameraZoom < 1.0 ;場景的CameraZoom參數必須小於1.0 (通常寬螢幕場景為了讓人物比例符合場景大小，這數值幾乎都會小於1.0)
scale = cond(camerazoom >= 1.0,1.0,(camerazoom-camerazoom)+1.0)/camerazoom ;在任何場景的CameraZoom情況下 讓比例強制在1.0
;scale = 1.0/camerazoom
pos = 0,0

;*通常一對一情況下 場景的CameraZoom參數無法被改變
; 使用Zoom狀態控制器 可以解決場景的CameraZoom參數因為同伴(或者自己的Helper)向場景左右兩端移動而改變的問題
; 另外請注意ScreenBound狀態控制器的設定也會影響縮放效果

[State 3102, 13 (To Next State 3103)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 3
; 流星衝 / 第三段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3103]
type = A
movetype = I
physics = N
anim = 3103
velset = 0,0
ctrl = 0
juggle = 1
sprpriority = 2

[State 3103, 1]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3103, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 3103, 3 (Moves Screen Zoom)]
type = Zoom
trigger1 = 1
scale = cond(camerazoom >= 1.0,1.0,(camerazoom-camerazoom)+1.0)/camerazoom
pos = 0,0

[State 3103, 4 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3100) = 0
y = 0

[State 3103, 5 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3100) = 0
id = -1

[State 3103, 6 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3100) = 0
value = 0
ctrl = 1

[State 3103, 7]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34 ;寬螢幕 (通常畫面比例為16:9)
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = screenheight/1080+(-70) ;角色會在畫面偏上方一點*

[State 3103, 8]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34 ;傳統螢幕 (通常畫面比例為4:3)
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = (screenheight/1080)+(-210) ;角色會在畫面偏上方一點*

;*會從場景的Zoffset立足點為0向上計算
; 因此場景立足點高的話 角色的位置也會較高

;[State 3103, 9] ;改為不綁定對手 (測試過會有對手向下偏移一小段的Bug)
;type = BindToTarget
;trigger1 = 1
;time = 1
;id = 3100
;pos = 0,0,Foot

[State 3103, 10]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = TimerFreeze
flag3 = NoAutoTurn

[State 3103, 11]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3103, 12]
type = Turn
triggerall = 1 ;保證常時
trigger1 = Facing = Target(3100),Facing ;鎖定和對手不同一個方向

[State 3103, 13 (Meteor Spear / Air Move Downward Left / Slash B Left)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8222
id = 3103
pos = -1400*fvar(21),-1750*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = -50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 14 (Meteor Spear / Air Move Downward Left / Slash A Left)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8220
id = 3103
pos = -1400*fvar(21),-1750*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = -50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 15 (Meteor Spear / Air Move Downward Left)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 3103
id = 3103
pos = -1400*fvar(21),-1400*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,36
ownpal = 1
scale = fvar(21),fvar(22)
sprpriority = 5
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 16 (Meteor Spear / Air Move Downward Right / Slash B Right)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8222
id = 3103
pos = 1400*fvar(21),-1750*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = -50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 17 (Meteor Spear / Air Move Downward Right / Slash A Right)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8220
id = 3103
pos = 1400*fvar(21),-1750*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = -50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 18 (Meteor Spear / Air Move Downward Right)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 3103
id = 3103
pos = 1400*fvar(21),-1400*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,36
ownpal = 1
scale = fvar(21),fvar(22)
sprpriority = 5
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 19 (Effect Sound)]
type = PlaySnd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
value = s7,5
channel = 0

[State 3103, 20]
type = HitAdd ;增加連擊數
triggerall = NumTarget(3100) ;目標3100必須存在才能增加
trigger1 = AnimElemTime(9) = 0
value = 2

[State 3103, 21 (Hit Spark A1)]
type = Explod
triggerall = NumTarget(3100) ;目標編號3100存在時
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7232
id = 7232
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = 50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 22 (Hit Spark B1)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7218
id = 7218
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = 50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 23 (Slash Effect A1)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7230
id = 7230
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = 50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 24 (Slash Effect B1)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7231
id = 7231
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = 50
remappal = 7230,1
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 25 (Hit Spark A2)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7232
id = 7232
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = -50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 26 (Hit Spark B2)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7218
id = 7218
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = -50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 27 (Slash Effect A2)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7230
id = 7230
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = -50
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 28 (Slash Effect B2)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(9) = 0
trigger2 = AnimElemTime(30) = 4
anim = 7231
id = 7231
;space = stage
pos = 0,const(size.mid.pos.y) ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
angle = -50
remappal = 7230,1
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3103, 29]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) > 0
trigger1 = AnimElemTime(10) = 4
value = -cond(target(3100),life > ceil(25*fvar(20)),(ceil((0.025*(target(3100),lifemax))*fvar(20))),ceil(25*fvar(20))) ;可隨著我方攻擊力、對手最大生命值改變
absolute = 1
ignorehitpause = 1
kill = 0

[State 3103, 30]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) <= 0
trigger1 = AnimElemTime(10) = 4
value = -ceil(25*fvar(20))
absolute = 0
ignorehitpause = 1
kill = 0

[State 3103, 31 (Meteor Spear / Move Up Left / Slash B Left)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 8222
id = 3103
pos = -1450*fvar(21),1200*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,-36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = 50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 32 (Meteor Spear / Move Up Left / Slash A Left)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 8220
id = 3103
pos = -1450*fvar(21),1200*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,-36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = 50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 33 (Meteor Spear / Move Up Left)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 3104
id = 3104
pos = -1400*fvar(21),1600*fvar(22)
facing = 1
bindid = id
bindtime = 1
vel = 36,-36
ownpal = 1
scale = fvar(21),fvar(22)
sprpriority = 5
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 34 (Meteor Spear / Move Up Right / Slash B Right)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 8222
id = 3103
pos = 1450*fvar(21),1200*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,-36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = 50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 35 (Meteor Spear / Move Up Right / Slash A Right)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 8220
id = 3103
pos = 1450*fvar(21),1200*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,-36
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 5
angle = 50
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 36 (Meteor Spear / Move Up Right)]
type = Explod
trigger1 = AnimElemTime(22) = 0
anim = 3104
id = 3104
pos = 1400*fvar(21),1600*fvar(22)
facing = -1
bindid = id
bindtime = 1
vel = -36,-36
ownpal = 1
scale = fvar(21),fvar(22)
sprpriority = 5
removetime = 92
removeongethit = 1
ignorehitpause = 0

[State 3103, 37]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) > 0
trigger1 = AnimElemTime(32) = 1
value = -cond(target(3100),life > ceil(25*fvar(20)),(ceil((0.025*(target(3100),lifemax))*fvar(20))),ceil(25*fvar(20))) ;可隨著我方攻擊力、對手最大生命值改變
absolute = 1
ignorehitpause = 1
kill = 0

[State 3103, 38]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) <= 0
trigger1 = AnimElemTime(32) = 1
value = -ceil(25*fvar(20))
absolute = 0
ignorehitpause = 1
kill = 0

[State 3103, 39 (Effect Sound)]
type = PlaySnd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(30) = 4
value = s7,5
channel = 20

[State 3103, 40]
type = HitAdd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(30) = 4
value = 2

[State 3103, 41 (To Next State 3105)]
type = ChangeState
trigger1 = AnimElemTime(46) = 0
value = 3105
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 4
; 流星衝 / 第四段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3105]
type = A
movetype = I
physics = N
anim = 3105
ctrl = 0
juggle = 0
sprpriority = 4

[State 3105, 1]
type = PosSet
trigger1 = Time = 0
x = screenwidth/1920
y = cond(1.0*screenwidth/screenheight < 1.34,-1570,-1300) ;傳統螢幕4:3 → -1570 寬螢幕16:9 → -1500

[State 3105, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 52

[State 3105, 3]
type = PosSet
trigger1 = AnimElemTime(1) >= 1 && AnimElemTime(6) <= 3
x = screenwidth/1920

[State 3105, 4]
type = Zoom
trigger1 = 1
scale = cond(camerazoom >= 1.0,1.0,(camerazoom-camerazoom)+1.0)/camerazoom
pos = 0,0

[State 3105, 5 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3100) = 0
y = 0

[State 3105, 6 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3100) = 0
id = -1

[State 3105, 7 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3100) = 0
value = 0
ctrl = 1

[State 3105, 8 (Meteor Spear / Slash C1)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8224
id = 8224
pos = 0*fvar(21),0
facing = 1
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = -1
removeongethit = 1
ignorehitpause = 0

[State 3105, 9 (Meteor Spear / Slash C2)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8225
id = 8225
pos = 0*fvar(21),0
facing = 1
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = -1
removeongethit = 1
ignorehitpause = 0

[State 3105, 10]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3105, 11]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3105, 12]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3105, 13]
type = Turn
triggerall = 1 ;保證常時
trigger1 = Facing = Target(3100),Facing ;鎖定和對手不同一個方向

[State 3105, 14 (Character Voice)]
type = PlaySnd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(3) = 0
value = s5,35
channel = 0

[State 3105, 15 (Effect Sound)]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s6,18
channel = 20

[State 3105, 16]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(6) = 3
x = screenwidth/1920
y = screenheight/1080+(-70)

[State 3105, 17]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(6) = 3
x = screenwidth/1920
y = screenheight/1080+(-210)

[State 3105, 18]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) > 0
trigger1 = AnimElemTime(6) = 3
value = -cond(target(3100),life > ceil(10*fvar(20)),(ceil((0.010*(target(3100),lifemax))*fvar(20))),ceil(10*fvar(20))) ;可隨著我方攻擊力、對手最大生命值改變
absolute = 1
ignorehitpause = 1
kill = 1

[State 3105, 19]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) <= 0
trigger1 = AnimElemTime(6) = 3
value = -ceil(10*fvar(20))
absolute = 0
ignorehitpause = 1
kill = 1

[State 3105, 20 (Hit Spark A)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
anim = 7232
id = 7232
;space = stage
pos = 0,0 ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.50
angle = 90
ownpal = 1
sprpriority = 7
removeongethit = 1
ignorehitpause = 0

[State 3105, 21 (Hit Spark B)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
anim = 7218
id = 7218
;space = stage
pos = 0,0 ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.50
angle = 90
ownpal = 1
sprpriority = 7
removeongethit = 1
ignorehitpause = 0

[State 3105, 22 (Slash Effect A)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
anim = 7230
id = 7230
;space = stage
pos = 0,0 ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.50
angle = 90
remappal = 7230,2
ownpal = 1
sprpriority = 7
removeongethit = 1
ignorehitpause = 0

[State 3105, 23 (Slash Effect B)]
type = Explod
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
anim = 7231
id = 7231
;space = stage
pos = 0,0 ;0*fvar(21),-420*fvar(22)
bindid = target,id ;id
bindtime = -1
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.50
angle = 90
remappal = 7230,1
ownpal = 1
sprpriority = 7
removeongethit = 1
ignorehitpause = 0

[State 3105, 24 (Effect Sound)]
type = PlaySnd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
value = s7,5
channel = 21

[State 3105, 25]
type = HitAdd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(6) = 3
value = 1

[State 3105, 26]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(6) = 4
x = screenwidth/1920
y = screenheight/1080+(-46)

[State 3105, 27]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(6) = 4
x = screenwidth/1920
y = screenheight/1080+(-140)

[State 3105, 28]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(7) = 0
x = screenwidth/1920
y = screenheight/1080+(-23)

[State 3105, 29]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(7) = 0
x = screenwidth/1920
y = screenheight/1080+(-70)

[State 3105, 30 (To Next State 3106)]
type = ChangeState
trigger1 = AnimElemTime(7) >= 1
value = 3106
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 5
; 流星衝 / 第五段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3106]
type = A
movetype = I
physics = N
ctrl = 0
juggle = 0
sprpriority = 4

[State 3106, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3106

[State 3106, 2]
type = PosSet
trigger1 = Time = 0
x = screenwidth/1920
y = screenheight/1080

[State 3106, 3]
type = VelSet
trigger1 = Time = 0
x = 0
y = 52

[State 3106, 4]
type = Zoom
;trigger1 = 1 測試過即使寫1 也會被下一個Zoom控制器覆蓋
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(7) < 3
scale = cond(camerazoom >= 1.0,1.0,(camerazoom-camerazoom)+1.0)/camerazoom
pos = 0,0

[State 3106, 5]
type = Turn
triggerall = 1 ;保證常時
trigger1 = Facing = Target(3100),Facing ;鎖定和對手不同一個方向

[State 3106, 6]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3106, 7]
type = Screenbound
trigger1 = 1
value = 0
movecamera = 0,0

;[State 3106, 8] ;改為不綁定對手 (測試過會有對手向下偏移一小段的Bug)
;type = TargetBind
;trigger1 = 1
;time = 1
;id = 3100
;pos = 0,0,Foot

[State 3106, 9 (Meteor Spear / Slash D2)]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 8227
id = 8227
pos = 0,0
facing = 1
bindid = id
bindtime = 1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = 18
removeongethit = 1
ignorehitpause = 0

[State 3106, 10 (Meteor Spear / Slash D3)]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 8228
id = 8228
pos = 0,0
facing = 1
bindid = id
bindtime = 1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = 18
removeongethit = 1
ignorehitpause = 0

[State 3106, 11 (Meteor Spear / Slash E)]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 8229
id = 8229
pos = 0,0
facing = 1
bindid = id
bindtime = 1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = 21
removeongethit = 1
ignorehitpause = 0

[State 3106, 12 (Meteor Spear / Slash D1)]
type = Explod
trigger1 = AnimElemTime(1) = 1
anim = 8226
id = 8226
pos = 0,0
facing = 1
bindid = id
bindtime = 1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 6
removetime = 18
removeongethit = 1
ignorehitpause = 0

[State 3106, 13]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) > 0
trigger1 = AnimElemTime(1) = 2
value = -cond(target(3100),life > ceil(25*fvar(20)),(ceil((0.025*(target(3100),lifemax))*fvar(20))),ceil(25*fvar(20))) ;可隨著我方攻擊力、對手最大生命值改變
absolute = 1
ignorehitpause = 1
kill = 1

[State 3106, 14]
type = TargetLifeAdd
triggerall = NumTarget(3100)
triggerall = var(15) <= 0
trigger1 = AnimElemTime(1) = 2
value = -ceil(25*fvar(20))
absolute = 0
ignorehitpause = 1
kill = 1

[State 3106, 15] ;震動效果
type = EnvShake
trigger1 = AnimElemTime(1) = 2
time = 25
freq = 90
ampl = -24
phase = 90

[State 3106, 16]
type = HitAdd
triggerall = NumTarget(3100)
trigger1 = AnimElemTime(1) = 2
value = 1

[State 3106, 17]
type = VelSet
trigger1 = Pos Y >= -100 && Vel Y > 0
y = 0

[State 3106, 18]
type = PosSet
trigger1 = Pos Y >= -100 && Vel Y > 0
y = 0

[State 3106, 19]
type = ModifyExplod
trigger1 = AnimElemTime(1) >= 0
id = 8224
trans = add
bindtime = 0
alpha = 256-time*32,256

[State 3106, 20]
type = ModifyExplod
trigger1 = AnimElemTime(1) >= 0
id = 8225
trans = add
bindtime = 0
alpha = 256-time*32,256

[State 3106, 21]
type = ModifyExplod
trigger1 = AnimElemTime(1) >= 0
id = 10025
trans = add
alpha = 256-time*32,256

[State 3106, 22]
type = RemoveExplod
trigger1 = AnimElemTime(1) >= 8
id = 8224

[State 3106, 23]
type = RemoveExplod
trigger1 = AnimElemTime(1) >= 8
id = 8225

[State 3106, 24]
type = RemoveExplod
trigger1 = AnimElemTime(1) >= 8
id = 10025

[State 3106, 25] ;招式縮放效果復原
type = Zoom
trigger1 = AnimElemTime(7) >= 3
trigger1 = AnimElemTime(9) < 2
trigger1 = CameraZoom < 1.0
scale = (1.0/camerazoom-(1.0/camerazoom-1)/7*(animelemtime(7)-2))
pos = pos x/(1.0/camerazoom-(1.0/camerazoom-1)/7*(animelemtime(7)-2))*camerazoom,0

[State 3106, 26 (To Next State 3107)]
type = ChangeState
trigger1 = AnimElemTime(9) >= 2
value = 3107
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Paragraph 6
; 流星衝 / 第六段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3107]
type = S
movetype = I
physics = N
anim = 105
sprpriority = 1
ctrl = 0

[State 3107, 1]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn 

[State 3107, 2]
type = Gravity
trigger1 = 1
ignorehitpause = 1

[State 3107, 3 (Moves Screen Zoom Reset)] ;讓Zooom的Scale比例在這個狀態下完全復原
type = Zoom
trigger1 = Time = 0
scale = camerazoom
pos = pos x,0

[State 3107, 4]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)*0.76
y = const(velocity.run.back.y)*0.76

[State 3107, 5]
type = StateTypeSet
trigger1 = Time >= 2
statetype = A
movetype = A
ignorehitpause = 1

[State 3107, 6]
type = NotHitBy
trigger1 = Time < 5
value = SCA, AA, AP, AT
time = 1

[State 3107, 7]
type = HitBy
trigger1 = Time >= 5
value = SCA, NA, SA, HA, AA, NP, SP, HP, AP
time = 1

[State 3107, 8 (To Next State 106)]
type = ChangeState
trigger1 = Time >= 3
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 106
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Hit Fail State
; 流星衝 / 擊中失敗狀態
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3109]
type = S
movetype = A
physics = S
anim = 3109
velset = 0,0
ctrl = 0
juggle = 1
facep2 = 1
sprpriority = 2

[State 3109, 1 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Opponent being attacked State Paragraph 1
; 流星衝 / 對手被攻擊狀態第一段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3111]
type = A
movetype = H
physics = N
ctrl = 0

[State 3111, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3111

[State 3111, 2]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 0
y = -54

[State 3111, 3]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 4 && AnimElemTime(7) < 0
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3111, 4]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3111, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

;[State 3111, 6] ;到一定高度後停止上升 (該設定取消)
;type = VelSet
;trigger1 = Pos Y <= -screenheight/6
;y = 0

;[State 3111, 7] ;改為往本體Statedef 3102狀態中的TargetState狀態控制器去觸發3112狀態
;type = ChangeState ;這樣的話本體攻擊失敗的話可以接續下面五個代碼
;trigger1 = AnimElemTime(5) >= 1
;value = 3112
;ctrl = 0

[State 3111, 8] ;假如本體攻擊失敗 往下降落
type = VelSet
trigger1 = AnimElemTime(6) = 1
x = 0
y = 54

[State 3111, 9] ;假如本體攻擊失敗 添加重力(向下加速度)效果
type = Gravity
trigger1 = AnimElemTime(6) >= 1

[State 3111, 10] ;假如本體攻擊失敗 藍色背景效果淡出
type = ModifyExplod
trigger1 = AnimElemTime(7) >= 0
id = 10025
trans = add
alpha = 256-time*64,256

[State 3111, 11] ;假如本體攻擊失敗 藍色背景效果刪除
type = RemoveExplod
trigger1 = AnimElemTime(8) >= 7
trigger2 = Pos Y >= -100 && Vel Y > 0
trigger3 = Time >= 300
id = 10025

[State 3111, 12 (Target Reverts To Its Own State)] ;假如本體攻擊失敗
type = SelfState
trigger1 = Pos Y >= -100 && Vel Y > 0
trigger2 = Time >= 300
value = 5110
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Opponent being attacked State Paragraph 2
; 流星衝 / 對手被攻擊狀態第二段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3112]
type = A
movetype = H
physics = N
;velset = 0,0 ;關閉此項 將可保留上一個狀態的VelSet設定(不會被歸零)
ctrl = 0

[State 3112, 1] ;對手被打中時 在一定條件時間內移動到接近畫面中央位置
type = PosSet   ;如果場景高度夠 會明顯看到對手從下方往上移動
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(1) < 5
x = pos x/2 ;*
y = -screenheight/10 ;*

;*對應角色的X軸一半位置 和對應場景的高比例 (加上負數會從下方計算 不會因為角色做出跳躍動作而變動數值)
; 但是無法保證角色會在畫面正中央 (部份zoffset數值特殊 立足點較高的場景會讓角色在中央偏上方)

[State 3112, 2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3112

[State 3112, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 3112, 4]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(1) >= 5
x = screenwidth/1920
y = screenheight/1080+(-70)

[State 3112, 5]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(1) >= 5
x = screenwidth/1920
y = (screenheight/1080)+(-210)

[State 3112, 6]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2 = NoFG
flag3 = NoShadow

[State 3112, 7]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3112, 8]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3112, 9 (Target To Next State 3116)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3116
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear / Opponent being attacked State Paragraph 3
; 流星衝 / 對手被攻擊狀態第三段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3116]
type = A
movetype = H
physics = N
sprpriority = 5
ctrl = 0

[State 3116, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3116

[State 3116, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 52

[State 3116, 3]
type = AssertSpecial
trigger1 = Time = [0,4]
flag = NoShadow

[State 3116, 4]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(1) = 0
x = screenwidth/1920
y = screenheight/1080+(-185)

[State 3116, 5]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(1) = 0
x = screenwidth/1920
y = (screenheight/1080)+(-360)

[State 3116, 6]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(1) = 1
x = screenwidth/1920
y = screenheight/1080+(-70)

[State 3116, 7]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(1) = 1
x = screenwidth/1920
y = (screenheight/1080)+(-210)

[State 3116, 8]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(1) = 2
x = screenwidth/1920
y = screenheight/1080+(-35)

[State 3116, 9]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(1) = 2
x = screenwidth/1920
y = (screenheight/1080)+(-105)

[State 3116, 10]
type = VelSet
triggerall = Pos Y >= -100 && Vel Y > 0
trigger1 = AnimElemTime(1) >= 3 && AnimElemTime(1) < 30
y = 0

[State 3116, 11]
type = PosSet
triggerall = Pos Y >= -100
trigger1 = AnimElemTime(1) >= 3 && AnimElemTime(1) < 30
y = 0

[State 3116, 12]
type = PosSet
trigger1 = AnimElemTime(1) >= 3
x = screenwidth/1920
y = screenheight/1080

[State 3116, 13]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoAutoTurn

[State 3116, 14 (Target To Next State 5809)]
type = ChangeState
trigger1 = AnimElemTime(1) >= 38
value = 5809
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear
; 百花光弾槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
velset = 0,0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 3200, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 59
anim = -1
sound = -1
movetime = 59
darken = 0
p2defmul = 1
poweradd = -1400
unhittable = 1

[State 3200, 2]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, AA, NP, SP, HP, AP, NT, ST, HT, AT
time = 1

[State 3200, 3]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3200, 4]
type = Explod
trigger1 = Time = 0
anim = 10050
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/1.86,screenheight/2)
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58;59
supermovetime = 58;59
pausemovetime = 58;59
sprpriority = -5

[State 3200, 5]
type = Explod
trigger1 = Time = 0
anim = 10051
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,screenheight/2.14,screenheight/2)
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3200, 6]
type = Explod
trigger1 = Time = 0
anim = 10052
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/1.86)+6,screenheight/2+6)
space = screen
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3200, 7]
type = Explod
trigger1 = Time = 0
anim = 10053
ownpal = 1
id = 10000
pos = cond(facing = 1,0,screenwidth),cond(1.0*screenwidth/screenheight < 1.34,(screenheight/2.14)-6,screenheight/2-6)
space = screen
vfacing = -1
facing = facing
scale = screenwidth/1920,screenheight/1080
removetime = 58
supermovetime = 58
pausemovetime = 58
sprpriority = -5

[State 3200, 8]
type = Explod
trigger1 = Time = 0
anim = 10010
ownpal = 1
id = 10000
space = screen
facing = facing
pos = cond(facing = 1,0,screenwidth),0
scale = screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,1.33,1.00)
removetime = 59
supermovetime = 59
pausemovetime = 59
sprpriority = -5

[State 3200, 9]
type = Explod
trigger1 = Time = 0
anim = 10000
ownpal = 1
id = 10000
space = screen
pos = cond(facing = 1,0,screenwidth),screenheight
scale = cond(1.0*screenwidth/screenheight < 1.34,1.40,1.00)*screenwidth/1920,1.00*screenheight/1080 ;X軸 1.40→4:3比例 1.00→16:9比例
facing = facing
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3200, 10 (Moves Font)]
type = Explod
trigger1 = Time = 0
anim = 10064+(facing = -1)
ownpal = 1
id = 10000
space = screen
facing = 1
pos = cond(facing = 1,screenwidth,0),24*screenheight/1080
scale = cond(1.0*screenwidth/screenheight < 1.34,1.122,1.20),1.20 ;X軸 1.122→4:3比例 1.20→16:9比例
removetime = 56
supermovetime = 56
pausemovetime = 56
sprpriority = -4

[State 3200, 11]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 19, < 2
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 3200, 12]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 19, < 2
flag = NoShadow

[State 3200, 13]
type = AssertSpecial
trigger1 = AnimElem = 1,>= 0 && AnimElem = 20, < 3
flag = TimerFreeze

[State 3200, 14]
type = TargetState
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = S
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5812
ignorehitpause = 1

[State 3200, 15]
type = TargetState
triggerall = AnimElem = 1
triggerall = StateType != A
triggerall = Target,StateType = C
trigger1 = (NumTarget(226) >= 1 || NumTarget(1004) >= 1 || NumTarget(1054) >= 1) ;百花槍最後一段
value = 5822
ignorehitpause = 1

[State 3200, 16]
type = PlaySnd
trigger1 = AnimElemTime(3) = 3
value = s10,0
channel = 20

[State 3200, 17 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(3) = 3
value = s5,36
channel = 0

[State 3200, 18]
type = Zoom
trigger1 = AnimElem = 2,>= 0
trigger1 = AnimElem = 4,< 0
trigger1 = CameraZoom < 1.2
scale = (1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))
pos = pos x/(1+(1.2/camerazoom-1)/7*(animelemtime(2)+1))*camerazoom,0

[State 3200, 19]
type = Zoom
trigger1 = AnimElem = 4,>= 0
trigger1 = AnimElem = 18,< 2
trigger1 = CameraZoom < 1.2
scale = 1.2/camerazoom
pos = pos x/(1.2/camerazoom)*camerazoom,0

[State 3200, 20]
type = Zoom
trigger1 = AnimElem = 18,>= 2
trigger1 = AnimElem = 20,< 2
trigger1 = CameraZoom < 1.2
scale = (1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(18)-1))
pos = pos x/(1.2/camerazoom-(1.2/camerazoom-1)/7*(animelemtime(18)-1))*camerazoom,0

[State 3200, 21]
type = Helper
trigger1 = AnimElem = 3,= 3
name = "Hyakka Light Bullet Spear"
id = 8002
stateno = 8002
pos = 0,0
postype = p1
facing = 1
ownpal = 1
supermovetime = 25
pausemovetime = 25
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3200, 22 (To Next State 3201)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 1
; 百花光弾槍 / 第一段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3201]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3201, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3201

[State 3201, 2] ;普通攻擊無效
type = HitBy
trigger1 = 1
value = ,SA ,HA ,SP ,HP ,ST ,HT
time = 1

[State 3201, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoJuggleCheck

[State 3201, 4]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Paragraph 1 Attack Judgment" ;第一段攻擊判定
id = 23201
stateno = 23201
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3201, 5]
type = HitAdd
trigger1 = Helper(23201),MoveHit = 1
value = 1

[State 3201, 6]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 10
y = 0

[State 3201, 7]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 50
y = -25

[State 3201, 8]
type = Gravity
trigger1 = AnimElemTime(2) >= 0

[State 3201, 9]
type = VelAdd
triggerall = Vel Y > 0
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(9) < 0
x = -1.0
y = 0

[State 3201, 10]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(9) < 0
statetype = A
movetype = A
physics = N

[State 3201, 11 (Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelSet
triggerall = AnimElemTime(5) >= 0
trigger1 = FrontEdgeBodyDist < 480
x = -((480-frontedgebodydist)*0.075)

[State 3201, 12]
type = PlaySnd
trigger1 = AnimElem = 5
value = s6,3
channel = 20

[State 3201, 13]
type = ChangeAnim
triggerall = AnimElemTime(6) >= 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3201
elem = 9
persistent = 0 ;只能持續一次

[State 3201, 14]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
statetype = S
movetype = A
physics = N

[State 3201, 15]
type = VelSet
trigger1 = AnimElemTime(9) >= 0
y = 0

[State 3201, 16]
type = PosSet
trigger1 = AnimElemTime(9) >= 0
y = 0

[State 3201, 17]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElemTime(9) >= 0
x = -2.2

[State 3201, 18 (Land Effect)]
type = Explod
trigger1 = AnimElem = 9
anim = 7052
pos = 0,0
facing = facing
bindid = id
bindtime = 1;只綁定本體1ticks
ownpal = 1
sprpriority = -3
scale = fvar(21)*2.80,fvar(22)*2.80

[State 3201, 19 (Landing Sound)];著地的音效
type = PlaySnd
trigger1 = AnimElem = 9
value = s47,0 ;人物落地產生的音效不應受攻擊而中斷 (channel默認值為-1)

[State 3201, 20]
type = RemoveExplod
trigger1 = AnimElem = 9
id = 17448

[State 3201, 21]
type = RemoveExplod
trigger1 = AnimElem = 9
id = 17449

[State 3201, 22 (To Next State 3202)]
type = ChangeState
triggerall = Anim = 3201
triggerall = NumHelper(23201)
trigger1 = Helper(23201),MoveContact
trigger1 = AnimElemTime(6) >= 6
value = 3202
ctrl = 0

[State 3201, 23 (Moves End / Helper Trigger Fail)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 2A
; 百花光弾槍 / 第二段A
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3202]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3202, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3202

[State 3202, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3202, 3]
type = HitBy
trigger1 = 1
value = ,SA ,HA ,SP ,HP ,ST ,HT
time = 1

[State 3202, 4]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoJuggleCheck

[State 3202, 5]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Paragraph 2 Attack Judgment A" ;第二段攻擊判定A
id = 23202
stateno = 23202
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3202, 6]
type = HitAdd
trigger1 = Helper(23202),MoveHit = 1
value = 1

[State 3202, 7]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 12
y = 0

[State 3202, 8 (Moving Dust 1)]
type = Explod
triggerall = Vel X > 0
triggerall = NumExplod(17040) = 0
trigger1 = AnimElemTime(2) = 0
anim = 7040
id = 17040
;space = stage
pos = cond(facing = 1,300,-300)*fvar(21),0
facing = facing
bindid = id
bindtime = 1
removetime = 16
scale = fvar(21)*0.80,fvar(22)*0.80
removeongethit = 1
ignorehitpause = 1
sprpriority = 0
shadow = 0,0,0
ownpal = 1

[State 3202, 9 (Moving Dust 2)]
type = Explod
triggerall = Vel X > 0 ;確保我方正在向前移動時
triggerall = NumExplod(17041) = 0
trigger1 = AnimElemTime(2) = 0
anim = 7040
id = 17041
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = 1
removetime = 16
scale = fvar(21)*0.80,fvar(22)*0.80
removeongethit = 1
ignorehitpause = 1
sprpriority = 0
shadow = 0,0,0
ownpal = 1

[State 3202, 10 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 2
value = s5,37
channel = 0

[State 3202, 11 (Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelSet
triggerall = AnimElemTime(3) >= 0
trigger1 = FrontEdgeBodyDist < 480
x = -((480-frontedgebodydist)*0.075)

[State 3202, 12 (To Next State 3203)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 2B
; 百花光弾槍 / 第二段B
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3203]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3203, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3203

[State 3203, 2]
type = HitBy
trigger1 = 1
value = ,SA ,HA ,SP ,HP ,ST ,HT
time = 1

[State 3203, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoJuggleCheck

[State 3203, 4]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Paragraph 2 Attack Judgment B" ;第二段攻擊判定B
id = 23203
stateno = 23203
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3203, 5]
type = HitAdd
trigger1 = Helper(23203),MoveHit = 1
value = 1

[State 3203, 6]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 20
y = 0

[State 3203, 7 (Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelSet
triggerall = AnimElemTime(3) >= 0
trigger1 = FrontEdgeBodyDist < 480
x = -((480-frontedgebodydist)*0.075)

[State 3203, 8 (To Next State 3204)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3204
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 2C
; 百花光弾槍 / 第二段C
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3204]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3204, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3204

[State 3204, 2]
type = HitBy
trigger1 = 1
value = ,SA ,HA ,SP ,HP ,ST ,HT
time = 1

[State 3204, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoJuggleCheck

[State 3204, 4]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Paragraph 2 Attack Judgment C" ;第二段攻擊判定C
id = 23204
stateno = 23204
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00

[State 3204, 5]
type = HitAdd
trigger1 = Helper(23204),MoveHit = 1
value = 1

[State 3204, 6]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = cond(p2bodydist x < 365,14,23)
y = 0

[State 3204, 7 (Moving Dust 1)]
type = Explod
triggerall = Vel X > 0
triggerall = NumExplod(17040) = 0
trigger1 = AnimElemTime(1) = 0
anim = 7040
id = 17040
;space = stage
pos = cond(facing = 1,300,-300)*fvar(21),0
facing = facing
bindid = id
bindtime = 1
removetime = 16
scale = fvar(21)*0.80,fvar(22)*0.80
removeongethit = 1
ignorehitpause = 1
sprpriority = 0
shadow = 0,0,0
ownpal = 1

[State 3204, 8 (Moving Dust 2)]
type = Explod
triggerall = Vel X > 0 ;確保我方正在向前移動時
triggerall = NumExplod(17041) = 0
trigger1 = AnimElemTime(1) = 0
anim = 7040
id = 17041
;space = stage
pos = 0,0
facing = facing
bindid = id
bindtime = 1
removetime = 16
scale = fvar(21)*0.80,fvar(22)*0.80
removeongethit = 1
ignorehitpause = 1
sprpriority = 0
shadow = 0,0,0
ownpal = 1

[State 3204, 9 (Cornerpush Veloff Effect)] ;角落推擠效果 (避免招式在畫面最前端使用)
type = VelSet
triggerall = AnimElemTime(2) >= 0
trigger1 = FrontEdgeBodyDist < 480
x = -((480-frontedgebodydist)*0.075)

[State 3204, 10 (To Next State 3205)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3205
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 3
; 百花光弾槍 / 第三段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3205]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3205, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3205

[State 3205, 2]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3205, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoJuggleCheck

[State 3205, 4 (Hyakka Light Bullet Spear Slash E)]
type = Explod
triggerall = NumExplod(17800) = 0
trigger1 = AnimElemTime(2) = 2
anim = 7800
id = 17800
;space = stage
pos = cond(facing = 1,-420,420)*fvar(21),0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7400,4
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 13
removeongethit = 1
ignorehitpause = 0

[State 3205, 5 (Hyakka Light Bullet Spear Slash E Subtraction)]
type = Explod
triggerall = NumExplod(17801) = 0
trigger1 = AnimElemTime(2) = 2
anim = 7801
id = 17801
;space = stage
pos = cond(facing = 1,-420,420)*fvar(21),0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 7400,1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 13
removeongethit = 1
ignorehitpause = 0

[State 3205, 6]
type = HitDef
triggerall = RoundState = 2 ;限定戰鬥中有效 (避免中途播放勝利動作造成招式中斷)
triggerall = !MoveContact && !MoveReversed
trigger1 = AnimElem = 3
trigger1 = 1 || var(21):= 1300 ;Hit Spark X
trigger1 = 1 || var(22):= -345 ;Hit Spark Y
trigger1 = 1 || var(23):= 7236 ;Hit Spark ID
trigger1 = 1 || var(24):= 7370 ;Guard Spark ID
trigger1 = 1 || var(25):= 0 ;Hit Spark Angle
trigger1 = 1 || var(36):= 3205 ;HitDef ID
attr = S, HA
animtype = Hard
air.animtype = Hard
hitflag = MAFDP
guardflag = MA
priority = 7, Hit
damage = 0,cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.010))*fvar(13)),10*fvar(13)) ;擊中時不設定傷害是因為會受到下面的ChangeState影響(無效)
pausetime = 0,0
guard.pausetime = 20,22
sparkno = -1
guard.sparkno = -1
getpower = 0,0
givepower = 0,0
hitsound = s7,4
guardsound = s8,2
ground.type = Low
air.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.slidetime = 20
guard.hittime = 20
ground.velocity = -48,-16
guard.velocity = -48
air.velocity = -38,-12
airguard.velocity = -36,-6
airguard.ctrltime = 20
guard.dist = 1160
p2facing = 1
fall = 1
air.fall = 1
kill = 0
guard.kill = 0
hitonce = 1 ;只對一位角色有效
numhits = 1
id = 3205
;p1stateno = 3206
;p2stateno = 3256

[State 3205, 7 (Give Enemy a StateNo 3256)]
type = TargetState
triggerall = MoveHit && NumTarget(3205)
trigger1 = (Target(3205),StateNo = 5000) || (Target(3205),StateNo = 5010) ||(Target(3205),StateNo = 5020)
value = 3256

[State 3205, 8 (To Next State 3206)]
type = ChangeState
triggerall = MoveHit && NumTarget(3205)
trigger1 = Target(3205),StateNo = 3256 ;將目標的狀態編號帶入我方的狀態3256編號
value = 3206

[State 3205, 9 (Moves End / Trigger Fail)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 4 (Fenrir Knight)
; 百花光弾槍 / 第四段 (魔狼騎士)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3206]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
poweradd = -600
sprpriority = 2

[State 3206, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3206

[State 3206, 2]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Hyakka Light Bullet Spear / Camera Effect A" ;百花光弾槍 / 攝影機(畫面鏡頭)效果A
id = 23206
stateno = 23206
pos = 0,0
postype = p1
facing = 1
ownpal = 1
size.xscale = fvar(21)*1.00
size.yscale = fvar(22)*1.00
;supermovetime = 2147483647
;pausemovetime = 2147483647
ignorehitpause = 1

[State 3206, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3206, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3206, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3206, 6]
type = Width
trigger1 = 1
edge = 782*(floor(const(size.xscale))),198*(floor(const(size.xscale)))

[State 3206, 7]
type = TargetBind
trigger1 = NumTarget(3205)
pos = 700*fvar(21),0
time = -1
id = 3205

[State 3206, 8]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3206, 9 (Body fade in to White / Class Change Start)] ;身體淡入白色 / 轉職開始
type = PalFX
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 1
add = 0+((time-10)*8),0+((time-10)*8),0+((time-10)*8)
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

;[State 3206, 10 (Body Palette Change)]  ;因為已經在State 5901和NumHelper(29876)添加過
;type = RemapPal                        ;這裡不用再添加(測試過會讓1P色表的Group變不回來，意思是1,1→2,1正常，但2,1→1,1會失敗)
;trigger1 = AnimElemTime(3) = 0
;source = 1,cond(fvar(37) = 0,palno,fvar(36)) ;因為人物顏色選擇模式關閉時浮點變量fvar(36)將為0數值
;dest = 2,cond(fvar(37) = 0,palno,fvar(36))   ;為了避免Bug錯誤所以改為讀取PalNo參數
;ignorehitpause = 1

[State 3206, 11 (Class Change Barrier)]
type = Explod
trigger1 = AnimElemTime(2) = 13
anim = 7978
;space = stage
id = 7978
bindid = id
pos = cond(facing = 1,220,-220)*fvar(21),-248*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
ownpal = 1
removetime = 38
removeongethit = 1
sprpriority = 4

[State 3206, 12 (Class Change Fragments)]
type = Explod
trigger1 = AnimElemTime(2) = 13
anim = 7979
;space = stage
id = 7979
bindid = id
pos = cond(facing = 1,220,-220)*fvar(21),-248*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.50,fvar(22)*1.50
ownpal = 1
removetime = 38
removeongethit = 1
sprpriority = 4

[State 3206, 13]
type = PlaySnd
trigger1 = AnimElemTime(2) = 13
value = s3206,0
channel = 20

[State 3206, 14 (Body fade out to White / Class Change End)] ;身體淡出白色 / 轉職完畢
type = PalFX
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
time = 1
add = 256-((time-42)*8),256-((time-42)*8),256-((time-42)*8)
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

;[State 3206, 15 (Body Palette Change)]  ;因為已經在State 5901和NumHelper(29876)添加過
;type = RemapPal                        ;這裡不用再添加(測試過會讓1P色表的Group變不回來 意思是1,1→2,1正常，但2,1→1,1會失敗)
;trigger1 = AnimTime = 0
;source = 2,cond(fvar(37) = 0,palno,fvar(36)) ;因為人物顏色選擇模式關閉時浮點變量fvar(36)將為0數值
;dest = 1,cond(fvar(37) = 0,palno,fvar(36))   ;為了避免Bug錯誤所以改為讀取PalNo參數
;ignorehitpause = 1

[State 3206, 16 (To Next State 3207)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3207
ctrl = 0

[State 3206, 17 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
y = 0

[State 3206, 18 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 5 (Fenrir Knight)
; 百花光弾槍 / 第五段 (魔狼騎士)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3207]
type = S
movetype = A
physics = S
ctrl = 0
juggle = 0
sprpriority = 2

[State 3207, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3207

[State 3207, 2]
type = HitAdd
triggerall = NumTarget(3205) ;目標3205必須存在才能增加
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(11) = 1
trigger4 = AnimElemTime(16) = 1
trigger5 = AnimElemTime(20) = 1
trigger6 = AnimElemTime(24) = 1
trigger7 = AnimElemTime(29) = 1
trigger8 = AnimElemTime(33) = 1
trigger9 = AnimElemTime(37) = 1
value = 1

[State 3207, 3 (Effect Sound)] ;効果音
type = PlaySnd
triggerall = NumTarget(3205) = 0 ;目標3205不存在時播放揮動長槍的音效
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 24
trigger7 = AnimElem = 29
trigger8 = AnimElem = 33
trigger9 = AnimElem = 37
value = s6,6
channel = 20

[State 3207, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3207, 5]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3207, 6]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3207, 7]
type = Width
trigger1 = 1
edge = 782*(floor(const(size.xscale))),198*(floor(const(size.xscale)))

[State 3207, 8]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3207, 9]
type = TargetBind
triggerall = NumTarget(3205)
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 700*fvar(21),-60*fvar(22)
time = 1
id = 3205

[State 3207, 10]
type = TargetBind
triggerall = NumTarget(3205)
trigger1 = AnimElemTime(2) >= 0
pos = 700*fvar(21),-120*fvar(22)
time = 1
id = 3205

[State 3207, 11 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,38
channel = 0

[State 3207, 12 (Sound Effect)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s6,20
loop = 1 ;能夠在Pause、SuperPause狀態時可以持續播放
channel = 21

[State 3207, 13 (Hyakka Light Bullet Spear Fire Slash A)]
type = Explod
triggerall = NumExplod(8410) = 0
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(28) = 0
anim = 8410
id = 8410
;space = stage
pos = cond(facing = 1,-196,196)*fvar(21),-144*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 14 (Hyakka Light Bullet Spear Fire Slash A Subtraction)]
type = Explod
triggerall = NumExplod(8411) = 0
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(28) = 0
anim = 8411
id = 8411
;space = stage
pos = cond(facing = 1,-196,196)*fvar(21),-144*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 8410,1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 15 (Hyakka Light Bullet Spear Fire Slash B)]
type = Explod
triggerall = NumExplod(8412) = 0
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(19) = 0
trigger3 = AnimElemTime(32) = 0
trigger4 = AnimElemTime(40) = 0
anim = 8412
id = 8412
;space = stage
pos = cond(facing = 1,-74,74)*fvar(21),-4*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 16 (Hyakka Light Bullet Spear Fire Slash B Subtraction)]
type = Explod
triggerall = NumExplod(8413) = 0
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(19) = 0
trigger3 = AnimElemTime(32) = 0
trigger4 = AnimElemTime(40) = 0
anim = 8413
id = 8413
;space = stage
pos = cond(facing = 1,-74,74)*fvar(21),-4*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 8410,1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 17 (Hyakka Light Bullet Spear Fire Slash C)]
type = Explod
triggerall = NumExplod(8414) = 0
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(23) = 0
trigger3 = AnimElemTime(36) = 0
anim = 8414
id = 8414
;space = stage
pos = cond(facing = 1,-128,128)*fvar(21),-66*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 18 (Hyakka Light Bullet Spear Fire Slash C Subtraction)]
type = Explod
triggerall = NumExplod(8415) = 0
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(23) = 0
trigger3 = AnimElemTime(36) = 0
anim = 8415
id = 8415
;space = stage
pos = cond(facing = 1,-128,128)*fvar(21),-66*fvar(22)
facing = facing
bindid = id
bindtime = -1
ownpal = 1
remappal = 8410,1
scale = fvar(21)*2.00,fvar(22)*2.00
sprpriority = 4
removetime = 5
removeongethit = 1
ignorehitpause = 1

[State 3207, 19 (Hyakka Light Bullet Spear Fire Hit Effect)]
type = Explod
triggerall = NumExplod(8416) < 10
trigger1 = GameTime %3 = 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(39) < 0
anim = 8416
id = 8416
bindid = id
;space = stage
pos = cond(facing = 1,400,-400)*fvar(21),-375*fvar(22)
facing = facing
scale = fvar(21)*3.00,fvar(22)*2.20
removetime = 26
sprpriority = 5
angle = 1*(cond(random < 500,1*(random%30),-1*(random%30)))
ownpal = 1
ignorehitpause = 1

[State 3207, 20 (Hit Spark G)]
type = Explod
triggerall = NumExplod(7215) < 3
trigger1 = GameTime %8 = 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(39) < 0
anim = 7215
id = 7215
bindid = id
;space = stage
pos = cond(facing = 1,650,-650)*fvar(21),-350*fvar(22)
facing = facing
scale = fvar(21)*0.60,fvar(22)*0.60
angle = random%360
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3207, 21 (Hit Spark I)]
type = Explod
triggerall = NumExplod(7217) < 5
trigger1 = GameTime %7 = 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(39) < 0
anim = 7217
id = 7217
bindid = id
;space = stage
pos = cond(facing = 1,450,-450)*fvar(21),-350+cond(random < 500,-1*(random%250),1*(random%250))*fvar(22)
facing = facing
scale = fvar(21)*1.40,fvar(22)*0.70
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3207, 22 (Hit Spark B)]
type = Explod
triggerall = NumExplod(7210) < 3
trigger1 = GameTime %5 = 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(39) < 0
anim = 7210
id = 7210
bindid = id
;space = stage
pos = cond(facing = 1,800,-800)*fvar(21),-350+cond(random < 500,-1*(random%250),1*(random%250))*fvar(22)
facing = facing
scale = fvar(21)*1.50,fvar(22)*1.50
sprpriority = 5
angle = random%360
ownpal = 1
ignorehitpause = 1

[State 3207, 23] ;用於消除AnimElemTime(40)時的爆炸火花效果
type = RemoveExplod
trigger1 = AnimTime = 0
id = 8412

[State 3207, 24] ;用於消除AnimElemTime(40)時的爆炸火花效果
type = RemoveExplod
trigger1 = AnimTime = 0
id = 8413

[State 3207, 25]
type = StopSnd
trigger1 = NumTarget(3205) = 0
trigger2 = AnimTime = 0
channel = 21

[State 3207, 26 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3205) = 0
id = 7210

[State 3207, 27 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3205) = 0
id = 7215

[State 3207, 28 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3205) = 0
id = 7217

[State 3207, 29 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3205) = 0
id = 8416

[State 3207, 30 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
y = 0

[State 3207, 31 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3207, 32 (To Next State 3208)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3208
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 6 (Fenrir Knight)
; 百花光弾槍 / 第六段 (魔狼騎士)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3208]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3208, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3208

[State 3208, 2]
type = HitAdd
triggerall = NumTarget(3205)
trigger1 = AnimElemTime(1) = 0
value = 1

[State 3208, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3208, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3208, 5]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3208, 6 (Hyakka Light Bullet Spear Fire Pillar)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8421
id = 8421
bindid = id
;space = stage
pos = 0,-140*fvar(22)
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.00
sprpriority = 3
removetime = 48
ownpal = 1
ignorehitpause = 1

[State 3208, 7 (Hyakka Light Bullet Spear Fife Arrow)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8420
id = 8420
bindid = id
;space = stage
pos = 0,-140*fvar(22)
facing = facing
scale = fvar(21)*2.50,fvar(22)*2.00
sprpriority = 3
removetime = 48
ownpal = 1
ignorehitpause = 1

[State 3208, 8 (Slash Effect)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8422
id = 8422
;space = stage
pos = 0,-140*fvar(22)
bindid = id
bindtime = -1
facing = facing
scale = fvar(21)*3.00,fvar(22)*3.00
angle = 38
remappal = 7230,2
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3208, 9 (Slash Effect)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8423
id = 8423
;space = stage
pos = 0,-140*fvar(22)
bindid = id
bindtime = -1
facing = facing
scale = fvar(21)*3.00,fvar(22)*3.00
angle = 38
remappal = 7230,1
ownpal = 1
sprpriority = 6
removeongethit = 1
ignorehitpause = 0

[State 3208, 10 (Sound Effect)]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s6,21
channel = 20

[State 3208, 11]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3208, 12 (Moves End / Opponent State Separation)]
type = RemoveExplod
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
id = -1

[State 3208, 13 (Moves End / Opponent State Separation)]
type = PosSet
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
y = 0

[State 3208, 14 (Moves End / Opponent State Separation)]
type = ChangeState
trigger1 = NumTarget(3205) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3208, 15 (To Next State 3209)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3209
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 7 (Vanadis)
; 百花光弾槍 / 第七段 (戰爭女神)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3209]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3209, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3209

[State 3209, 2]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Hyakka Light Bullet Spear / Camera Effect B" ;百花光弾槍 / 攝影機(畫面鏡頭)效果B
id = 23209
stateno = 23209
pos = 0,0
postype = p1 ;這裡用於判斷助手裡的Explod爆炸效果的Facing
facing = 1
ownpal = 1
size.xscale = 1.00 ;fvar(21)*1.00
size.yscale = 1.00 ;fvar(22)*1.00
;supermovetime = 2147483647
;pausemovetime = 2147483647
ignorehitpause = 1

[State 3209, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3209, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3209, 5]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = TimerFreeze
flag3 = NoBarDisplay

[State 3209, 6]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3209, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3209, 8]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = s3209,0
channel = 20

[State 3209, 9]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = s3209,1
channel = 21

[State 3209, 10 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(1) = 9
value = s5,39
channel = 0

[State 3209, 11 (To Next State 3210)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 8 (Vanadis)
; 百花光弾槍 / 第八段 (戰爭女神)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3210]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3210, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3210

[State 3210, 2]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Hyakka Light Bullet Spear / Camera Effect B2" ;百花光弾槍 / 攝影機(畫面鏡頭)效果B2
id = 23210
stateno = 23210
pos = 0,0
postype = p1 ;這裡用於判斷助手裡的Explod爆炸效果的Facing
facing = 1
ownpal = 1
size.xscale = 1.00 ;fvar(21)*1.00
size.yscale = 1.00 ;fvar(22)*1.00
;supermovetime = 2147483647
;pausemovetime = 2147483647
ignorehitpause = 1

[State 3210, 3]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3210,0
channel = 20

[State 3210, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3210, 5]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3210, 6]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = TimerFreeze
flag3 = NoBarDisplay

[State 3210, 7]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3210, 8]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3210, 9 (To Next State 3211)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3211
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 9 (Vanadis)
; 百花光弾槍 / 第九段 (戰爭女神)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3211]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3211, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3211

;[State 3211, 2 (Moves Screen Zoom Start)] ;改為從Statedef 23211控制Zoom縮放效果
;type = Zoom
;triggerall = 1
;trigger1 = CameraZoom < 1.0
;scale = 1.0/camerazoom
;pos = 0,0

[State 3211, 3]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Hyakka Light Bullet Spear / Camera Effect B3" ;百花光弾槍 / 攝影機(畫面鏡頭)效果B3
id = 23211
stateno = 23211
pos = 0,0
postype = p1 ;這裡用於判斷助手裡的Explod爆炸效果的Facing
facing = 1
ownpal = 1
size.xscale = 1.00 ;fvar(21)*1.00
size.yscale = 1.00 ;fvar(22)*1.00
;supermovetime = 2147483647
;pausemovetime = 2147483647
ignorehitpause = 1

[State 3211, 4]
type = HitAdd
triggerall = NumTarget(3205)
trigger1 = AnimElemTime(1) = 0
value = 1

[State 3211, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3211, 6]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3211, 7]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = TimerFreeze
flag3 = NoBarDisplay

[State 3211, 8]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3211, 9] ;請注意會影響Zoom縮放控制器的效果 如果參數皆為0 會讓Zoom的設定失效
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3211, 10]
type = PlaySnd
trigger1 = AnimElemTime(1) = 6
value = s3211,0
channel = 20

[State 3211, 11 (To Next State 3212)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3212
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Paragraph 10 (Vanadis)
; 百花光弾槍 / 第十段 (戰爭女神)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3212]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3212, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3212

;[State 3212, 2 (Moves Screen Zoom)] ;改為從Statedef 23212控制Zoom縮放效果
;type = Zoom
;triggerall = 1
;trigger1 = CameraZoom < 1.0
;scale = 1.0/camerazoom
;pos = 0,0

[State 3212, 3]
type = Helper
trigger1 = AnimElemTime(1) = 0
name = "Hyakka Light Bullet Spear / Camera Effect C" ;百花光弾槍 / 攝影機(畫面鏡頭)效果C
id = 23212
stateno = 23212
pos = 0,0
postype = p1 ;這裡用於判斷助手裡的Explod爆炸效果的Facing
facing = 1
ownpal = 1
size.xscale = 1.00 ;fvar(21)*1.00
size.yscale = 1.00 ;fvar(22)*1.00
;supermovetime = 2147483647
;pausemovetime = 2147483647
ignorehitpause = 1

[State 3212, 4]
type = HitAdd
triggerall = NumTarget(3205)
trigger1 = GameTime %7 = 0
value = 1

[State 3212, 5]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(1) = 60
trigger3 = AnimElemTime(1) = 120
value = s3212,0
channel = 20

[State 3212, 6 (Light Bullet Hit Spark J)]
type = Explod
triggerall = NumTarget(3205)
trigger1 = (Target(3205),StateNo != [120,159])
trigger1 = Target(3205),StateType != L
trigger1 = Target(3205),MoveType = H
trigger1 = NumExplod(8442) < 14
trigger1 = GameTime %3 = 0
anim = 7230
id = 8442
space = stage
bindid = target,id
bindtime = -1
pos = 0+cond(random < 500,-1*(random%80),1*(random%80)),const(size.mid.pos.y) ;Y軸是對準對手的中身部位置 (己在Tag Team模式測試過能夠成功綁定目標)
scale = 2.00,2.00
angle = 90+cond(random < 500,-1*(random%35),1*(random%35))
facing = 1
ownpal = 1
removetime = 11
sprpriority = 1

[State 3212, 7 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s5,40
channel = 0

[State 3212, 8]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3212, 9]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3212, 10]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = TimerFreeze
flag3 = NoBarDisplay

[State 3212, 11]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3212, 12]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3212, 13]
type = TargetLifeAdd
triggerall = NumTarget(3205)
triggerall = var(15) > 0
trigger1 = AnimElemTime(2) = 32
value = -cond(target(3205),life > ceil(100*fvar(20)),(ceil((0.100*(target(3205),lifemax))*fvar(20))),ceil(100*fvar(20))) ;可隨著我方攻擊力、對手最大生命值改變
absolute = 1
ignorehitpause = 1
kill = 1

[State 3212, 14]
type = TargetLifeAdd
triggerall = NumTarget(3205)
triggerall = var(15) <= 0
trigger1 = AnimElemTime(2) = 32
value = -ceil(100*fvar(20))
absolute = 0
ignorehitpause = 1
kill = 1

[State 3212, 15]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 8442

[State 3212, 16 (To Next State 3213)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3213
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / End
; 百花光弾槍 / 結束
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3213]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
juggle = 0
sprpriority = 2

[State 3213, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3213

;[State 3213, 2 (Moves Screen Zoom Reset)] ;改為從Statedef 23211控制Zoom縮放效果
;type = Zoom
;triggerall = Time = 0
;trigger1 = CameraZoom < 1.0
;scale = camerazoom
;pos = pos x,pos y

[State 3213, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3213, 4]
type = HitBy
trigger1 = 1
value =
time = 1

[State 3213, 5]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3213, 6]
type = BGPalFX
trigger1 = AnimElemTime(1) = 0
time = 50
add = 0,0,0
mul = 128,128,128
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3213, 7 (Fire Color Background)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8444
id = 8444
;space = stage
bindid = id
facing = 1
pos = 0,0
scale = screenwidth/1920*420.00,screenheight/1080*2.50
ownpal = 1
removetime = 68
sprpriority = 999

[State 3213, 8 (Light Bullet / Landing 1)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4) ;代表8445、8446、8447、8448
id = 8445
bindid = id
;space = stage
pos = (200+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 9 (Light Bullet / Landing 2)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(400-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 10 (Light Bullet / Landing 3)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = (350+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 11 (Light Bullet / Landing 4)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(550-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 12 (Light Bullet / Landing 5)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = (500+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 13 (Light Bullet / Landing 6)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(700-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 14 (Light Bullet / Landing 7)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = (650+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 15 (Light Bullet / Landing 8)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8445+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(850-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3213, 16 (Light Bullet / Landing 9)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4) ;代表8455、8456、8457、8458
id = 8445
bindid = id
;space = stage
pos = (200+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 17 (Light Bullet / Landing 10)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(400-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 18 (Light Bullet / Landing 11)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = (350+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 19 (Light Bullet / Landing 12)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(550-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 20 (Light Bullet / Landing 13)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = (500+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 21 (Light Bullet / Landing 14)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(700-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 22 (Light Bullet / Landing 15)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = (650+random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 23 (Light Bullet / Landing 16)]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 8455+(random%4)
id = 8445
bindid = id
;space = stage
pos = -(850-random%150)*fvar(21),0
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
removetime = 68
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3213, 24 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s5,41
channel = 0

[State 3213, 25]
type = BGPalFX
trigger1 = AnimElemTime(13) >= 2 && AnimElemTime(18) < 0
time = 1
add = 0,0,0
mul = 128+((time-50)*7),128+((time-50)*7),128+((time-50)*7)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3213, 26 (Body fade in to White / Class Change Start)] ;身體淡入白色 / 轉職開始
type = PalFX
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
time = 1
add = 0+((time-68)*8),0+((time-68)*8),0+((time-68)*8)
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

[State 3213, 27 (Class Change Barrier)]
type = Explod
trigger1 = AnimElemTime(18) = 13
anim = 7978
;space = stage
id = 7978
bindid = id
pos = cond(facing = 1,20,-20)*fvar(21),-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*2.00,fvar(22)*2.00
ownpal = 1
removetime = 38
removeongethit = 1
sprpriority = 4

[State 3213, 28 (Class Change Fragments)]
type = Explod
trigger1 = AnimElemTime(18) = 13
anim = 7979
;space = stage
id = 7979
bindid = id
pos = cond(facing = 1,20,-20)*fvar(21),-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.50,fvar(22)*1.50
ownpal = 1
removetime = 38
removeongethit = 1
sprpriority = 4

[State 3213, 29 (Body fade out to White / Class Change End)] ;身體淡出白色 / 轉職完畢
type = PalFX
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
time = 1
add = 256-((time-100)*8),256-((time-100)*8),256-((time-100)*8)
mul = 256,256,256
invertall = 0
color = 256
ignorehitpause = 1

[State 3213, 30]
type = PlaySnd
trigger1 = AnimElemTime(19) = 0
value = s3206,0
channel = 20

[State 3213, 31 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 4
; 百花光弾槍 / 對手被攻擊狀態第四段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3256]
type = S
movetype = H
physics = N
velset = 0,0
facep2 = 1
ctrl = 0

[State 3256, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3256

[State 3256, 2]
type = PosSet
trigger1 = AnimElemTime(1) = 0
y = 0

[State 3256, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3256, 4]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3256, 5]
type = PlayerPush
trigger1 = 1
value = 0

[State 3256, 6 (Target To Next State 3257)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3257
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 5
; 百花光弾槍 / 對手被攻擊狀態第五段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3257]
type = A
movetype = H
physics = N
ctrl = 0

[State 3257, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3257

[State 3257, 2]
type = VelSet
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
y = -6

[State 3257, 3]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
y = -12

[State 3257, 4]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3257, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3257, 6]
type = PlayerPush
trigger1 = 1
value = 0

[State 3257, 7]
type = PalFX
trigger1 = AnimElemTime(2) >= 0
time = 1
add = 0,0,0
mul = 255,148,116
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 3257, 8 (Target To Next State 3258)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3258
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 6
; 百花光弾槍 / 對手被攻擊狀態第六段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3258]
type = A
movetype = H
physics = N
ctrl = 0

[State 3258, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3258

[State 3258, 2]
type = PosSet
trigger1 = Time = 0
y = pos y+(-250)

[State 3258, 3]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3258, 4]
type = ScreenBound ;*
trigger1 = 1
value = 0
movecamera = 0,0

[State 3258, 5]
type = VelSet ;*
trigger1 = AnimElemTime(1) = 0
x = -40
y = -46

[State 3258, 6]
type = PlayerPush
trigger1 = 1
value = 0

[State 3258, 7]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 255,148,116
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 3258, 8 (Target To Next State 3259)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3259
ctrl = 0

;*因為這二項狀態控制器設定的關係 對手會被莉絲打飛到畫面之外
; 如果沒有打飛到畫面外 且出現往上移動的現象 就請檢查在其他的場景是否有這個現象
; 只有特定場景有這個現象的話 就是該場景的leftbound和rightbound數值較低的關係

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 7
; 百花光弾槍 / 對手被攻擊狀態第七段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3259]
type = A
movetype = H
physics = N
ctrl = 0

[State 3259, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3259

[State 3259, 2]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3259, 3]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3259, 4]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 0
y = 0

[State 3259, 5]
type = PlayerPush
trigger1 = 1
value = 0

[State 3259, 6 (Target To Next State 3260)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3260
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 8
; 百花光弾槍 / 對手被攻擊狀態第八段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3260]
type = A
movetype = H
physics = N
ctrl = 0

[State 3260, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3260

[State 3260, 2]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3260, 3]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3260, 4]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 44
y = 32

[State 3260, 5]
type = PlayerPush
trigger1 = 1
value = 0

[State 3260, 6 (Target To Next State 3261)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3261
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 9
; 百花光弾槍 / 對手被攻擊狀態第九段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3261]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3261, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3261

[State 3261, 2]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3261, 3]
type = ScreenBound
trigger1 = 1
value = 1 ;人物出現在畫面中央後改為1 (不允許角色離開螢幕範圍)
movecamera = 1,1 ;人物出現在畫面中央後改為1 (不允許角色離開螢幕範圍)

;[State 3261, 4 (Moves Screen Zoom Start)] ;改為從Statedef 23211控制Zoom縮放效果
;type = Zoom
;triggerall = 1
;trigger1 = CameraZoom < 1.0
;scale = 1.0/camerazoom
;pos = 0,0

; 可利用DisplayToClipBoard取得CameraZoom數值

; 其他Zoom (SCTRL)參考教學
; https://mugenguild.com/forum/topics/zoom-sctrl-11b-exclusive-170111.0.html

[State 3261, 5]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 0
y = 0

[State 3261, 6]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34 ;寬螢幕 (通常畫面比例為16:9)
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = screenheight/1080+(-70) ;角色會在畫面偏上方一點*

[State 3261, 7]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34 ;傳統螢幕 (通常畫面比例為4:3)
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = (screenheight/1080)+(-210) ;角色會在畫面偏上方一點*

;*會從場景的Zoffset立足點為0向上計算
; 因此場景立足點高的話 角色的位置也會較高

[State 3261, 8]
type = PlayerPush
trigger1 = 1
value = 0

[State 3261, 9 (Target To Next State 3262)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3262
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 10
; 百花光弾槍 / 對手被攻擊狀態第十段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3262]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3262, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3262

[State 3262, 2]
type = AssertSpecial
trigger1 = 1
flag = TimerFreeze
flag2 = NoBarDisplay

[State 3262, 3]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

;[State 3262, 4 (Moves Screen Zoom)] ;改為從Statedef 23211控制Zoom縮放效果
;type = Zoom
;triggerall = 1
;trigger1 = CameraZoom < 1.0
;scale = 1.0/camerazoom
;pos = 0,0

[State 3262, 5]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight >= 1.34
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = screenheight/1080+(-70)

[State 3261, 6]
type = PosSet
triggerall = 1.0*ScreenWidth/ScreenHeight < 1.34
trigger1 = AnimElemTime(1) >= 0
x = screenwidth/1920
y = (screenheight/1080)+(-210)

[State 3262, 7]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = 0
y = 0

[State 3262, 8]
type = PlayerPush
trigger1 = 1
value = 0

[State 3262, 9]
type = PosSet
trigger1 = AnimTime = 0
x = cond(facing = -1,gamewidth/2,-gamewidth/2) ;*

;*讓對手(P2角色)移動到屏幕最兩端邊緣處 facing = -1代表頭朝向左邊時
; 因為移動的物體是角色不是場景 所以用GameWidth即可
; 雖然GameWidth會因為場景Zoom縮放效果影響 會讓落點無法保證在最兩端邊緣處 但測試過後是沒有什麼問題的

[State 3262, 10]
type = PosSet
trigger1 = AnimTime = 0
y = -1800

[State 3262, 11]
type = VelAdd
trigger1 = AnimTime = 0
y = gethitvar(yaccel)

[State 3262, 12 (Target Reverts To Its Own State)]
type = ChangeState
trigger1 = AnimTime = 0
value = 3263
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 11
; 百花光弾槍 / 對手被攻擊狀態第十一段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3263]
type = A
movetype = H
physics = N
ctrl = 0

[State 3263, 1]
type = ChangeAnim ;*
trigger1 = Time = 0
value = 5035 ;*

; 提醒：因為是用ChangeAnim 所以這個5035動畫是對手自己的。

;[State 3263, 2 (Moves Screen Zoom Reset)] ;改為從Statedef 23211控制Zoom縮放效果
;type = Zoom
;triggerall = Time = 0
;trigger1 = CameraZoom < 1.0
;scale = camerazoom
;pos = pos x,pos y

[State 3263, 3]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 3263, 4]
type = Gravity
trigger1 = 1

[State 3263, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3263, 6]
type = HitBy
trigger1 = 1
value =
time = 1
ignorehitpause = 1

[State 3263, 7]
type = ChangeState
triggerall = Alive = 1
trigger1 = AnimTime = 0
value = 3264

[State 3263, 8]
type = SelfState
trigger1 = Alive = 0
trigger1 = AnimTime = 0
trigger2 = Pos Y >= 0 && Vel Y > 0 
value = 5050

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear / Opponent being attacked State Paragraph 12
; 百花光弾槍 / 對手被攻擊狀態第十二段
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3264]
type = A
movetype = H
physics = N

[State 3264, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051,5059]) && (Anim != [5061,5069])
trigger2 = Anim != 5090
value = 5050

[State 3264, 2]
type = ChangeAnim
trigger1 = Anim = [5050,5059]
trigger1 = Vel Y >= Cond(Anim = 5050,6,-12)
trigger1 = SelfAnimExist(Anim+10)
value = anim+10
persistent = 0

[State 3264, 3]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 3264, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1

[State 3264, 5]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Cond((Anim = [5051,5059]) || (Anim = [5061,5069]),0,Const(Movement.Air.GetHit.GroundLevel))
value = 5100

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Support Knight Summon C (Clone Pharsalia)
; 支援騎士召喚C (複製型法莎莉雅)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3600]
type = U
movetype = A
physics = N
sprpriority = 3
anim = 3600
poweradd = 0
juggle = 6
velset = 0,0

[State 3600, 1]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A

[State 3600, 2]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = S

[State 3600, 3]
type = HitBy
trigger1 = Time = 0
value =
time = 3
ignorehitpause = 1

[State 3600, 4]
type = HitBy
trigger1 = Time = 3
value = SCA, SA, HA, NP, SP, HP, ST, HT
time = 40
ignorehitpause = 1

[State 3600, 5]
type = CtrlSet
trigger1 = AnimElem = 1
trigger1 = 1 || var(41):= (!Ctrl && PrevStateNo >= 200 && PrevStateNo != [3600,3610])
value = 0

[State 3600, 6]
type = VarSet
trigger1 = AnimElem = 2
v = 37
value = 0
ignorehitpause = 1

[State 3600, 7]
type = VarSet
trigger1 = AnimElem = 2
trigger1 = var(38) <= 1120 || var(41)
v = 38
value = cond(!var(41),120,1420)
ignorehitpause = 1

[State 3600, 8]
type = VarSet
trigger1 = AnimElem = 2
v = 39
value = cond(var(39)<=3,0,var(39)-3)
ignorehitpause = 1

[State 3600, 9]
type = SuperPause
trigger1 = AnimElem = 2
trigger1 = var(41)
trigger1 = var(34):= 21 ;Super Pause Time
time = 20
anim = -1
sound = -1
movetime = 20
darken = 0
unhittable = 1

[State 3600, 10]
type = Null
trigger1 = BackEdgeDist >= 200 && FrontEdgeDist >= 450
trigger1 = (fvar(23):= 200) || 1
trigger2 = BackEdgeDist < 200 && FrontEdgeDist >= 450
trigger2 = (fvar(23):= 200+(200-(BackEdgeDist/2))) || 1
trigger3 = BackEdgeDist >= 200 && FrontEdgeDist < 450
trigger3 = (fvar(23):= 200+(FrontEdgeDist-450)) || 1
trigger4 = BackEdgeDist < 420
trigger4 = (fvar(24):= 3) || 1
trigger5 = BackEdgeDist >= 420
trigger5 = (fvar(24):= 2.5) || 1

[State 3600, 11]
type = Helper
trigger1 = NumHelper(23600) = 0
trigger1 = Time = 0
id = 23600
name = "BG Ctrl / Knight Card C"
pos = 0,0
postype = p1
stateno = 23600
supermovetime = var(34)
ownpal = 1
ignorehitpause = 1

[State 3600, 12] ;Magic Light Disc C (Blue)
type = Explod
trigger1 = AnimElemTime(2) = 1
anim = 7900
id = 7960
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*5.00,fvar(22)*5.00
xangle = -68+cond(pos y > -1450,(pos y*0.005),-7.25) ;1450是人物從Pos Y = 0向上跳的大約極限高度
yangle = fvar(24)
sprpriority = -2
removetime = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 13] ;Magic Circle 1 (Blue)
type = Explod
trigger1 = AnimElemTime(2) = 4
anim = 7902
id = 7960
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.25,fvar(22)*1.25
xangle = -68+cond(pos y > -1450,(pos y*0.005),-7.25)
yangle = fvar(24)
sprpriority = -2
removetime = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 14] ;Magic Circle 2 (Blue)
type = Explod
trigger1 = AnimElemTime(2) = 4
anim = 7904
id = 7960
pos = 0,0
facing = facing
bindid = id
bindtime = -1
ownpal = 1
scale = fvar(21)*1.25,fvar(22)*1.25
xangle = -68+cond(pos y > -1450,(pos y*0.005),-7.25)
yangle = fvar(24)
sprpriority = -2
removetime = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 15 (Knight Card Square Flash Effect)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 8019
id = 8019
;space = stage
pos = cond(facing = 1,fvar(23),-fvar(23))*fvar(21)+(pos x+ camerapos x),-260*fvar(22)+pos y
facing = facing
scale = fvar(21)*1.80,fvar(22)*1.80
sprpriority = 5
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1
ownpal = 1

[State 3600, 16 (Knight Card Flash Effect)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 8018
id = 8018
;space = stage
pos = cond(facing = 1,fvar(23),-fvar(23))*fvar(21)+(pos x+ camerapos x),-260*fvar(22)+pos y
facing = facing
scale = fvar(21)*1.14,fvar(22)*1.14
sprpriority = 7
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1
ownpal = 1

[State 3600, 17 (Knight Card Big)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 8020
id = 8020
;space = stage
pos = cond(facing = 1,fvar(23),-fvar(23))*fvar(21)+(pos x+ camerapos x),-260*fvar(22)+pos y
facing = facing
scale = fvar(21)*1.80,fvar(22)*1.80
sprpriority = 5
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1
ownpal = 1

;[State 3600, 18 (Character Voice)] ;原作中莉絲沒有召喚騎士時的CV人聲
;type = PlaySnd
;trigger1 = AnimElem = 2
;value =
;channel = 0

[State 3600, 19]
type = Helper
trigger1 = AnimElemTime(3) = 2 ;AnimElem = 2,= 6 ;AnimElemTime(2) = 6
name = "Clone Pharsalia";《複製型ファルサリア》
id = 13600
stateno = 13600
pos = fvar(23)*fvar(21),0*fvar(22)
ownpal = 1
postype = p1
size.xscale = fvar(21)*0.92
size.yscale = fvar(22)*0.92
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 20]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10074+(facing = -1)
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2+100
space = screen
ownpal = 1
facing = 1
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 21]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10015
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2+210
space = screen
ownpal = 1
facing = facing
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 22]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10054
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
ownpal = 1
facing = facing
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 23]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10055
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
ownpal = 1
facing = facing
vfacing = -1
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 24]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10056
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
ownpal = 1
facing = facing
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 25]
type = Explod
trigger1 = AnimElem = 2,= 1
trigger1 = var(41) = 1 || PrevStateNo = [3600,3610]
anim = 10057
id = 13600
pos = cond(facing = 1,0,screenwidth),screenheight/2
space = screen
ownpal = 1
facing = facing
vfacing = -1
sprpriority = -2
removeongethit = 1
supermovetime = var(34)
ignorehitpause = 1

[State 3600, 26]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3600,0

[State 3600, 27 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = cond(statetype = A,50,0)
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier
; 氣障壁
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3800]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3800
juggle = 0
poweradd = -1000
sprpriority = 2

[State 3800, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3800, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3800, 3]
type = PlayerPush
trigger1 = 1
value = 1

[State 3800, 4]
type = PosFreeze
trigger1 = 1
value = 1
ignorehitpause = 1

[State 3800, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3800, 6]
type = HitBy
trigger1 = 1
value =
time = 1
ignorehitpause = 1

[State 3800, 7 (Barrier 1P Font)] ;Barrier字體 (1P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 1
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(30+(var(10))),(40+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
ignorehitpause = 1
persistent = 0

[State 3800, 8 (Barrier 2P Font)] ;Barrier字體 (2P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 2
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-370+(-var(10))),(-360+(-var(10))))*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
ignorehitpause = 1
persistent = 0

[State 3800, 9 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,11
channel = 0

[State 3800, 10 (Barrier 3)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7976
;space = stage
id = 7976
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
ownpal = 1
remappal = 7976,1
removeongethit = 1
sprpriority = 3
removetime = -2

[State 3800, 11 (Barrier 1)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7970
;space = stage
id = 7970
bindid = id;-2
pos = 0,-350*fvar(22)
;pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3800, 12 (Barrier 1 Subtraction)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7971
;space = stage
id = 7971
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,1
removeongethit = 1
sprpriority = -1
removetime = -2

[State 3800, 13 (Barrier 2)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7972
;space = stage
id = 7972
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*0.70,fvar(22)*0.70
ownpal = 1
remappal = 7972,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3800, 14]
type = Projectile
triggerall = NumEnemy
trigger1 = AnimElemTime(3) = 0
projid = 7975
projanim = 99991
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 28
velocity = 0,0
projhits = 1
projmisstime = 12
projpriority = 990
projsprpriority = 4
offset = 0,-50*fvar(22)
postype = p1
attr = S, HA
hitflag = MAFP
guardflag = MA
damage = cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.055))*fvar(13)),55*fvar(13)),cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.010))*fvar(13)),10*fvar(13))
animtype = Hard
ground.type = High
pausetime = 0,0
sparkno = -1;s7202
guard.sparkno = -1;s7302
;sparkxy = ceil(enemynear(var(48)),pos x-pos x)*facing,ceil(enemynear(var(48)),pos y-pos y)
hitsound = s3800,1
guardsound = s3800,2
ground.slidetime = 21
ground.hittime = 21
guard.slidetime = 22
guard.hittime = 22
ground.velocity = cond(p2dist x > 0,-36,48),-36
guard.velocity = cond(p2dist x > 0,-18,18)
air.velocity = cond(p2dist x > 0,-36,36),-36
airguard.velocity = cond(p2dist x > 0,-18,18),-12
airguard.ctrltime = 26
getpower = 0,0
givepower = -400,-400
yaccel = 2.4
fall = 1
air.fall = 1
kill = 1
guard.kill = 1
fall.recover = 0
;ownpal = 1 ;測試過MUGEN 1.1版該設定可用於Projectile
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3800, 15]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit >= 1
trigger2 = ProjHit7975 = 1
value = 3820
ignorehitpause = 1
persistent = 0

[State 3800, 16]
type = StateTypeSet
trigger1 = AnimElem >= 5
statetype = A 
movetype = I
physics = A

[State 3800, 17]
type = Gravity
trigger1 = AnimElem >= 5

[State 3800, 18]
type = CtrlSet
trigger1 = AnimElem >= 5
value = 1

[State 3800, 19]
type = RemoveExplod
trigger1 = AnimElemTime(4) >= 0
id = 15040

[State 3800, 20 (Moves End)]
type = ChangeState
trigger1 = AnimElemTime(5) >= 6
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier / Opponent State Separation
; 氣障壁 / 對手狀態脫離
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3805]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3800
juggle = 0
poweradd = 0
sprpriority = 2

[State 3805, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3805, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3805, 3]
type = PlayerPush
trigger1 = 1
value = 1

[State 3805, 4]
type = PosFreeze
trigger1 = 1
value = 1
ignorehitpause = 1

[State 3805, 5]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3805, 6]
type = HitBy
trigger1 = 1
value =
time = 1
ignorehitpause = 1

[State 3805, 7 (Barrier 1P Font)] ;Barrier字體 (1P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 1
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(30+(var(10))),(40+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
remappal = 15040,1
ignorehitpause = 1
persistent = 0

[State 3805, 8 (Barrier 2P Font)] ;Barrier字體 (2P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 2
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-370+(-var(10))),(-360+(-var(10))))*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
remappal = 15040,1
ignorehitpause = 1
persistent = 0

[State 3805, 9 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,11
channel = 0

[State 3805, 10 (Barrier 3)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7976
;space = stage
id = 7976
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
ownpal = 1
remappal = 7976,2
removeongethit = 1
sprpriority = 3
removetime = -2

[State 3805, 11 (Barrier 1)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7970
;space = stage
id = 7970
bindid = id;-2
pos = 0,-350*fvar(22)
;pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,3
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3805, 12 (Barrier 1 Subtraction)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7971
;space = stage
id = 7971
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,3
removeongethit = 1
sprpriority = -1
removetime = -2

[State 3805, 13 (Barrier 2)]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7972
;space = stage
id = 7972
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*0.70,fvar(22)*0.70
ownpal = 1
remappal = 7972,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3805, 14]
type = Projectile
triggerall = NumEnemy
trigger1 = AnimElemTime(3) = 0
projid = 7975
projanim = 99991
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 28
velocity = 0,0
projhits = 1
projmisstime = 12
projpriority = 990
projsprpriority = 4
offset = 0,-50*fvar(22)
postype = p1
attr = S, HA
hitflag = MAFP
guardflag = MA
damage = cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.055))*fvar(13)),55*fvar(13)),cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.010))*fvar(13)),10*fvar(13))
animtype = Hard
ground.type = High
pausetime = 0,0
sparkno = -1;s7202
guard.sparkno = -1;s7302
;sparkxy = ceil(enemynear(var(48)),pos x-pos x)*facing,ceil(enemynear(var(48)),pos y-pos y)
hitsound = s3800,1
guardsound = s3800,2
ground.slidetime = 21
ground.hittime = 21
guard.slidetime = 22
guard.hittime = 22
ground.velocity = cond(p2dist x > 0,-36,48),-36
guard.velocity = cond(p2dist x > 0,-18,18)
air.velocity = cond(p2dist x > 0,-36,36),-36
airguard.velocity = cond(p2dist x > 0,-18,18),-12
airguard.ctrltime = 26
getpower = 0,0
givepower = -800,-800
yaccel = 2.4
fall = 1
air.fall = 1
kill = 1
guard.kill = 1
fall.recover = 0
;ownpal = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3805, 15]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit >= 1
trigger2 = ProjHit7975 = 1
value = 3820
ignorehitpause = 1
persistent = 0

[State 3805, 16]
type = StateTypeSet
trigger1 = AnimElem >= 5
statetype = A 
movetype = I
physics = A

[State 3805, 17]
type = Gravity
trigger1 = AnimElem >= 5

[State 3805, 18]
type = CtrlSet
trigger1 = AnimElem >= 5
value = 1

[State 3805, 19]
type = RemoveExplod
trigger1 = AnimElemTime(4) >= 0
id = 15040

[State 3805, 20 (Moves End)]
type = ChangeState
trigger1 = AnimElemTime(5) >= 6
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier (Air)
; 氣障壁 (空中)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3810]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3810
juggle = 0
poweradd = -1000
sprpriority = 2

[State 3810, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3810, 2]
type = PlayerPush
trigger1 = 1
value = 1

[State 3810, 3]
type = PosFreeze
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
value = 1
ignorehitpause = 1

[State 3810, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3810, 5]
type = HitBy
trigger1 = 1
value =
time = 1
ignorehitpause = 1

[State 3810, 6 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,11
channel = 0

[State 3810, 7 (Barrier 1P Font)] ;Barrier字體 (1P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 1
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(30+(var(10))),(40+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
ignorehitpause = 1
persistent = 0

[State 3810, 8 (Barrier 2P Font)] ;Barrier字體 (2P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 2
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-370+(-var(10))),(-360+(-var(10))))*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
ignorehitpause = 1
persistent = 0

[State 3810, 9]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7976
;space = stage
id = 7976
pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
ownpal = 1
remappal = 7976,1
removeongethit = 1
sprpriority = 3
removetime = -2

[State 3810, 10]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7970
;space = stage
id = 7970
bindid = id;-2
pos = 0,-350*fvar(22)
;pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3810, 11]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7971
;space = stage
id = 7971
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,1
removeongethit = 1
sprpriority = -1
removetime = -2

[State 3810, 12]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7972
;space = stage
id = 7972
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*0.70,fvar(22)*0.70
ownpal = 1
remappal = 7972,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3810, 13]
type = Projectile
triggerall = NumEnemy
trigger1 = AnimElemTime(3) = 0
projid = 7976
projanim = 99991
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 28
velocity = 0,0
projhits = 1
projmisstime = 12
projpriority = 990
projsprpriority = 4
offset = 0,-50*fvar(22)
postype = p1
attr = A, HA
hitflag = MAFP
guardflag = MA
damage = cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.055))*fvar(13)),55*fvar(13)),cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.010))*fvar(13)),10*fvar(13))
animtype = Hard
ground.type = High
pausetime = 0,0
sparkno = -1;s7202
guard.sparkno = -1;s7302
;sparkxy = ceil(enemynear(var(48)),pos x-pos x)*facing,ceil(enemynear(var(48)),pos y-pos y)
hitsound = s3800,1
guardsound = s3800,2
ground.slidetime = 21
ground.hittime = 21
guard.slidetime = 22
guard.hittime = 22
ground.velocity = cond(p2dist x > 0,-36,48),-36
guard.velocity = cond(p2dist x > 0,-18,18)
air.velocity = cond(p2dist x > 0,-36,36),-36
airguard.velocity = cond(p2dist x > 0,-18,18),-12
airguard.ctrltime = 26
getpower = 0,0
givepower = -400,-400
yaccel = 2.4
fall = 1
air.fall = 1
kill = 0
guard.kill = 0
fall.recover = 0
;ownpal = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3810, 14]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit >= 1
trigger2 = ProjHit7976 = 1
value = 3820
ignorehitpause = 1
persistent = 0

[State 3810, 15]
type = RemoveExplod
trigger1 = AnimElemTime(4) >= 0
id = 15040

[State 3810, 16]
type = StateTypeSet
trigger1 = AnimElem >= 5
statetype = A 
movetype = I
physics = A

[State 3810, 17]
type = Gravity
trigger1 = AnimElem >= 5

[State 3810, 18]
type = CtrlSet
trigger1 = AnimElem >= 5
value = 1

[State 3810, 19 (To Next State 52)]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier (Air) / Opponent State Separation
; 氣障壁 (空中) / 對手狀態脫離
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3815]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3810
juggle = 0
poweradd = 0
sprpriority = 2

[State 3815, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3815, 2]
type = PlayerPush
trigger1 = 1
value = 1

[State 3815, 3]
type = PosFreeze
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
value = 1
ignorehitpause = 1

[State 3815, 4]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3815, 5]
type = HitBy
trigger1 = 1
value =
time = 1
ignorehitpause = 1

[State 3815, 6 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,11
channel = 0

[State 3815, 7 (Barrier 1P Font)] ;Barrier字體 (1P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 1
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(30+(var(10))),(40+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
remappal = 15040,1
ignorehitpause = 1
persistent = 0

[State 3815, 8 (Barrier 2P Font)] ;Barrier字體 (2P側)
type = Explod
trigger1 = NumExplod(15040) = 0
trigger1 = TeamSide = 2
id = 15040
anim = 15040
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-370+(-var(10))),(-360+(-var(10))))*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.50,0.46)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.32,0.36)*screenheight/1080
bindtime = -1
removetime = 102
remappal = 15040,1
ignorehitpause = 1
persistent = 0

[State 3815, 9]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7976
;space = stage
id = 7976
pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.00,fvar(22)*1.00
ownpal = 1
remappal = 7976,2
removeongethit = 1
sprpriority = 3
removetime = -2

[State 3815, 10]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7970
;space = stage
id = 7970
bindid = id;-2
pos = 0,-350*fvar(22)
;pos = pos x+camerapos x,pos y-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,3
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3815, 11]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7971
;space = stage
id = 7971
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*1.20,fvar(22)*1.20
ownpal = 1
remappal = 7971,3
removeongethit = 1
sprpriority = -1
removetime = -2

[State 3815, 12]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 7972
;space = stage
id = 7972
bindid = id
pos = 0,-350*fvar(22)
bindtime = 1
facing = facing
scale = fvar(21)*0.70,fvar(22)*0.70
ownpal = 1
remappal = 7972,1
removeongethit = 1
sprpriority = 4
removetime = -2

[State 3815, 13]
type = Projectile
triggerall = NumEnemy
trigger1 = AnimElemTime(3) = 0
projid = 7976
projanim = 99991
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 0
projremovetime = 28
velocity = 0,0
projhits = 1
projmisstime = 12
projpriority = 990
projsprpriority = 4
offset = 0,-50*fvar(22)
postype = p1
attr = A, HA
hitflag = MAFP
guardflag = MA
damage = cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.055))*fvar(13)),55*fvar(13)),cond(var(15) > 0,ceil((((fvar(11))*fvar(12)*0.010))*fvar(13)),10*fvar(13))
animtype = Hard
ground.type = High
pausetime = 0,0
sparkno = -1;s7202
guard.sparkno = -1;s7302
;sparkxy = ceil(enemynear(var(48)),pos x-pos x)*facing,ceil(enemynear(var(48)),pos y-pos y)
hitsound = s3800,1
guardsound = s3800,2
ground.slidetime = 21
ground.hittime = 21
guard.slidetime = 22
guard.hittime = 22
ground.velocity = cond(p2dist x > 0,-36,48),-36
guard.velocity = cond(p2dist x > 0,-18,18)
air.velocity = cond(p2dist x > 0,-36,36),-36
airguard.velocity = cond(p2dist x > 0,-18,18),-12
airguard.ctrltime = 26
getpower = 0,0
givepower = -800,-800
yaccel = 2.4
fall = 1
air.fall = 1
kill = 0
guard.kill = 0
fall.recover = 0
;ownpal = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3815, 14]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit >= 1
trigger2 = ProjHit7976 = 1
value = 3820
ignorehitpause = 1
persistent = 0

[State 3815, 15]
type = RemoveExplod
trigger1 = AnimElemTime(4) >= 0
id = 15040

[State 3815, 16]
type = StateTypeSet
trigger1 = AnimElem >= 5
statetype = A 
movetype = I
physics = A

[State 3815, 17]
type = Gravity
trigger1 = AnimElem >= 5

[State 3815, 18]
type = CtrlSet
trigger1 = AnimElem >= 5
value = 1

[State 3815, 19 (To Next State 52)]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
ctrl = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier / Opponent Futtobi
; 氣障壁 / 對手吹飛
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3820]
type = A
movetype = H
physics = N
ctrl = 0
anim = 5030

[State 3820, 1]
type = DestroySelf
trigger1 = IsHelper

[State 3820, 2]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3820, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3820, 4 (Target To Next State 3825)]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3825

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier / Opponent Futtobi 2
; 氣障壁 / 對手吹飛2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3825]
type = A
movetype = H
physics = N
ctrl = 0
anim = Cond(SelfAnimExist(5035),5035,5050)

[State 3825, 1]
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 3825, 2]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

[State 3825, 3]
type = VelSet ;HitVelSet
trigger1 = Time = 0
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)

[State 3825, 4]
type = VelAdd
trigger1 = Time
y = 2.4

[State 3825, 5 (Target Reverts To Its Own State)]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger2 = Time >= 600
value = 5100
ctrl = 0

[State 3825, 6]
type = Null;SelfState
triggerall = Pos Y >= -120 && Vel Y > 0
triggerall = Alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 3825, 7]
type = Null;SelfState
triggerall = Vel Y > -6
triggerall = Alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Resurrection《リザレクション》Action 1
; 復活 (蘇生) 動作1
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3990]
type = L
movetype = I
physics = N
ctrl = 0
anim = 3990
velset = 0,0
poweradd = 0
sprpriority = 0

[State 3990, 1]
type = VarSet
trigger1 = Time = 0
var(53) = 2

[State 3990, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[state 3990, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
ignorehitpause = 1

[state 3990, 4]
type = HitBy
trigger1 = 1
value = 
ignorehitpause = 1

[State 3990, 5 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s183,0
channel = 0

[State 3990, 6 (Resurrection 1P Font)] ;Resurrection字體 (1P側)
type = Explod
triggerall = AnimElemTime(7) = 0
triggerall = NumExplod(15050) = 0
trigger1 = TeamSide = 1
id = 15050
anim = 15050
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(28+(var(10))),(38+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3990, 7 (Resurrection 2P Font)] ;Resurrection字體 (2P側)
type = Explod
triggerall = AnimElemTime(7) = 0
triggerall = NumExplod(15050) = 0
trigger1 = TeamSide = 2
id = 15050
anim = 15050
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-374+(-var(10))),(-364+(-var(10))))*screenwidth/1920+screenwidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3990, 8]
type = VarAdd
triggerall = var(55) >= 1
trigger1 = AnimElemTime(7) = 0
var(55) = -1

[State 3990, 9]
type = VarAdd
triggerall = var(55) <= 0
trigger1 = AnimElemTime(7) = 0
var(55) = 0

[State 3990, 10 (Resurrection Mana Icon)]
type = Explod
triggerall = AnimElemTime(7) = 0
trigger1 = NumExplod(15051) = 0
id = 15051
anim = 15051
;space = screen
pos = cond(facing = 1,30,-30)*fvar(21),-680*fvar(22)
ownpal = 1
facing = 1
bindid = id
bindtime = -1
removetime = 60
sprpriority = 1
scale = fvar(21)*0.50,fvar(22)*0.50
removeongethit = 1
ignorehitpause = 1

[State 3990, 11]
type = PalFX
trigger1 = AnimElemTime(7) = 0
time = 53
add = 0,128,0
mul = 128,128,128
sinadd = 60,30,30,20
invertall = 0
color = 256

[State 3990, 12 (Resurrection Flash)] ;復活閃光特效
type = Explod
triggerall = GameTime %2 = 0
triggerall = fvar(32):= 0.15*(5+Random%6)
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(13) < 2
anim = 8700
bindid = id
bindtime = 1
pos = cond(facing = 1,-120+random%300,-180+random%300)*fvar(21),-60*fvar(22)+random%120
vel = 0,-28-random%5
accel = 0,0.1*(-4-random%5)
scale = fvar(32)*fvar(21)*1.00,fvar(32)*fvar(22)*1.00
sprpriority = -1+random%5
facing = facing
ownpal = 1
remappal = 8700,1
ignorehitpause = 1

[State 3990, 13]
type = LifeAdd
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(14) < 4
value = ceil(lifemax*0.020)

[State 3990, 14 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = s183,1
channel = 0

[State 3990, 15]
type = VarSet
trigger1 = AnimElemTime(26) = 1
var(53) = 0

[State 3990, 16]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 15050

[State 3990, 17]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 15051

[State 3990, 18 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Resurrection《リザレクション》Action 2
; 復活 (蘇生) 動作2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 3991]
type = L
movetype = I
physics = N
ctrl = 0
anim = 3991
velset = 0,0
poweradd = 0
sprpriority = 0

[State 3991, 1]
type = VarSet
trigger1 = Time = 0
var(53) = 2

[State 3991, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[state 3991, 3]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
ignorehitpause = 1

[state 3991, 4]
type = HitBy
trigger1 = 1
value = 
ignorehitpause = 1

[State 3991, 5 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s183,0
channel = 0

[State 3991, 6 (Resurrection 1P Font)] ;Resurrection字體 (1P側)
type = Explod
triggerall = AnimElemTime(7) = 0
triggerall = NumExplod(15050) = 0
trigger1 = TeamSide = 1
id = 15050
anim = 15050
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(28+(var(10))),(38+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,916,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3991, 7 (Resurrection 2P Font)] ;Resurrection字體 (2P側)
type = Explod
triggerall = AnimElemTime(7) = 0
triggerall = NumExplod(15050) = 0
trigger1 = TeamSide = 2
id = 15050
anim = 15050
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-374+(-var(10))),(-364+(-var(10))))*screenwidth/1920+screenwidth,cond(1.0*screenwidth/screenheight < 1.34,916,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3991, 8]
type = VarAdd
triggerall = var(55) >= 1
trigger1 = AnimElemTime(7) = 0
var(55) = -1

[State 3991, 9]
type = VarAdd
triggerall = var(55) <= 0
trigger1 = AnimElemTime(7) = 0
var(55) = 0

[State 3991, 10 (Resurrection Mana Icon)]
type = Explod
triggerall = AnimElemTime(7) = 0
trigger1 = NumExplod(15051) = 0
id = 15051
anim = 15051
;space = screen
pos = cond(facing = 1,30,-30)*fvar(21),-680*fvar(22)
ownpal = 1
facing = 1
bindid = id
bindtime = -1
removetime = 60
sprpriority = 1
scale = fvar(21)*0.50,fvar(22)*0.50
removeongethit = 1
ignorehitpause = 1

[State 3991, 11]
type = PalFX
trigger1 = AnimElemTime(7) = 0
time = 53
add = 0,128,0
mul = 128,128,128
sinadd = 60,30,30,20
invertall = 0
color = 256

[State 3991, 12 (Resurrection Flash)] ;復活閃光特效
type = Explod
triggerall = GameTime %2 = 0
triggerall = fvar(32):= 0.15*(5+random%6)
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(13) < 2
anim = 8700
bindid = id
bindtime = 1
pos = cond(facing = 1,-120+random%300,-180+random%300)*fvar(21),-60*fvar(22)+random%120
vel = 0,-28-random%5
accel = 0,0.1*(-4-random%5)
scale = fvar(32)*fvar(21)*1.00,fvar(32)*fvar(22)*1.00
sprpriority = -1+random%5
facing = facing
ownpal = 1
remappal = 8700,1

[State 3991, 13]
type = LifeAdd
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(14) < 4
value = ceil(lifemax*0.020)

[State 3991, 14 (Character Voice)]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = s183,1
channel = 0

[State 3991, 15]
type = VarSet
trigger1 = AnimElemTime(26) = 0
var(53) = 0

[State 3991, 16]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 15050

[State 3991, 17]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 15051

[State 3991, 18 (Moves End)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
