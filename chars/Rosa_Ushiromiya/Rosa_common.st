
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; イントロ 勝利 管理ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;---------------------------------------------------------------------------
; LOSE (Time over)
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

[State 170, ボイス再生]
Type     = PlaySnd
Trigger1 = Animelem = 2
value    = s170, 0
channel  = 5


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 挑発
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 199]
Type     = S
Movetype = A
Ctrl     = 0
Anim     = 290
VelSet   = 0, 0

[State 199, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 3
Trigger2 = Animelem = 7
value    =s50, 4

[State 199, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 11
value    =s50, 1

;-------------------------------------------------[演出]

[State 199, 相手識別]
Type     = Varset
Trigger1 = !time
var(0)   = 0

[State 199, ボイス再生]
Type     = PlaySnd
Trigger1 = Animelem = 11
value    = s160, 0
channel  = 5

[State 199]
type     = CtrlSet
trigger1 = Animelem = 12
value    = 1


[State 199, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 勝利 / 分岐
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 180]
Type   = S
Ctrl   = 0
Anim   = 180
VelSet = 0,0

[State 180, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 181, ラウンド継続]
Type     = AssertSpecial
Trigger1 = Time = [0,240]
flag     = roundnotover

;-------------------------------------------------[2戦目から]

[State 181, ステート分岐]
type     = ChangeState
Trigger1 = Animelem = 2
Trigger1 = MatchOver = 1
Trigger1 = NumHelper(20000) = 0
Trigger1 = NumHelper(30000) = 0
value    = 181

;-------------------------------------------------[演出]

[State 180, 相手識別]
Type     = Varset
Trigger1 = !time
var(0)   = 999

[State 180, ランダム]
Type     = VarRandom
Trigger1 = !time
v = 1
range = 0,2

[State 180, VS戦人]
Type     = Varset
trigger1 = P2Name = "battler"
trigger2 = P2Name = "battler_ushiromiya"
trigger3 = P2Name = "battler ushiromiya"
trigger4 = P2Name = "ushiromiya_battler"
trigger5 = P2Name = "ushiromiya battler"
trigger6 = P2Name = "BATTLER USHIROMIYA"
var(0)   = 0

[State 180];ベアト,ロノウェ,ルシファー,シエスタ410,ワルギリア,ドラノール
Type     = Varset
trigger1 = P2Name = "lucifer"
trigger2 = P2Name = "Ronove"
trigger3 = P2Name = "chiester410"
trigger4 = P2Name = "chiester 410"
trigger5 = P2Name = "chiester_410"
trigger6 = P2Name = "chiester-410"
trigger7 = P2Name = "chiester410_S"
trigger8 = P2Name = "eva beatrice"
trigger9 = P2Name = "eva_beatrice"
trigger10= P2Name = "eva-beatrice"
trigger11= P2Name = "EvaBeatrice"
trigger12= P2Name = "Dlanor A.Knox"
trigger13= P2Name = "Dlanor_A.Knox"
trigger14= P2Name = "Dlanor-A.Knox"
trigger15= P2Name = "Dlanor A Knox"
trigger16= P2Name = "Dlanor_A_Knox"
trigger17= P2Name = "virgilia"
var(0)   = 1

[State 180, VS紗音]
Type     = Varset
trigger1 = P2Name = "Shanon"
var(0)   = 2

[State 180, VS絵羽]
Type     = Varset
trigger1 = P2Name = "eva beatrice"
trigger2 = P2Name = "eva_beatrice"
trigger3 = P2Name = "eva-beatrice"
trigger4 = P2Name = "EvaBeatrice"
var(0)   = 3

[State 180, VS嘉音]
Type     = Varset
trigger1 = P2Name = "Kanon"
var(0)   = 4

[State 180, VS朱志香]
Type     = Varset
trigger1 = P2Name = "Jessica"
trigger2 = P2Name = "Jessica_ushiromiya"
trigger3 = P2Name = "jesscica ushiromiya"
trigger4 = P2Name = "ushiromiya_jessica"
trigger5 = P2Name = "ushiromiya jessica"
var(0)   = 5

[State 180, VS楼座]
Type     = Varset
trigger1 = P2Name = "Rosa"
trigger2 = P2Name = "Rosa_Ushiromiya"
trigger3 = P2Name = "Rosa Ushiromiya"
trigger4 = P2Name = "Ushiromiya_Rosa"
trigger5 = P2Name = "Ushiromiya Rosa"
var(0)   = 6

[State 180, VSヱリカ]
Type     = Varset
trigger1 = P2Name = "Erika"
trigger2 = P2Name = "Furudo_Erika"
trigger3 = P2Name = "Furudo Erika"
trigger4 = P2Name = "Erika_Furudo"
trigger5 = P2Name = "Erika_Furudo"
var(0)   = 7

[State 180, VS朱志香]
Type     = Varset
trigger1 = P2Name = "George"
trigger2 = P2Name = "George_ushiromiya"
trigger3 = P2Name = "George ushiromiya"
trigger4 = P2Name = "ushiromiya_george"
trigger5 = P2Name = "ushiromiya george"
var(0)   = 8

[State 180]
Type     = PlaySnd
Trigger1 = var(0) != 999
Trigger1 = time = 10
value    = s181, 0 + var(0)
channel  = 5

;-------------------------------------------------[汎用]

[State 180]
Type     = PlaySnd
Trigger1 = (var(0) = 999) && (var(1) = 0)
Trigger1 = time = 10
value    = s180, 1
channel  = 5

[State 180]
Type     = PlaySnd
Trigger1 = (var(0) = 999) && (var(1) = 1)
Trigger1 = time = 10
value    = s180, 4
channel  = 5

[State 180]
Type     = PlaySnd
Trigger1 = (var(0) = 999) && (var(1) = 2)
Trigger1 = time = 10
value    = s181, 8
channel  = 5



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 勝利 / みんな集合
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 181]
Type   = S
Ctrl   = 0
Anim   = 181
VelSet = 0,0

[State 181, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 181, ラウンド継続]
Type     = AssertSpecial
Trigger1 = Time = [0,300]
flag     = roundnotover

;-------------------------------------------------[演出]

[State 181, ボイス];真理亞！
Type     = PlaySnd
Trigger1 = time = 12
value    = s180, 6
channel  = 5

[State 181, ボイス];怪我はない？
Type     = PlaySnd
Trigger1 = Animelem = 13
value    = s180, 7
channel  = 5

[State 181, 真理亞]
Type     = Helper
Trigger1 = Time = 10
Name     = "Maria"
Stateno  = 10181
ID       = 180
Pos      = -(backedgedist)-40, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 181, レミリア]
Type     = Helper
Trigger1 = Time = 15
Name     = "Remilia"
Stateno  = 10181
ID       = 181
Pos      = (frontedgedist)+40, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 1
size.yscale   = 1
facing   = -1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 181, レミリア]
Type     = Helper
Trigger1 = Time = 15
Name     = "Remilia"
Stateno  = 10181
ID       = 182
Pos      = (frontedgedist)+50, 0
PosType  = P1
OwnPal   = 1
facing   = -1
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; イントロ / 分岐
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 190]
Type   = S
Ctrl   = 0
VelSet = 0,0

[State 190, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 190, 変数];分岐用変数
type     = VarSet
trigger1 = !Time
var(0)   = 0

;---------------------------------------------[専用演出]

[State 190, 変数] ;VSベアトリーチェ
type     = VarSet
trigger1 = Enemynear,Name = "beatrice"
var(0)   = 1

[State 190, ChangeState]
Type     = ChangeState
Trigger1 = var(0) = 1
value    = 191

[State 192, VS EVA姉さん]
Type     = Varset
trigger1 = P2Name = "eva beatrice"
trigger2 = P2Name = "eva_beatrice"
trigger3 = P2Name = "eva-beatrice"
var(0)   = 1

[State 190]
Type     = Changestate
Trigger1 = var(0) = 1
value    = 193

[State 192, VS うーうー]
Type     = Varset
trigger1 = P2Name = "ZEUS"
trigger2 = P2Name = "remilia"
trigger3 = P2Name = "Remilia Scarlet"
trigger4 = P2Name = "Remilia_Scarlet"
trigger5 = P2Name = "remilia_h_2"
trigger6 = P2Name = "remilia_h"
trigger7 = P2Name = "Gemilia"
trigger8 = P2Name = "Igniz_Scarlet"
trigger9 = P2Name = "Scarlet_Devil"
trigger10= P2Name = "OZEUS"
trigger11= P2Name = "Remilia_K"
var(0)   = 2

[State 190]
Type     = Changestate
Trigger1 = var(0) = 2
value    = 194

;---------------------------------------------[ランダム]

[State 190, ChangeState]
Type     = ChangeState
Trigger1 = Time = 1
value    = 191 + (Random%3)



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; イントロ / 真理亞
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 191]
Type   = S
Ctrl   = 0
Anim   = 191
VelSet = 0, 0

[State 191, イントロ]
type     = AssertSpecial
trigger1 = 1
flag     = Intro

;--------------------------------[演出]

[State 191, 効果音]
Type     = PlaySnd
trigger1 = Animelem = 6
value    = s50, 0

[State 191, 台詞]
Type     = PlaySnd
trigger1 = AnimelemTime(16) = 30
value    = s190, 6
channel  = 5

;--------------------------------[ヘルパー管理]

[State 191, 楼座]
Type     = Helper
Trigger1 = Time = 60
Name     = "Rosa"
Stateno  = 10190
ID       = 10190
Pos      = -150, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 191, 真理亞]
Type     = Helper
Trigger1 = Time = 70
Name     = "Maria"
Stateno  = 10191
ID       = 10191
Pos      = -150, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

[State 191, 山羊]
Type     = Helper
Trigger1 = Animelem = 5
Name     = "Yagi"
Stateno  = 10192
ID       = 10192
Pos      = -180, 0
PosType  = P1
OwnPal   = 1
size.xscale   = 0.5
size.yscale   = 0.5
SuperMoveTime = 99999
PauseMoveTime = 99999
IgnoreHitPause = 1
Persistent = 0

;---------------------------------------------[終了]

[State 191, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0




;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; イントロ / 銃を構える
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 192]
Type   = S
Ctrl   = 0
Anim   = 190
VelSet = 0,0

[State 192, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 192, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 3
Trigger2 = Animelem = 7
value    =s50, 4

[State 192, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 14
value    =s50, 1

[State 192, イントロ]
type     = AssertSpecial
trigger1 = 1
flag     = Intro


;-------------------------------------------------[演出]

[State 192, 相手識別]
Type     = Varset
Trigger1 = !time
var(0)   = 0

[State 192, VS戦人]
Type     = Varset
trigger1 = P2Name = "battler"
trigger2 = P2Name = "battler_ushiromiya"
trigger3 = P2Name = "battler ushiromiya"
trigger4 = P2Name = "ushiromiya_battler"
trigger5 = P2Name = "ushiromiya battler"
var(0)   = 0

[State 192, VS魔女]
Type     = Varset
trigger1 = P2Name = "beatrice"
trigger2 = P2Name = "Alice_Margatroid"
trigger3 = P2Name = "Alice Margatroid"
trigger4 = P2Name = "Alice"
trigger5 = P2Name = "Alice-R"
trigger6 = P2Name = "Fallen Alice"
trigger7 = P2Name = "AliceDolls"
trigger8 = P2Name = "Marisa Kirisame"
trigger9 = P2Name = "Marisa_Kirisame"
trigger10= P2Name = "Marisa_K"
trigger11= P2Name = "Marisa_S"
trigger12= P2Name = "MegaMari"
trigger13= P2Name = "Marisa_S"
trigger14= P2Name = "Patchouli"
trigger15= P2Name = "Patchouli_Knowledge"
trigger16= P2Name = "Patchouli Knowledge"
trigger17= P2Name = "C_Patchouli"
trigger18= P2Name = "metal_patchouli"
trigger19= P2Name = "Orochi Marisa"
trigger20= P2Name = "Patchouli - S"
trigger21= P2Name = "Hiziri_Byakuren"
trigger22= P2Name = "Hiziri"
var(0)   = 1

[State 192, VSロノウェ,ルシファー,シエスタ410]
Type     = Varset
trigger1 = P2Name = "lucifer"
trigger2 = P2Name = "Ronove"
trigger3 = P2Name = "chiester410"
trigger4 = P2Name = "chiester 410"
trigger5 = P2Name = "chiester_410"
trigger6 = P2Name = "chiester-410"
trigger7 = P2Name = "chiester410_S"
var(0)   = 2

[State 192, VS楼座]
Type     = Varset
TriggerAll = teamside = 1
trigger1 = P2Name = "rosa"
trigger2 = P2Name = "rosa_ushiromiya"
trigger3 = P2Name = "rosa ushiromiya"
trigger4 = P2Name = "ushiromiya_rosa"
trigger5 = P2Name = "ushiromiya rosa"
var(0)   = 3

[State 192, VS縁寿]
Type     = Varset
trigger1 = P2Name = "ange"
trigger2 = P2Name = "ange_ushiromiya"
trigger3 = P2Name = "ange ushiromiya"
trigger4 = P2Name = "ushiromiya_ange"
trigger5 = P2Name = "ushiromiya ange"
var(0)   = 4



[State 192, VS KANON]
Type     = Varset
trigger1 = P2Name = "Kanon"
var(0)   = 11

[State 192, VS 紗音]
Type     = Varset
trigger1 = P2Name = "Shanon"
var(0)   = 12

[State 192, VS 使用人ペア]
Type       = Varset
TriggerAll = Enemy,TeamMode = Simul
trigger1   = P2Name = "Kanon" && P4Name = "Shanon"
trigger2   = P2Name = "Shanon" && P4Name = "kanon"
var(0)     = 13

[State 192, VS譲治]
Type     = Varset
trigger1 = P2Name = "george"
trigger2 = P2Name = "george_ushiromiya"
trigger3 = P2Name = "george ushiromiya"
trigger4 = P2Name = "ushiromiya_george"
trigger5 = P2Name = "ushiromiya george"
var(0)   = 14

[State 192, VS朱志香]
Type     = Varset
trigger1 = P2Name = "Jessica"
trigger2 = P2Name = "Jessica_ushiromiya"
trigger3 = P2Name = "jesscica ushiromiya"
trigger4 = P2Name = "ushiromiya_jessica"
trigger5 = P2Name = "ushiromiya jessica"
var(0)   = 15

[State 192, ボイス再生]
Type     = PlaySnd
Trigger1 = Animelem = 2
value    = s190, 0+var(0)
channel  = 5


[State 192, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; イントロ / 弾薬を装填
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 193]
Type   = S
Ctrl   = 0
Anim   = 192
VelSet = 0,0

[State 193, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 193, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 6
Trigger2 = Animelem = 10
Trigger3 = Animelem = 14
Trigger4 = Animelem = 18
Trigger5 = Animelem = 22
Trigger6 = Animelem = 26
value    =s50 ,3

[State 193, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 29
value    =s50 ,1

[State 193, イントロ]
type     = AssertSpecial
trigger1 = 1
flag     = Intro

;-------------------------------------------------[演出]

[State 193, 相手識別]
Type     = Varset
Trigger1 = !time
var(0)   = 0

[State 193, VS EVA姉さん]
Type     = Varset
trigger1 = P2Name = "eva beatrice"
trigger2 = P2Name = "eva_beatrice"
trigger3 = P2Name = "eva-beatrice"
var(0)   = 9 + (random%2)

[State 193, ボイス再生]
Type     = PlaySnd
Trigger1 = Var(0) = [9,10]
Trigger1 = Animelem = 30
value    = s190, 0+var(0)
channel  = 5

[State 193, ボイス再生]
Type     = PlaySnd
Trigger1 = Var(0) != [9,10]
Trigger1 = Animelem = 30
value    = s190, 2
channel  = 5

[State 193, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; イントロ / うーうー言うのをやめなさい！
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 194]
Type   = S
Ctrl   = 0
Anim   = 193
VelSet = 0,0

[State 194, イントロ]
type     = AssertSpecial
trigger1 = 1
flag     = Intro

[State 194, 無敵]
Type     = NotHitBy
Trigger1 = 1
Value    = SAC
Time     = 1

[State 194, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 6
Trigger2 = Animelem = 10
Trigger3 = Animelem = 14
Trigger4 = Animelem = 18
Trigger5 = Animelem = 22
value    =s50 ,3

[State 194, 画面振動]
type     = EnvShake
trigger1 = Animelem = 29
time     = 5
ampl     = -6
freq     = 120
phase    = 120

[State 194, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 29
value    =s0 ,7

[State 194, 効果音]
Type     = PlaySnd
Trigger1 = Animelem = 34
value    = s50 ,1


[State 194, ボイス]
Type     = PlaySnd
Trigger1 = Animelem = 1
value    = s4000 ,9
channel  = 5

[State 194, ボイス]
Type     = PlaySnd
Trigger1 = Animelem = 31
value    = s4000 ,12
channel  = 5

[State 194, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0




;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; コモンステート 管理ステート
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 立ち
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 0]
type = S
physics = S
sprpriority = 0

;--------------------------

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5 && Anim != 1 ;退屈モーションを追加
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

;--------------------------[退屈モーション移行]

[State 0, ChangeAnim]
Type     = ChangeAnim
Trigger1 = Anim != 1
trigger1 = time > 600 && random < 100
Value    = 1

[State 0, ChangeAnim]
Type     = null;ChangeAnim
Trigger1 = Anim = 1
trigger1 = Animtime = 0
Value    = 0

[State 0, ボイス]
Type     = Playsnd
trigger1 = Anim = 1
Trigger1 = Animelemtime(1) = 0
value    = s100, 0
channel  = 5

[State 0, ボイス]
Type     = Playsnd
trigger1 = Anim = 1
Trigger1 = Animelemtime(10) = 0
value    = s100, 1
channel  = 5

;---------------------------

[State 0, 2]
type     = VelSet
trigger1 = Time = 0
Y        = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

;---------- 異常ヘルパー削除
[State 0, DestroySelf]
Type = DestroySelf
Trigger1 = IsHelper

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ジャンプ / 準備
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 40]
type    = S
physics = S
anim    = 40
ctrl    = 0
sprpriority = 1

[State 40]
type     = Turn
trigger1 = P2Dist X < 0 && !time

[State 40, 無敵]
type     = NotHitBy
trigger1 = 1
value    = ,AT
time     = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 101 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ジャンプ / 開始
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 50]
type    = A
physics = A

;-------------------------------------------------[演出]

[State 50, 効果音]
type     = PlaySnd
trigger1 = !Time
value    = s40, 2

[State 50, ボイス]; はっ！
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X = 0)
value    = s105, 4
channel  = 5

[State 50, ボイス]; よっ
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X > 0.5)
value    = s105, 5
channel  = 5

[State 50, ボイス]; にぇひ！
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X < -0.5)
value    = s105, 6
channel  = 5


[State 50, ジャンプエフェクト]
type     = Helper
trigger1 = !Time
ID       = 8040 + (Ifelse(Vel X > 0, 1, Ifelse(Vel X < 0, 2, 0)))
postype  = p1
pos      = 0 + Ifelse(Vel X>0,-30,Ifelse(Vel X<0,30,0)), 0
name     = "jamp-Efect"
stateno  = 8040
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 50, 煙エフェクト]
type     = Helper
trigger1 = !Time
ID       = 8042
postype  = p1
pos      = 0 + Ifelse(Vel X>0,-20,Ifelse(Vel X<0,20,0)), 5
name     = "jamp-Smoke"
stateno  = 8042
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;--------------------------------------------------------------------

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
trigger1 = anim >= 41 && anim <= 43
persistent = 0
value = Anim + 3

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ハイジャンプ / 準備
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 41]
type    = S
physics = S
anim    = 40
ctrl    = 0
sprpriority = 1

[State 41, 無敵]
type     = NotHitBy
trigger1 = 1
value    = ,AT,AP
time     = 1

;-------------------------------------------------[SysVar 処理]
[State 41, 1]
type = VarSet
trigger1  = Time = 0
sysvar(1) = 0

[State 41, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 41, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 41, VelSet]
Type = VelSet
Trigger1 = AnimTime = 0
X = IfElse((SysVar(1)=1), 5, (IfElse((SysVar(1)=-1), -4, 0)))
Y = IfElse(SysVar(1)=0, -12, -11)

[State 41, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
X = 5
Y = -11

;-------------------------------------------------[ステート変更]
[State 41, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
Value    = 42
Ctrl     = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;ハイジャンプ中
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 42]
Type     = A
MoveType = A 
Physics  = N
ctrl     = 0

;-------------------------------------------------[移動]

[State 42, 重力加速度]
type     = Veladd
trigger1 = 1
y        = 0.55

;-------------------------------------------------[演出]

[State 42, 効果音]
type     = PlaySnd
trigger1 = !Time
value    = s2, 1

[State 42, ボイス]; とうっ！
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X > 0.5)
value    = s105, 7
channel  = 5

[State 42, ボイス]; えいっ！
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X = 0)
value    = s105, 8
channel  = 5

[State 42, ボイス]; はっ！
type     = PlaySnd
trigger1 = (Time = 1) && (Vel X < 0.5)
value    = s105, 9
channel  = 5


[State 42, AfterImage];残像
Type        = AfterImage
Trigger1    = !time
Time        = 30
Length      = 5
PalBright   = 0, 0, 0
PalContrast = 200, 200, 200
PalAdd      = 0, -0, 0
PalMul      = 0.8, 0.8, 0.8
Trans       = Add1
TimeGap     = 2
FrameGap    = 1

[State 42, ジャンプエフェクト]
type     = Helper
trigger1 = !Time
ID       = 8040 + Ifelse(Vel X > 0, 1, Ifelse(Vel X < 0, 2, 0))
postype  = p1
pos      = 0 + Ifelse(Vel X>0,-30,Ifelse(Vel X<0,30,0)), 0
name     = "jamp-Efect"
stateno  = 8041
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 42, 煙エフェクト]
type     = Helper
trigger1 = !Time
ID       = 8042
postype  = p1
pos      = 0 + Ifelse(Vel X>0,-20,Ifelse(Vel X<0,20,0)), 5
name     = "jamp-Smoke"
stateno  = 8043
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[system処理]

[State 42, アニメ変更]
Type     = ChangeAnim
Trigger1 = Time = 0
Value    = IfElse((Vel X >0), 51, (IfElse((Vel X <0), 52, 41)))

[State 42, VarSet]
Type = VarSet
Trigger1 = Time = 0
sysvar(1) = 0

[State 42, 行動制御]
Type     = Ctrlset
Trigger1 = Time = 1
value    = 1
 
[State 42, AssertSpecial]
Type     = AssertSpecial
Trigger1 = time < 21
Flag     = NoAirGuard

[State 42, ステート変更]
Type     = ChangeState
Trigger1 = Vel Y > 0
Value    = 51



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中ジャンプ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AirJump Start
[Statedef 45]
type    = A
physics = N
velset = 0,0

[State a, 音声]
type       = PlaySnd
trigger1   = Time = 0
value      = s40, 2

;----------------------------------------

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
trigger1 = Time = 1
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = ChangeState
trigger1 = Time = 1
value = 50
ctrl = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 着地硬直
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 52]
Type    = S
Physics = S
velset  = 0,0
Anim    = 47
ctrl    = 0

[State 52, 接地]
type     = PosSet
trigger1 = Time = 0
Y        = 0

[State 52, 効果音]
type     = PlaySnd
trigger1 = Time = 0
value    = s52,0

[State 52, 操作可能]
type     = Ctrlset
trigger1 = time = 3
value    = 1 

[State 52, 振り向き]
type     = Turn
trigger1 = AnimTime = 0
trigger1 = P2dist X < 0

[State 52, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 着地硬直(8F)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 53]
Type    = S
Physics = S
velset  = 0,0
Anim    = 48
ctrl    = 0

[State 53, 接地]
type     = PosSet
trigger1 = Time = 0
Y        = 0

[State 53, 効果音]
type     = PlaySnd
trigger1 = Time = 0
value    = s52,0

[State 53, 操作可能]
type     = Ctrlset
trigger1 = time = 7
value    = 1 

[State 53, 振り向き]
type     = Turn
trigger1 = AnimTime = 0
trigger1 = P2dist X < 0

[State 53, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 着地硬直(11F)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 54]
Type    = S
Physics = S
velset  = 0,0
Anim    = 49
ctrl    = 0

[State 54, 接地]
type     = PosSet
trigger1 = Time = 0
Y        = 0

[State 54, 効果音]
type     = PlaySnd
trigger1 = Time = 0
value    = s52,0

[State 54, 操作可能]
type     = Ctrlset
trigger1 = time = 10
value    = 1 

[State 54, 振り向き]
type     = Turn
trigger1 = AnimTime = 0
trigger1 = P2dist X < 0

[State 54, ステート変更]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 0
ctrl     = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / 前方ダッシュ / 準備
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 100]
Type     = S
MoveType = I
Physics  = S
anim     = 100
SprPriority = 1
ctrl     = 0

[State 100, AssertSpecial];特殊な状況
Type      = AssertSpecial
Trigger1  = 1
Flag      = NoWalk		;歩けない
Flag2     = NoAutoTurn	;ターンしない


;-------------------------------------------------[速度設定]

[State 100, 速度]
type     = Velset
trigger1 = 1
X        = 6

;-------------------------------------------------[演出]

[State 100, 効果音] ;走る音
type     = PlaySnd
trigger1 = time%17 = 0
value    = s40, 0
channel  = 0

[State 100, ボイス] ;待ちなさい！
Type     = PlaySnd
Trigger1 = !time
Trigger1 = Random < 100
value    = s100, 10
channel  = 5

[State 100, ダッシュエフェクトA]
type     = Helper
trigger1 = !Time
ID       = 8100
postype  = p1
pos      = 30, 0
name     = "Dash-Efect"
stateno  = 8100
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

[State 100, ダッシュエフェクトB]
type     = Helper
trigger1 = Time%17 = 0
ID       = 8105
postype  = p1
pos      = 50, 0
name     = "Dash-Efect"
stateno  = 8105
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999


;-------------------------------------------------[終了]

[State 100, ステート変更]
type       = ChangeState
triggerAll = time > 8
Trigger1   = Command != "holdfwd"
value      = 101


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / 前方ダッシュ / 停止
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 101]
Type     = S
MoveType = I
Physics  = N
anim     = 101
SprPriority = 1
ctrl     = 0

[State 101, AssertSpecial];特殊な状況
Type      = AssertSpecial
Trigger1  = 1
Flag      = NoWalk		;歩けない

[State 101, ダッシュエフェクトC]
type     = Helper
trigger1 = !Time
ID       = 8106
postype  = p1
pos      = 35, 0
name     = "Dash-Efect3"
stateno  = 8106
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999


;-------------------------------------------------[速度設定]

[State 101, 減速]
type     = VelMul
trigger1 = vel x > 0
X        = 0.93

[State 101, 効果音]
type     = PlaySnd
trigger1 = !time
value    = s40, 1

[State 101, ボイス]
type     = PlaySnd
trigger1 = !time
Trigger1 = Random < 200
value    = s100, 12
channel  = 5

;--------------------------------------------------[終了]

[State 101, ステート変更]
type       = ChangeState
Trigger1   = Animtime = 0
value      = 0
Ctrl = 1





;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / バックステップ / 準備
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 105]
Type     = S
MoveType = I
Physics  = N
anim     = 105
SprPriority = 1
ctrl     = 0

[State 105, AssertSpecial];特殊な状況
Type      = AssertSpecial
Trigger1  = 1
Flag      = NoWalk		;歩けない
Flag2     = NoAutoTurn	;ターンしない

[State 105, 無敵]
type      = Nothitby
Trigger1  = Time < 7
value     = SCA
time      = 1

[state 105, ステート属性]
type      = StateTypeSet
trigger1  = pos y < 0
statetype = A

[State 105, AssertSpecial];特殊な状況
Type      = AssertSpecial
Trigger1  = 1
Flag      = NoWalk		;歩けない
Flag2     = NoAutoTurn	;ターンしない


[State 105, AfterImage];残像
Type        = AfterImage
Trigger1    = !time
Time        = 30
Length      = 5
PalBright   = 0, 0, 0
PalContrast = 200, 200, 200
PalAdd      = 0, -0, 0
PalMul      = 0.8, 0.8, 0.8
Trans       = Add1
TimeGap     = 2
FrameGap    = 1

[State 105, バックステップ]
type     = Helper
trigger1 = !Time
ID       = 8107
postype  = p1
pos      = 0, 0
name     = "Dash-Efect3"
stateno  = 8107
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;-------------------------------------------------[速度設定]

[State 105, 速度]
Type     = VelSet
Trigger1 = !time
x = 0
y = 0

[State 105, 速度]
Type     = VelSet
Trigger1 = Animelemtime(3) = 0
x = -5
y = -3

[State 105, 重力]
type     = Gravity
trigger1 = Animelemtime(3) > 0

;-------------------------------------------------[演出]

[State 105, 効果音]
type     = PlaySnd
trigger1 = !Time
value    = s40, 2

[State 105, ボイス]
type     = PlaySnd
trigger1 = !time
Trigger1 = Random < 400
value    = s100, 13
channel  = 5

;-------------------------------------[終了へ]

[State 105, ステート変更]
Type     = ChangeState
Trigger1 = Animtime = 0
value    = 106


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / バックステップ  / 着地
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 106]
Type     = S
MoveType = I
Physics  = S
anim     = 106
SprPriority = 1
ctrl     = 0

[State 106, AssertSpecial];特殊な状況
Type      = AssertSpecial
Trigger1  = 1
Flag      = NoWalk		;歩けない

;-------------------------------------------------[速度設定]
[State 106, 減速]
type     = VelMul
trigger1 = vel x < 0
x = 0.83

[State 106, Y座標]
type     = posset
trigger1 = 1
y = 0

[State 106, 速度]
type     = Velset
trigger1 = 1
Y = 0

;-------------------------------------------------[演出]

[State 105, 効果音]
type     = PlaySnd
trigger1 = !Time
value    = s40, 4

[State 105, 着地エフェクト]
type     = Helper
trigger1 = !Time
ID       = 8045
postype  = p1
pos      = 0, 0
name     = "Step-Efect"
stateno  = 8045
helpertype = normal
keyctrl  = 0
ownpal   = 1
PauseMoveTime = 99999
supermovetime = 99999

;--------------------------------------------------[終了へ]

[State 106, ChangeState]
Type     = ChangeState
Trigger1 = AnimTime = 0
Value    = 0
Ctrl     = 1



;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
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
; HIT_TRIP2 (fall through air)
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
trigger1 = Pos Y >= 10
type = ChangeState
value = 5110


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ダウンして倒れている
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 5110]
type     = L
movetype = H
physics  = N

[State 5110, 効果音]  ;ドサッ
type           = PlaySnd
trigger1       = Time = 1
value          = s40, 3
Persistent     = 0
IgnoreHitPause = 1

[State 5110]
type     = FallenvShake
trigger1 = time = 0

[State 5110]
type       = Changeanim
persistent = 0
trigger1   = Selfanimexist(5110 + (anim % 10))
trigger1   = anim = [5081,5089]
value      = 5110 + (anim % 10)

[State 5110] 
type       = Changeanim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1   = anim != [5161,5169]
trigger2   = !Selfanimexist(5170 + (anim % 10))
value      = 5170

[State 5110] 
type       = Changeanim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1   = anim = [5161,5169]
trigger1   = Selfanimexist(5170 + (anim % 10))
value      = 5170 + (anim % 10)

[State 5110, 足払いから] 
type       = Changeanim
trigger1   = time = 0
trigger1   = PrevStateNo = 5071
value      = 5111

[State 5110]
type     = HitFallDamage
trigger1 = time = 0

[State 5110]
type     = posset
trigger1 = time = 0
y        = 0

[State 5110]
type      = varset
trigger1  = time = 0
trigger1  = GetHitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110]
type     = velset
trigger1 = time = 0
y        = 0

[State 5110] 
type       = Changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = Selfanimexist(5110 + (anim % 10))
trigger1   = Animtime = 0
trigger2   = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground anim
value      = 5110 + (anim % 10)

[State 5110] 
type       = Changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1   = Animtime = 0
trigger2   = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground frame
value      = 5110

[State 5110] 
type       = Changestate
triggerall = !alive
trigger1   = Animtime = 0
trigger2   = Sysvar(0) ;Sysvar(0) = 1 avoids hit ground frame
trigger3   = anim = [5110,5119]
value      = 5150

[State 5110]
type      = varset
trigger1  = Sysvar(0)
trigger1  = time = 0
sysvar(0) = 0

[State 5110] 
type     = Velmul
trigger1 = 1
x        = 0.85

[State 5110]
type     = ForceFeedback
trigger1 = alive
trigger1 = time = 0
time     = 8
ampl     = 240
waveform = sine

[State 5110]
type     = ForceFeedback
trigger1 = !alive
trigger1 = time = 0
ampl     = 200, 7, -.467
time     = 30
waveform = sine



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 起き上がり (その場)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

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

[State 5120]
type           = NotHitBy
trigger1       = Animtime = 0
value          =  , NT,ST,HT
time           = 5
ignorehitpause = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 移動起き上がり (前方)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 5130]
type     = L
movetype = I
physics  = N

;-------------------------------------------------[演出]

[State 5130]
type       = Changeanim
trigger1   = Anim != 5130
trigger1   = !time
value      = 5130

[State 5130]
type     = velset
trigger1 = time = 0
x        = 0

[State 5130]
type     = NotHitBy
trigger1 = 1
value    = SCA
ignorehitpause = 1

[State 5130]
type     = Playerpush
trigger1 = Animelemtime(12) < 0 
value    = 0

[State 5130]
type     = velset
trigger1 = Animelem = 5
X        = 11

[State 5130]
type     = velmul
trigger1 = Animelemtime(12) > 0
x        = 0.82

[State 5130]
type     = HitFallset
trigger1 = Animtime = 0
value    = 1

[State 5135]
type           = NotHitBy
trigger1       = Animtime = 0
value          =  , NT,ST,HT
time           = 5
ignorehitpause = 1

[State 5130]
type     = CtrlSet
trigger1 = Time = 62
value    = 1

[State 5130]
type     = Changestate
trigger1 = Animtime = 0
value    = 0
ctrl     = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 移動起き上がり (後方)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 5135]
type     = L
movetype = I
physics  = N

;-------------------------------------------------[演出]

[State 5135]
type       = Changeanim
trigger1   = Anim != 5130
trigger1   = !time
value      = 5130

[State 5135]
type     = velset
trigger1 = time = 0
x        = 0

[State 5135]
type     = NotHitBy
trigger1 = 1
value    = SCA
ignorehitpause = 1

[State 5135]
type     = Playerpush
trigger1 = Animelemtime(12) < 0 
value    = 0

[State 5135]
type     = velset
trigger1 = Animelem = 5
X        = -11

[State 5135]
type     = velmul
trigger1 = Animelemtime(12) > 0
x        = 0.82

[State 5135]
type     = HitFallset
trigger1 = Animtime = 0
value    = 1

[State 5135]
type           = NotHitBy
trigger1       = Animtime = 0
value          =  , NT,ST,HT
time           = 5
ignorehitpause = 1

[State 5135]
type     = CtrlSet
trigger1 = Time = 62
value    = 1

[State 5135]
type     = Changestate
trigger1 = Animtime = 0
value    = 0
ctrl     = 1


;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

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

[State 5150];はぁはぁ…
type       = PlaySnd
triggerall = !alive
trigger1   = anim = 5150
trigger1   = animelem = 3
value      = s5040, 4
channel    = 5

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 空中 / 受け身 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Statedef 5210]
type    = A
movetype= I
physics = N
anim    = 5210
ctrl    = 0
VelSet  = 0

[State 5210, 0]
type     = PalFX
trigger1 = !time
time     = 4
add      = 128,128,128

[State 5210, 1]
type     = PosFreeze
trigger1 = !Time
value    = 4

[State 5210, 2] ;Turn if not facing opponent
type     = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

;-------------------------------------------------[移動]

[State 5210, アニメ変更]
type       = ChangeAnim
trigger1   = Time = 3
value m     = ifelse(command="holdback", 5210, 5210)
persistent = 0

[State 5210, 前後移動]
type     = Velset
trigger1 = Time = 3
x        = ifelse(command="holdback", -3.5, 3.5)
y        = -3.5

[State 5210, 重力]
type     = veladd
trigger1 = time > 3
Y        = 0.25

;-------------------------------------------------[無敵処理]
[State 5210, 3]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 15
value = 1

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;================================================================================

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 相手 / ガードクラッシュ開始 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 8000]
type     = U
movetype = H
physics  = N
velset   = 0, 0
ctrl     = 0
sprpriority = 1

[State 8000, 0] ;ヘルパー対策
type     = DestroySelf
trigger1 = ishelper

[State 8000, 無敵]
type     = NotHitBy
trigger1 = 1
value    = SCA
time     = 1

[State 8000, ステート変更] ;地上
type = ChangeState
trigger1 = Time = 1
trigger1 = StateType != A
value    = 8001
ctrl     = 0

[State 8000, ステート変更] ;空中
type = ChangeState
trigger1 = Time = 1
trigger1 = StateType =  A
value    = 8002
ctrl     = 0


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 相手 / 地上ガードクラッシュ 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 8001]
type     = S
movetype = H
physics  = S
velset   = 0,0
ctrl     = 0
sprpriority = 1

[State 8001, 0] ;ヘルパー対策
type     = DestroySelf
trigger1 = ishelper

[State 8001, アニメ変更]
type     = ChangeAnim
trigger1 = !time
trigger1 = SelfAnimExist(5300)
value    = 5300

[State 8001, アニメ変更]
type     = ChangeAnim2
trigger1 = !time
trigger1 = !SelfAnimExist(5300)
value    = 5310

[state 8001, ステート復帰]
type = selfstate
trigger1 = time = 50
value = 0
ctrl = 1


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 相手 / 空中ガードクラッシュ 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 8002]
type     = A
movetype = H
physics  = N
ctrl     = 0
sprpriority = 1

[State 8002, 0] ;ヘルパー対策
type     = DestroySelf
trigger1 = ishelper

[State 8002, 相手アニメ変更]
Type     = ChangeAnim2
Trigger1 = !Time
Value    = 5315

;---------------------------[速度設定]

[State 8002, 速度]
Type     = velset
trigger1 = !time
X        = -2
Y        = -4

[State 8002, 速度]
Type     = veladd
trigger1 = 1
Y        = 0.255

[State 8002, ステート復帰]  ;着地
Type = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value    = 5100



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手] 壁バウンドやられ(崩れ落ち) / 硬直
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8020]
Type     = A
MoveType = H
Physics  = N
Anim     = 5030
Ctrl     = 0
VelSet   = 0, 0

;------------------------------------------[Limit処理]

[State a, 無敵];Limit制御
type     = null;NotHitBy
trigger1 = GetHitVar(fall.recovertime) >= 6000
value    = SCA
time     = 1

;------------------------------------------

[State 8020, 0] ;ヘルパー対策
type     = DestroySelf
trigger1 = ishelper

[State 8020]
type     = VelSet
trigger1 = 1
X = 0
Y = 0

[State 8020, 角度設定]
type     = Angleset
trigger1 = 1
value    = 0

[State 8020, アニメ変更]
Type     = ChangeAnim2
Trigger1 = Time = 0
Value    = 7500

[State 8020, ステート変更]
Type     = ChangeState
Trigger1 = HitShakeOver = 1
Value    = 8021


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手] 壁バウンドやられ（崩れ落ち）/ 吹き飛び
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8021]
Type     = A
MoveType = H
Physics  = N
Anim     = IfElse(SelfAnimExist(5035), 5035, 5050)

[State 8021, アニメ変更]
Type     = ChangeAnim2
Trigger1 = Anim != 5035
Trigger1 = !Time
Value    = 7501

;------------------------------------------[Limit処理]

[State a, 無敵];Limit制御
type     = null;NotHitBy
trigger1 = GetHitVar(fall.recovertime) >= 6000
value    = SCA
time     = 1

;------------------------------------------[速度処理]

[State 8021, HitVelSet]
Type     = HitVelSet
Trigger1 = Time = 0
X        = 1
Y        = 1

[State 8021, 速度]
Type     = VelSet
Trigger1 = 1
X        = -8
Y        = 0

[State 8021, 速度]  ;Y加速度
Type     = null;VelAdd
Trigger1 = 1
Y        = Ifelse(GetHitVar(YAccel)!=0 , GetHitVar(YAccel), 0.5)

;------------------------------------------[ステート変更]

[State 8021, ステート復帰]  ;着地
Type     = SelfState
Trigger1 = Vel Y > 0
Trigger1 = Pos Y >= 0
Value    = 5100

[State 8021, ステート変更]  ;壁に衝突
Type       = ChangeState
TriggerAll = Time > 0
Trigger1   = (Vel X >0) && (FrontEdgeBodyDist < 3)
Trigger2   = (Vel X <0) && (BackEdgeBodyDist  < 3)
Value      = 8022


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手]壁バウンドやられ（崩れ落ち）　壁に激突
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8022]
Type     = A
MoveType = H
Physics  = N
Anim     = 5030

;------------------------------------------[Limit処理]

[State a, 無敵];Limit制御
type     = null;NotHitBy
trigger1 = GetHitVar(fall.recovertime) >= 6000
value    = SCA
time     = 1

;------------------------------------------

[State 8022, アニメ変更]
Type     = ChangeAnim
Trigger1 = !Time
Value    = 5030

[State 8022, 速度]
Type     = VelSet
Trigger1 = !Time
Y        = 0

[State 8022, 座標固定]
Type     = PosFreeze
Trigger1 = 1

[State 8022, 画面振動]
type     = EnvShake
trigger1 = !time
time     = 10
ampl     = -6
freq     = 120
phase    = 120

[State 8022, ステート変更]
type     = ChangeState
trigger1 = Time = 5
value    = 8023


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手] 壁バウンドやられ（崩れ落ち）/ 壁バウンド後
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[StateDef 8023]
Type     = A
MoveType = H
Physics  = N

;------------------------------------------[Limit処理]

[State a, 無敵];Limit制御
type     = null;NotHitBy
trigger1 = GetHitVar(fall.recovertime) >= 6000
value    = SCA
time     = 1

;------------------------------------------

[State 8023, 振り向き]
Type     = null;Turn
Trigger1 = !Time

[State 8023, アニメ変更]
Type     = ChangeAnim
Trigger1 = Time = 2
Value    = 5050

[state 8023, 速度]
type     = velset
trigger1 = !time
X        = 1
Y        = -5

[state 8023, 速度]
type     = veladd
trigger1 = time > 2
Y        = 0.38

;------------------------------------------[ステート変更]

[State 8023, ステート復帰]  ;着地
Type = SelfState
Trigger1 = Vel Y > 0 && Pos Y >= 0
Value    = 5100



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手] ダウン追い打ち / 専用ステート
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8030]
Type     = L
MoveType = H
Physics  = N

[State 8030]
type     = PosFreeze
trigger1 = GetHitVar(hitshaketime)>=2
value    = 1

;-------------------------------------

[State 8030, 速度]
type     = Velset
trigger1 = GetHitVar(hitshaketime)>=2
Trigger1 = ((facing=-1&&enemynear,facing=1)||(facing=1&&enemynear,facing=-1))
X        = -3.5

[State 8030, 速度]
type     = Velset
trigger1 = GetHitVar(hitshaketime)>=2
Trigger1 = ((facing=-1&&enemynear,facing=-1)||(facing=1&&enemynear,facing=1))
X        =3.5

[State 8030]
type     = Velset
trigger1 = GetHitVar(hitshaketime)>=2
Y        = -2.25

[State 8030]
type     = VelAdd
trigger1 = GetHitVar(hitshaketime)<=1
Y        = 0.9

;----------------------------------------------[アニメ制御]

[State 8030]
type     = VarSet
trigger1 = !time
sysvar(2)= ifelse(GetHitVar(yvel)=0, 5080, 5090)

[State 8030]
type     = VarAdd
trigger1 = time=0&&((anim=[5081,5089])||(anim=[5111,5119]))&&SelfAnimExist(sysvar(2)+(anim%10))
sysvar(2)= anim%10

[State 8030]
type     = VarSet
trigger1 = time=0&&sysvar(2)=5090&&!SelfAnimExist(5090)
sysvar(2)= 5030

[State 8030]
type     = ChangeAnim
trigger1 = !time
value    = sysvar(2)

;-----------------------------------------------

[State 8030, ステートを返す]
type     = SelfState
trigger1 = Alive=0
value    = 5080

[State 8030]
type     = ChangeState
trigger1 = GetHitVar(hitshaketime)<=1&&Pos Y>=23
value    = 8031


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;	[相手] ダウン追い打ち / 専用ステート2
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[StateDef 8031]
Type     = L
MoveType = H
Physics  = N

[State 8031]
type     = PosSet
trigger1 = !Time
Y        = 0

[State 8031]
type     = VarSet
trigger1 = (!Time) && (GetHitVar(fall.yvel) !=0)
sysvar(1)= floor(vel y)

[State 8031]
type     = VelSet
Trigger1 = !time
X        = 0
Y        = 0

[State 8031]
type     = FallEnvShake
trigger1 = !Time


[State 8031]
type      = ChangeAnim
trigger1  = SelfAnimExist(5110+(anim%10))&&(anim=[5081,5089])
value     = 5110+(anim%10)
persistent=0

[State 8031]
type     = ChangeAnim
Trigeer1 = !time
trigger1 = (anim!=[5110,5119])&&((anim!=[5161,5169])||!SelfAnimExist(5170+(anim%10)))
value    = 5170

[State 8031]
type     = ChangeAnim
trigger1 = !time
Trigger1 = (anim!=[5110,5119])&&(anim=[5161,5169])&&SelfAnimExist(5170+(anim%10))
value    = 5170+(anim%10)

[State 8031]
type     = ChangeAnim
trigger1 = (anim=[5171,5179])&&SelfAnimExist(5110+(anim%10))&&(AnimTime=0||SysVar(0))
value    = 5110+(anim%10)
persistent=0

[State 8031]
type     = ChangeAnim
trigger1 = (Anim!=[5111,5119])&&(AnimTime=0||SysVar(0))
value    = 5110
persistent=0

;-------------------------------------------

[State 8031]
type     = Selfstate
trigger1 = time=10
value    = 5120

[State 8031]
type     = selfState
trigger1 = alive = 0
value    = 5150

[State 8031]
type     = VarSet
trigger1 = SysVar(0) && (!Time)
sysvar(0)=0



