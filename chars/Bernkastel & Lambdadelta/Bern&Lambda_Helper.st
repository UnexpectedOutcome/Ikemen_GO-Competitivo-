
;---------------------------------------------------------------------------
;アルティメットゲージ表示
[Statedef 4700]
type	= S
movetype= I
physics	= N
ctrl    = 0
anim	= 1
SprPriority = -999999

[State 4700, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(4700)
ID = 4700
ignorehitpause = 1

[State 4700, Explod]
type = Explod
trigger1 = roundstate = 2
trigger1 = numexplod(4700) = 0
anim = 4700+root,var(5)
ID = 4700
pos = 3,230
postype = back
pausemovetime = 0
supermovetime = 0
supermove = 0
bindtime = -1
sprpriority = 50
ownpal = 1
ignorehitpause = 1
scale = 0.5,0.5
ignorehitpause = 1

[State 4700 透明化]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 4700 無敵化]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;アルティメットゲージ加算
[Statedef 4710]
type	= S
movetype= I
physics	= N
ctrl    = 0
anim	= 1
SprPriority = -999999

[State 4700, ゲージリセット]
type = Parentvarset
trigger1 = time = 0
var(5) = 0
ignorehitpause = 1

[State 4700, 音を鳴らす]
type = PlaySnd
trigger1 = root,var(5) = 31
value = s15, 1
persistent=0

[State 4700, ゲージが溜まる]
type = ParentvarAdd
trigger1 = roundstate = 2
trigger1 = Time >= 60
trigger1 = Time%60 = 0
trigger1 = root,var(5) < 31
var(5) = 1

[State 4700 透明化]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 4700 無敵化]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 4700, ステート変更]
type = ChangeState
trigger1 = root,stateno = 700
trigger2 = root,stateno = 705
value = 4715

;---------------------------------------------------------------------------
;アルティメットゲージ待機
[Statedef 4715]
type	= S
movetype= I
physics	= N
ctrl    = 0
anim	= 1
SprPriority = -999999

[State 4710 透明化]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 4710 無敵化]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 4710, ゲージリセット]
type = Parentvarset
trigger1 = root,var(5) != 0
var(5) = 0

[State 4710, ステート変更]
type = ChangeState
trigger1 = root,stateno != [700,750]
value = 4710

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
