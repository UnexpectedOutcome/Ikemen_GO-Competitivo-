; vim: set ts=4 sw=4 sts=4 expandtab fenc=cp932: ==============================;
;                         [ 遠野秋葉 from MELTY BLOOD ]                        ;
;==============================================================================;

;==============================================================================;
; 勝利ポーズ
;==============================================================================;
[Statedef 180]
type     = S
movetype = I
physics  = S
anim     = 180 + (Random % 3) * 2

;-------[ Select ]-------;

[State 180:         vs 遠野紫紀]
type       = ChangeState
triggerall = NumEnemy
triggerall = EnemyNear,Name = "Shiki_Tohno"
trigger1   = EnemyNear,AuthorName = "チユリ&&エス"
trigger2   = EnemyNear,AuthorName = "チユリ"
value      = 18000

[State 180:         vs 三咲紫紀]
type       = ChangeState
triggerall = NumEnemy
triggerall = EnemyNear,Name = "Misaki murasaki"
trigger1   = EnemyNear,AuthorName = "xiayu"
value      = 18000

;-------[ Movement ]-------;

[State 180:         Not Over]
type     = AssertSpecial
trigger1 = Time = [0, 300]
flag     = RoundNotOver

;-------[ Sounds ]-------;

[State 180:         Voice, 1, MBAC]
type     = PlaySnd
trigger1 = Anim = 180
trigger1 = AnimElem = 3
trigger1 = !var(50)
value    = 0, 182 + (Random % 3)
channel  = 0
volume   = 127

[State 180:         Voice, 1, MBAA]
type     = PlaySnd
trigger1 = Anim = 180
trigger1 = AnimElem = 3
trigger1 = var(50)
value    = 2, 175 + (Random % 3)
channel  = 0
volume   = 255

[State 180:         Voice, 2, MBAC]
type     = PlaySnd
trigger1 = Anim = 182
trigger1 = AnimElem = 2
trigger1 = !var(50)
value    = 0, 186
channel  = 0
volume   = 127

[State 180:         Voice, 2, MBAA]
type     = PlaySnd
trigger1 = Anim = 182
trigger1 = AnimElem = 2
trigger1 = var(50)
value    = 2, 178
channel  = 0
volume   = 255

[State 180:         Voice, 3, MBAC]
type     = PlaySnd
trigger1 = Anim = 184
trigger1 = AnimElem = 2
trigger1 = !var(50)
trigger1 = !WinTime
value    = 0, 185
channel  = 0
volume   = 127

[State 180:         Voice, 3, MBAA]
type     = PlaySnd
trigger1 = Anim = 184
trigger1 = AnimElem = 2
trigger1 = var(50)
value    = 2, 179 + (Random % 2)
channel  = 0
volume   = 255


;==============================================================================;
; イントロ
;==============================================================================;
;------------------------------------------------------------------------------;
; 通常
;------------------------------------------------------------------------------;
[Statedef 190]
type     = S
movetype = I
physics  = S
anim     = 190

;-------[ Movement ]-------;

[State 190:         Intro]
type     = AssertSpecial
trigger1 = 1
flag     = Intro

;-------[ Select ]-------;

[State 190:         Special Intro 1, for Iwakick's MvC]
type       = ChangeState
triggerall = Time = 0
triggerall = PrevStateNo != 100191
triggerall = (TeamMode = Single && RoundNo = 1) || TeamMode = Turns
triggerall = !(TeamMode = Simul)
triggerall = NumEnemy
trigger1   = Enemy(0),AuthorName = "iwakick"
trigger1   = Enemy(0),AnimExist(18000)
trigger1   = Enemy(0),StateNo != 192
trigger1   = Enemy(0),StateNo != 199
value      = 100191

[State 190:         vs 遠野紫紀]
type       = ChangeState
triggerall = NumEnemy
triggerall = EnemyNear,Name = "Shiki_Tohno"
trigger1   = EnemyNear,AuthorName = "チユリ&&エス"
trigger2   = EnemyNear,AuthorName = "チユリ"
value      = 19000

[State 190:         vs 三咲紫紀]
type       = ChangeState
triggerall = NumEnemy
triggerall = EnemyNear,Name = "Misaki murasaki"
trigger1   = EnemyNear,AuthorName = "xiayu"
value      = 19000

;-------[ Sounds ]-------;

[State 190:         Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 2
value    = ifelse(var(50), 2, 0), 190 + (Random % 5)
channel  = 0
volume   = ifelse(var(50), 255, 127)

;-------[ States ]-------;

[State 190:         Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0


;==============================================================================;
; 挑発のようなもの
;==============================================================================;
;------------------------------------------------------------------------------;
; 開始 (ループ)
;------------------------------------------------------------------------------;
[Statedef 195]
type     = S
movetype = I
physics  = S
anim     = 195
ctrl     = 0
velset   = 0, 0

;-------[ Effects ]-------;

[State 195:         Neco]
type        = Explod
trigger1    = Time = 0
anim        = 197
id          = 197
postype     = p1
pos         = 0, 0
bindtime    = -1
removetime  = -1
ownpal      = 1
sprpriority = 1
shadow      = -1
scale       = const(size.xscale), const(size.yscale)

;-------[ States ]-------;

[State 195:         Standing]
type     = ChangeState
trigger1 = command != "hold_start"
value    = 196
ctrl     = 1

;------------------------------------------------------------------------------;
; 終了
;------------------------------------------------------------------------------;
[Statedef 196]
type     = S
movetype = I
physics  = S
anim     = 196
ctrl     = 1

;-------[ States ]-------;

[State 196:         Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;==============================================================================;
; 特殊勝利
;==============================================================================;
;------------------------------------------------------------------------------;
; vs 遠野紫紀 / vs 三咲紫紀
;------------------------------------------------------------------------------;
[Statedef 18000]
type     = S
movetype = I
physics  = N
anim     = 18000
ctrl     = 0

;-------[ Movement ]-------;

[State 18000:           Not Over]
type     = AssertSpecial
trigger1 = Time < 300
flag     = RoundNotOver

;-------[ Sounds ]-------;

[State 18000:           Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 7
value    = 0, 18000
channel  = 0

;-------[ Effects ]-------;

[State 18000:           Face, 1]
type        = Explod
trigger1    = AnimElem = 7
anim        = 18001
id          = 18001
postype     = p1
pos         = 0, 0
ownpal      = 0
scale       = const(size.xscale), const(size.yscale)
sprpriority = 1


;==============================================================================;
; 特殊イントロ
;==============================================================================;
;-------------------------------------------------------------------------------;
; Iwakick氏キャラクター用 (Main)
;-------------------------------------------------------------------------------;
[Statedef 100191]
type   = L
ctrl   = 0
velset = 0, 0
anim   = 0

;-------[ Movement ]-------;

[State 19010:           Intro]
type     = AssertSpecial
trigger1 = 1
flag     = Intro
flag2    = NoShadow
flag3    = Invisible

[State 19010:           Hit Flags]
type     = HitBy
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "iwakick"
value    = S, HT

;-------[ States ]-------;

[State 19010:           Return to Intro]
type     = ChangeState
trigger1 = RoundNo = 1
trigger1 = Time = 31
value    = 190

[State 19010:           Return to Initializer]
type     = ChangeState
trigger1 = RoundNo > 1
trigger1 = Time = 31
value    = 5900

;-------------------------------------------------------------------------------;
; Iwakick氏キャラクター用 (Helper)
;-------------------------------------------------------------------------------;
[Statedef 100192]
type     = L
ctrl     = 0
velset   = 0, 0
anim     = 0

;-------[ Movement ]-------;

[State 19011:           Hit Flags]
type     = HitBy
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "iwakick"
value    = S, HT

[State 19011:           View Flags]
type     = AssertSpecial
trigger1 = 1
flag     = NoShadow
flag2    = Invisible

[State 19011:           Destroy]
type       = DestroySelf
triggerall = IsHelper
trigger1   = RoundState > 1
trigger2   = Root,Alive = 0

;------------------------------------------------------------------------------;
; vs 遠野紫紀 / vs 三咲紫紀
;------------------------------------------------------------------------------;
[Statedef 19000]
type     = S
movetype = I
physics  = N
anim     = 19000
ctrl     = 0

;-------[ Movement ]--------;

[State 19000:           Intro]
type     = AssertSpecial
trigger1 = 1
flag     = Intro

;-------[ Sounds ]-------;

[State 19000:           Voice, 1]
type     = PlaySnd
trigger1 = AnimElem = 7
value    = 0, 19000
channel  = 0

;-------[ States ]-------;

[State 19000:           Standing]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0


;==============================================================================;
; Last Revision : $Rev$
; Last Modified : $Date::                           $
;==============================================================================;
