;------------------------------------------------------------------------------
;■ボタン配置

[Remap]
a = a ;弱攻撃
b = b ;中攻撃
c = c ;強攻撃、EX必殺技用

x = x ;未使用
y = y ;簡易ボタン
z = z ;巨人操作、特殊ガード、超必殺技用

s = s ;挑発

;------------------------------------------------------------------------------

[Defaults]
command.time = 20
command.buffer.time = 1

;------------------------------------------------------------------------------
;■■聖杯必殺技■■

;------------------------------------------------------------------------------
;■カースド・カッティング・クレーター（仮）■
[Command]
name = "CCC"
command = ~D,DB,B,F,z
time = 25

;------------------------------------------------------------------------------
;■ロー・ブロッサム■
[Command]
name = "low_blossoms"
command = ~B,D,DB,z
time = 15

;------------------------------------------------------------------------------
;■瘴気結界■
[Command]
name = "miasma_barrier"
command = ~D,DB,B,z
time = 15

;------------------------------------------------------------------------------
;■アンリ地面散布■
[Command]
name = "round_anri"
command = ~D,D,z
time = 15

;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
;■■超必殺技■■

;------------------------------------------------------------------------------
;■処罰■
[Command]
name = "punish"
command = ~B,D,DF,F,z
time = 25

;------------------------------------------------------------------------------
;■悪滅■
[Command]
name = "delete"
command = ~20$B,F,z
time = 15

;------------------------------------------------------------------------------
;■影の巨人召喚■

[Command]
name = "summons_giant"
command = ~F,D,DF,z
time = 20

;■ガード
[Command]
name = "guard_giant"
command = /B+D,z
time = 1

;■前進
[Command]
name = "front_giant"
command = /F,z
time = 1

;■強攻撃
[Command]
name = "S_giant"
command = /$B,z
time = 1

;■中攻撃
[Command]
name = "M_giant"
command = /$D,z
time = 1

;■弱攻撃
[Command]
name = "L_giant"
command = z
time = 1

;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
;■■必殺技■■

;------------------------------------------------------------------------------
;■対空投げ■

[Command]
name = "antiair_b"
command = ~D, DB, B, F, b
time = 25

[Command]
name = "antiair_a"
command = ~D, DB, B, F, a
time = 25

;------------------------------------------------------------------------------
;■コマンド投げ■

[Command]
name = "ground_throw"
command = ~D, DB, B, F, c
time = 25

;------------------------------------------------------------------------------
;■ぱっちん■

[Command]
name = "anr_mi_c"
command = ~F, D, DF, c
time = 15

[Command]
name = "anr_mi_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "anr_mi_a"
command = ~F, D, DF, a
time = 15

;------------------------------------------------------------------------------
;■アンリゲイザー■

[Command]
name = "anr_geyser_c"
command = ~B, D, DB, c
time = 15

[Command]
name = "anr_geyser_b"
command = ~B, D, DB, b
time = 15

[Command]
name = "anr_geyser_a"
command = ~B, D, DB, a
time = 15

;------------------------------------------------------------------------------
;■烈風拳■

[Command]
name = "reppuu_ken_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "reppuu_ken_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "reppuu_ken_a"
command = ~D, DF, F, a
time = 15

;------------------------------------------------------------------------------
;■テレポート■

[Command]
name = "teleport_c"
command = ~D, D, c
time = 15

[Command]
name = "teleport_b"
command = ~D, D, b
time = 12

[Command]
name = "teleport_a"
command = ~D, D, a
time = 12

;------------------------------------------------------------------------------
;■地雷設置■

[Command]
name = "set_anr_c"
command = ~D, DB, B, c
time = 15

[Command]
name = "set_anr_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "set_anr_a"
command = ~D, DB, B, a
time = 15

;------------------------------------------------------------------------------







;------------------------------------------------------------------------------
;■ハイジャンプ
[Command]
name = "Hi_Jump"
command = ~$D,$U
time = 12

;■バックジャンプ
[Command]
name = "holdupback" 
command = /UB
time = 1

;------------------------------------------------------------------------------
;■ダッシュ

[Command]
name = "FF"
command = F, F
time = 20

[Command]
name = "BB"
command = B, B
time = 20

;------------------------------------------------------------------------------
;■受身

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

;------------------------------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "front_c"
command = /$F,c
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "front_b"
command = /$F,b
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "adg"
command = /$B,a+b
time = 4

[Command]
name = "burst"
command = a+b+c
time = 1

[Command]
name = "barrier"
command = /$U,a+b+c
time = 1

;通常投げ
[Command]
name = "throw"
command = b+c
time = 1

;バースト簡易コマンド
[Command]
name = "burst"
command = /$D,y
time = 1

;------------------------------------------------------------------------------

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "fwd"
command = F
time = 1

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

;------------------------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "hold_a"
command = ~90a
time = 1

[Command]
name = "hold_b"
command = ~90b
time = 1

[Command]
name = "hold_c"
command = ~90c
time = 1

[Command]
name = "!holdz"
command = ~z
time = 1

;==============================================================================
;■AI起動用コマンド

[Command]
name = "AI00"
command = a,a,a,a
time = 0

[Command]
name = "AI01"
command = a,a,a,b
time = 0

[Command]
name = "AI02"
command = a,a,b,a
time = 0

[Command]
name = "AI03"
command = a,b,a,a
time = 0

[Command]
name = "AI04"
command = b,a,a,a
time = 0

[Command]
name = "AI05"
command = a,b,a,b
time = 0

[Command]
name = "AI06"
command = a,b,b,a
time = 0

[Command]
name = "AI07"
command = a,a,b,b
time = 0

[Command]
name = "AI08"
command = b,a,b,a
time = 0

[Command]
name = "AI09"
command = b,b,a,a
time = 0

[Command]
name = "AI10"
command = b,a,a,b
time = 0

[Command]
name = "AI11"
command = b,b,b,a
time = 0

[Command]
name = "AI12"
command = b,b,a,b
time = 0

[Command]
name = "AI13"
command = b,a,b,b
time = 0

[Command]
name = "AI14"
command = a,b,b,b
time = 0

[Command]
name = "AI15"
command = a,a,a,c
time = 0

[Command]
name = "AI16"
command = a,a,c,a
time = 0

[Command]
name = "AI17"
command = a,c,a,a
time = 0

[Command]
name = "AI18"
command = c,a,a,a
time = 0

[Command]
name = "AI19"
command = a,c,a,c
time = 0

[Command]
name = "AI20"
command = a,c,c,a
time = 0

[Command]
name = "AI21"
command = a,a,c,c
time = 0

[Command]
name = "AI22"
command = c,a,c,a
time = 0

[Command]
name = "AI23"
command = c,c,a,a
time = 0

[Command]
name = "AI24"
command = c,a,a,c
time = 0

[Command]
name = "AI25"
command = c,c,c,a
time = 0

[Command]
name = "AI26"
command = c,c,a,c
time = 0

[Command]
name = "AI27"
command = c,a,c,c
time = 0

[Command]
name = "AI28"
command = a,c,c,c
time = 0

[Command]
name = "AI29"
command = b,b,b,c
time = 0

[Command]
name = "AI30"
command = b,b,c,b
time = 0

[Command]
name = "AI31"
command = b,c,b,b
time = 0

[Command]
name = "AI32"
command = c,b,b,b
time = 0

[Command]
name = "AI33"
command = b,c,b,c
time = 0

[Command]
name = "AI34"
command = b,c,c,b
time = 0

[Command]
name = "AI35"
command = b,b,c,c
time = 0

[Command]
name = "AI36"
command = c,b,c,b
time = 0

[Command]
name = "AI37"
command = c,c,b,b
time = 0

[Command]
name = "AI38"
command = c,b,b,c
time = 0

[Command]
name = "AI39"
command = c,c,c,b
time = 0

[Command]
name = "AI40"
command = c,c,b,c
time = 0

[Command]
name = "AI41"
command = c,b,c,c
time = 0

[Command]
name = "AI42"
command = b,c,c,c
time = 0

[Command]
name = "AI43"
command = a,a,b,c
time = 0

[Command]
name = "AI44"
command = a,b,a,c
time = 0

;==============================================================================








































;==============================================================================
[Statedef -1]

;==============================================================================
;■バージョンチェック

[State -1]
type = null
triggerall = RoundState=0&&numenemy>0
trigger1 = (var(25)&(Ceil(2.0**20)))=0
trigger1 = Ceil(var(1)%1000)=0
trigger1 = var(1):=Ceil(var(1)/1000)*1000+(100)
IgnoreHitPause = 1

;==============================================================================
;■コマンド先行入力記録

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="summons_giant"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(7000)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="delete"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1700)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="punish"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1800)
IgnoreHitPause = 1

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="round_anri"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(3100)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="miasma_barrier"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(3300)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="low_blossoms"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(3200)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="CCC"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(3400)
IgnoreHitPause = 1

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="hold_a"||command="hold_b"||command="hold_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1600)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="teleport_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1100)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="teleport_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1101)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="teleport_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1102)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="set_anr_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1200)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="set_anr_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1201)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="set_anr_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1202)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="reppuu_ken_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1000)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="reppuu_ken_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1001)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="reppuu_ken_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1002)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_geyser_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1300)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_geyser_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1301)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_geyser_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1302)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_mi_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1400)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_mi_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1401)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="anr_mi_c"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1402)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="antiair_a"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1500)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="antiair_b"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(1530)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="ground_throw"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(2800)
IgnoreHitPause = 1

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="FF"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(100)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="BB"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(105)
IgnoreHitPause = 1

[State -1]
type = null
triggerall = var(59)<=0
triggerall = command="Hi_Jump"
trigger1 = var(17):=Ceil(var(53)/10000000%100)+100*(41)
IgnoreHitPause = 1

;==============================================================================






;==============================================================================
;■アンリ地面散布
[State -1, round_anri]
type = ChangeState
Value = 3100
triggerall = var(59)<=0
triggerall = (var(57)&(Ceil(2.0**24)))
triggerall = !NumHelper(3105)
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=3100	;コマンド先行入力系
triggerall = Ceil(var(54)%10)>=2				;2冊消費
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================
;■瘴気結界
[State -1, miasma_barrier]
type = ChangeState
Value = 3300
triggerall = var(59)<=0
triggerall = (var(57)&(Ceil(2.0**25)))
triggerall = !NumHelper(3310)&&!NumHelper(3205)			;瘴気結界ヘルパー＆花弁本体ヘルパー
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=3300	;コマンド先行入力系
triggerall = Ceil(var(54)%10)>=3				;3冊消費
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================
;■ロー・ブロッサム
[State -1, low_blossoms]
type = ChangeState
Value = 3200
triggerall = var(59)<=0
triggerall = (var(57)&(Ceil(2.0**26)))
triggerall = !NumHelper(3205)&&!NumHelper(3310)			;花弁本体ヘルパー＆瘴気結界ヘルパー
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=3200	;コマンド先行入力系
triggerall = Ceil(var(54)%10)>=4				;4冊消費
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================
;■カースド・カッティング・クレーター（仮）
[State -1, CCC]
type = ChangeState
Value = 3400
triggerall = var(59)<=0
triggerall = (var(57)&(Ceil(2.0**27)))
triggerall = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=3400	;コマンド先行入力系
triggerall = Ceil(var(54)%10)>=7				;7冊消費
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------



;==============================================================================
;■処罰
[State -1, punish]
type = ChangeState
Value = 1800
triggerall = var(59)<=0
triggerall = (var(58)&(Ceil(2.0**28)))
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1800
triggerall = (power=PowerMax||power>=3000)&&fvar(20)>=600
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================
;■悪滅
[State -1, delete]
type = ChangeState
Value = 1700
triggerall = var(59)<=0
triggerall = (var(58)&(Ceil(2.0**27)))
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1700
triggerall = (power=PowerMax||power>=4000)&&fvar(20)>=600
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================
;■巨人召喚
[State -1, summons_giant]
type = ChangeState
Value = 7000
triggerall = var(59)<=0
triggerall = (var(58)&(Ceil(2.0**26)))
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=7000
triggerall = (power=PowerMax||power>=7000)&&fvar(20)>1
triggerall = !NumHelper(7005)
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||stateno=[130,131]
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
























;------------------------------------------------------------------------------
;■EXコマンド投げ
[State -1, ground_throw]
type = ChangeState
Value = 2800
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=2800
triggerall = power>=1000
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■対空投げ　中
[State -1, antiair_M]
type = ChangeState
Value = 1530
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1530
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■対空投げ　小
[State -1, antiair_L]
type = ChangeState
Value = 1500
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1500
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■ぱっちん　EX
[State -1, anr_pattin_EX]
type = ChangeState
Value = 1402
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1402
triggerall = power>=1000
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■ぱっちん　中
[State -1, anr_pattin_M]
type = ChangeState
Value = 1401
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1401
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact
trigger4 = Ceil(var(52)/100%10)>=1&&(stateno=1000&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger5 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger5 = NumHelper(1020)
trigger5 = helper(1020),MoveContact
trigger6 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger6 = NumHelper(1050)
trigger6 = helper(1050),MoveContact
trigger7 = Ceil(var(52)/100%10)>=1&&(stateno=1001&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger7 = NumHelper(1021)
trigger7 = helper(1021),MoveContact
trigger8 = Ceil(var(52)/100%10)=0&&(stateno=1001&&time>37)
trigger8 = NumHelper(1021)
trigger8 = helper(1021),MoveContact

trigger9 = numhelper(9002)
trigger9 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■ぱっちん　中_追加入力
[State -1, anr_pattin_M+]
type = ChangeState
Value = 1405
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1001
triggerall = statetype!=A
trigger1 = stateno=1401&&time=[26,33]

;------------------------------------------------------------------------------
;■ぱっちん　小
[State -1, anr_pattin_L]
type = ChangeState
Value = 1400
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1400
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact
trigger4 = Ceil(var(52)/100%10)>=1&&(stateno=1000&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger5 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger5 = NumHelper(1020)
trigger5 = helper(1020),MoveContact
trigger6 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger6 = NumHelper(1050)
trigger6 = helper(1050),MoveContact
trigger7 = Ceil(var(52)/100%10)=0&&(stateno=1001&&time>37)
trigger7 = NumHelper(1021)
trigger7 = helper(1021),MoveContact
trigger8 = Ceil(var(52)/100%10)>=1&&(stateno=1001&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger8 = NumHelper(1021)
trigger8 = helper(1021),MoveContact

trigger9 = numhelper(9002)
trigger9 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================






;------------------------------------------------------------------------------
;■アンリゲイザー　EX
[State -1, anr_geyser_EX]
type = ChangeState
Value = 1302
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1302
triggerall = power>=1000
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■アンリゲイザー　中
[State -1, anr_geyser_M]
type = ChangeState
Value = 1301
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1301
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■アンリゲイザー　小
[State -1, anr_geyser_L]
type = ChangeState
Value = 1300
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1300
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================

;------------------------------------------------------------------------------
;■烈風拳　EX
[State -1, reppuu_ken_EX]
type = ChangeState
Value = 1002
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1002
triggerall = power>=1000
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = ((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact)

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■烈風拳　中
[State -1, reppuu_ken_M]
type = ChangeState
Value = 1001
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1001
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■烈風拳　小
[State -1, reppuu_ken_L]
type = ChangeState
Value = 1000
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1000
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,459]))&&movecontact

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================

;------------------------------------------------------------------------------
;■地雷設置　EX
[State -1, set_anr_EX]
type = ChangeState
Value = 1202
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1202
triggerall = power>=1000
triggerall = !NumHelper(1280)&&!NumHelper(1285)
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■地雷設置　中
[State -1, set_anr_M]
type = ChangeState
Value = 1201
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1201
triggerall = !NumHelper(1260)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,499]))&&movecontact

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■地雷設置　小
[State -1, set_anr_L]
type = ChangeState
Value = 1200
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1200
triggerall = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = Ceil(var(52)/100%10)>=1&&((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = Ceil(var(52)/100%10)=0&&((stateno=[200,235])||(stateno=[250,299])||(stateno=[400,499]))&&movecontact

trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■地雷（中）　強制爆破
[State -1, set_anr_L]
type = ChangeState
Value = 1205
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1201
triggerall = NumHelper(1260)
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno=[200,299])||(stateno=[400,499])
trigger3 = (stateno=[1000,1002])&&time>20
trigger4 = (stateno=[1400,1402])&&time>20

trigger5 = numhelper(9002)
trigger5 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================

;------------------------------------------------------------------------------
;■テレポート　EX
[State -1, teleport_EX]
type = ChangeState
Value = 1102
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1102
triggerall = power>=1000
triggerall = statetype!=A
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = (stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger4 = (stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0)

trigger5 = numhelper(9002)
trigger5 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■テレポート　中
[State -1, teleport_M]
type = ChangeState
Value = 1101
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1101
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact

trigger3 = (stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger4 = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)

trigger5 = numhelper(9002)
trigger5 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■テレポート　小
[State -1, teleport_L]
type = ChangeState
Value = 1100
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1100
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = (stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger4 = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)

trigger5 = numhelper(9002)
trigger5 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■弓攻撃
[State -1,]
type = ChangeState
Value = 1600
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=1600
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
trigger3 = stateno=420&&numhelper(424)=1
trigger3 = helper(424),movecontact
trigger4 = stateno=420&&numhelper(425)=1
trigger4 = helper(425),movecontact
trigger5 = (stateno=[440,442])&&numhelper(450)=1
trigger5 = helper(450),movecontact
trigger6 = (stateno=[440,442])&&numhelper(451)=1
trigger6 = helper(451),movecontact
trigger7 = (stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger8 = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)

trigger9 = numhelper(9002)
trigger9 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;==============================================================================

;------------------------------------------------------------------------------
;■前ダッシュ
[State -1, Run F]
type = ChangeState
Value = 100
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=100
triggerall = statetype=S
trigger1 = ctrl

;□相殺
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = numhelper(9002)
trigger2 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■バックダッシュ
[State -1, Run B]
type = ChangeState
Value = 105
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=105
triggerall = statetype=S
trigger1 = ctrl||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))

;□←大攻撃
trigger2 = Ceil(var(52)/100%10)>=1&&stateno=235&&movecontact&&time>5
;□しゃがみ→大攻撃
trigger3 = Ceil(var(52)/100%10)>=1&&stateno=460&&movecontact&&time>32
;□相殺
trigger4 = Ceil(var(52)/100%10)>=2
trigger4 = numhelper(9002)
trigger4 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■空中ダッシュ
[State -1,AirRun F]
type = ChangeState
Value = 110
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=100
triggerall = statetype=A
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
trigger1 = stateno!=110&&pos y<=-20&&ctrl

;□J中先端部ヒットで空中ダッシュキャンセル可能
trigger2 = NumTarget(642)>0
trigger2 = Target(642),Time>=0
trigger2 = stateno=640&&movecontact>=1&&movecontact<=4
trigger2 = AnimElemTime(9)>=1&&AnimElemTime(10)<0
;□相殺
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■空中バックダッシュ
[State -1, AirRun B]
type = ChangeState
Value = 115
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=105
triggerall = statetype=A
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
trigger1 = stateno!=115&&ctrl

;□J中先端部ヒットで空中ダッシュキャンセル可能
trigger2 = NumTarget(642)>0
trigger2 = Target(642),Time>=0
trigger2 = stateno=640&&movecontact>=1&&movecontact<=4
trigger2 = AnimElemTime(9)>=1&&AnimElemTime(10)<0
;□J大
trigger3 = stateno=650&&numhelper(662)=1
trigger3 = helper(662),movecontact&&time>5
trigger4 = stateno=650&&numhelper(663)=1
trigger4 = helper(663),movecontact&&time>5
trigger5 = stateno=650&&numhelper(664)=1
trigger5 = helper(664),movecontact&&time>5
;□相殺
trigger6 = Ceil(var(52)/100%10)>=2
trigger6 = numhelper(9002)
trigger6 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)

;------------------------------------------------------------------------------
;■ハイジャンプ
[State -1]
type = ChangeState
Value = 41
triggerall = var(59)<=0
triggerall = Ceil(var(17)%100)>=1&&Ceil(var(17)/100)=41
triggerall = statetype=S
trigger1 = ctrl
trigger2 = stateno=52&&time>=5
trigger3 = stateno=230&&movecontact&&time>30&&Ceil(var(52)/100%10)>=1
trigger4 = stateno=235&&((movecontact&&Ceil(var(52)/100%10)>=1)||movehit)&&time>13
trigger5 = stateno=235&&movecontact&&enemynear(var(16)),statetype=A

;■二段ジャンプ
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)<=0
triggerall = command="holdup"
triggerall = statetype=A
triggerall = var(15)=0
trigger1 = stateno!=45&&pos y<=-35
trigger1 = ctrl

;------------------------------------------------------------------------------
;■通常投げ
[State -1, throw]
type = ChangeState
Value = 800
triggerall = var(59)<=0
triggerall = statetype=S
triggerall = stateno!=100&&ctrl
trigger1 = command="y"&&( command="holdfwd"||command="holdback")
trigger2 = command="throw"

;------------------------------------------------------------------------------
;■バースト
[State -1, burst]
type = ChangeState
Value = 8200
triggerall = var(59)<=0
triggerall = command="burst"
triggerall = stateno!=8200&&RoundState=2&&Alive=1
triggerall = (var(49)&(Ceil(2.0**29)))=0
trigger1 = Ceil(var(52)/100%10)<=1&&statetype!=A
trigger1 = fvar(20)>=1600+Ceil(var(18)/100000%10)*400||fvar(20)>=2800
trigger1 = (stateno!=[800,810])&&(stateno!=1175)&&(stateno!=[1700,2899])&&stateno!=7000
trigger1 = var(25):=var(25)+IfElse(movetype=H&&(stateno!=[150,159]),(2*!(var(25)&(2))),0)
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = fvar(20)>=3200+Ceil(var(18)/100000%10)*800||fvar(20)>=5600
trigger2 = (stateno!=[800,810])&&(stateno!=1175)&&(stateno!=[1700,2899])&&stateno!=7000

;==============================================================================

;------------------------------------------------------------------------------
;■挑発	
[State -1, Taunt]
type = ChangeState
Value = 195
triggerall = var(59)<=0
triggerall = command="start"
triggerall = statetype!=A
trigger1 = ctrl

;------------------------------------------------------------------------------
;■立ち←小攻撃
[State -1, Stand B_L]
type = ChangeState
Value = 205
triggerall = var(59)<=0
triggerall = command="back_a"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=210&&movecontact&&time>15
trigger4 = stateno=220&&movecontact&&time>25
trigger5 = stateno=230&&movecontact&&time>16
trigger6 = stateno=235&&movecontact&&time>7
trigger7 = stateno=240&&movecontact&&time>13
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち小攻撃
[State -1, Stand L]
type = ChangeState
Value = 200
triggerall = var(59)<=0
triggerall = command="a"&&command!="holddown"
triggerall = IfElse(stateno=200,1,(var(50)&(1))=0)
triggerall = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger1 = statetype=S&&ctrl
trigger2 = (stateno=200&&time>12)||(stateno=200&&movecontact&&time>8)
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=240&&movecontact&&time>13
trigger9 = stateno=400&&movecontact&&time>5
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movecontact&&time>23
trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movecontact&&time>23
trigger12 = (stateno=[440,442])&&numhelper(450)=1
trigger12 = helper(450),movecontact&&time>25
trigger13 = (stateno=[440,442])&&numhelper(451)=1
trigger13 = helper(451),movecontact&&time>25
trigger14 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち←中攻撃
[State -1, Stand F_M]
type = ChangeState
Value = 220
triggerall = var(59)<=0
triggerall = command="back_b"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=230&&movecontact&&time>16
trigger6 = stateno=235&&movecontact&&time>7
trigger7 = stateno=240&&movecontact&&time>13
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち中攻撃
[State -1, Stand M]
type = ChangeState
Value = 210
triggerall = var(59)<=0
triggerall = command="b"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=220&&movecontact&&time>25
trigger5 = stateno=230&&movecontact&&time>16
trigger6 = stateno=235&&movecontact&&time>7
trigger7 = stateno=240&&movecontact&&time>13
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち←大攻撃
[State -1, Stand B_S]
type = ChangeState
Value = 235
triggerall = var(59)<=0
triggerall = command="back_c"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**14)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=240&&movecontact&&time>13
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち→大攻撃
[State -1, Stand F_S]
type = ChangeState
Value = 240
triggerall = var(59)<=0
triggerall = command="front_c"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**13)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■立ち大攻撃
[State -1, Stand S]
type = ChangeState
Value = 230
triggerall = var(59)<=0
triggerall = command="c"&&command!="holddown"
triggerall = (var(50)&(Ceil(2.0**12)))=0
trigger1 = statetype=S&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=235&&movecontact&&time>7
trigger7 = stateno=240&&movecontact&&time>13
trigger8 = stateno=400&&movecontact&&time>5
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movecontact&&time>23
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movecontact&&time>23
trigger11 = (stateno=[440,442])&&numhelper(450)=1
trigger11 = helper(450),movecontact&&time>25
trigger12 = (stateno=[440,442])&&numhelper(451)=1
trigger12 = helper(451),movecontact&&time>25
trigger13 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■しゃがみ小攻撃
[State -1, Crouching L]
type = ChangeState
Value = 400
triggerall = var(59)<=0
triggerall = command="a"&&command="holddown"
triggerall = IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
triggerall = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger1 = statetype=C&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=240&&movecontact&&time>13
trigger9 = stateno=400&&movecontact&&time>5
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movecontact&&time>23
trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movecontact&&time>23
trigger12 = (stateno=[440,442])&&numhelper(450)=1
trigger12 = helper(450),movecontact&&time>25
trigger13 = (stateno=[440,442])&&numhelper(451)=1
trigger13 = helper(451),movecontact&&time>25
trigger14 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■しゃがみ中攻撃
[State -1, Crouching M]
type = ChangeState
Value = 420
triggerall = var(59)<=0
triggerall = command="b"&&command="holddown"
triggerall = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger1 = statetype=C&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=240&&movecontact&&time>13
trigger9 = stateno=400&&movecontact&&time>5
trigger10 = (stateno=[440,442])&&numhelper(450)=1
trigger10 = helper(450),movecontact&&time>25
trigger11 = (stateno=[440,442])&&numhelper(451)=1
trigger11 = helper(451),movecontact&&time>25
trigger12 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■しゃがみ→大攻撃
[State -1, Crouching F_S]
type = ChangeState
Value = 460
triggerall = var(59)<=0
triggerall = command="front_c"&&command="holddown"
triggerall = (var(50)&(Ceil(2.0**16)))=0
trigger1 = statetype=C&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=240&&movecontact&&time>13
trigger9 = stateno=400&&movecontact&&time>5
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movecontact&&time>23
trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movecontact&&time>23
trigger12 = (stateno=[440,442])&&numhelper(450)=1
trigger12 = helper(450),movecontact&&time>25
trigger13 = (stateno=[440,442])&&numhelper(451)=1
trigger13 = helper(451),movecontact&&time>25

;------------------------------------------------------------------------------
;■しゃがみ大攻撃
[State -1, Crouching S]
type = ChangeState
Value = 440
triggerall = var(59)<=0
triggerall = command="c"&&command="holddown"
triggerall = (var(50)&(Ceil(2.0**15)))=0
trigger1 = statetype=C&&ctrl
trigger2 = stateno=200&&movecontact&&time>8
trigger3 = stateno=205&&movecontact&&time>11
trigger4 = stateno=210&&movecontact&&time>15
trigger5 = stateno=220&&movecontact&&time>25
trigger6 = stateno=230&&movecontact&&time>16
trigger7 = stateno=235&&movecontact&&time>7
trigger8 = stateno=240&&movecontact&&time>13
trigger9 = stateno=400&&movecontact&&time>5
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movecontact&&time>23
trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movecontact&&time>23
trigger12 = stateno=460&&movecontact&&time>32

;------------------------------------------------------------------------------
;■ジャンプキャンセル
[State -1, Jump CS]
type = ChangeState
Value = 40
triggerall = var(59)<=0
triggerall = command="holdup"&&command!="holddown"
triggerall = (statetype=S)||(statetype=C)
triggerall = Ceil(var(52)/100%10)>=1
trigger1 = ctrl
trigger2 = stateno=200&&movecontact&&time>9
trigger3 = stateno=210&&movecontact&&time>19
trigger4 = stateno=220&&movecontact&&time>25
trigger5 = stateno=240&&((Ceil(var(52)/100%10)>=2&&movecontact)||movehit)&&time>20
trigger6 = stateno=400&&movecontact&&time>10

;------------------------------------------------------------------------------
;■しゃがみ中攻撃バックジャンプキャンセル
[State -1, B_Jump CS]
type = ChangeState
Value = 40
triggerall = var(59)<=0
triggerall = command="holdupback"&&command!="holddown"
triggerall = statetype=C
triggerall = Ceil(var(52)/100%10)>=1
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movecontact&&time>23
trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movecontact&&time>23

;------------------------------------------------------------------------------
;■ジャンプ小攻撃
[State -1, Jump L]
type = ChangeState
Value = 630
triggerall = var(59)<=0
triggerall = command="a"
triggerall = (var(50)&(Ceil(2.0**19)))=0
trigger1 = statetype=A&&ctrl
trigger2 = stateno=630&&movecontact&&time>14
trigger3 = stateno=640&&movecontact&&time>10

;------------------------------------------------------------------------------
;■ジャンプ↓中攻撃
[State -1, Jump D_M]
type = ChangeState
Value = 645
triggerall = var(59)<=0
triggerall = command="b"&&command="holddown"
triggerall = (var(50)&(Ceil(2.0**23)))=0
trigger1 = statetype=A&&ctrl
trigger2 = stateno=630&&movecontact&&time>6
trigger3 = stateno=640&&movecontact&&time>10

;------------------------------------------------------------------------------
;■ジャンプ中攻撃
[State -1, Jump M]
type = ChangeState
Value = 640
triggerall = var(59)<=0
triggerall = command="b"
triggerall = (var(50)&(Ceil(2.0**22)))=0
trigger1 = statetype=A&&ctrl
trigger2 = stateno=630&&movecontact&&time>6

;------------------------------------------------------------------------------
;■ジャンプ↓大攻撃
[State -1, Jump D_S]
type = ChangeState
Value = 670
triggerall = var(59)<=0
triggerall = command="c"&&command="holddown"
triggerall = (var(50)&(Ceil(2.0**26)))=0
triggerall = !numhelper(681)&&!numhelper(682)
trigger1 = statetype=A&&ctrl
trigger2 = stateno=630&&movecontact&&time>6
trigger3 = stateno=640&&movecontact&&time>10

;------------------------------------------------------------------------------
;■ジャンプ大攻撃
[State -1, Jump S]
type = ChangeState
Value = 650
triggerall = var(59)<=0
triggerall = command="c"
triggerall = (var(50)&(Ceil(2.0**25)))=0
trigger1 = statetype=A&&ctrl
trigger2 = stateno=630&&movecontact&&time>6
trigger3 = stateno=640&&movecontact&&time>10
trigger4 = stateno=645&&((Ceil(var(52)/100%10)>=2&&movecontact)||movehit)&&time>11

;==============================================================================

;------------------------------------------------------------------------------
;■EXガード
[State -1, EX_Guard]
type = ChangeState
Value = 120
triggerall = var(59)<=0
triggerall = command="holdz"&&command="holdback"
triggerall = statetype!=A&&fvar(20)>0
trigger1 = ctrl

;------------------------------------------------------------------------------


































;==============================================================================
;■デフォルトAI記述■

[State -1, AIセット]
type = VarSet
triggerall = var(59)=0
triggerall = RoundState<=2
triggerall = numhelper(21000)
trigger1 = Command="AI00"||Command="AI01"||Command="AI02"||Command="AI03"||Command="AI04"
trigger2 = Command="AI05"||Command="AI06"||Command="AI07"||Command="AI08"||Command="AI09"
trigger3 = Command="AI10"||Command="AI11"||Command="AI12"||Command="AI13"||Command="AI14"
trigger4 = Command="AI15"||Command="AI16"||Command="AI17"||Command="AI18"||Command="AI19"
trigger5 = Command="AI20"||Command="AI21"||Command="AI22"||Command="AI23"||Command="AI24"
trigger6 = Command="AI25"||Command="AI26"||Command="AI27"||Command="AI28"||Command="AI29"
trigger7 = Command="AI30"||Command="AI31"||Command="AI32"||Command="AI33"||Command="AI34"
trigger8 = Command="AI35"||Command="AI36"||Command="AI37"||Command="AI38"||Command="AI39"
trigger9 = Command="AI40"||Command="AI41"||Command="AI42"||Command="AI43"||Command="AI44"
trigger10 = (var(58)&(Ceil(2.0**30)))			;□常時AI起動
trigger11 = PalNo=[10,12]				;□アーケードモードP2用AI常時起動
var(59) = Ceil(helper(21000),var(59)%10)
IgnoreHitPause = 1

;------------------------------------------------------------------------------

[State -1, AI起動テスト]
type = null
triggerall = 0	;★停止中
triggerall = var(59)<=0
triggerall = RoundState<=2
triggerall = numhelper(21000)
trigger1 = command="start"
trigger1 = var(59):=Ceil(helper(21000),var(59)%10)	;□AIレベルセット
IgnoreHitPause = 1

[State -1, 1P側AIテスト]
type = null
triggerall = var(59)<=0
triggerall = RoundState<=2
triggerall = numhelper(21000)
triggerall = TeamSide=1
triggerall = numenemy>0
triggerall = ID<enemy(0),ID
trigger1 = (var(46)&(Ceil(2.0**21)))=1	;〓射撃回避系スイッチ
trigger1 = var(46):=var(46)+(Ceil(2.0**21)*!(var(46)&(Ceil(2.0**21))))
trigger2 = (var(46)&(Ceil(2.0**22)))=1	;〓巨人操作系スイッチ
trigger2 = var(46):=var(46)+(Ceil(2.0**22)*!(var(46)&(Ceil(2.0**22))))
trigger3 = (var(46)&(Ceil(2.0**23)))=1	;〓空中動作系スイッチ
trigger3 = var(46):=var(46)+(Ceil(2.0**23)*!(var(46)&(Ceil(2.0**23))))
trigger4 = (var(46)&(Ceil(2.0**24)))=1	;〓フラグ系スイッチ
trigger4 = var(46):=var(46)+(Ceil(2.0**24)*!(var(46)&(Ceil(2.0**24))))
trigger5 = (var(46)&(Ceil(2.0**25)))=1	;〓反撃技系スイッチ
trigger5 = var(46):=var(46)+(Ceil(2.0**25)*!(var(46)&(Ceil(2.0**25))))
trigger6 = (var(46)&(Ceil(2.0**26)))=1	;〓連携技系スイッチ
trigger6 = var(46):=var(46)+(Ceil(2.0**26)*!(var(46)&(Ceil(2.0**26))))
trigger7 = (var(46)&(Ceil(2.0**27)))=1	;〓連続技系スイッチ
trigger7 = var(46):=var(46)+(Ceil(2.0**27)*!(var(46)&(Ceil(2.0**27))))
trigger8 = (var(46)&(Ceil(2.0**28)))=1	;〓牽制技系スイッチ
trigger8 = var(46):=var(46)+(Ceil(2.0**28)*!(var(46)&(Ceil(2.0**28))))
trigger9 = (var(46)&(Ceil(2.0**29)))=1	;〓ガード系スイッチ
trigger9 = var(46):=var(46)+(Ceil(2.0**29)*!(var(46)&(Ceil(2.0**29))))
IgnoreHitPause = 1

[State -1, 2P側AIテスト]
type = null
triggerall = var(59)<=0
triggerall = RoundState<=2
triggerall = numhelper(21000)
triggerall = TeamSide=2
triggerall = numenemy>0
triggerall = ID>enemy(0),ID
trigger1 = (var(46)&(Ceil(2.0**21)))=1	;〓射撃回避系スイッチ
trigger1 = var(46):=var(46)+(Ceil(2.0**21)*!(var(46)&(Ceil(2.0**21))))
trigger2 = (var(46)&(Ceil(2.0**22)))=1	;〓巨人操作系スイッチ
trigger2 = var(46):=var(46)+(Ceil(2.0**22)*!(var(46)&(Ceil(2.0**22))))
trigger3 = (var(46)&(Ceil(2.0**23)))=1	;〓空中動作系スイッチ
trigger3 = var(46):=var(46)+(Ceil(2.0**23)*!(var(46)&(Ceil(2.0**23))))
trigger4 = (var(46)&(Ceil(2.0**24)))=1	;〓フラグ系スイッチ
trigger4 = var(46):=var(46)+(Ceil(2.0**24)*!(var(46)&(Ceil(2.0**24))))
trigger5 = (var(46)&(Ceil(2.0**25)))=1	;〓反撃技系スイッチ
trigger5 = var(46):=var(46)+(Ceil(2.0**25)*!(var(46)&(Ceil(2.0**25))))
trigger6 = (var(46)&(Ceil(2.0**26)))=1	;〓連携技系スイッチ
trigger6 = var(46):=var(46)+(Ceil(2.0**26)*!(var(46)&(Ceil(2.0**26))))
trigger7 = (var(46)&(Ceil(2.0**27)))=1	;〓連続技系スイッチ
trigger7 = var(46):=var(46)+(Ceil(2.0**27)*!(var(46)&(Ceil(2.0**27))))
trigger8 = (var(46)&(Ceil(2.0**28)))=1	;〓牽制技系スイッチ
trigger8 = var(46):=var(46)+(Ceil(2.0**28)*!(var(46)&(Ceil(2.0**28))))
trigger9 = (var(46)&(Ceil(2.0**29)))=1	;〓ガード系スイッチ
trigger9 = var(46):=var(46)+(Ceil(2.0**29)*!(var(46)&(Ceil(2.0**29))))
IgnoreHitPause = 1

;------------------------------------------------------------------------------



















;==============================================================================
;■P2状態測定（P1中心軸からP2接触判定までの距離）

;□Dist観測セット
[State -1]
Type = null
;〓P2距離判定（P1地上＆同一方向）（P2がめくった時など）
trigger1 = enemynear(var(16)),facing=facing&&statetype!=A
trigger1 = fvar(26):=Ceil(((enemynear(var(16)),pos x*enemynear(var(16)),facing*-1)-(pos x*facing*-1))*-1)
trigger1 = fvar(26):=fvar(26)-IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.back),enemynear(var(16)),const(size.ground.back))
;〓P2距離判定（P1空中＆同一方向）（P1がめくった時など）
trigger2 = enemynear(var(16)),facing=facing&&statetype=A
trigger2 = fvar(26):=Ceil((enemynear(var(16)),pos x*enemynear(var(16)),facing)+(pos x*facing*-1))
trigger2 = fvar(26):=fvar(26)-IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front))
;〓P2距離判定（対面方向）（通常時）
trigger3 = enemynear(var(16)),facing*-1=facing
trigger3 = fvar(26):=Ceil((enemynear(var(16)),pos x*enemynear(var(16)),facing*-1)+(pos x*facing*-1))
trigger3 = fvar(26):=fvar(26)-IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front))
IgnoreHitPause = 1

;==============================================================================

















;==============================================================================
;■フラグリセット01■

;□ガード判定リセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(23000)
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (var(46)&(1))
trigger1 = var(46):=(var(46)|1)-(1)||1
IgnoreHitPause = 1

;□中段ガード判定リセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(23000)
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (var(46)&(Ceil(2.0**1)))
trigger1 = numenemy>0
trigger1 = enemy(0),stateno!=Ceil(var(27)/1000)&&enemy(0),stateno!=Ceil(var(28)/1000)&&enemy(0),stateno!=Ceil(var(29)/1000)
trigger1 = var(46):=(var(46)|Ceil(2.0**1))-(Ceil(2.0**1))||1
IgnoreHitPause = 1

;□特殊ガード判定リセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(23000)
triggerall = var(24)
trigger1 = Ceil(var(24)%100)=10
trigger1 = StateNo!=[150,153]
trigger1 = var(24):=0
trigger2 = fvar(20)<=0
trigger2 = var(24):=0
trigger3 = StateType=A
trigger3 = var(24):=0
trigger4 = (StateNo!=[120,139])&&StateNo!=[150,153]
trigger4 = Ceil(var(24)%100)!=10
trigger4 = var(24):=0
trigger5 = StateNo!=120
trigger5 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger5 = Ceil(var(24)%100)!=10
trigger5 = var(24):=0
IgnoreHitPause = 1

;------------------------------------------------------------------------------

;□連続技判断スイッチリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(23000)
triggerall = var(48)
trigger1 = movetype=H||enemynear(var(16)),movetype!=H||enemynear(var(16)),stateno=[120,155]
trigger1 = var(48):=0
trigger2 = enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=A&&Ceil(fvar(31))<=1
trigger2 = var(48):=0
trigger3 = InGuardDist&&helper(23000),InGuardDist
trigger3 = var(48):=0
;〓ブロ時
trigger4 = numenemy>=1
trigger4 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger4 = var(48):=0
trigger5 = numenemy>=2
trigger5 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger5 = var(48):=0
IgnoreHitPause = 1

;□コンボルート固定スイッチリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(23000)
triggerall = (var(48)&(1))
trigger1 = movetype=A&&time=0
trigger1 = var(48):=(var(48)|1)-(1)||1
trigger2 = enemynear(var(16)),statetype=L
trigger2 = var(48):=(var(48)|1)-(1)||1
trigger3 = InGuardDist&&helper(23000),InGuardDist
trigger3 = var(48):=0
;〓ブロ時
trigger4 = numenemy>=1
trigger4 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger4 = var(48):=(var(48)|1)-(1)||1
trigger5 = numenemy>=2
trigger5 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger5 = var(48):=(var(48)|1)-(1)||1
IgnoreHitPause = 1

;------------------------------------------------------------------------------

;□連携判断フラグ被弾時全リセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = var(47)
trigger1 = movetype=H
trigger1 = (stateno!=[120,140])&&(stateno!=[5200,5210])
trigger1 = var(47):=0
IgnoreHitPause = 1

;□ダッシュ系フラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = (var(47)&(Ceil(2.0**3)))
trigger1 = stateno!=[100,102]
trigger1 = var(47):=(var(47)|Ceil(2.0**3))-(Ceil(2.0**3))||1
trigger2 = (var(47)&(Ceil(2.0**10)))
trigger2 = stateno!=[100,102]
trigger2 = var(47):=(var(47)|Ceil(2.0**10))-(Ceil(2.0**10))||1
trigger3 = (var(47)&(Ceil(2.0**11)))
trigger3 = (stateno!=[100,102])||enemynear(var(16)),movetype!=H
trigger3 = var(47):=(var(47)|Ceil(2.0**11))-(Ceil(2.0**11))||1
trigger4 = (var(47)&(Ceil(2.0**12)))
trigger4 = (stateno!=[100,102])||enemynear(var(16)),movetype!=H
trigger4 = var(47):=(var(47)|Ceil(2.0**12))-(Ceil(2.0**12))||1
trigger5 = (var(47)&(Ceil(2.0**13)))
trigger5 = (stateno!=[100,102])||enemynear(var(16)),movetype!=H
trigger5 = var(47):=(var(47)|Ceil(2.0**13))-(Ceil(2.0**13))||1
IgnoreHitPause = 1

;□回避テレポ済みフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**7)))
trigger1 = (stateno!=[1100,1106])&&(stateno!=[1190,1191])
trigger1 = var(47):=(var(47)|Ceil(2.0**7))-(Ceil(2.0**7))||1
IgnoreHitPause = 1

;□地雷設置キャンセルテレポフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**8)))
trigger1 = stateno!=[1100,1106]
trigger1 = var(47):=(var(47)|Ceil(2.0**8))-(Ceil(2.0**8))||1
IgnoreHitPause = 1

;□烈風拳キャンセルテレポフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**9)))
trigger1 = stateno!=[1100,1106]
trigger1 = var(47):=(var(47)|Ceil(2.0**9))-(Ceil(2.0**9))||1
IgnoreHitPause = 1

;□最速空中後ダッシュ予約フラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**6)))
trigger1 = (stateno!=[42,43])&&stateno!=50
trigger1 = var(47):=(var(47)|Ceil(2.0**6))-(Ceil(2.0**6))||1
trigger2 = time>=5&&stateno=[42,43]
trigger2 = var(47):=(var(47)|Ceil(2.0**6))-(Ceil(2.0**6))||1
trigger3 = time>=2&&stateno=50
trigger3 = var(47):=(var(47)|Ceil(2.0**6))-(Ceil(2.0**6))||1
IgnoreHitPause = 1

;□前方ジャンプフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**15)))
trigger1 = movetype!=A
trigger1 = (stateno!=[42,45])||((stateno=[42,45])&&time>=1)
trigger1 = var(47):=(var(47)|Ceil(2.0**15))-(Ceil(2.0**15))||1
IgnoreHitPause = 1

;□後方ジャンプフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**16)))
trigger1 = movetype!=A
trigger1 = (stateno!=[42,45])||((stateno=[42,45])&&time>=1)
trigger1 = var(47):=(var(47)|Ceil(2.0**16))-(Ceil(2.0**16))||1
IgnoreHitPause = 1

;□前方ハイジャンプフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**17)))
trigger1 = movetype=H
trigger1 = var(47):=(var(47)|Ceil(2.0**17))-(Ceil(2.0**17))||1
trigger2 = stateno!=43&&stateno!=50&&stateno!=630&&stateno!=640&&stateno!=645&&stateno!=650
trigger2 = var(47):=(var(47)|Ceil(2.0**17))-(Ceil(2.0**17))||1
IgnoreHitPause = 1

;□前方受身フラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**20)))
trigger1 = (stateno!=[5200,5210])&&stateno!=8502&&stateno!=8504
trigger1 = var(47):=(var(47)|Ceil(2.0**20))-(Ceil(2.0**20))||1
IgnoreHitPause = 1

;□後方受身フラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**21)))
trigger1 = (stateno!=[5200,5210])&&stateno!=8502&&stateno!=8504
trigger1 = var(47):=(var(47)|Ceil(2.0**21))-(Ceil(2.0**21))||1
IgnoreHitPause = 1

;□巨人行動系フラグリセット
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**11)|Ceil(2.0**15)))
trigger1 = var(46):=(var(46)|(Ceil(2.0**11)|Ceil(2.0**15)))-(Ceil(2.0**11)|Ceil(2.0**15))||1
IgnoreHitPause = 1

;□巨人攻撃フラグリセット
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))
trigger1 = var(46):=(var(46)|(Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))-(Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14))||1
IgnoreHitPause = 1

;------------------------------------------------------------------------------


;==============================================================================
;■P1状態測定（空中Y座標補正）

;□削りダメージ観測セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(36):=Ceil(IfElse(enemynear(var(16)),Const(size.mid.pos.y)<=-70,-35,enemynear(var(16)),Const(size.mid.pos.y)*0.50))
IgnoreHitPause = 1

;==============================================================================
;■P1状態測定（ステート番号予約）

;□P1連続技用ステート番号予約リセット
[State -1]
type = null
triggerall = var(59)>=1
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
trigger1 = time<=1||movetype!=A
trigger1 = fvar(27):=0
IgnoreHitPause = 1

;□P1連携用ステート番号予約リセット
[State -1]
type = null
triggerall = var(59)>=1
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
trigger1 = time<=1||movetype!=A
trigger1 = fvar(28):=0
IgnoreHitPause = 1

;==============================================================================
;■P1状態測定（削りダメージ測定）

;□削りダメージ観測セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = stateno=[150,153]
trigger1 = statetype=S||statetype=C
trigger1 = GetHitVar(damage)>=1
trigger1 = fvar(30):=fvar(30)+GetHitVar(damage)
IgnoreHitPause = 1

;□削りダメージ観測リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = Ctrl||(stateno=100&&time>=1)||((stateno=20||stateno=40)&&time=0)
trigger1 = fvar(30):=0
trigger2 = (statetype=A||statetype=L)||(movetype!=H&&(stateno!=[150,153]))
trigger2 = fvar(30):=0
IgnoreHitPause = 1

;==============================================================================
;■P2状態測定（復帰可能時間観測）

;□復帰可能時間観測セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = enemynear(var(16)),movetype=H
trigger1 = enemynear(var(16)),GetHitVar(damage)>=1
trigger1 = fvar(31):=enemynear(var(16)),GetHitVar(fall.recovertime)
IgnoreHitPause = 1

;□復帰可能時間観測減算
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = enemynear(var(16)),movetype=H
trigger1 = fvar(31)>=2
trigger1 = fvar(31):=fvar(31)-1
IgnoreHitPause = 1

;□復帰可能時間観測リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = enemynear(var(16)),movetype!=H||enemynear(var(16)),stateno=[120,155]
trigger1 = fvar(31):=0
IgnoreHitPause = 1

;==============================================================================
;■P2状態測定（起き上がり無敵測定）

;□起き上がり後時間経過
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(32)>=1
trigger1 = fvar(32):=fvar(32)-1
IgnoreHitPause = 1

;□起き上がり後時間セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = enemynear(var(16)),stateno=5120
trigger1 = enemynear(var(16)),statetype=L
trigger1 = enemynear(var(16)),animtime=0
trigger1 = fvar(32):=12
IgnoreHitPause = 1

;□起き上がり後時間経過リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(32)<0
trigger1 = fvar(32):=0
IgnoreHitPause = 1

;==============================================================================
;■P1状態測定（起き上がり後経過時間測定）

;□起き上がり後時間経過
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(33)>=1
trigger1 = fvar(33):=fvar(33)-1
IgnoreHitPause = 1

;□起き上がり後時間セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = stateno=5120&&statetype=L
trigger1 = animtime=0
trigger1 = fvar(33):=5
IgnoreHitPause = 1

;□起き上がり後時間経過リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(33)<0
trigger1 = fvar(33):=0
IgnoreHitPause = 1

;==============================================================================
;■P1状態測定（ガード直後測定）

;□ガード直後時間経過
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = fvar(34)>=1
trigger1 = Ctrl||(stateno=100&&time>=1)||((stateno=20||stateno=40)&&time=0)
trigger1 = fvar(34):=fvar(34)-1
IgnoreHitPause = 1

[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(9002)>=1
triggerall = fvar(34)>=1
trigger1 = helper(9002),var(12)>=1
trigger1 = fvar(34):=fvar(34)-1
IgnoreHitPause = 1

;□ガード直後時間セット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (stateno=150||stateno=152)&&enemynear(var(16)),MoveGuarded=1
triggerall = enemynear(var(16)),movetype=A
trigger1 = fvar(34):=10
trigger1 = fvar(35):=enemynear(var(16)),stateno
IgnoreHitPause = 1

[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(9002)>=1
triggerall = movetype=A&&helper(9002),var(12)=1
triggerall = enemynear(var(16)),movetype=A
trigger1 = fvar(34):=10
trigger1 = fvar(35):=enemynear(var(16)),stateno
IgnoreHitPause = 1

;□ガード直後時間経過リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(34)<0
trigger1 = fvar(34):=0
trigger2 = enemynear(var(16)),stateno!=fvar(35)
trigger2 = fvar(34):=0
trigger3 = numhelper(25000)
trigger3 = helper(25000),fvar(10)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = fvar(34):=0
trigger4 = numenemy>0
trigger4 = enemy(0),NumProj>0
trigger4 = fvar(34):=0
trigger5 = numenemy>1
trigger5 = enemy(1),NumProj>0
trigger5 = fvar(34):=0
IgnoreHitPause = 1

;□ガード直後ステート記録リセット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = fvar(34)=0
trigger1 = enemynear(var(16)),stateno!=fvar(35)
trigger1 = fvar(35):=0
IgnoreHitPause = 1

[State -1]
Type = null
triggerall = var(59)>=1
triggerall = fvar(34)=0
trigger1 = numhelper(25000)
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = fvar(35):=0
trigger2 = numenemy>0
trigger2 = enemy(0),NumProj>0
trigger2 = fvar(35):=0
trigger3 = numenemy>1
trigger3 = enemy(1),NumProj>0
trigger3 = fvar(35):=0
IgnoreHitPause = 1

;==============================================================================
;■P2状態測定（P2摩擦計算用）

;□摩擦係数セット
[State -1]
Type = null
triggerall = var(59)>=1
trigger1 = enemynear(var(16)),statetype=S
trigger1 = fvar(25):=enemynear(var(16)),Const(movement.stand.friction)
trigger2 = enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger2 = fvar(25):=enemynear(var(16)),Const(movement.crouch.friction)
trigger3 = enemynear(var(16)),statetype=A
trigger3 = fvar(25):=0
IgnoreHitPause = 1

;==============================================================================
;■P2状態測定（テレポ移動距離判定）

;□地雷キャンセルテレポ移動距離判定
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = (var(47)&(Ceil(2.0**8)))		;□地雷設置キャンセルテレポフラグON
;〓画面中央＆P2近距離（テレポA中距離）
trigger1 = stateno=1100
trigger1 = helper(21000),var(1)>=120&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=100
trigger1 = var(4):=1
;〓画面中央＆P2中距離（テレポB近距離）
trigger2 = stateno=1101
trigger2 = enemynear(var(16)),movetype=A
trigger2 = enemynear(var(16)),NumProj>=1||(InGuardDist||helper(23000),InGuardDist)
trigger2 = helper(21000),var(1)>=190&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=180
trigger2 = var(4):=0
;〓画面中央＆P2遠距離（テレポB中距離）
trigger3 = stateno=1101
trigger3 = enemynear(var(16)),movetype=A
trigger3 = enemynear(var(16)),NumProj>=1||(InGuardDist||helper(23000),InGuardDist)
trigger3 = helper(21000),var(1)>=290&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=230
trigger3 = var(4):=1
;〓画面中央＆P2中距離（テレポA近距離）
trigger4 = stateno=1100
trigger4 = helper(21000),var(1)>=80&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=100
trigger4 = var(4):=0
;〓画面端＆P2近距離（テレポB中距離）
trigger5 = stateno=1101
trigger5 = helper(21000),var(1)<=100&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=50
trigger5 = var(4):=1
;〓画面端＆P2中距離（テレポB中距離）
trigger6 = stateno=1101
trigger6 = helper(21000),var(0)-fvar(26)>=125
trigger6 = helper(21000),var(1)<=100&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=130
trigger6 = var(4):=2
IgnoreHitPause = 1

;□烈風拳Aキャンセルテレポ移動距離判定
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = (var(47)&(Ceil(2.0**9)))		;□烈風拳キャンセルテレポフラグON
;〓P2中距離（テレポB遠距離）
trigger1 = stateno=1101
trigger1 = enemynear(var(16)),NumProj=0
trigger1 = numhelper(1020)>=1||numhelper(1050)>=1
trigger1 = helper(21000),var(0)-fvar(26)>=125
trigger1 = helper(21000),var(0)>=370&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=240
trigger1 = var(4):=2
;〓P2中距離（テレポB中距離）
trigger2 = stateno=1101
trigger2 = helper(21000),var(0)>=330&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))=[180,240]
trigger2 = var(4):=1
;〓P2中距離（テレポB遠距離）
trigger3 = stateno=1101
trigger3 = enemynear(var(16)),NumProj>=1||(InGuardDist||helper(23000),InGuardDist)
trigger3 = helper(21000),var(0)>=220&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=220
trigger3 = var(4):=0
;〓P2近距離（テレポB近距離）
trigger4 = stateno=1101
trigger4 = helper(21000),var(0)>=330&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=180
trigger4 = var(4):=0
;〓P2中距離（テレポB中距離）
trigger5 = stateno=1101
trigger5 = helper(21000),var(0)>=250&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=220
trigger5 = var(4):=1
IgnoreHitPause = 1

;□回避テレポ移動距離判定
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = stateno=[1100,1106]
triggerall = (var(47)&(Ceil(2.0**7)))		;□回避テレポ済みフラグON
;〓対アーマーキャラ用（テレポB）
trigger1 = stateno=1101||stateno=1106
trigger1 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)
trigger1 = IfElse((fvar(26)=[0,150]),var(4):=0,IfElse((fvar(26)=[150,220]),var(4):=1,2))
;〓地雷設置EX位置へ移動用（P1> <P2 EX　テレポB遠距離）
trigger2 = stateno=1101||stateno=1106
trigger2 = numhelper(1285)
trigger2 = helper(1285),pos x*helper(1285),facing>=pos x*helper(1285),facing
trigger2 = helper(1285),pos x*helper(1285),facing>=enemynear(var(16)),pos x*helper(1285),facing
trigger2 = fvar(26)<=190
trigger2 = ((helper(1285),pos x*helper(1285),facing)-(pos x*helper(1285),facing))>=200
trigger2 = var(4):=2
;〓地雷設置EX位置へ移動用（P1> <P2 EX　テレポB中距離）
trigger3 = stateno=1101||stateno=1106
trigger3 = numhelper(1285)
trigger3 = helper(1285),pos x*helper(1285),facing>=pos x*helper(1285),facing
trigger3 = helper(1285),pos x*helper(1285),facing>=enemynear(var(16)),pos x*helper(1285),facing
trigger3 = fvar(26)<=120
trigger3 = ((helper(1285),pos x*helper(1285),facing)-(pos x*helper(1285),facing))=[120,170]
trigger3 = var(4):=1
;〓地雷設置EX位置へ移動用（EX P1> <P2　テレポA中距離）
trigger4 = stateno=1100||stateno=1105
trigger4 = numhelper(1285)
trigger4 = helper(1285),pos x*helper(1285),facing<=pos x*helper(1285),facing
trigger4 = helper(1285),pos x*helper(1285),facing<=enemynear(var(16)),pos x*helper(1285),facing
trigger4 = var(4):=1
;〓画面中央＆P2近距離（テレポB遠距離）
trigger5 = stateno=1101||stateno=1106
trigger5 = numhelper(1020)>=1||numhelper(1050)>=1
trigger5 = helper(21000),fvar(10)<=160	;□遠距離ガード時間
trigger5 = helper(21000),var(0)>=220&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=240
trigger5 = var(4):=2
;〓画面中央＆P2近距離（テレポB遠距離）
trigger6 = stateno=1101
trigger6 = numhelper(1020)>=1||numhelper(1050)>=1
trigger6 = helper(21000),var(0)>=220&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=150
trigger6 = var(4):=1
;〓画面中央＆P2近距離（テレポA遠距離）
trigger7 = stateno=1100||stateno=1105
trigger7 = helper(21000),var(1)>=150&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=75
trigger7 = var(4):=2
;〓画面中央＆P2中距離（テレポA中距離）
trigger8 = stateno=1100||stateno=1105
trigger8 = helper(21000),var(1)>=150&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))=[75,150]
trigger8 = var(4):=1
;〓画面端＆P2近距離（テレポB中距離）
trigger9 = stateno=1101||stateno=1106
trigger9 = helper(21000),var(0)>=150&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=50
trigger9 = var(4):=1
;〓挟撃回避（タッグ用）（テレポAB）
trigger10 = numenemy>=2
trigger10 = enemy(0),alive&&enemy(1),alive
trigger10 = (enemy(0),pos x-pos x>0&&enemy(1),pos x-pos x<0)||(enemy(0),pos x-pos x<0&&enemy(1),pos x-pos x>0)
trigger10 = abs(enemy(0),pos x-pos x)+abs(enemy(1),pos x-pos x)=[0,100]
trigger10 = var(4):=IfElse(helper(21000),var(0)>=helper(21000),var(1),2,1)
IgnoreHitPause = 1

;□射撃回避テレポ
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = stateno=1101
triggerall = (var(47)&(Ceil(2.0**24)))		;□射撃回避テレポ済みフラグON
;〓低速攻撃ヘルパー回避（1個）
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = var(4):=IfElse(fvar(26)<=80,1,IfElse((fvar(26)=[80,200]),2,IfElse(fvar(26)>=250&&enemynear(var(16)),Ctrl=0,1,0)))
;〓低速攻撃ヘルパー回避（2個以上）
trigger2 = helper(25000),fvar(10)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = var(4):=IfElse(fvar(26)<=80,1,IfElse((fvar(26)=[80,200]),2,0))

;□移動起き上がりテレポ移動距離判定
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = stateno=[1190,1191]
triggerall = (var(47)&(Ceil(2.0**7)))		;□回避テレポ済みフラグON
;〓画面端＆P2近距離（テレポB中距離）
trigger1 = stateno=1191
trigger1 = helper(21000),var(1)<=125&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=70
trigger1 = var(4):=1
;〓画面端＆P2近距離（テレポB遠距離）
trigger2 = stateno=1191
trigger2 = helper(21000),var(1)<=125&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=125
trigger2 = var(4):=2
;〓画面中央＆P2近距離（テレポB遠距離）
trigger3 = stateno=1191
trigger3 = enemynear(var(16)),NumProj>=1||(InGuardDist||helper(23000),InGuardDist)
trigger3 = helper(21000),var(0)>=220&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=200
trigger3 = var(4):=2
;〓画面中央＆P2近距離（テレポB遠距離）
trigger4 = stateno=1191
trigger4 = helper(21000),var(0)>=220&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=225
trigger4 = var(4):=1
;〓画面中央＆P2近距離（テレポA遠距離）
trigger5 = stateno=1190
trigger5 = helper(21000),var(1)>=150&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=75
trigger5 = var(4):=1
;〓画面中央＆P2中距離（テレポA中距離）
trigger6 = stateno=1190
trigger6 = helper(21000),var(1)>=150&&Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))=[75,150]
trigger6 = var(4):=0
IgnoreHitPause = 1

;□EXテレポ投げ移動距離判定
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = stateno=1102
;〓28F後の予測座標【対地】（EXテレポキャンセル）
trigger1 = (var(46)&(Ceil(2.0**20)))=0||helper(24001),var(10)=1		;□投げ無敵測定実験（無敵中）
trigger1 = var(4):=3
trigger2 = enemynear(var(16)),stateno=[40,44]
trigger2 = var(4):=3
trigger3 = Ceil(helper(23000),fvar(28))<-15||helper(23000),var(28)+const(size.ground.front)>424
trigger3 = var(4):=3
;〓28F後の予測座標【対地】（EXテレポ近距離）
trigger4 = helper(23000),var(28)+const(size.ground.front)>=-52-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger4 = helper(23000),var(28)+const(size.ground.front)<=52
trigger4 = Ceil(helper(23000),fvar(28))>=-15
trigger4 = var(4):=0
;〓28F後の予測座標【対地】（EXテレポ中距離）
trigger5 = helper(23000),var(28)+const(size.ground.front)=[52,140]
trigger5 = Ceil(helper(23000),fvar(28))>=-15
trigger5 = var(4):=1
;〓28F後の予測座標【対地】（EXテレポ遠距離）
trigger6 = helper(23000),var(28)+const(size.ground.front)>=155-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger6 = helper(23000),var(28)+const(size.ground.front)<=295
trigger6 = Ceil(helper(23000),fvar(28))>=-15
trigger6 = var(4):=2
;〓28F後の予測座標【対地】（EXテレポ超遠距離）
trigger7 = helper(23000),var(28)+const(size.ground.front)>=320-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger7 = helper(23000),var(28)+const(size.ground.front)<=424
trigger7 = Ceil(helper(23000),fvar(28))>=-15
trigger7 = var(4):=4
IgnoreHitPause = 1

;▲EXテレポ投げ範囲メモ
;攻撃範囲28F目　X=52
;攻撃範囲34F目　X=75
;近距離　X=0
;中距離　X=70
;遠距離　X=222

;==============================================================================
;■P1状態測定（溜め判定）	★溜攻撃での連携記述を追加予定（現状はP2ダウン中のみ）

;□2C溜め（P2ダウン中）
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = enemynear(var(16)),statetype=L
triggerall = fvar(20)>=300
;〓条件（ダウン追い討ちから起き攻め用）
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))			;□5B使用済み
triggerall = (var(50)&(Ceil(2.0**14)))					;□4C使用済み
triggerall = Ceil(var(40)/10000)=0					;□移動起き上がり除外
triggerall = fvar(26)>=65+IfElse(Ceil(var(52)/100%10)>=2,5,0)
;〓フラグ加算
trigger1 = stateno=440&&time=1
trigger1 = var(5):=2
trigger2 = stateno=440&&time=[2,30]
trigger2 = var(5):=var(5)+1
IgnoreHitPause = 1

;□J2C溜め
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = enemynear(var(16)),statetype=L
triggerall = fvar(20)>=300
;〓条件
triggerall = 0;★条件製作中
;〓フラグ加算
trigger1 = stateno=670&&time=1
trigger1 = var(5):=2
trigger2 = stateno=670&&time=[2,30]
trigger2 = var(5):=var(5)+1
IgnoreHitPause = 1

;□弓溜め
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件（起き上がりまで溜める）
triggerall = enemynear(var(16)),statetype=L&&enemynear(var(16)),stateno!=5120
triggerall = fvar(20)>400
;〓フラグ加算
trigger1 = stateno=1600&&time=1
trigger1 = var(5):=2
trigger2 = stateno=1600&&time=[2,60]
trigger2 = var(5):=var(5)+1
IgnoreHitPause = 1

;==============================================================================
;■P1状態測定（特定予約攻撃判定）

;□P1確定追撃判定
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = NumHelper(23000)>0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓JCヒット時
trigger1 = (var(46)&(Ceil(2.0**3)))=0
trigger1 = NumHelper(662)>0
trigger1 = helper(662),movehit>=1
trigger1 = helper(662),NumTarget(662)>0||helper(662),NumTarget(663)>0
trigger1 = var(46):=var(46)+(Ceil(2.0**3)*!(var(46)&(Ceil(2.0**3))))
trigger2 = (var(46)&(Ceil(2.0**3)))=0
trigger2 = NumHelper(663)>0
trigger2 = Helper(663),movehit>=1
trigger2 = Helper(663),NumTarget(662)>0||Helper(663),NumTarget(663)>0
trigger2 = var(46):=var(46)+(Ceil(2.0**3)*!(var(46)&(Ceil(2.0**3))))
trigger3 = (var(46)&(Ceil(2.0**3)))=0
trigger3 = NumHelper(664)>0
trigger3 = Helper(664),movehit>=1
trigger3 = Helper(664),NumTarget(662)>0||Helper(664),NumTarget(663)>0
trigger3 = var(46):=var(46)+(Ceil(2.0**3)*!(var(46)&(Ceil(2.0**3))))
;〓J2Cヒット時
trigger4 = (var(46)&(Ceil(2.0**4)))=0
trigger4 = NumHelper(681)>0
trigger4 = helper(681),movehit>=1
trigger4 = Helper(681),NumTarget(681)>0
trigger4 = var(46):=var(46)+(Ceil(2.0**4)*!(var(46)&(Ceil(2.0**4))))
trigger5 = (var(46)&(Ceil(2.0**4)))=0
trigger5 = NumHelper(682)>0
trigger5 = helper(682),movehit>=1
trigger5 = Helper(682),NumTarget(682)>0
trigger5 = var(46):=var(46)+(Ceil(2.0**4)*!(var(46)&(Ceil(2.0**4))))
;〓J2Bヒット時
trigger6 = (var(46)&(Ceil(2.0**5)))=0
trigger6 = NumTarget(645)>0
trigger6 = Target(645),time>=1&&movehit>=1
trigger6 = var(46):=var(46)+(Ceil(2.0**5)*!(var(46)&(Ceil(2.0**5))))
;〓JBヒット時
trigger7 = (var(46)&(Ceil(2.0**6)))=0
trigger7 = NumTarget(640)>0
trigger7 = Target(640),time>=1&&movehit>=1
trigger7 = var(46):=var(46)+(Ceil(2.0**6)*!(var(46)&(Ceil(2.0**6))))
trigger8 = (var(46)&(Ceil(2.0**6)))=0
trigger8 = NumTarget(641)>0
trigger8 = Target(641),time>=1&&movehit>=1
trigger8 = var(46):=var(46)+(Ceil(2.0**6)*!(var(46)&(Ceil(2.0**6))))
trigger9 = (var(46)&(Ceil(2.0**6)))=0
trigger9 = NumTarget(642)>0
trigger9 = Target(642),time>=1&&movehit>=1
trigger9 = var(46):=var(46)+(Ceil(2.0**6)*!(var(46)&(Ceil(2.0**6))))
;〓JAヒット時
trigger10 = (var(46)&(Ceil(2.0**7)))=0
trigger10 = NumTarget(630)>0
trigger10 = Target(630),time>=1&&movehit>=1
trigger10 = var(46):=var(46)+(Ceil(2.0**7)*!(var(46)&(Ceil(2.0**7))))
;〓ゲイザーヒット時
trigger11 = (var(46)&(Ceil(2.0**8)))=0
trigger11 = NumHelper(1350)
trigger11 = helper(1350),NumTarget(1350)>0
trigger11 = helper(1350),movehit>=1
trigger11 = var(46):=var(46)+(Ceil(2.0**8)*!(var(46)&(Ceil(2.0**8))))
trigger12 = (var(46)&(Ceil(2.0**8)))=0
trigger12 = NumHelper(1351)
trigger12 = helper(1351),NumTarget(1350)>0
trigger12 = helper(1351),movehit>=1
trigger12 = var(46):=var(46)+(Ceil(2.0**8)*!(var(46)&(Ceil(2.0**8))))
trigger13 = (var(46)&(Ceil(2.0**8)))=0
trigger13 = NumHelper(1352)
trigger13 = helper(1352),NumTarget(1350)>0
trigger13 = helper(1352),movehit>=1
trigger13 = var(46):=var(46)+(Ceil(2.0**8)*!(var(46)&(Ceil(2.0**8))))
trigger14 = (var(46)&(Ceil(2.0**8)))=0
trigger14 = NumHelper(1353)
trigger14 = helper(1353),NumTarget(1350)>0
trigger14 = helper(1353),movehit>=1
trigger14 = var(46):=var(46)+(Ceil(2.0**8)*!(var(46)&(Ceil(2.0**8))))
;〓烈風拳Aヒット時
trigger15 = (var(46)&(Ceil(2.0**9)))=0
trigger15 = NumHelper(1020)>0
trigger15 = helper(1020),NumTarget(1020)>0
trigger15 = helper(1020),movehit>=1
trigger15 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
trigger16 = (var(46)&(Ceil(2.0**9)))=0
trigger16 = NumHelper(1020)>0
trigger16 = helper(1020),NumTarget(1021)>0
trigger16 = helper(1020),movehit>=1
trigger16 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
trigger17 = (var(46)&(Ceil(2.0**9)))=0
trigger17 = NumHelper(1020)>0
trigger17 = helper(1020),NumTarget(1022)>0
trigger17 = helper(1020),movehit>=1
trigger17 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
trigger18 = (var(46)&(Ceil(2.0**9)))=0
trigger18 = NumHelper(1050)>0
trigger18 = helper(1050),NumTarget(1050)>0
trigger18 = helper(1050),movehit>=1
trigger18 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
trigger19 = (var(46)&(Ceil(2.0**9)))=0
trigger19 = NumHelper(1050)>0
trigger19 = helper(1050),NumTarget(1051)>0
trigger19 = helper(1050),movehit>=1
trigger19 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
trigger20 = (var(46)&(Ceil(2.0**9)))=0
trigger20 = NumHelper(1050)>0
trigger20 = helper(1050),NumTarget(1052)>0
trigger20 = helper(1050),movehit>=1
trigger20 = var(46):=var(46)+(Ceil(2.0**9)*!(var(46)&(Ceil(2.0**9))))
;〓ぱっちん系ヒット時
trigger21 = (var(46)&(Ceil(2.0**10)))=0
trigger21 = NumHelper(1410)>0
trigger21 = helper(1410),movehit>=1
trigger21 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger22 = (var(46)&(Ceil(2.0**10)))=0
trigger22 = NumHelper(1440)>0
trigger22 = helper(1440),movehit>=1
trigger22 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger23 = (var(46)&(Ceil(2.0**10)))=0
trigger23 = NumHelper(1412)>0
trigger23 = helper(1412),movehit>=1
trigger23 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger24 = (var(46)&(Ceil(2.0**10)))=0
trigger24 = NumHelper(1442)>0
trigger24 = helper(1442),movehit>=1
trigger24 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger25 = (var(46)&(Ceil(2.0**10)))=0
trigger25 = NumHelper(1420)>0
trigger25 = helper(1420),movehit>=1
trigger25 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger26 = (var(46)&(Ceil(2.0**10)))=0
trigger26 = NumHelper(1450)>0
trigger26 = helper(1450),movehit>=1
trigger26 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger27 = (var(46)&(Ceil(2.0**10)))=0
trigger27 = NumHelper(1422)>0
trigger27 = helper(1422),movehit>=1
trigger27 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger28 = (var(46)&(Ceil(2.0**10)))=0
trigger28 = NumHelper(1452)>0
trigger28 = helper(1452),movehit>=1
trigger28 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger29 = (var(46)&(Ceil(2.0**10)))=0
trigger29 = NumHelper(1430)>0
trigger29 = helper(1430),movehit>=1
trigger29 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger30 = (var(46)&(Ceil(2.0**10)))=0
trigger30 = NumHelper(1460)>0
trigger30 = helper(1460),movehit>=1
trigger30 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger31 = (var(46)&(Ceil(2.0**10)))=0
trigger31 = NumHelper(1432)>0
trigger31 = helper(1432),movehit>=1
trigger31 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
trigger32 = (var(46)&(Ceil(2.0**10)))=0
trigger32 = NumHelper(1462)>0
trigger32 = helper(1462),movehit>=1
trigger32 = var(46):=var(46)+(Ceil(2.0**10)*!(var(46)&(Ceil(2.0**10))))
IgnoreHitPause = 1

;□P1確定追撃判定リセット
[State -1]
Type = null
triggerall = var(59)>=1
;〓被弾時
trigger1 = enemynear(var(16)),movetype!=H||movetype=H
trigger1 = var(46):=(var(46)|Ceil(2.0**3))-(Ceil(2.0**3))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**4))-(Ceil(2.0**4))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**5))-(Ceil(2.0**5))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**6))-(Ceil(2.0**6))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**7))-(Ceil(2.0**7))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**8))-(Ceil(2.0**8))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**9))-(Ceil(2.0**9))||1
trigger1 = var(46):=(var(46)|Ceil(2.0**10))-(Ceil(2.0**10))||1
;〓JC消失
trigger2 = (var(46)&(Ceil(2.0**3)))
trigger2 = NumHelper(662)=0&&NumHelper(663)=0&&NumHelper(664)=0
trigger2 = var(46):=(var(46)|Ceil(2.0**3))-(Ceil(2.0**3))||1
;〓J2C消失
trigger3 = (var(46)&(Ceil(2.0**4)))
trigger3 = NumHelper(681)=0&&NumHelper(682)=0
trigger3 = var(46):=(var(46)|Ceil(2.0**4))-(Ceil(2.0**4))||1
;〓J2B消失
trigger4 = (var(46)&(Ceil(2.0**5)))
trigger4 = NumTarget(645)=0
trigger4 = var(46):=(var(46)|Ceil(2.0**5))-(Ceil(2.0**5))||1
;〓JB消失
trigger5 = (var(46)&(Ceil(2.0**6)))
trigger5 = NumTarget(640)=0&&NumTarget(641)=0&&NumTarget(642)=0
trigger5 = var(46):=(var(46)|Ceil(2.0**6))-(Ceil(2.0**6))||1
;〓JA消失
trigger6 = (var(46)&(Ceil(2.0**7)))
trigger6 = NumTarget(630)=0
trigger6 = var(46):=(var(46)|Ceil(2.0**7))-(Ceil(2.0**7))||1
;〓ゲイザー消失
trigger7 = (var(46)&(Ceil(2.0**8)))
trigger7 = NumHelper(1350)=0&&NumHelper(1351)=0&&NumHelper(1352)=0&&NumHelper(1353)=0
trigger7 = var(46):=(var(46)|Ceil(2.0**8))-(Ceil(2.0**8))||1
;〓烈風拳A消失
trigger8 = (var(46)&(Ceil(2.0**9)))
trigger8 = NumHelper(1020)=0&&NumHelper(1050)=0
trigger8 = var(46):=(var(46)|Ceil(2.0**9))-(Ceil(2.0**9))||1
;〓ぱっちん系消失
trigger9 = (var(46)&(Ceil(2.0**10)))
trigger9 = NumHelper(1410)=0&&NumHelper(1440)=0&&NumHelper(1412)=0&&NumHelper(1442)=0&&NumHelper(1420)=0&&NumHelper(1450)=0&&NumHelper(1422)=0&&NumHelper(1452)=0&&NumHelper(1430)=0&&NumHelper(1460)=0&&NumHelper(1432)=0&&NumHelper(1462)=0
trigger9 = var(46):=(var(46)|Ceil(2.0**10))-(Ceil(2.0**10))||1
IgnoreHitPause = 1

;==============================================================================
;■P3状態判定（バインド判定）

;□P3被バインド系攻撃
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = numpartner>0
triggerall = partner,GetHitVar(IsBound)
triggerall = partner,movetype=H
;〓フラグセット
trigger1 = var(46):=var(46)+(Ceil(2.0**18)*!(var(46)&(Ceil(2.0**18))))
IgnoreHitPause = 1

;□P3被バインド系攻撃リセット
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = numpartner>0
triggerall = partner,GetHitVar(IsBound)=0
;〓フラグセット
trigger1 = var(46):=(var(46)|Ceil(2.0**18))-(Ceil(2.0**18))||1
IgnoreHitPause = 1

;==============================================================================
;■P1状態判定（攻撃ヘルパー非ガード判定）

;□P1攻撃ヘルパー接近
[State -1]
Type = null
triggerall = var(59)>=1
;〓基本条件
triggerall = statetype=A
triggerall = (stateno=110&&time<=4)&&pos y<=-20
triggerall = fvar(26)>=70
triggerall = !enemynear(var(16)),HitDefAttr=SCA,AA,AP,AT
;〓攻撃ヘルパー位置
triggerall = helper(25000),fvar(10)
triggerall = PlayerIDExist(Ceil(helper(25000),fvar(10)))
triggerall = PlayerID(Ceil(helper(25000),fvar(10))),vel x
triggerall = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
triggerall = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[-10,-5]
triggerall = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=60
;〓フラグセット
trigger1 = enemy(0),numProj=0
trigger1 = var(47):=var(47)+(Ceil(2.0**23)*!(var(47)&(Ceil(2.0**23))))
trigger2 = numenemy>1
trigger2 = enemy(0),numProj=0&&enemy(1),numProj=0
trigger2 = var(47):=var(47)+(Ceil(2.0**23)*!(var(47)&(Ceil(2.0**23))))
IgnoreHitPause = 1

;□P1攻撃ヘルパー接近リセット
[State -1]
Type = VarSet
triggerall = var(59)>=1
;〓フラグセット
trigger1 = statetype!=A
trigger2 = stateno!=110||(stateno=110&&time>=5)||pos y>=-19
trigger3 = fvar(26)<=69
trigger4 = enemynear(var(16)),HitDefAttr=SCA,AA,AP,AT
trigger5 = helper(25000),fvar(10)=0
trigger6 = helper(25000),fvar(11)||helper(25000),fvar(12)||helper(25000),fvar(13)||helper(25000),fvar(14)||helper(25000),fvar(15)||helper(25000),fvar(16)||helper(25000),fvar(17)||helper(25000),fvar(18)||helper(25000),fvar(19)
trigger7 = helper(25000),fvar(10)
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger7 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger7 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)!=[-10,-5]
trigger7 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))<=59
trigger8 = enemy(0),numProj>0
trigger9 = numenemy>1
trigger9 = enemy(0),numProj>0||enemy(1),numProj>0
var(47) = (var(47)|Ceil(2.0**23))-(Ceil(2.0**23))
IgnoreHitPause = 1

;==============================================================================
;■P1状態判定（P2攻撃距離記録）

[State -1]
type = null
triggerall = var(59)>=1
triggerall = alive=1&&((teammode=single)||(teammode=turns))&&NumEnemy=1
triggerall = RoundState=2
trigger1 = (enemy(0),stateno=[200,4999])||(enemy(0),stateno>=6000)
trigger1 = enemy(0),movetype=I||enemy(0),movetype=A
trigger1 = enemy(0),time=5
trigger1 = var(45):=Ceil(var(45)/10000*10000)+(Ceil((Ceil((var(45)/10%1000)*9)+Ceil(abs(fvar(26))))/10.0)*10)+Ceil(var(45)%10)
IgnoreHitPause = 1

;==============================================================================
;■ロー・ブロッサム発動判定（P2状況記録）

[State -1]
type = null
triggerall = var(59)>=1
trigger1 = fvar(39)>=90&&fvar(39)/RoundNo>=30
trigger1 = var(46):=var(46)+(Ceil(2.0**17)*!(var(46)&(Ceil(2.0**17))))
trigger2 = fvar(39)/RoundNo>=50
trigger2 = var(46):=var(46)+(Ceil(2.0**17)*!(var(46)&(Ceil(2.0**17))))
trigger3 = fvar(39)>=75&&fvar(30)>=40&&fvar(26)>=180
trigger3 = var(46):=var(46)+(Ceil(2.0**17)*!(var(46)&(Ceil(2.0**17))))
trigger4 = numhelper(21000)
trigger4 = fvar(39)>=50&&(helper(21000),fvar(20)+helper(21000),fvar(21))>=5
trigger4 = var(46):=var(46)+(Ceil(2.0**17)*!(var(46)&(Ceil(2.0**17))))
IgnoreHitPause = 1

;------------------------------------------------------------------------------











;==============================================================================
;■巨人操作■

;■ガード
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**22)))=0
triggerall = NumHelper(7005)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = MoveType!=H||(stateno=[120,155])||Ceil(var(52)/100%10)>=2||Ceil(var(54)%10)>=5
triggerall = helper(7005),var(8)>=850
;〓弱攻撃＝正面（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger1 = (var(46)&(Ceil(2.0**15)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
trigger1 = enemynear(var(16)),vel x>0
trigger1 = Ceil(random/10%100)<=Ceil(helper(21000),var(59)/1000%100)	;□確率判定
trigger1 = helper(7005),facing=facing
trigger1 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger1 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger1 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[0,150]
trigger1 = Ceil(helper(23000),fvar(24))=[0,60]
trigger1 = var(46):=var(46)+(Ceil(2.0**15)*!(var(46)&(Ceil(2.0**15))))
IgnoreHitPause = 1

;■強制前進
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**22)))=0
triggerall = NumHelper(7005)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = MoveType!=H||(stateno=[120,155])||Ceil(var(52)/100%10)>=2||Ceil(var(54)%10)>=5
;〓強制前進＝正面（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger1 = (var(46)&(Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger1 = enemynear(var(16)),movetype=I||enemynear(var(16)),movetype=H
trigger1 = helper(7005),facing=facing
trigger1 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger1 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger1 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))>=195
trigger1 = var(46):=var(46)+(Ceil(2.0**11)*!(var(46)&(Ceil(2.0**11))))
IgnoreHitPause = 1

;■巨人操作
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**22)))=0
triggerall = NumHelper(7005)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = MoveType!=H||(stateno=[120,155])||Ceil(var(52)/100%10)>=2||Ceil(var(54)%10)>=5
;〓除外
triggerall = helper(7005),stateno!=[7004,7006]
triggerall = helper(7005),stateno!=[7025,7026]
triggerall = (teammode=simul)||(stateno!=1810&&enemynear(var(16)),stateno!=1820)
triggerall = (teammode=simul)||(stateno!=2810&&enemynear(var(16)),stateno!=2820)
triggerall = (teammode=simul)||((stateno!=[3410,3411])&&(enemynear(var(16)),stateno!=[3420,3423]))
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50

;〓弱攻撃＝正面（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger1 = (var(46)&(Ceil(2.0**12)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger1 = Ceil(random/10%100)<=Ceil((140-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((55-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+140)/2))*2)))		;□確率判定
trigger1 = helper(7005),facing=facing
trigger1 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger1 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger1 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[55-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger1 = var(46):=var(46)+(Ceil(2.0**12)*!(var(46)&(Ceil(2.0**12))))
;〓弱攻撃＝背面（P1と巨人同一方向、P2と巨人同一方向）（P1> 巨> P2>）＆（巨> P1> P2>）
trigger2 = (var(46)&(Ceil(2.0**12)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger2 = Ceil(random/10%100)<=Ceil(140-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((55-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+140)/2))*2))		;□確率判定
trigger2 = helper(7005),facing=facing
trigger2 = helper(7005),facing=enemynear(var(16)),facing
trigger2 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger2 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[55-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger2 = var(46):=var(46)+(Ceil(2.0**12)*!(var(46)&(Ceil(2.0**12))))
;〓弱攻撃＝挟撃遠距離（P1と巨人対面方向、P2と巨人対面方向）（P1> P2> <巨）
trigger3 = (var(46)&(Ceil(2.0**12)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger3 = Ceil(random/10%100)<=Ceil(140-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((55+140+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger3 = helper(7005),facing*-1=facing
trigger3 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger3 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger3 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[55,140+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger3 = var(46):=var(46)+(Ceil(2.0**12)*!(var(46)&(Ceil(2.0**12))))
;〓弱攻撃＝挟撃近距離（P1と巨人対面方向、P2と巨人同一方向）（P1> <P2 <巨）
trigger4 = (var(46)&(Ceil(2.0**12)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger4 = Ceil(random/10%100)<=Ceil(140-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((55+140+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger4 = helper(7005),facing*-1=facing
trigger4 = helper(7005),facing=enemynear(var(16)),facing
trigger4 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger4 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[55,140+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger4 = var(46):=var(46)+(Ceil(2.0**12)*!(var(46)&(Ceil(2.0**12))))

;〓強攻撃＝正面（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger5 = (var(46)&(Ceil(2.0**14)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L
trigger5 = Ceil(random/10%100)<=Ceil(170-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+170)/1.5))*1.5))	;□確率判定
trigger5 = helper(7005),facing=facing
trigger5 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger5 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger5 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),170]
trigger5 = var(46):=var(46)+(Ceil(2.0**14)*!(var(46)&(Ceil(2.0**14))))
;〓強攻撃＝背面（P1と巨人同一方向、P2と巨人同一方向）（P1> 巨> P2>）＆（巨> P1> P2>）
trigger6 = (var(46)&(Ceil(2.0**14)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger6 = Ceil(random/10%100)<=Ceil(170-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+170)/1.5))*1.5))	;□確率判定
trigger6 = helper(7005),facing=facing
trigger6 = helper(7005),facing=enemynear(var(16)),facing
trigger6 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger6 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),170]
trigger6 = var(46):=var(46)+(Ceil(2.0**14)*!(var(46)&(Ceil(2.0**14))))
;〓強攻撃＝挟撃遠距離（P1と巨人対面方向、P2と巨人対面方向）（P1> P2> <巨）
trigger7 = (var(46)&(Ceil(2.0**14)))=0
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger7 = Ceil(random/10%100)<=Ceil(170-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((-15+170+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/1.5))*1.5))	;□確率判定
trigger7 = helper(7005),facing*-1=facing
trigger7 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger7 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger7 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[-15,170+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger7 = var(46):=var(46)+(Ceil(2.0**14)*!(var(46)&(Ceil(2.0**14))))
;〓強攻撃＝挟撃近距離（P1と巨人対面方向、P2と巨人同一方向）（P1> <P2 <巨）
trigger8 = (var(46)&(Ceil(2.0**14)))=0
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger8 = Ceil(random/10%100)<=Ceil(170-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((-15+170+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/1.5))*1.5))	;□確率判定
trigger8 = helper(7005),facing*-1=facing
trigger8 = helper(7005),facing=enemynear(var(16)),facing
trigger8 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger8 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[-15,170+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger8 = var(46):=var(46)+(Ceil(2.0**14)*!(var(46)&(Ceil(2.0**14))))

;〓中攻撃＝正面対空（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger9 = (var(46)&(Ceil(2.0**13)))=0
trigger9 = enemynear(var(16)),statetype=A
trigger9 = Ceil(random/10%100)<=Ceil(150-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((110-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+220)/2))*2))		;□確率判定
trigger9 = helper(7005),facing=facing
trigger9 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger9 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger9 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[110-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),220]
trigger9 = (Ceil(helper(23000),fvar(37)+Ceil(fvar(36)))=[-210,-140])||(Ceil(helper(23000),fvar(39)+Ceil(fvar(36)))=[-85,-40])
trigger9 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓中攻撃＝背面対空（P1と巨人同一方向、P2と巨人同一方向）（P1> 巨> P2>）＆（巨> P1> P2>）
trigger10 = (var(46)&(Ceil(2.0**13)))=0
trigger10 = enemynear(var(16)),statetype=A
trigger10 = Ceil(random/10%100)<=Ceil(150-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((110-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+220)/2))*2))		;□確率判定
trigger10 = helper(7005),facing=facing
trigger10 = helper(7005),facing=enemynear(var(16)),facing
trigger10 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger10 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[110-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),220]
trigger10 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓中攻撃＝挟撃遠距離対空（P1と巨人対面方向、P2と巨人対面方向）（P1> P2> <巨）
trigger11 = (var(46)&(Ceil(2.0**13)))=0
trigger11 = enemynear(var(16)),statetype=A
trigger11 = Ceil(random/10%100)<=Ceil(150-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((110+220+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger11 = helper(7005),facing*-1=facing
trigger11 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger11 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger11 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[110,220+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger11 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓中攻撃＝挟撃近距離対空（P1と巨人対面方向、P2と巨人同一方向）（P1> <P2 <巨）
trigger12 = (var(46)&(Ceil(2.0**13)))=0
trigger12 = enemynear(var(16)),statetype=A
trigger12 = Ceil(random/10%100)<=Ceil(150-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((110+220+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger12 = helper(7005),facing*-1=facing
trigger12 = helper(7005),facing=enemynear(var(16)),facing
trigger12 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger12 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[110,220+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger12 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓中攻撃＝正面対地（P1と巨人同一方向、P2と巨人対面方向）（P1> 巨> <P2）＆（巨> P1> <P2）
trigger13 = (var(46)&(Ceil(2.0**13)))=0
trigger13 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger13 = Ceil(random/10%100)<=Ceil(170-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((130-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+240)/2))*2))		;□確率判定
trigger13 = helper(7005),facing=facing
trigger13 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger13 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger13 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[130-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),240]
trigger13 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓強攻撃＝背面（P1と巨人同一方向、P2と巨人同一方向）（P1> 巨> P2>）＆（巨> P1> P2>）
trigger14 = (var(46)&(Ceil(2.0**13)))=0
trigger14 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger14 = Ceil(random/10%100)<=Ceil(170-(abs((fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1)))-Ceil((130-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))+240)/2))*2))		;□確率判定
trigger14 = helper(7005),facing=facing
trigger14 = helper(7005),facing=enemynear(var(16)),facing
trigger14 = fvar(26)>=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))||Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))<0
trigger14 = fvar(26)-Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))=[130-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),240]
trigger14 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓強攻撃＝挟撃遠距離（P1と巨人対面方向、P2と巨人対面方向）（P1> P2> <巨）
trigger15 = (var(46)&(Ceil(2.0**13)))=0
trigger15 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger15 = Ceil(random/10%100)<=Ceil(170-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((130+240+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger15 = helper(7005),facing*-1=facing
trigger15 = helper(7005),facing*-1=enemynear(var(16)),facing
trigger15 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger15 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[130,240+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger15 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
;〓強攻撃＝挟撃近距離（P1と巨人対面方向、P2と巨人同一方向）（P1> <P2 <巨）
trigger16 = (var(46)&(Ceil(2.0**13)))=0
trigger16 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger16 = Ceil(random/10%100)<=Ceil(170-(abs((Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26))-Ceil((130+240+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)))/2))*2))		;□確率判定
trigger16 = helper(7005),facing*-1=facing
trigger16 = helper(7005),facing=enemynear(var(16)),facing
trigger16 = fvar(26)<=Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))
trigger16 = Ceil((helper(7005),pos x*facing)+(pos x*facing*-1))-fvar(26)=[130,240+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))]
trigger16 = var(46):=var(46)+(Ceil(2.0**13)*!(var(46)&(Ceil(2.0**13))))
IgnoreHitPause = 1

;==============================================================================
;■空中受身■

;□ダウン受身
[State -1]
Type = ChangeState
Value = 5200
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=5050
triggerall = statetype=A
triggerall = Vel Y>0
triggerall = Pos Y>=-20
;〓前方ダウン回避（画面端脱出用）
trigger1 = var(59)>=3
trigger1 = helper(21000),var(1)<=150			;□画面後ろ端から距離150以内
trigger1 = fvar(26)<=125
trigger1 = CanRecover
trigger1 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓前方ダウン回避（対起き攻め回避用）
trigger2 = var(59)>=3
trigger2 = InGuardDist||helper(23000),InGuardDist
trigger2 = CanRecover
trigger2 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓前方ダウン回避（接近用）
trigger3 = var(59)>=2
trigger3 = fvar(26)>=165
trigger3 = CanRecover
trigger3 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓後方ダウン回避
trigger4 = var(59)>=2
trigger4 = helper(21000),var(0)<=125			;□画面端から距離125以内
trigger4 = fvar(26)<=125
trigger4 = CanRecover
trigger4 = var(47):=Ceil(2.0**21)			;□後方受身フラグON
;〓後方ダウン回避（退避用）
trigger5 = var(59)>=2
trigger5 = fvar(26)<=100
trigger5 = CanRecover
trigger5 = var(47):=Ceil(2.0**21)			;□後方受身フラグON
;〓垂直ダウン回避
trigger6 = var(59)>=2
trigger6 = CanRecover

;□空中受身
[State -1]
Type = ChangeState
Value = 5210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=5050
triggerall = statetype=A
triggerall = Vel Y>-1
;〓前方空中受身（画面端脱出用）
trigger1 = helper(21000),var(1)<=125			;□画面後ろ端から距離125以内
trigger1 = fvar(26)<=125
trigger1 = helper(21000),fvar(11)=[1,10]		;□GuardDist成立時間
trigger1 = InGuardDist||helper(23000),InGuardDist
trigger1 = CanRecover
trigger1 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓後方空中受身
trigger2 = helper(21000),var(1)>=125			;□画面後ろ端から距離125以上
trigger2 = enemynear(var(16)),Const(size.attack.dist)>fvar(26)&&enemynear(var(16)),Const(size.proj.attack.dist)>fvar(26)
trigger2 = helper(21000),fvar(11)=[1,10]		;□GuardDist成立時間
trigger2 = InGuardDist||helper(23000),InGuardDist
trigger2 = CanRecover
trigger2 = var(47):=Ceil(2.0**21)			;□後方受身フラグON
;〓垂直空中受身
trigger3 = helper(21000),fvar(11)=[1,10]		;□GuardDist成立時間
trigger3 = InGuardDist||helper(23000),InGuardDist
trigger3 = CanRecover

;==============================================================================
;■カウンター行動■

;1　EXコマンド投げ【対地】▼発生 1F　確定攻撃（ボスモード、攻撃優先）
;		　【対地】▼発生 8F　確定攻撃（ノーマルモード以下、攻撃優先）
;		　【両用】▼発生10F　予測攻撃（ノーマルモード以下、攻撃優先）
;		　（AIレベル4以上、反応速度による判定あり）

;2　EXゲイザー	　【対地】▼発生27F　予測攻撃（ボスモード、攻撃優先）
;		　【対地】▼発生27F　予測攻撃（ノーマルモード以下、攻撃優先）
;		　（AIレベル3以上、反応速度による判定あり）

;3　EX烈風拳	　【対地】▼発生13F　予測攻撃（ボスモード、攻撃優先）
;		　【対地】▼発生13F　予測攻撃（ノーマルモード以下、攻撃優先）
;		　【対空】▼発生13F　予測攻撃（ボスモード、攻撃優先）
;		　【対空】▼発生15F　予測攻撃（ボスモード、攻撃優先）
;		　【対空】▼発生13F　予測攻撃（ノーマルモード以下、攻撃優先）
;		　【対空】▼発生15F　予測攻撃（ノーマルモード以下、攻撃優先）

;		　【対空】▼発生13F　相殺時割り込み（ボスモード）
;		　【対空】▼発生13F　相殺時割り込み（ノーマルモード以、攻撃優先）
;		　【対地】▼発生13F　相殺時割り込み
;		　（AIレベル3以上、反応速度による判定あり）

;4 EX烈風拳	　【両用】▼発生13F　予測攻撃（対アーマーキャラ）
;		　（AIレベル4以上、反応速度による判定あり）

;5　EXテレポ投げ　【対地】▼発生59F　39F予測→28F距離予測（隙の大きな行動に対して）
;		　【対地】▼発生59F　39F予測→28F距離予測（Projが2個以上発生でぶっぱ）
;		　（AIレベル3以上、反応速度による判定あり）

;6　悪滅	　【対地】▼発生7F　 打撃攻撃予測
;		　【対空】▼発生7F　 打撃攻撃予測
;		　【両用】▼GuardDist反応 射撃対応

;7　4A		　【対空】▼発生10F　近距離斜め上前方（攻撃優先）
;		　（AIレベル2以上、反応速度による判定あり）

;8　4C		　【対空】▼発生5F 　近距離前方	　 （ガード優先）
;　　　　　 		　▼発生7F 　中距離斜め上前方（ガード優先）
;　　　　　		　▼発生9F 　中距離斜め上前方（攻撃優先）
;		　（AIレベル2以上、反応速度による判定あり）

;9　対空投げA	　【対空】▼発生13F　近距離斜め前方  （攻撃優先）
;		　（AIレベル3以上、反応速度による判定あり、ブロ持ちキャラに対して使用率UP）

;10　対空投げB	　【対空】▼発生19F　中距離斜め前方  （攻撃優先）
;			　▼発生24F　遠距離斜め前方  （攻撃優先）
;		　（AIレベル3以上、反応速度による判定あり）

;11 学習済み地上ガー不を察知─→　4Cで反撃
;		　（AIレベル2以上、反応速度による判定あり）

;12 学習済み地上ガー不を察知─→　テレポで回避
;		　（AIレベル3以上、反応速度による判定あり）


;13 P3をぱっちんEXで救出（タッグ専用）
;		　（AIレベル3以上、反応速度による判定あり）

;------------------------------------------------------------------------------

;■EXコマンド投げでカウンター
[State -1]
Type = ChangeState
Value = 2800
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = movetype=A||(var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2		;□投げ無敵測定実験
triggerall = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
;〓反応判定
triggerall = enemynear(var(16)),time>=(10-Ceil(helper(21000),var(59)/1000%100))
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*10)||Ceil(helper(21000),var(59)/1000%100)=10
;〓Near状態
triggerall = enemynear(var(16)),stateno!=[40,49]
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
;〓1F後の予測座標【対地】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = fvar(32)=0
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = enemynear(var(16)),Ctrl=0
trigger1 = enemynear(var(16)),movetype=A
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),animtime<=-1
trigger1 = helper(23000),var(1)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(1)+const(size.ground.front)<=52
;〓8F後の予測座標【対地】（ノーマルモード以下）（対行動）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = fvar(32)<8
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = enemynear(var(16)),movetype!=H||enemynear(var(16)),stateno=[120,139]
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = enemynear(var(16)),animtime<=-9&&enemynear(var(16)),ctrl=0
trigger2 = enemynear(var(16)),prevstateno!=5120
trigger2 = helper(23000),var(8)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(8)+const(size.ground.front)<=35
trigger2 = Ceil(helper(23000),fvar(8))>=0
;〓10F後の予測座標【両用】（ノーマルモード以下）（対攻撃）
trigger3 = Ceil(var(52)/100%10)<=1
trigger3 = fvar(32)<10
trigger3 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger3 = enemynear(var(16)),movetype=A
trigger3 = enemynear(var(16)),HitDefAttr=SCA,AA,AP,AT
trigger3 = enemynear(var(16)),statetype!=L
trigger3 = enemynear(var(16)),animtime<=-11
trigger3 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(10)+const(size.ground.front)<=49
trigger3 = Ceil(helper(23000),fvar(10))>=0

;■EXゲイザーでカウンター
[State -1]
Type = ChangeState
Value = 1302
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),movetype=A
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = helper(21000),var(0)>=150		;□画面端から距離150以上
;〓反応判定
triggerall = enemynear(var(16)),time>=(10-Ceil(helper(21000),var(59)/1000%100))
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*10)||Ceil(helper(21000),var(59)/1000%100)=10
;〓27F後の座標【対地】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = enemynear(var(16)),animtime<=-28
trigger1 = helper(23000),var(27)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(27)+const(size.ground.front)<=48+abs(enemynear(var(16)),animtime+27)
;〓27F後の座標【対地】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = enemynear(var(16)),animtime<=-28
trigger2 = helper(23000),var(27)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(27)+const(size.ground.front)<=48+abs(enemynear(var(16)),animtime+27)

;■EX烈風拳で対空＆カウンター
[State -1]
Type = ChangeState
Value = 1002
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),stateno!=5201
triggerall = enemynear(var(16)),stateno!=5210||(enemynear(var(16)),stateno=5210&&enemynear(var(16)),time>=3)
;〓反応判定
triggerall = enemynear(var(16)),time>=(10-Ceil(helper(21000),var(59)/1000%100))
triggerall = IfElse(enemynear(var(16)),statetype=A,random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*10),random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25))
;〓13F後の予測座標【対地】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = enemynear(var(16)),movetype=A
trigger1 = enemynear(var(16)),HitDefAttr=SC,AA,AP,AT
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),animtime<=-14
trigger1 = helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(13)+const(size.ground.front)<=54
;〓13F後の予測座標【対地】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = enemynear(var(16)),movetype=A
trigger2 = enemynear(var(16)),HitDefAttr=SC,AA,AP,AT
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = enemynear(var(16)),animtime<=-14
trigger2 = helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(13)+const(size.ground.front)<=54
;〓13F後の予測座標【対空】（ボスモード）
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger3 = enemynear(var(16)),movetype!=H||enemynear(var(16)),stateno=[120,155]
trigger3 = Ceil(fvar(31))-14>=0||Ceil(fvar(31))=0
trigger3 = enemynear(var(16)),statetype=A
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=54)||helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(13)+const(size.ground.front)<=54
trigger3 = Ceil(helper(23000),fvar(13))<0&&Ceil(helper(23000),fvar(13))+Ceil(fvar(36))>=-110
;〓15F後の予測座標【対空】（ボスモード）
trigger4 = Ceil(var(52)/100%10)>=2
trigger4 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger4 = enemynear(var(16)),movetype!=H||enemynear(var(16)),stateno=[120,155]
trigger4 = Ceil(fvar(31))-16>=0||Ceil(fvar(31))=0
trigger4 = enemynear(var(16)),statetype=A
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(15)+const(size.ground.front)<=65)||helper(23000),var(15)+const(size.ground.front)>=-15-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(15)+const(size.ground.front)<=65
trigger4 = Ceil(helper(23000),fvar(15))<0&&Ceil(helper(23000),fvar(15))+Ceil(fvar(36))>=-150
;〓13F後の予測座標【対空】（ノーマルモード以下）
trigger5 = Ceil(var(52)/100%10)<=1
trigger5 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger5 = enemynear(var(16)),movetype=A
trigger5 = enemynear(var(16)),statetype=A
trigger5 = enemynear(var(16)),animtime<=-14
trigger5 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=54)||helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(13)+const(size.ground.front)<=54
trigger5 = Ceil(helper(23000),fvar(13))<-10&&Ceil(helper(23000),fvar(13))+Ceil(fvar(36))>=-110
;〓15F後の予測座標【対空】（ノーマルモード以下）
trigger6 = Ceil(var(52)/100%10)<=1
trigger6 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger6 = enemynear(var(16)),movetype=A
trigger6 = enemynear(var(16)),statetype=A
trigger6 = enemynear(var(16)),animtime<=-16
trigger6 = (helper(21000),var(1)<=30&&helper(23000),var(15)+const(size.ground.front)<=65)||helper(23000),var(15)+const(size.ground.front)>=-15-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(15)+const(size.ground.front)<=65
trigger6 = Ceil(helper(23000),fvar(15))<-10&&Ceil(helper(23000),fvar(15))+Ceil(fvar(36))>=-150

[State -1]
Type = ChangeState
Value = 1002
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = numhelper(9002)
triggerall = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)
;〓Near状態
triggerall = enemynear(var(16)),movetype=A
;〓反応判定
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25)
;〓相殺時割り込み13F後の予測座標【対空】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = enemynear(var(16)),statetype=A
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=54)||helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(13)+const(size.ground.front)<=54
trigger1 = Ceil(helper(23000),fvar(13))<=-10&&Ceil(helper(23000),fvar(13))+Ceil(fvar(36))>=-110
;〓相殺時割り込み13F後の予測座標【対空】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = enemynear(var(16)),statetype=A
trigger2 = enemynear(var(16)),animtime<=-14
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=54)||helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(13)+const(size.ground.front)<=54
trigger2 = Ceil(helper(23000),fvar(13))<=-10&&Ceil(helper(23000),fvar(13))+Ceil(fvar(36))>=-110
;〓相殺時割り込み【対地】
trigger3 = enemynear(var(16)),animtime<=-14
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=54)||helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(13)+const(size.ground.front)<=54

;■EX烈風拳でアーマー殺し
[State -1]
Type = ChangeState
Value = 1002
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype!=L
triggerall = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□アーマー

;〓反応判定
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25)||Ceil(helper(21000),var(59)/1000%100)=10

;〓13F後の予測座標【対アーマーキャラ】
trigger1 = ((stateno=[200,299])||(stateno=[420,499]))&&movehit>=1
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(13)+const(size.ground.front)>=-5-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(13)+const(size.ground.front)<=54

;■EXテレポ投げでカウンター	★烈風等が画面上にあるときTフレーム後ガード状態になるか判定してから発動を追加予定
[State -1]
Type = ChangeState
Value = 1102
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = (var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2			;□投げ無敵測定実験
;〓反応判定
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*10)||Ceil(helper(21000),var(59)/1000%100)=10
;〓Near状態
triggerall = enemynear(var(16)),movetype!=I
triggerall = enemynear(var(16)),statetype!=A
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
;〓39F後の座標【対地】
trigger1 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = enemynear(var(16)),animtime<=-39	;◆10Fぐらい延長する？
trigger1 = enemynear(var(16)),movetype!=H
trigger1 = (fvar(26)=[0,50])||helper(23000),var(39)=[-30,414]
trigger1 = Ceil(helper(23000),fvar(39))>=-15
trigger2 = (((stateno=[200,299])||(stateno=[400,499]))&&movecontact)||((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))||((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))
trigger2 = enemynear(var(16)),animtime<=-39	;◆10Fぐらい延長する？
trigger2 = enemynear(var(16)),movetype!=H
trigger2 = (fvar(26)=[0,50])||helper(23000),var(39)=[-30,414]
trigger2 = Ceil(helper(23000),fvar(39))>=-15

;〓39F後の座標【対Proj射撃】			;◆立ち回りへ移動したほうがいい？
trigger3 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = numenemy>=1
trigger3 = enemy(0),numProj>=2
trigger3 = InGuardDist||helper(23000),InGuardDist
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = helper(23000),var(39)+const(size.ground.front)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(39)+const(size.ground.front)<=403
trigger4 = (((stateno=[200,299])||(stateno=[400,499]))&&movecontact)||((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))||((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))
trigger4 = numenemy>=1
trigger4 = enemy(0),numProj>=2
trigger4 = InGuardDist||helper(23000),InGuardDist
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = helper(23000),var(39)+const(size.ground.front)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger4 = helper(23000),var(39)+const(size.ground.front)<=403
trigger5 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = numenemy>=2
trigger5 = enemy(1),numProj>=2
trigger5 = InGuardDist||helper(23000),InGuardDist
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = helper(23000),var(39)+const(size.ground.front)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(39)+const(size.ground.front)<=403
trigger6 = (((stateno=[200,299])||(stateno=[400,499]))&&movecontact)||((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))||((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))
trigger6 = numenemy>=2
trigger6 = enemy(1),numProj>=2
trigger6 = InGuardDist||helper(23000),InGuardDist
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = helper(23000),var(39)+const(size.ground.front)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger6 = helper(23000),var(39)+const(size.ground.front)<=403
;〓39F後の座標【対地】（烈風拳Aヒット中に烈風拳B発生中）
trigger7 = stateno=1001&&time>=21+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger7 = numhelper(1021)>=1
trigger7 = helper(1021),movehit=0
trigger7 = numhelper(1020)>=1
trigger7 = helper(1020),movehit=1
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
trigger7 = enemynear(var(16)),animtime<=-39	;◆10Fぐらい延長する？
trigger7 = (fvar(26)=[0,50])||helper(23000),var(39)=[-30,414]
trigger7 = Ceil(helper(23000),fvar(39))>=-15

trigger8 = stateno=1001&&time>=21+IfElse(Ceil(var(52)/100%10)=0,8,0)
trigger8 = numhelper(1021)>=1
trigger8 = helper(1021),movehit=0
trigger8 = numhelper(1050)>=1
trigger8 = helper(1050),movehit=1
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
trigger8 = enemynear(var(16)),animtime<=-39	;◆10Fぐらい延長する？
trigger8 = (fvar(26)=[0,50])||helper(23000),var(39)=[-30,414]
trigger8 = Ceil(helper(23000),fvar(39))>=-15

;■悪滅でカウンター（打撃カウンター）
[State -1]
Type = ChangeState
Value = 1700
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (power=PowerMax||power>=4000)&&fvar(20)>=600
triggerall = (var(58)&(Ceil(2.0**27)))
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = !NumHelper(1280)&&!NumHelper(1285)				;□地雷設置EX除外
;〓当て身投げ投げ属性攻撃除外
triggerall = !enemynear(var(16)),HitDefAttr=SCA,AT
triggerall = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
triggerall = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(41)/10000)&&enemy(0),stateno!=Ceil(var(42)/10000)&&enemy(0),stateno!=Ceil(var(43)/10000)&&enemy(0),stateno!=Ceil(var(44)/10000))
;〓Near状態
triggerall = enemynear(var(16)),stateno>=200
triggerall = enemynear(var(16)),movetype=A
triggerall = enemynear(var(16)),time<=2
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
;〓反応判定
triggerall = (Life<=enemynear(var(16)),Life&&(LifeMax/10.0)*7>=Life)||((enemynear(var(16)),LifeMax/10.0)*6>=enemynear(var(16)),Life)
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25*IfElse((RoundsExisted=0&&(TeamMode=single)),1,2))
;〓7F後の予測座標【対地】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),animtime<=-20				;□推定中攻撃以上
trigger1 = helper(23000),var(7)+const(size.ground.front)>=35
trigger1 = helper(23000),var(7)+const(size.ground.front)<=150
;〓7F後の予測座標【対地】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = enemynear(var(16)),animtime<=-20				;□推定中攻撃以上
trigger2 = helper(23000),var(7)+const(size.ground.front)>=35
trigger2 = helper(23000),var(7)+const(size.ground.front)<=150
;〓7F後の予測座標【対空】（ボスモード）
trigger3 = Ceil(var(52)/100%10)>=2
trigger3 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger3 = enemynear(var(16)),statetype=A
trigger3 = enemynear(var(16)),vel x>=0&&enemynear(var(16)),vel y>0	;□前方垂直ジャンプ落下中
trigger3 = helper(23000),var(7)+const(size.ground.front)=[30,100]
trigger3 = Ceil(helper(23000),fvar(7))<0&&Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-125,-25]
;〓7F後の予測座標【対空】（ノーマルモード以下）
trigger4 = Ceil(var(52)/100%10)<=1
trigger4 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger4 = enemynear(var(16)),statetype=A
trigger4 = enemynear(var(16)),vel x>=0&&enemynear(var(16)),vel y>0	;□前方垂直ジャンプ落下中
trigger4 = helper(23000),var(7)+const(size.ground.front)=[15,120]
trigger4 = 1;Ceil(helper(23000),fvar(7))<0&&Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-125,-25]
;〓7F後の予測座標【対地】（相殺）
trigger5 = numhelper(9002)
trigger5 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = enemynear(var(16)),animtime<=-20				;□推定中攻撃以上
trigger5 = helper(23000),var(7)+const(size.ground.front)>=35
trigger5 = helper(23000),var(7)+const(size.ground.front)<=150

;■悪滅でカウンター（射撃カウンター）
[State -1]
Type = ChangeState
Value = 1700
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (power=PowerMax||power>=4000)&&fvar(20)>=600
triggerall = (var(58)&(Ceil(2.0**27)))
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = !NumHelper(1280)&&!NumHelper(1285)				;□地雷設置EX除外
;〓当て身投げ投げ属性攻撃除外
triggerall = !enemynear(var(16)),HitDefAttr=SCA,AT
triggerall = (enemy(0),stateno=0&&enemynear(var(16)),stateno=enemy(0),stateno)||(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
triggerall = (enemy(0),stateno=0&&enemynear(var(16)),stateno=enemy(0),stateno)||(enemy(0),stateno!=Ceil(var(41)/10000)&&enemy(0),stateno!=Ceil(var(42)/10000)&&enemy(0),stateno!=Ceil(var(43)/10000)&&enemy(0),stateno!=Ceil(var(44)/10000))
;〓Near状態
triggerall = enemynear(var(16)),movetype!=H
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
;〓反応判定
triggerall = (Life<=enemynear(var(16)),Life&&(LifeMax/10.0)*7>=Life)||((enemynear(var(16)),LifeMax/10.0)*6>=enemynear(var(16)),Life)||Ceil(var(52)/100%10)>=2
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25*IfElse((RoundsExisted=0&&(TeamMode=single)),1,2))
;〓ヘルパー攻撃到達予想【対射撃】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[-10,15]
trigger1 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)=[-140,0]
;〓ヘルパー攻撃到達予想【対射撃】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = helper(25000),fvar(10)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[-10,15]
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)=[-140,0]
;〓ガード成立状態【対射撃】（相殺）
trigger3 = numhelper(9002)
trigger3 = helper(9002),var(12)>=1||helper(9002),GetHitVar(hitshaketime)
trigger3 = InGuardDist=1
;〓ガード成立状態【対射撃】（対Proj）
trigger4 = enemy(0),numProj>=1
trigger4 = helper(21000),fvar(11)=[1,2]				;□GuardDist成立時間
trigger4 = enemynear(var(16)),Const(size.attack.dist)<fvar(26)&&enemynear(var(16)),Const(size.proj.attack.dist)<fvar(26)
trigger4 = InGuardDist=1
trigger5 = numenemy>1
trigger5 = enemy(1),numProj>=1
trigger5 = helper(21000),fvar(11)=[1,2]				;□GuardDist成立時間
trigger5 = enemynear(var(16)),Const(size.attack.dist)<fvar(26)&&enemynear(var(16)),Const(size.proj.attack.dist)<fvar(26)
trigger5 = InGuardDist=1

;■4Aで対空
[State -1]
Type = ChangeState
Value = 205
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**16)))=0			;□5B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**20)))=0			;□4B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),stateno!=5201
triggerall = enemynear(var(16)),stateno!=5210||(enemynear(var(16)),stateno=5210&&enemynear(var(16)),time>=6)
triggerall = (var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2		;□打撃無敵測定実験
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
triggerall = enemynear(var(16)),pos y<=-30
triggerall = enemynear(var(16)),vel y>=-1	;◆-2
triggerall = enemynear(var(16)),NumProj=0||(InGuardDist=0&&helper(23000),InGuardDist=0)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓10F後の予測座標
trigger1 = Ceil(fvar(31))-11>=0||Ceil(fvar(31))=0
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(10)+const(size.ground.front)<=70)||helper(23000),var(10)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=70
trigger1 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-110,-80]

;■4Cで対空
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**16)))=0			;□5B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**20)))=0			;□4B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)||Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)	;□打撃無敵測定実験＆対アーマー
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
triggerall = enemynear(var(16)),pos y<=-25
triggerall = enemynear(var(16)),vel y>=-1	;◆-2
triggerall = enemynear(var(16)),stateno!=5201
triggerall = enemynear(var(16)),stateno!=5210||(enemynear(var(16)),stateno=5210&&enemynear(var(16)),time>=7)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓5F後の予測座標
trigger1 = Ceil(fvar(31))-6>=0||Ceil(fvar(31))=0
trigger1 = enemynear(var(16)),NumProj=0&&(InGuardDist=0&&helper(23000),InGuardDist=0)
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.ground.front)<=50)||helper(23000),var(5)+const(size.ground.front)>=10-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=50
trigger1 = Ceil(helper(23000),fvar(5))+Ceil(fvar(36))>=-90
trigger1 = Ceil(helper(23000),fvar(5))<=-20
;〓7F後の予測座標
trigger2 = Ceil(fvar(31))-8>=0||Ceil(fvar(31))=0
trigger2 = enemynear(var(16)),NumProj=0&&(InGuardDist=0&&helper(23000),InGuardDist=0)
trigger2 = (helper(21000),var(1)<=50&&helper(23000),var(7)+const(size.ground.front)<=80)||helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(7)+const(size.ground.front)<=80
trigger2 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))>=-120
trigger2 = Ceil(helper(23000),fvar(7))<=-20
;〓9F後の予測座標
trigger3 = Ceil(fvar(31))-10>=0||Ceil(fvar(31))=0
trigger3 = (InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=3)
trigger3 = (helper(21000),var(1)<=60&&helper(23000),var(9)+const(size.ground.front)<=110)||helper(23000),var(9)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(9)+const(size.ground.front)<=110
trigger3 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-140
trigger3 = Ceil(helper(23000),fvar(9))<=-20

;■対空投げAで対空（ブロ警戒中使用確率UP）
[State -1]
Type = ChangeState
Value = 1500
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**16)))=0			;□5B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**20)))=0			;□4B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2		;□投げ無敵測定実験
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
triggerall = enemynear(var(16)),pos y<=-30
triggerall = enemynear(var(16)),vel y>=0	;◆-2
triggerall = enemynear(var(16)),NumProj=0||(InGuardDist=0&&helper(23000),InGuardDist=0)
;〓反応判定
triggerall = Ceil(var(55)/10000%10)>=1||random<=Ceil(helper(21000),var(59)/1000%100)*10
;〓13F後の予測座標
trigger1 = Ceil(fvar(31))-14>=0||Ceil(fvar(31))=0
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=64)||helper(23000),var(13)+const(size.ground.front)>=40-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(13)+const(size.ground.front)<=64
trigger1 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120+Ceil(fvar(36)),-70-Ceil(fvar(36))]
;〓16F後の予測座標
trigger2 = Ceil(fvar(31))-17>=0||Ceil(fvar(31))=0
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=64)||helper(23000),var(16)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(16)+const(size.ground.front)<=75
trigger2 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-130+Ceil(fvar(36)),-30-Ceil(fvar(36))]

;■対空投げBで対空
[State -1]
Type = ChangeState
Value = 1530
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**16)))=0			;□5B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**20)))=0			;□4B始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = helper(21000),var(0)>=125				;□画面端から125以上
triggerall = (var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2		;□投げ無敵測定実験
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
triggerall = fvar(26)!=[-30,30]
triggerall = enemynear(var(16)),vel y>=-1	;◆-2
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓19F後の予測座標
trigger1 = Ceil(fvar(31))-20>=0||Ceil(fvar(31))=0
trigger1 = helper(23000),var(19)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(19)+const(size.ground.front)<=160
trigger1 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-165,-115]	;◆上下範囲縮小中
;〓24F後の予測座標
trigger2 = Ceil(fvar(31))-25>=0||Ceil(fvar(31))=0
trigger2 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(24)+const(size.ground.front)<=185
trigger2 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger3 = Ceil(fvar(31))-25>=0||Ceil(fvar(31))=0
trigger3 = helper(23000),var(24)+const(size.ground.front)>=130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(24)+const(size.ground.front)<=150
trigger3 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]

;■学習済みガー不を察知→4Cで反撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno
;〓Near距離測定
triggerall = fvar(26)<=95
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓1番記録ガー不
trigger1 = enemy(0),stateno=Ceil(var(30)/1000)
trigger1 = Ceil(var(30)/10%100)-enemy(0),time>=10
;〓2番記録ガー不
trigger2 = enemy(0),stateno=Ceil(var(31)/1000)
trigger2 = Ceil(var(31)/10%100)-enemy(0),time>=10
;〓3番記録ガー不
trigger3 = enemy(0),stateno=Ceil(var(32)/1000)
trigger3 = Ceil(var(32)/10%100)-enemy(0),time>=10

;■ぱっちんEXでカウンター（タッグP3救出専用）
[State -1]
Type = ChangeState
Value = 1402
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = power>=1000
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = NumHelper(1440)=0
triggerall = NumHelper(1442)=0
triggerall = NumHelper(1452)=0
triggerall = NumHelper(1460)=0
triggerall = NumHelper(1462)=0
;〓反応判定
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*10)||Ceil(helper(21000),var(59)/1000%100)=10
;〓P3状態
triggerall = NumPartner>=1
triggerall = partner,alive
triggerall = partner,movetype=H&&partner,stateno!=[150,159]
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
;〓Near状態
triggerall = (InGuardDist=0&&helper(23000),InGuardDist=0)||fvar(26)>=125
;〓18F後の予測座標【両用】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)||(((stateno=[200,299])||(stateno=[400,499]))&&(time>=10||movecontact))
trigger1 = helper(23000),var(18)+const(size.ground.front)=[170,250]
trigger1 = Ceil(helper(23000),fvar(18))>=-150
;〓13F後の予測座標【両用】（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=1)||((stateno=20||stateno=40)&&time=0)||(stateno=[120,140])||(((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger2 = helper(23000),var(18)+const(size.ground.front)=[170,250]
trigger2 = Ceil(helper(23000),fvar(18))>=-150


;==============================================================================
;■回避行動■

;〓キャンセル系回避
;1  ○地雷設置＆烈風拳中に攻撃を察知─→テレポBで回避
;		　（AIレベル3以上、反応速度による判定あり）

;2  ○地雷設置＆烈風拳中に攻撃を察知─→テレポAで回避
;		　（AIレベル2以上、反応速度による判定あり）

;3  ○通常攻撃中に攻撃を察知─→テレポBで接近
;		　（AIレベル3以上、反応速度による判定あり）

;4  ○通常攻撃中に攻撃を察知─→テレポAで回避
;		　（AIレベル3以上、反応速度による判定あり）

;〓射撃系回避
;5  ○射撃攻撃をジャンプで回避───┬→（ヘルパー射撃）──→ジャンプで回避（射撃ヘルパー4個まで）
; 　　　　　　　　　　　　　　　　　├→（Proj射撃）────→ジャンプで回避
; 　　　　　　　　　　　　　　　　　└→（Proj射撃）────→ジャンプで回避（確定飛び込み）
;		　（AIレベル2以上、反応速度による判定あり）

;6  ○射撃攻撃をハイジャンプで回避─┬→（ヘルパー射撃）──→ハイジャンプで回避（15～20F後の予測座標射撃ヘルパー10個まで）
;　 　　　　　　　　　　　　　　　　├→（ヘルパーProj射撃）→ハイジャンプで回避（20F緊急接近）
; 　　　　　　　　　　　　　　　　　├→（ヘルパーProj射撃）→ハイジャンプで回避（30F確定飛び込み）
; 　　　　　　　　　　　　　　　　　└→（Proj射撃）────→ハイジャンプで回避
;		　（AIレベル2以上、反応速度による判定あり）

;7  ○ダッシュで射撃攻撃に間合いを詰める─┬→（ヘルパー射撃）─→ダッシュで接近
; 　　　　　　　　　　　　　　　　　　　　└→（Proj射撃）───→ダッシュで接近
;		　（AIレベル2以上、反応速度による判定あり）

;8  ○テレポBで射撃攻撃の裏へ ─┬→（ヘルパー射撃）─→テレポB（低速攻撃ヘルパー）
; 　　　　　　　　　　　　　　　├→（ヘルパー射撃）─→テレポB（上空も覆う攻撃ヘルパー弾幕）
; 　　　　　　　　　　　　　　　└→（Proj射撃）───→テレポB（2個以上）
;		　（AIレベル2以上、反応速度による判定あり）


;9  ○射撃攻撃をロー・ブロッサムで回避─┬→（ヘルパーProj射撃）─→展開（遠距離ガード時間）
; 　　　　　　　　　　　　　　　　　　　└→（ヘルパー射撃）───→展開（10F緊急回避）
;		　（AIレベル3以上、反応速度による判定あり）


;10 ○空中後ダッシュで空中攻撃回避（打撃＆Proj）
;		　（AIレベル3以上、反応速度による判定あり）

;11 ○空中前2段ジャンプでヘルパー飛び道具回避
;		　（AIレベル4以上、反応速度による判定あり）

;12 ○空中前ダッシュでヘルパー飛び道具回避─┬→（P2近距離）空中ダッシュ5Aで回避攻撃
; 　　　　　　　　　　　　　　　　　　　　　└→（P2中距離）空中ダッシュ5Bで回避攻撃
;		　（AIレベル4以上、反応速度による判定あり）

;〓設置系回避
;13 ○設置ヘルパーが近距離にあり──→（P2近距離）┬→テレポAで回避
; 　　　　　　　　　　　　　　　　　　　　　　　　└→テレポBで裏回り

;〓対アーマーキャラ系
;14 ○アーマーキャラにテレポBで接近──→（中遠距離）─→テレポBで攻撃回避接近

;------------------------------------------------------------------------------

;■学習済みガー不を察知→テレポAで回避
[State -1]
type = ChangeState
Value = 1100
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓1番記録ガー不
trigger1 = enemy(0),stateno=Ceil(var(30)/1000)
trigger1 = Ceil(var(30)/10%100)-enemy(0),time>=1
;〓2番記録ガー不
trigger2 = enemy(0),stateno=Ceil(var(31)/1000)
trigger2 = Ceil(var(31)/10%100)-enemy(0),time>=1
;〓3番記録ガー不
trigger3 = enemy(0),stateno=Ceil(var(32)/1000)
trigger3 = Ceil(var(32)/10%100)-enemy(0),time>=1
;〓1番記録空中ガー不
trigger4 = enemy(0),stateno=Ceil(var(35))
trigger4 = InGuardDist=1||helper(23000),InGuardDist=1
trigger4 = fvar(26)<=125
trigger4 = var(47):=Ceil(2.0**7)
;〓2番記録空中ガー不
trigger5 = enemy(0),stateno=Ceil(var(36))
trigger5 = InGuardDist=1||helper(23000),InGuardDist=1
trigger5 = fvar(26)<=125
trigger5 = var(47):=Ceil(2.0**7)

;■学習済みガー不を察知→テレポBで回避
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓1番記録空中ガー不
trigger1 = enemy(0),stateno=Ceil(var(35))
trigger1 = fvar(26)>=125
trigger1 = var(47):=Ceil(2.0**7)
;〓2番記録空中ガー不
trigger2 = enemy(0),stateno=Ceil(var(36))
trigger2 = fvar(26)>=125
trigger2 = var(47):=Ceil(2.0**7)

;■地雷設置＆烈風拳中に攻撃を察知→テレポBで回避
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)||((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ifelse(Ceil(var(45)/10%1000)>=180,Ceil(helper(21000),var(59)/1000%100)*80,Ceil(helper(21000),var(59)/1000%100)*50)||Ceil(helper(21000),var(59)/1000%100)=10
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10||Ceil(var(45)/10%1000)>=180
;〓打撃＆射撃攻撃（近距離回避）
trigger1 = helper(21000),var(1)<=130&&fvar(26)<=130
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AA,AP
trigger1 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger1 = var(47):=Ceil(2.0**7)
;〓打撃＆射撃攻撃（遠距離回避）
trigger2 = !enemynear(var(16)),HitDefAttr=SCA,AT
trigger2 = fvar(26)>=200
trigger2 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger2 = var(47):=Ceil(2.0**7)
;〓ガード範囲（烈風拳A追尾回避）
trigger3 = numhelper(1020)>=1||numhelper(1050)>=1
trigger3 = helper(21000),var(0)-fvar(26)>=125
trigger3 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=230
trigger3 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger3 = var(47):=Ceil(2.0**7)
;〓地雷設置EX使用時（挟み込み回避）
trigger4 = stateno=1202
trigger4 = fvar(26)=[0,120]
trigger4 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger4 = var(47):=Ceil(2.0**7)

;■地雷設置＆烈風拳中に攻撃を察知→テレポAで回避
[State -1]
type = ChangeState
Value = 1100
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)||((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓打撃属＆射撃属性攻撃（回避）
trigger1 = numhelper(3205)=0
trigger1 = !enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger1 = var(47):=Ceil(2.0**7)
;〓打撃属＆射撃属性攻撃（回避）ロー・ブロッサム発動時
trigger2 = numhelper(3205)
trigger2 = enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger2 = !enemynear(var(16)),HitDefAttr=SCA,AT
trigger2 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger2 = var(47):=Ceil(2.0**7)
;〓設置ヘルパー近距離
trigger3 = helper(21000),var(1)>=100
trigger3 = helper(25000),fvar(5)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(5)))
trigger3 = helper(25000),fvar(6)=0&&helper(25000),fvar(7)=0&&helper(25000),fvar(8)=0&&helper(25000),fvar(9)=0
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(5))),pos x*facing)-(pos x*facing))=[-30,30]
trigger3 = 1;PlayerID(Ceil(helper(25000),fvar(5))),time>=60
trigger3 = var(47):=Ceil(2.0**8)

;■通常攻撃中に攻撃を察知→テレポBで接近
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓打撃属＆射撃属性攻撃（回避）
trigger1 = helper(21000),var(0)>=130
trigger1 = enemynear(var(16)),animtime<=-75||helper(21000),var(1)<=140
trigger1 = !enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger1 = var(47):=Ceil(2.0**7)

;■通常攻撃中に攻撃を察知→テレポAで回避
[State -1]
type = ChangeState
Value = 1100
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[200,299])||(stateno=[400,499]))&&movecontact
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓打撃属＆射撃属性攻撃（回避）
trigger1 = helper(21000),var(1)>=130
trigger1 = !enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (InGuardDist=1||helper(23000),InGuardDist=1)
trigger1 = var(47):=Ceil(2.0**7)

;■射撃攻撃をジャンプで回避
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓P1状態
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50

;〓15～20F後のヘルパー射撃予測座標（射撃回避）【前方ジャンプフラグON】（1個）
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger1 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-90
trigger1 = fvar(26)=[50,220]
trigger1 = var(47):=Ceil(2.0**15)
;〓15～20F後のヘルパー射撃予測座標（射撃回避）【前方ジャンプフラグON】（2個）
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-90
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-90
trigger2 = fvar(26)=[50,220]
trigger2 = var(47):=Ceil(2.0**15)
;〓15～20F後のヘルパー射撃予測座標（射撃回避）【前方ジャンプフラグON】（3個）
trigger3 = (var(47)&(Ceil(2.0**15)))=0
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger3 = helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-90
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-90
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-90
trigger3 = fvar(26)=[50,220]
trigger3 = var(47):=Ceil(2.0**15)
;〓15～20F後のヘルパー射撃予測座標（射撃回避）【前方ジャンプフラグON】（4個以上）
trigger4 = (var(47)&(Ceil(2.0**15)))=0
trigger4 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger4 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-90
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-90
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-90
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-90
trigger4 = fvar(26)=[50,220]
trigger4 = var(47):=Ceil(2.0**15)
;〓Proj射撃（射撃回避）【前方ジャンプフラグON】
trigger5 = (var(47)&(Ceil(2.0**15)))=0
trigger5 = PrevStateNo!=[120,140]
trigger5 = enemy(0),movetype=A
trigger5 = enemy(0),Ctrl=0&&enemy(0),animtime<=-25
trigger5 = enemy(0),NumProj>0
trigger5 = enemy(0),Const(size.proj.attack.dist)<=fvar(26)
trigger5 = InGuardDist=1&&helper(23000),InGuardDist=0
trigger5 = fvar(26)=[50,220]
trigger5 = var(47):=Ceil(2.0**15)
trigger6 = numenemy>1
trigger6 = (var(47)&(Ceil(2.0**15)))=0
trigger6 = PrevStateNo!=[120,140]
trigger6 = enemy(1),movetype=A
trigger6 = enemy(1),Ctrl=0&&enemy(1),animtime<=-25
trigger6 = enemy(1),NumProj>0
trigger6 = enemy(1),Const(size.proj.attack.dist)<=fvar(26)
trigger6 = InGuardDist=1&&helper(23000),InGuardDist=0
trigger6 = fvar(26)=[50,220]
trigger6 = var(47):=Ceil(2.0**15)
;〓Proj射撃（確定飛込み）【前方ジャンプフラグON】
trigger7 = (var(47)&(Ceil(2.0**15)))=0
trigger7 = PrevStateNo!=[120,140]
trigger7 = enemy(0),movetype=A
trigger7 = enemy(0),Ctrl=0&&enemy(0),animtime<=-39
trigger7 = enemy(0),NumProj>0
trigger7 = enemy(0),Const(size.proj.attack.dist)<=fvar(26)
trigger7 = InGuardDist=0||helper(23000),InGuardDist=0
trigger7 = fvar(26)=[50,220]
trigger7 = var(47):=Ceil(2.0**15)
trigger8 = PrevStateNo!=[120,140]
trigger8 = numenemy>1
trigger8 = (var(47)&(Ceil(2.0**15)))=0
trigger8 = enemy(1),movetype=A
trigger8 = enemy(1),Ctrl=0&&enemy(1),animtime<=-39
trigger8 = enemy(1),NumProj>0
trigger8 = enemy(1),Const(size.proj.attack.dist)<=fvar(26)
trigger8 = InGuardDist=0||helper(23000),InGuardDist=0
trigger8 = fvar(26)=[50,220]
trigger8 = var(47):=Ceil(2.0**15)

;■射撃攻撃をハイジャンプで回避
[State -1]
type = ChangeState
Value = 43
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓P1状態
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50

;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（1個）
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger1 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger1 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger1 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（2個）
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger2 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger2 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger2 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger2 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（3個）
trigger3 = (var(47)&(Ceil(2.0**15)))=0
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger3 = helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger3 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger3 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger3 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（4個）
trigger4 = (var(47)&(Ceil(2.0**15)))=0
trigger4 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger4 = helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger4 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger4 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger4 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger4 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger4 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger4 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger4 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（5個）
trigger5 = (var(47)&(Ceil(2.0**15)))=0
trigger5 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger5 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger5 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger5 = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger5 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger5 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger5 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger5 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger5 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger5 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger5 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger5 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（6個）
trigger6 = (var(47)&(Ceil(2.0**15)))=0
trigger6 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger6 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger6 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger6 = helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger6 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger6 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger6 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger6 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger6 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger6 = Ceil((PlayerID(Ceil(helper(25000),fvar(15))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger6 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger6 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger6 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（7個）
trigger7 = (var(47)&(Ceil(2.0**15)))=0
trigger7 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)&&helper(25000),fvar(16)
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger7 = PlayerIDExist(Ceil(helper(25000),fvar(16)))
trigger7 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger7 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger7 = helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger7 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(15))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil((PlayerID(Ceil(helper(25000),fvar(16))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger7 = Ceil(PlayerID(Ceil(helper(25000),fvar(16))),pos y-pos y)-40>=-140
trigger7 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger7 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger7 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（8個）
trigger8 = (var(47)&(Ceil(2.0**15)))=0
trigger8 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)&&helper(25000),fvar(16)&&helper(25000),fvar(17)
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(16)))
trigger8 = PlayerIDExist(Ceil(helper(25000),fvar(17)))
trigger8 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger8 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger8 = helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger8 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(15))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(16))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil((PlayerID(Ceil(helper(25000),fvar(17))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(16))),pos y-pos y)-40>=-140
trigger8 = Ceil(PlayerID(Ceil(helper(25000),fvar(17))),pos y-pos y)-40>=-140
trigger8 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger8 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger8 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（9個）
trigger9 = (var(47)&(Ceil(2.0**15)))=0
trigger9 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)&&helper(25000),fvar(16)&&helper(25000),fvar(17)&&helper(25000),fvar(18)
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(16)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(17)))
trigger9 = PlayerIDExist(Ceil(helper(25000),fvar(18)))
trigger9 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger9 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger9 = helper(25000),fvar(19)=0
trigger9 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(15))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(16))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(17))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil((PlayerID(Ceil(helper(25000),fvar(18))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(16))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(17))),pos y-pos y)-40>=-140
trigger9 = Ceil(PlayerID(Ceil(helper(25000),fvar(18))),pos y-pos y)-40>=-140
trigger9 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger9 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger9 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15～20F後の予測座標（射撃回避）【前方ハイジャンプフラグON】（ヘルパー射撃用）（10個）
trigger10 = (var(47)&(Ceil(2.0**15)))=0
trigger10 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)&&helper(25000),fvar(16)&&helper(25000),fvar(17)&&helper(25000),fvar(18)&&helper(25000),fvar(19)
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(16)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(17)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(18)))
trigger10 = PlayerIDExist(Ceil(helper(25000),fvar(19)))
trigger10 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger10 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger10 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,20]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(15))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(16))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(17))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(18))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil((PlayerID(Ceil(helper(25000),fvar(19))),pos x*facing)-(pos x*facing)-(50))=[0,200]
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(16))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(17))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(18))),pos y-pos y)-40>=-140
trigger10 = Ceil(PlayerID(Ceil(helper(25000),fvar(19))),pos y-pos y)-40>=-140
trigger10 = fvar(26)>=210-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger10 = fvar(26)<=340-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger10 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓20F後の予測座標（緊急接近）【前方ハイジャンプフラグON】
trigger11 = (var(47)&(Ceil(2.0**15)))=0
trigger11 = helper(21000),fvar(10)>=120	;□遠距離ガード時間
trigger11 = enemynear(var(16)),movetype=A||(InGuardDist||helper(23000),InGuardDist)
trigger11 = helper(23000),var(20)+const(size.ground.front)>=220-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger11 = helper(23000),var(20)+const(size.ground.front)<=350-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger11 = Ceil(helper(23000),fvar(20))>=-50
trigger11 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓30F後の予測座標（確定飛込み）【前方ハイジャンプフラグON】
trigger12 = (var(47)&(Ceil(2.0**15)))=0
trigger12 = InGuardDist=0||helper(23000),InGuardDist=0
trigger12 = enemynear(var(16)),Ctrl=0&&enemynear(var(16)),animtime<=-48
trigger12 = helper(23000),var(30)+const(size.ground.front)>=220-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger12 = helper(23000),var(30)+const(size.ground.front)<=350-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger12 = Ceil(helper(23000),fvar(30))>=-10
trigger12 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓Proj射撃（射撃回避）【前方ハイジャンプフラグON】
trigger13 = (var(47)&(Ceil(2.0**15)))=0
trigger13 = PrevStateNo!=[120,140]
trigger13 = enemy(0),movetype=A
trigger13 = enemy(0),Ctrl=0&&enemy(0),animtime<=-25
trigger13 = enemy(0),NumProj>0
trigger13 = enemy(0),Const(size.proj.attack.dist)<=fvar(26)
trigger13 = InGuardDist=1&&helper(23000),InGuardDist=0
trigger13 = fvar(26)>=220-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger13 = fvar(26)<=350-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger13 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
trigger14 = numenemy>1
trigger14 = (var(47)&(Ceil(2.0**15)))=0
trigger14 = PrevStateNo!=[120,140]
trigger14 = enemy(1),movetype=A
trigger14 = enemy(1),Ctrl=0&&enemy(1),animtime<=-25
trigger14 = enemy(1),NumProj>0
trigger14 = enemy(1),Const(size.proj.attack.dist)<=fvar(26)
trigger14 = InGuardDist=1&&helper(23000),InGuardDist=0
trigger14 = fvar(26)>=220-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger14 = fvar(26)<=350-IfElse(Ceil(var(52)/100%10)=0,50,0)
trigger14 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;●ダッシュで射撃攻撃に間合いを詰める（遠距離用）【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)))=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
triggerall = fvar(26)>=170

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50			;□個別反応速度
;〓攻撃ヘルパー（1個）【ダッシュ短距離接近フラグON】
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = Ceil((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing))=[0,500]
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)>=25
trigger1 = var(47):=Ceil(2.0**10)
;〓攻撃ヘルパー（2個）【ダッシュ短距離接近フラグON】
trigger2 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger2 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = Ceil((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing))=[0,500]
trigger2 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing))=[0,500]
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)>=25
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)>=25
trigger2 = var(47):=Ceil(2.0**10)
;〓攻撃ヘルパー（3個以上）【ダッシュ短距離接近フラグON】
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(12))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing))=[0,500]
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing))=[0,500]
trigger3 = Ceil((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing))=[0,500]
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)>=25
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)>=25
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(12))),vel x)>=25
trigger3 = var(47):=Ceil(2.0**10)
;〓Proj射撃【ダッシュ短距離接近フラグON】
trigger4 = enemy(0),NumProj>0
trigger4 = enemy(0),Const(size.proj.attack.dist)<=fvar(26)
trigger4 = var(47):=Ceil(2.0**10)
trigger5 = numenemy>1
trigger5 = enemy(1),NumProj>0
trigger5 = enemy(1),Const(size.proj.attack.dist)<=fvar(26)
trigger5 = var(47):=Ceil(2.0**10)

;●テレポBで射撃攻撃の裏へ【射撃回避テレポ済みフラグON】
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓低速攻撃ヘルパー回避（X速度5以下）【回避テレポ済みフラグON】
trigger1 = helper(21000),var(0)>=250
trigger1 = fvar(26)>=200
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[40,50]
trigger1 = var(4):=2
trigger1 = var(47):=Ceil(2.0**24)
;〓対上空も覆う攻撃ヘルパー弾幕（2個）【回避テレポ済みフラグON】
trigger2 = helper(21000),var(0)>=210
trigger2 = fvar(26)>=200
trigger2 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[30,50]
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140
trigger2 = var(4):=2
trigger2 = var(47):=Ceil(2.0**24)
;〓対上空も覆う攻撃ヘルパー弾幕（3個）【回避テレポ済みフラグON】
trigger3 = helper(21000),var(0)>=210
trigger3 = fvar(26)>=200
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger3 = helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[20,50]
trigger3 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger3 = var(4):=2
trigger3 = var(47):=Ceil(2.0**24)
;〓対上空も覆う攻撃ヘルパー弾幕（4個）【回避テレポ済みフラグON】
trigger4 = helper(21000),var(0)>=210
trigger4 = fvar(26)>=200
trigger4 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger4 = helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger4 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,50]
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger4 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140
trigger4 = var(4):=2
trigger4 = var(47):=Ceil(2.0**24)
;〓対上空も覆う攻撃ヘルパー弾幕（5個）【回避テレポ済みフラグON】
trigger5 = helper(21000),var(0)>=210
trigger5 = fvar(26)>=200
trigger5 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger5 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger5 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger5 = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger5 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,50]
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger5 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140
trigger5 = var(4):=2
trigger5 = var(47):=Ceil(2.0**24)
;〓対上空も覆う攻撃ヘルパー弾幕（6個以上）【回避テレポ済みフラグON】
trigger6 = helper(21000),var(0)>=210
trigger6 = fvar(26)>=200
trigger6 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)&&helper(25000),fvar(15)
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger6 = PlayerIDExist(Ceil(helper(25000),fvar(15)))
trigger6 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger6 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger6 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[15,50]
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y)-40>=-140
trigger6 = Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y)-40>=-140||Ceil(PlayerID(Ceil(helper(25000),fvar(15))),pos y-pos y)-40>=-140
trigger6 = var(4):=2
trigger6 = var(47):=Ceil(2.0**24)
;〓Proj射撃（2個以上）【回避テレポ済みフラグON】
trigger7 = enemy(0),NumProj>1
trigger7 = enemy(0),Const(size.proj.attack.dist)<=fvar(26)
trigger7 = fvar(26)>=200
trigger7 = var(4):=2
trigger7 = var(47):=Ceil(2.0**24)
trigger8 = numenemy>1
trigger8 = enemy(1),NumProj>1
trigger8 = enemy(1),Const(size.proj.attack.dist)<=fvar(26)
trigger8 = fvar(26)>=200
trigger8 = var(4):=2
trigger8 = var(47):=Ceil(2.0**24)
;〓遠距離固め脱出【回避テレポ済みフラグON】
trigger9 = InGuardDist||helper(23000),InGuardDist
trigger9 = random<=Ceil(helper(21000),var(59)/1000%100)*10	;□確率判定
trigger9 = helper(21000),fvar(10)<=160				;□遠距離ガード時間
trigger9 = fvar(26)>=220
trigger9 = var(4):=2
trigger9 = var(47):=Ceil(2.0**24)

;■射撃攻撃をロー・ブロッサムで回避
[State -1]
type = ChangeState
Value = 3200
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**26)))
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = alive=1&&Ceil(var(53)/1000%10)>=1		;□暗殺帳ON
triggerall = !NumHelper(3205)&&!NumHelper(3310)		;□花弁本体ヘルパー＆瘴気結界ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=4			;□4冊消費
;〓発動条件
triggerall = (var(46)&(Ceil(2.0**17)))			;□ロー・ブロッサム使用判定ON
triggerall = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)



triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)>=5.0)||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓射撃緊急回避展開
trigger1 = enemynear(var(16)),movetype=A||(InGuardDist||helper(23000),InGuardDist)
trigger1 = helper(21000),fvar(10)>=120		;□遠距離ガード時間
;〓0～10F後のヘルパー射撃予測座標（射撃回避）（1個以上）
trigger2 = helper(25000),fvar(10)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[0,10]
trigger2 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)-40>=-90
trigger2 = fvar(26)>=100

;■空中後ダッシュで空中攻撃回避
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = statetype=A
triggerall = stateno!=115||(stateno=115&&time>=20)
;〓反応判定
triggerall = enemynear(var(16)),time>=(10-Ceil(helper(21000),var(59)/1000%100))
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*75||Ceil(helper(21000),var(59)/1000%100)=10
;〓打撃属性攻撃
trigger1 = Ctrl
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AA
trigger1 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger2 = stateno=650&&numhelper(662)=1
trigger2 = helper(662),movecontact&&time>5
trigger2 = enemynear(var(16)),HitDefAttr=SCA,AA
trigger2 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger3 = stateno=650&&numhelper(663)=1
trigger3 = helper(663),movecontact&&time>5
trigger3 = enemynear(var(16)),HitDefAttr=SCA,AA
trigger3 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger4 = stateno=650&&numhelper(664)=1
trigger4 = helper(664),movecontact&&time>5
trigger4 = enemynear(var(16)),HitDefAttr=SCA,AA
trigger4 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
;〓投げ属性攻撃
trigger5 = Ctrl
trigger5 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger5 = fvar(26)=[-20,70]
trigger6 = stateno=650&&numhelper(662)=1
trigger6 = helper(662),movecontact&&time>5
trigger6 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger6 = fvar(26)=[-20,70]
trigger7 = stateno=650&&numhelper(663)=1
trigger7 = helper(663),movecontact&&time>5
trigger7 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger7 = fvar(26)=[-20,70]
trigger8 = stateno=650&&numhelper(664)=1
trigger8 = helper(664),movecontact&&time>5
trigger8 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger8 = fvar(26)=[-20,70]
;〓J中先端部ヒット中射撃属性攻撃回避	;★製作中
trigger9 = NumTarget(642)>0
trigger9 = Target(642),Time>=0
trigger9 = stateno=640&&movecontact>=1&&movecontact<=4
trigger9 = AnimElemTime(9)>=1&&AnimElemTime(10)<0
trigger9 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger9 = fvar(26)=[-20,70]
;〓Proj射撃（Ctrl）
trigger10 = Ctrl
trigger10 = enemy(0),NumProj>0
trigger10 = enemynear(var(16)),statetype=A
trigger10 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger10 = fvar(26)=[-20,70]
trigger11 = Ctrl
trigger11 = numenemy>1
trigger11 = enemy(1),NumProj>0
trigger11 = enemynear(var(16)),statetype=A
trigger11 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger11 = fvar(26)=[-20,70]
;〓Proj射撃（ジャンプ↓大攻撃中）
trigger12 = enemy(0),NumProj>0
trigger12 = stateno=650&&numhelper(662)=1
trigger12 = helper(662),movecontact&&time>5
trigger12 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger12 = fvar(26)=[-20,70]
trigger13 = numenemy>1
trigger13 = enemy(1),NumProj>0
trigger13 = stateno=650&&numhelper(662)=1
trigger13 = helper(662),movecontact&&time>5
trigger13 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger13 = fvar(26)=[-20,70]
trigger14 = enemy(0),NumProj>0
trigger14 = stateno=650&&numhelper(663)=1
trigger14 = helper(663),movecontact&&time>5
trigger14 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger14 = fvar(26)=[-20,70]
trigger15 = numenemy>1
trigger15 = enemy(1),NumProj>0
trigger15 = stateno=650&&numhelper(663)=1
trigger15 = helper(663),movecontact&&time>5
trigger15 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger15 = fvar(26)=[-20,70]
trigger16 = enemy(0),NumProj>0
trigger16 = stateno=650&&numhelper(664)=1
trigger16 = helper(664),movecontact&&time>5
trigger16 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger16 = fvar(26)=[-20,70]
trigger17 = numenemy>1
trigger17 = enemy(1),NumProj>0
trigger17 = stateno=650&&numhelper(664)=1
trigger17 = helper(664),movecontact&&time>5
trigger17 = enemynear(var(16)),movetype=A&&(InGuardDist=1||helper(23000),InGuardDist=1)
trigger17 = fvar(26)=[-20,70]
;〓攻撃ヘルパー
trigger18 = Ctrl
trigger18 = fvar(26)=[-20,70]
trigger18 = enemynear(var(16)),statetype=A
trigger18 = InGuardDist=1||helper(23000),InGuardDist=1
trigger18 = helper(25000),fvar(10)
trigger18 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger18 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger18 = PlayerID(Ceil(helper(25000),fvar(10))),HitDefAttr=SCA,AA,AP
trigger18 = Ceil((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing))=[-20,100]
trigger18 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[5,15]
trigger18 = Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y)=[-170,40]

;■攻撃ヘルパーを空中前2段ジャンプで回避（前ジャンプで距離を詰める）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35
triggerall = vel y>=-3
;〓Near状態
triggerall = fvar(26)>=100
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50			;□確率判定
;〓ジャンプ中【前方ジャンプフラグON】（1個）
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(25000),fvar(10)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger1 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger1 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger1 = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[10,20]
trigger1 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))=[-60,30]
trigger1 = var(47):=Ceil(2.0**15)
;〓ジャンプ中【前方ジャンプフラグON】（2個）
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger2 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)=[10,20]
trigger2 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=-60
trigger2 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))=[-60,30]
trigger2 = var(47):=Ceil(2.0**15)
;〓ジャンプ中【前方ジャンプフラグON】（3個）
trigger3 = (var(47)&(Ceil(2.0**15)))=0
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(12))),vel x
trigger3 = helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger3 = Ceil(((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(12))),vel x)=[10,20]
trigger3 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=-60
trigger3 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=-60
trigger3 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y))=[-60,30]
trigger3 = var(47):=Ceil(2.0**15)
;〓ジャンプ中【前方ジャンプフラグON】（4個）
trigger4 = (var(47)&(Ceil(2.0**15)))=0
trigger4 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger4 = PlayerID(Ceil(helper(25000),fvar(13))),vel x
trigger4 = helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger4 = Ceil(((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(13))),vel x)=[10,20]
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=-60
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=-60
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y))>=-60
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y))=[-60,30]
trigger4 = var(47):=Ceil(2.0**15)
;〓ジャンプ中【前方ジャンプフラグON】（5個以上）
trigger5 = (var(47)&(Ceil(2.0**15)))=0
trigger5 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)&&helper(25000),fvar(14)
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(14)))
trigger5 = PlayerID(Ceil(helper(25000),fvar(14))),vel x
trigger5 = Ceil(((PlayerID(Ceil(helper(25000),fvar(14))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(14))),vel x)=[15,20]
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=-60
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=-60
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y))>=-60
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y))>=-60
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(14))),pos y-pos y))=[-60,30]
trigger5 = var(47):=Ceil(2.0**15)

;■空中前ダッシュで攻撃ヘルパー回避
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = !enemynear(var(16)),HitDefAttr=SCA,AA,AP,AT
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓攻撃ヘルパー位置
triggerall = helper(25000),fvar(10)
triggerall = PlayerIDExist(Ceil(helper(25000),fvar(10)))
triggerall = PlayerID(Ceil(helper(25000),fvar(10))),vel x
triggerall = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
triggerall = Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)=[-10,-5]
triggerall = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=60
;〓5F後の予測座標（対地＆近距離）（JA狙い）
trigger1 = enemy(0),numProj=0
trigger1 = pos y=[-100,-15]								;□低空ダッシュ制限下
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=125
trigger1 = Ceil(helper(23000),fvar(5))>=-10
trigger2 = numenemy>1
trigger2 = enemy(1),numProj=0
trigger2 = pos y=[-100,-15]								;□低空ダッシュ制限下
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=125
trigger2 = Ceil(helper(23000),fvar(5))>=-10
;〓10F後の予測座標（対地＆中距離）（JB狙い）
trigger3 = enemy(0),numProj=0
trigger3 = pos y=[-140,-15]								;□低空ダッシュ制限下
trigger3 = helper(23000),var(10)+const(size.air.front)-(vel x*10)>=160-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(10)+const(size.air.front)-(vel x*10)<=270
trigger3 = Ceil(helper(23000),fvar(10))>=-10
trigger4 = numenemy>1
trigger4 = enemy(1),numProj=0
trigger4 = pos y=[-140,-15]								;□低空ダッシュ制限下
trigger4 = helper(23000),var(10)+const(size.air.front)-(vel x*10)>=160-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(10)+const(size.air.front)-(vel x*10)<=270
trigger4 = Ceil(helper(23000),fvar(10))>=-10

;■設置ヘルパー近距離→テレポAで後退
[State -1]
type = ChangeState
Value = 1100
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = InGuardDist=1||helper(23000),InGuardDist=1
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10
;〓設置ヘルパー近距離
trigger1 = helper(21000),var(1)>=100
trigger1 = helper(25000),fvar(5)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(5)))
trigger1 = helper(25000),fvar(6)=0&&helper(25000),fvar(7)=0&&helper(25000),fvar(8)=0&&helper(25000),fvar(9)=0
trigger1 = Ceil((PlayerID(Ceil(helper(25000),fvar(5))),pos x*facing)-(pos x*facing))=[-30,110]
trigger1 = PlayerID(Ceil(helper(25000),fvar(5))),time>=100
trigger1 = var(47):=Ceil(2.0**8)

;■設置ヘルパー近距離→テレポBで裏回り
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(25000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = InGuardDist=1||helper(23000),InGuardDist=1
;〓反応判定
triggerall = random<=Ifelse(Ceil(var(45)/10%1000)>=180,Ceil(helper(21000),var(59)/1000%100)*50,Ceil(helper(21000),var(59)/1000%100)*10)
;〓設置ヘルパー近距離
trigger1 = fvar(26)>=180
trigger1 = helper(21000),var(0)>=100
trigger1 = helper(25000),fvar(5)
trigger1 = PlayerIDExist(Ceil(helper(25000),fvar(5)))
trigger1 = helper(25000),fvar(6)=0&&helper(25000),fvar(7)=0&&helper(25000),fvar(8)=0&&helper(25000),fvar(9)=0
trigger1 = Ceil((PlayerID(Ceil(helper(25000),fvar(5))),pos x*facing)-(pos x*facing))=[-30,110]
trigger1 = PlayerID(Ceil(helper(25000),fvar(5))),time>=100
trigger1 = var(4):=2
trigger1 = var(47):=Ceil(2.0**7)

;■アーマーキャラにテレポBで接近（攻撃回避接近）
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**21)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□アーマー
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10

;〓攻撃察知時接近
trigger1 = fvar(26)>=70
trigger1 = InGuardDist=1||helper(23000),InGuardDist=1
trigger1 = var(47):=Ceil(2.0**7)

;------------------------------------------------------------------------------
















;==============================================================================
;■フラグ成立時反撃行動■

;1【投げ回避済みフラグ○】→　NS属性投げ→　投げ範囲内なら投げで反撃
;		（AIレベル4以上、ボスモード）

;2【投げ回避済みフラグ○】→　NS属性投げ→　4Cで反撃
;		（AIレベル4以上）

;3【アドガ済みフラグ○】→　4Cで反撃
;		（AIレベル4以上）

;4【空中最速後ダッシュ予約フラグ○】→　P1空中後ダッシュ
;		（AIレベル2以上）

;5【投げ回避済みフラグ○】→　空中後ダッシュ中→JC
;		（AIレベル3以上）

;------------------------------------------------------------------------------

;■◆■【投げ回避済みフラグ○】特殊ガードで投げ回避後→投げで反撃
[State -1]
Type = ChangeState
Value = 800
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
triggerall = enemynear(var(16)),animtime<=-2
;〓P2状態＆Near距離測定（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = fvar(32)=0
trigger1 = enemynear(var(16)),HitDefAttr=SC,NT,ST
trigger1 = enemynear(var(16)),statetype=S&&enemynear(var(16)),statetype=C
trigger1 = fvar(26)<=55
trigger1 = var(47):=0||1

;■◆■【投げ回避済みフラグ○】特殊ガードで投げ回避後→4Cで反撃（投げ属性当て身投げ含まない）
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))
;〓反応速度判定（停止中）
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10
;〓P2状態＆Near距離測定
trigger1 = enemynear(var(16)),HitDefAttr=SCA,NT,ST
trigger1 = enemynear(var(16)),animtime<=-9
trigger1 = fvar(26)<=95
trigger1 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger1 = var(47):=0||1

;■◆■【アドガ済みフラグ○】アドガ後→4Cで反撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = (var(47)&(Ceil(2.0**4)))
;〓反応速度判定（停止中）
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=100
;〓5F後の予測座標
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.ground.front)<=50)||helper(23000),var(5)+const(size.ground.front)>=10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=50
trigger1 = Ceil(helper(23000),fvar(5))+Ceil(fvar(36))>=-90
trigger1 = var(47):=0||1
;〓7F後の予測座標
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(7)+const(size.ground.front)<=80)||helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(7)+const(size.ground.front)<=80
trigger2 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))>=-120
trigger2 = var(47):=0||1
;〓9F後の予測座標
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(9)+const(size.ground.front)<=110)||helper(23000),var(9)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(9)+const(size.ground.front)<=110
trigger3 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-130
trigger3 = var(47):=0||1

;------------------------------------------------------------------------------

;■◆■【最速空中後ダッシュ予約フラグ○】後ジャンプ後→最速空中後ダッシュ
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
trigger1 = Ctrl&&stateno!=115
trigger1 = statetype=A
trigger1 = (var(47)&(Ceil(2.0**6)))
trigger1 = var(14)=0
trigger1 = var(47):=(var(47)|Ceil(2.0**6))-(Ceil(2.0**6))||1
;〓Near状態
trigger1 = enemynear(var(16)),facing*-1=facing

;■◆■【投げ回避済みフラグ○】空中後ダッシュ中→JC
[State -1]
type = ChangeState
Value = 650
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl&&stateno=115
triggerall = statetype=A
triggerall = (var(50)&(Ceil(2.0**25)))=0
triggerall = (var(47)&(Ceil(2.0**2)))
;〓反応速度判定（停止中）
;trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10
;〓P2状態＆Near距離測定
trigger1 = fvar(26)<=200
trigger1 = var(47):=0||1

;------------------------------------------------------------------------------




















;==============================================================================
;■投げ属性攻撃対策■

;1　投げ察知→　学習済み投げor不明な投げ属性→　○特殊ガードで投げ無敵付与【投げ回避済みフラグON】
;　　　　 └→　学習済み当て身投げ─────→　×何もしない
;		（AIレベル3以上、反応速度による判定あり）

;2　投げ察知→　学習済みH属性投げor不明な投げ属性→　○後ダッシュで投げ回避
;　　　　 └→　学習済み当て身投げ ───────→　×何もしない
;		（AIレベル2以上、反応速度による判定あり）

;3　投げ察知→　学習済み当て身投げ→　投げ範囲内なら投げで反撃
;		（AIレベル3以上、反応速度による判定あり）

;4　投げ察知→　学習済み当て身投げ→　ダッシュで接近【投げ範囲内へダッシュフラグON】
;		（AIレベル3以上、反応速度による判定あり）

;5　投げ察知→　学習済み投げor不明な投げ属性or学習済み当て身投げ→　○後ジャンプで投げ回避【最速空中後ダッシュ予約フラグON】
;		（AIレベル1以上、反応速度による判定あり）


;★今後の課題

;　投げ失敗学習を入れる→投げ無敵測定により代用中
;　投げを連続で使用するときは警戒レベル判定をさせる→投げ無敵測定により代用中

;------------------------------------------------------------------------------

;■特殊ガードで投げ無敵付与して回避（投げ属性当て身投げ含まない）【投げ回避済みフラグON】
[State -1]
Type = ChangeState
Value = 120
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,159])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))=0
;〓特殊ガード使用条件
triggerall = fvar(20)>=60
triggerall = numhelper(16230)=0&&numhelper(16231)=0
triggerall = var(24)=0||StateNo!=[150,153]
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
triggerall = enemynear(var(16)),time<=10||helper(23000),var(55)<=10
;〓投げ属性攻撃（当て身投げ以外）
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger1 = var(24):=1
trigger1 = var(47):=Ceil(2.0**2)
;〓投げ属性攻撃（当て身投げ以外＆学習済み）
trigger2 = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = (enemy(0),stateno=Ceil(var(41)/10000)||enemy(0),stateno=Ceil(var(42)/10000)||enemy(0),stateno=Ceil(var(43)/10000)||enemy(0),stateno=Ceil(var(44)/10000))
trigger2 = (enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger2 = var(24):=1
trigger2 = var(47):=Ceil(2.0**2)
;〓すかし投げ属性攻撃（当て身投げ以外）
trigger3 = stateno=[120,140]
trigger3 = enemynear(var(16)),animtime<=-2
trigger3 = enemynear(var(16)),movetype=A
trigger3 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger3 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger3 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger3 = var(24):=1
trigger3 = var(47):=Ceil(2.0**2)
;〓投げキャラが接近中
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = enemynear(var(16)),movetype=I
trigger4 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)>=3	;□投げ技被弾回数
trigger4 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger4 = var(24):=1
trigger4 = var(47):=Ceil(2.0**2)

;■後ダッシュ無敵で投げ回避（投げ属性当て身投げ含まない）
[State -1]
Type = ChangeState
Value = 105
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))=0
;〓特殊ガード未使用判定
triggerall = numhelper(16230)=0&&numhelper(16231)=0
triggerall = var(24)=0
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
triggerall = enemynear(var(16)),time<=10||(helper(23000),var(55)>10&&enemynear(var(16)),animtime<=-15)
;〓画面端距離測定
triggerall = helper(21000),var(1)>=90
;〓投げ属性攻撃（当て身投げ以外）
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
;〓投げ属性攻撃（当て身投げ以外＆学習済み）
trigger2 = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = (enemy(0),stateno=Ceil(var(41)/10000)||enemy(0),stateno=Ceil(var(42)/10000)||enemy(0),stateno=Ceil(var(43)/10000)||enemy(0),stateno=Ceil(var(44)/10000))
trigger2 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))

;■当て身投げ学習後→投げ範囲内なら投げで反撃
[State -1]
Type = ChangeState
Value = 800
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))=0
;〓学習済み当て身投げ判定
triggerall = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno=Ceil(var(37)/10000)||enemy(0),stateno=Ceil(var(38)/10000)||enemy(0),stateno=Ceil(var(39)/10000))
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓P2状態＆Near距離測定（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = fvar(32)=0
trigger1 = enemynear(var(16)),animtime<=-2
trigger1 = fvar(26)<=55
;〓P2状態＆Near距離測定（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = fvar(32)<6
trigger2 = enemynear(var(16)),animtime<=-8
trigger2 = fvar(26)<=40

;■当て身投げ反応後→ダッシュで間合いを詰める【投げ範囲内へダッシュフラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))=0&&(var(47)&(Ceil(2.0**3)))=0
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓学習済み当て身投げ判定
triggerall = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno=Ceil(var(37)/10000)||enemy(0),stateno=Ceil(var(38)/10000)||enemy(0),stateno=Ceil(var(39)/10000))
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓P2状態＆Near距離測定（ノーマルモード以下）
trigger1 = Ceil(var(52)/100%10)<=1
trigger1 = enemynear(var(16)),animtime<=-20
trigger1 = fvar(26)=[41,110]
trigger1 = var(47):=Ceil(2.0**3)
;〓P2状態＆Near距離測定（ボスモード）
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = enemynear(var(16)),animtime<=-9
trigger2 = fvar(26)=[56,130]
trigger2 = var(47):=Ceil(2.0**3)

;■後ジャンプで回避（投げ属性当て身投げ含む）【最速空中後ダッシュ予約フラグON＆投げ回避済みフラグON】
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)))=0
triggerall = (enemynear(var(16)),HitDefAttr=SCA,HT)||(var(47)&(Ceil(2.0**2)))=0
;〓反応速度判定
triggerall = enemynear(var(16)),time<=20||helper(23000),var(55)<=20
;〓投げ属性攻撃（確率発動）
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*25
trigger1 = var(47):=Ceil(2.0**2)+Ceil(2.0**6)+Ceil(2.0**16)
;〓投げ属性攻撃（学習済み）
trigger2 = enemynear(var(16)),HitDefAttr=SCA,ST,HT
trigger2 = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = (enemy(0),stateno=Ceil(var(41)/10000)||enemy(0),stateno=Ceil(var(42)/10000)||enemy(0),stateno=Ceil(var(43)/10000)||enemy(0),stateno=Ceil(var(44)/10000))
trigger2 = var(47):=Ceil(2.0**2)+Ceil(2.0**6)+Ceil(2.0**16)
;〓投げ属性攻撃（聖杯ゲージ不足時）
trigger3 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger3 = fvar(20)<60
trigger3 = helper(21000),var(1)<90
trigger3 = var(47):=Ceil(2.0**2)+Ceil(2.0**6)+Ceil(2.0**16)

;------------------------------------------------------------------------------










;==============================================================================
;■連携系行動■（var(47)系）triggerall = (var(46)&(Ceil(2.0**26)))=0
;------------------------------------------------------------------------------

;==============================================================================
;■特定攻撃発生時ニュートラル経由での連携連続技■

;1　EXゲイザー後ダッシュ攻撃
;2　ぱっちん系後ダッシュ攻撃
;3　2C後ダッシュ攻撃
;4　地雷設置後ダッシュ攻撃
;5　ガークラ後ダッシュ攻撃

;6　JC後ダッシュ攻撃
;　 JC発生中烈風拳ABorぱっちんB

;7　JC後5Bや4Cで攻撃
;8　J2B後
;9　JA後
;10　JB後

;11 J2C後
;12 烈風拳後

;13 バースト後

;==============================================================================
;■EXゲイザー攻撃発生中
;　├ダッシュ5B　（地上）
;　├ダッシュ4C　（地上＆空中）
;　├ダッシュ3C　（地上＆空中）
;　└ハイジャンプ（地上）

;●EXゲイザーコンタクト中ダッシュで間合いを詰める【EXゲイザー後ダッシュ攻撃フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
triggerall = helper(21000),var(0)>=150							;□EXゲイザー画面端から距離150以上
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓Near距離測定
triggerall = fvar(26)>=80
;〓EXゲイザー
trigger1 = NumHelper(1360)
trigger1 = helper(1360),time<=39&&helper(1360),movecontact>=1
trigger1 = var(47):=Ceil(2.0**11)
trigger2 = NumHelper(1361)
trigger2 = helper(1361),time<=39&&helper(1361),movecontact>=1
trigger2 = var(47):=Ceil(2.0**11)
trigger3 = NumHelper(1362)
trigger3 = helper(1362),time<=39&&helper(1362),movecontact>=1
trigger3 = var(47):=Ceil(2.0**11)
trigger4 = NumHelper(1363)
trigger4 = helper(1363),time<=39&&helper(1363),movecontact>=1
trigger4 = var(47):=Ceil(2.0**11)
trigger5 = NumHelper(1364)
trigger5 = helper(1364),time<=39&&helper(1364),movecontact>=1
trigger5 = var(47):=Ceil(2.0**11)
trigger6 = NumHelper(1365)
trigger6 = helper(1365),time<=39&&helper(1365),movecontact>=1
trigger6 = var(47):=Ceil(2.0**11)
trigger7 = NumHelper(1366)
trigger7 = helper(1366),time<=39&&helper(1366),movecontact>=1
trigger7 = var(47):=Ceil(2.0**11)
trigger8 = NumHelper(1367)
trigger8 = helper(1367),time<=39&&helper(1367),movecontact>=1
trigger8 = var(47):=Ceil(2.0**11)
trigger9 = NumHelper(1368)
trigger9 = helper(1368),time<=39&&helper(1368),movecontact>=1
trigger9 = var(47):=Ceil(2.0**11)
trigger10 = NumHelper(1369)
trigger10 = helper(1369),time<=39&&helper(1369),movecontact>=1
trigger10 = var(47):=Ceil(2.0**11)
trigger11 = NumHelper(1370)
trigger11 = helper(1370),time<=39&&helper(1370),movecontact>=1
trigger11 = var(47):=Ceil(2.0**11)
trigger12 = NumHelper(1371)
trigger12 = helper(1371),time<=39&&helper(1371),movecontact>=1
trigger12 = var(47):=Ceil(2.0**11)

;■【EXゲイザー後ダッシュ攻撃フラグ○】EXゲイザーコンタクト中→ダッシュ5B
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=4)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)))							;□EXゲイザー後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype!=A
;〓0F後の現在座標（対地）
trigger1 = fvar(26)=[-15-enemynear(var(16)),const(size.ground.front),45]
;〓8F後の予測座標（対地）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=20)||(Ceil(var(52)/100%10)>=2&&time>=32)	;□ディレイ
trigger2 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=85
trigger2 = Ceil(helper(23000),fvar(8))>=0||enemynear(var(16)),statetype=L
;〓8F後の予測座標（対地）
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger3 = (Ceil(var(52)/100%10)<=1&&time>=28)||(Ceil(var(52)/100%10)>=2&&time>=40)	;□ディレイ
trigger3 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=125
trigger3 = Ceil(helper(23000),fvar(8))>=0||enemynear(var(16)),statetype=L

;■【EXゲイザー後ダッシュ攻撃フラグ○】EXゲイザーコンタクト中→ダッシュ4C
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=4)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)))	;□EXゲイザー後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓7F後の予測座標（対地）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*25				;□個別反応判定
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=45
trigger1 = Ceil(helper(23000),fvar(7))>=-20
;〓9F後の予測座標（対地）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*25				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=20)||(Ceil(var(52)/100%10)>=2&&time>=32)	;□ディレイ
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
trigger2 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=90
trigger2 = Ceil(helper(23000),fvar(9))>=-20||enemynear(var(16)),statetype=L
;〓9F後の予測座標（対空）
trigger3 = Ceil(fvar(31))-(11)>=0||Ceil(fvar(31))=0					;□復帰判定
trigger3 = enemynear(var(16)),statetype=A
trigger3 = (helper(21000),var(1)<=60&&helper(23000),var(9)+const(size.ground.front)<=110)||helper(23000),var(9)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger3 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-140

;■【EXゲイザー後ダッシュ攻撃フラグ○】EXゲイザーコンタクト中→ダッシュ3C
[State -1]
Type = ChangeState
Value = 460
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**16)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=4)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)))							;□EXゲイザー後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓19F後の予測座標（対空）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*40				;□個別反応判定
trigger1 = (Ceil(var(52)/100%10)<=1&&time>=8)||(Ceil(var(52)/100%10)>=2&&time>=13)	;□ディレイ
trigger1 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0					;□復帰判定
trigger1 = enemynear(var(16)),statetype=A
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(19)+const(size.ground.front)<=115)||helper(23000),var(19)+const(size.ground.front)>=110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(19)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=115
trigger1 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-95,-55]
;〓28F後の予測座標（対空）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=13)||(Ceil(var(52)/100%10)>=2&&time>=18)	;□ディレイ
trigger2 = Ceil(fvar(31))-(30)>=0||Ceil(fvar(31))=0					;□復帰判定
trigger2 = enemynear(var(16)),statetype=A
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(28)+const(size.ground.front)<=200)||helper(23000),var(28)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(28)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=200
trigger2 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))>=-150
;〓24F後の予測座標（対地）
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger3 = (Ceil(var(52)/100%10)<=1&&time>=15)||(Ceil(var(52)/100%10)>=2&&time>=20)	;□ディレイ
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)>=160
trigger3 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=190
trigger3 = Ceil(helper(23000),fvar(24))>=-10

;■【EXゲイザー後ダッシュ攻撃フラグ○】EXゲイザーコンタクト中→ダッシュハイジャンプ【前方ハイジャンプフラグON】
[State -1]
type = ChangeState
Value = 43
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件（ノーマルモード以上）
triggerall = Ceil(var(52)/100%10)>=1
triggerall = (stateno=100&&time=[4,8])||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)))							;□EXゲイザー後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0||helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),movetype=H
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15
;〓15F後の予測座標（連携開始）【前方ハイジャンプフラグON】
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(21000),var(0)>=150							;□画面前端から距離150以上
trigger1 = helper(23000),var(30)+const(size.ground.front)>=210-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(30)+const(size.ground.front)<=220
trigger1 = Ceil(helper(23000),fvar(30))>=-30
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;==============================================================================
;■ぱっちん系攻撃発生中
;　├全地面投げ　（地上）
;　├瘴気結界　　（地上＆低空）
;　│
;　├ダッシュ2A　（地上）
;　├ダッシュ5B　（地上＆低空）
;　├ダッシュ4C　（地上＆空中）
;　└ダッシュ3C　（地上＆空中）

;■ぱっちん系コンタクト中→全地面投げ
[State -1]
Type = ChangeState
Value = 1800
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(58)&(Ceil(2.0**28)))
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = (power=PowerMax||power>=3000)&&fvar(20)>=600
triggerall = statetype=S||statetype=C
triggerall = (LifeMax/10.0)*3>=Life&&(enemynear(var(16)),LifeMax/10.0)*6<=enemynear(var(16)),Life
triggerall = !NumHelper(1280)&&!NumHelper(1285)				;□EX地雷未設置
triggerall = Ceil(random/10%100)<=Ceil(power/1000.0)*5			;□確率判定
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓Near距離測定
triggerall = fvar(26)>=IfElse((enemynear(var(16)),stateno=[150,159]),160,120)
triggerall = fvar(26)<=IfElse((enemynear(var(16)),stateno=[150,159]),190,180)
;〓ぱっちん系
trigger1 = NumHelper(1410)
trigger1 = helper(1410),movecontact=[1,3]
trigger2 = NumHelper(1422)
trigger2 = helper(1422),movecontact=[1,3]

;■ぱっちん系コンタクト中→CCC
[State -1]
Type = ChangeState
Value = 3400
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**27)))
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)	;□CCC攻撃＆地面＆触手ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=7			;□7冊消費
;〓発動条件
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))*2.0)<=Life/(LifeMax/10.0))
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=5.0)
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=9||((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓Near状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓Near距離測定
triggerall = fvar(26)>=130
;〓ぱっちん系
trigger1 = NumHelper(1410)
trigger1 = helper(1410),movecontact>=1
trigger2 = NumHelper(1440)
trigger2 = helper(1440),movecontact>=1
trigger3 = NumHelper(1412)
trigger3 = helper(1412),movecontact>=1
trigger4 = NumHelper(1442)
trigger4 = helper(1442),movecontact>=1
trigger5 = NumHelper(1420)
trigger5 = helper(1420),movecontact>=1
trigger6 = NumHelper(1450)
trigger6 = helper(1450),movecontact>=1
trigger7 = NumHelper(1422)
trigger7 = helper(1422),movecontact>=1
trigger8 = NumHelper(1452)
trigger8 = helper(1452),movecontact>=1
trigger9 = NumHelper(1430)
trigger9 = helper(1430),movecontact>=1
trigger10 = NumHelper(1460)
trigger10 = helper(1460),movecontact>=1
trigger11 = NumHelper(1432)
trigger11 = helper(1432),movecontact>=1
trigger12 = NumHelper(1462)
trigger12 = helper(1462),movecontact>=1

;■ぱっちん系ガード中→瘴気結界
[State -1]
Type = ChangeState
Value = 3300
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**25)))
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3310)&!NumHelper(3205)		;□瘴気結界ヘルパー＆花弁本体ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=3			;□3冊消費
;〓発動条件
triggerall = (var(46)&(Ceil(2.0**17)))=0		;□ロー・ブロッサム使用判定NG
triggerall = helper(21000),var(0)>=100			;□画面端から距離100以上
triggerall = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)=[5.0,9.0])||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓Near距離測定
triggerall = fvar(26)=[100,300]
;〓ぱっちん系
trigger1 = NumHelper(1410)
trigger1 = helper(1410),moveguarded>=1
trigger2 = NumHelper(1440)
trigger2 = helper(1440),moveguarded>=1
trigger3 = NumHelper(1412)
trigger3 = helper(1412),moveguarded>=1
trigger4 = NumHelper(1442)
trigger4 = helper(1442),moveguarded>=1
trigger5 = NumHelper(1420)
trigger5 = helper(1420),moveguarded>=1
trigger6 = NumHelper(1450)
trigger6 = helper(1450),moveguarded>=1
trigger7 = NumHelper(1422)
trigger7 = helper(1422),moveguarded>=1
trigger8 = NumHelper(1452)
trigger8 = helper(1452),moveguarded>=1
trigger9 = NumHelper(1430)
trigger9 = helper(1430),moveguarded>=1
trigger10 = NumHelper(1460)
trigger10 = helper(1460),moveguarded>=1
trigger11 = NumHelper(1432)
trigger11 = helper(1432),moveguarded>=1
trigger12 = NumHelper(1462)
trigger12 = helper(1462),moveguarded>=1

;■ぱっちん系ガード中→EXゲイザー
[State -1]
Type = ChangeState
Value = 1302
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=5)||stateno=101||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = power>=1000
triggerall = statetype=S||statetype=C
triggerall = helper(21000),var(0)>=150						;□画面端から距離150以上
triggerall = Ceil(random/10%100)<=Ceil(power/1000.0)*10				;□確率判定
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno=[150,159]
triggerall = enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)<=2.5	;□P2体力25%以下
;〓Near距離測定
triggerall = helper(23000),var(27)+const(size.ground.front)=[20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),65]
;〓ぱっちん系
trigger1 = NumHelper(1410)
trigger1 = helper(1410),moveguarded>=1
trigger2 = NumHelper(1440)
trigger2 = helper(1440),moveguarded>=1
trigger3 = NumHelper(1412)
trigger3 = helper(1412),moveguarded>=1
trigger4 = NumHelper(1442)
trigger4 = helper(1442),moveguarded>=1
trigger5 = NumHelper(1420)
trigger5 = helper(1420),moveguarded>=1
trigger6 = NumHelper(1450)
trigger6 = helper(1450),moveguarded>=1
trigger7 = NumHelper(1422)
trigger7 = helper(1422),moveguarded>=1
trigger8 = NumHelper(1452)
trigger8 = helper(1452),moveguarded>=1
trigger9 = NumHelper(1430)
trigger9 = helper(1430),moveguarded>=1
trigger10 = NumHelper(1460)
trigger10 = helper(1460),moveguarded>=1
trigger11 = NumHelper(1432)
trigger11 = helper(1432),moveguarded>=1
trigger12 = NumHelper(1462)
trigger12 = helper(1462),moveguarded>=1

;●ぱっちん系コンタクト中ダッシュで間合いを詰める【ぱっちん系後ダッシュ攻撃フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓Near距離測定
triggerall = fvar(26)>=20
;〓ぱっちん系
trigger1 = NumHelper(1410)
trigger1 = helper(1410),movecontact>=1
trigger1 = var(47):=Ceil(2.0**12)
trigger2 = NumHelper(1440)
trigger2 = helper(1440),movecontact>=1
trigger2 = var(47):=Ceil(2.0**12)
trigger3 = NumHelper(1412)
trigger3 = helper(1412),movecontact>=1
trigger3 = var(47):=Ceil(2.0**12)
trigger4 = NumHelper(1442)
trigger4 = helper(1442),movecontact>=1
trigger4 = var(47):=Ceil(2.0**12)
trigger5 = NumHelper(1420)
trigger5 = helper(1420),movecontact>=1
trigger5 = var(47):=Ceil(2.0**12)
trigger6 = NumHelper(1450)
trigger6 = helper(1450),movecontact>=1
trigger6 = var(47):=Ceil(2.0**12)
trigger7 = NumHelper(1422)
trigger7 = helper(1422),movecontact>=1
trigger7 = var(47):=Ceil(2.0**12)
trigger8 = NumHelper(1452)
trigger8 = helper(1452),movecontact>=1
trigger8 = var(47):=Ceil(2.0**12)
trigger9 = NumHelper(1430)
trigger9 = helper(1430),movecontact>=1
trigger9 = var(47):=Ceil(2.0**12)
trigger10 = NumHelper(1460)
trigger10 = helper(1460),movecontact>=1
trigger10 = var(47):=Ceil(2.0**12)
trigger11 = NumHelper(1432)
trigger11 = helper(1432),movecontact>=1
trigger11 = var(47):=Ceil(2.0**12)
trigger12 = NumHelper(1462)
trigger12 = helper(1462),movecontact>=1
trigger12 = var(47):=Ceil(2.0**12)

;■【ぱっちん系後ダッシュ攻撃フラグ○】ぱっちん系コンタクト中→ダッシュ2A
[State -1]
type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=4)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**12)))	;□ぱっちん系後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype!=A
;〓0F後の現在座標（対地）
trigger1 = fvar(26)=[-15-enemynear(var(16)),const(size.ground.front),35]
;〓4F後の予測座標
trigger2 = helper(23000),var(4)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(4)+const(size.ground.front)<=35
trigger2 = Ceil(helper(23000),fvar(4))=0

;■【ぱっちん系後ダッシュ攻撃フラグ○】ぱっちん系コンタクト中→ダッシュ5B
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=5)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**12)))							;□ぱっちん系後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓0F後の現在座標（対地）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*25				;□個別反応判定
trigger1 = enemynear(var(16)),statetype!=A
trigger1 = fvar(26)=[-15-enemynear(var(16)),const(size.ground.front),45]
;〓8F後の予測座標（対地）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=20)||(Ceil(var(52)/100%10)>=2&&time>=18)	;□ディレイ
trigger2 = enemynear(var(16)),statetype!=A
trigger2 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[45,85]
trigger2 = Ceil(helper(23000),fvar(8))>=0
;〓8F後の予測座標（対空）
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger3 = (Ceil(var(52)/100%10)<=1&&time>=22)||(Ceil(var(52)/100%10)>=2&&time>=20)	;□ディレイ
trigger3 = enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[45,125]
trigger3 = Ceil(helper(23000),fvar(8))>=-30
;〓8F後の予測座標（対空）（6C始動空中コンボルート用）
trigger4 = (var(48)&(Ceil(2.0**18)))							;□6C始動空中コンボルート
trigger4 = enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0,80]
trigger4 = Ceil(helper(23000),fvar(8))>=-30

;■【ぱっちん系後ダッシュ攻撃フラグ○】ぱっちん系コンタクト中→ダッシュ4C
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0						;□6C始動空中コンボルート除外
;〓基本使用条件
triggerall = (stateno=100&&time>=5)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**12)))							;□ぱっちん系後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype!=L
;〓7F後の予測座標（対地）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*10				;□個別反応判定
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)=[0,45]
trigger1 = Ceil(helper(23000),fvar(7))>=-20
;〓9F後の予測座標（対地）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*10				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=20)||(Ceil(var(52)/100%10)>=2&&time>=32)	;□ディレイ
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)=[45,80]
trigger2 = Ceil(helper(23000),fvar(9))>=-20
;〓9F後の予測座標（対空）
trigger3 = Ceil(fvar(31))-(11)>=0||Ceil(fvar(31))=0					;□復帰判定
trigger3 = enemynear(var(16)),statetype=A
trigger3 = (helper(21000),var(1)<=60&&helper(23000),var(9)+const(size.ground.front)<=110)||helper(23000),var(9)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger3 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-140

;■【ぱっちん系後ダッシュ攻撃フラグ○】ぱっちん系コンタクト中→ダッシュ3C
[State -1]
Type = ChangeState
Value = 460
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**16)))=0
;〓基本使用条件
triggerall = (stateno=100&&time>=5)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**12)))							;□ぱっちん系後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓28F後の予測座標（対空）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger1 = (Ceil(var(52)/100%10)<=1&&time>=22)||(Ceil(var(52)/100%10)>=2&&time>=20)	;□ディレイ
trigger1 = Ceil(fvar(31))-(30)>=0||Ceil(fvar(31))=0					;□復帰判定
trigger1 = enemynear(var(16)),statetype=A
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(28)+const(size.ground.front)<=200)||helper(23000),var(28)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(28)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=200
trigger1 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))>=-150
;〓24F後の予測座標（対地）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*50				;□個別反応判定
trigger2 = (Ceil(var(52)/100%10)<=1&&time>=22)||(Ceil(var(52)/100%10)>=2&&time>=20)	;□ディレイ
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)>=140
trigger2 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)=[150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),200]
trigger2 = Ceil(helper(23000),fvar(24))>=-10

;==============================================================================
;■2C攻撃発生中
;　├ダッシュ2A　（地上）
;　│
;　├ダッシュ5B　（空中）（ヒット時限定）
;　└ダッシュ4A　（空中）（ヒット時限定）

;●2Cコンタクト中ダッシュで間合いを詰める【しゃがみ大後ダッシュ攻撃フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = AnimElemTime(8)>=0
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓Near距離測定
triggerall = fvar(26)>=20
;〓P2地上ガード
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = Ceil(random/10%100)<=15||helper(21000),var(0)<=60+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = NumHelper(450)
trigger1 = helper(450),moveguarded>=1
trigger1 = var(47):=Ceil(2.0**13)
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = Ceil(random/10%100)<=15||helper(21000),var(0)<=60+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = NumHelper(451)
trigger2 = helper(451),moveguarded>=1
trigger2 = var(47):=Ceil(2.0**13)
;〓P2空中ヒット
trigger3 = enemynear(var(16)),statetype=A
trigger3 = NumHelper(450)
trigger3 = helper(450),movehit>=1
trigger3 = var(47):=Ceil(2.0**13)
trigger4 = enemynear(var(16)),statetype=A
trigger4 = NumHelper(451)
trigger4 = helper(451),movehit>=1
trigger4 = var(47):=Ceil(2.0**13)

;■【しゃがみ大後ダッシュ攻撃フラグ○】2Cガード中→ダッシュ2A
[State -1]
type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**22)))=0			;□2C始動空中コンボルート以外
;〓基本使用条件
triggerall = (stateno=100&&time>=5)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**13)))				;□2C後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype!=A
;〓0F後の現在座標（対地）
trigger1 = fvar(26)<=50

;■【しゃがみ大後ダッシュ攻撃フラグ○】2Cヒット中→ダッシュ5B
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**22)))=0			;□2C始動空中コンボルート以外
;〓基本使用条件
triggerall = (stateno=100&&time>=4)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓8F後の予測座標（対空）
trigger1 = (stateno=100&&time>=12)||stateno=101			;□ダッシュ中
trigger1 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger1 = enemynear(var(16)),statetype=A
trigger1 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0,135]
trigger1 = Ceil(helper(23000),fvar(8))=[-60,-5]
;〓18F後の予測座標（対空）
trigger2 = (stateno=100&&time>=18)||stateno=101			;□ダッシュ中
trigger2 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger2 = enemynear(var(16)),statetype=A
trigger2 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0,135]
trigger2 = Ceil(helper(23000),fvar(8))>=-60

;■【しゃがみ大後ダッシュ攻撃フラグ○】2Cヒット中→ダッシュ4A
[State -1]
Type = ChangeState
Value = 205
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**10)))=0			;□5B始動Aルート以外
triggerall = (var(48)&(Ceil(2.0**11)))=0			;□5B始動Bルート以外
triggerall = (var(48)&(Ceil(2.0**17)))=0			;□4A始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**21)))=0			;□3C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**22)))=0			;□2C始動空中コンボルート以外
;〓基本使用条件
triggerall = (stateno=100&&time>=10)||stateno=101
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓10F後の予測座標（対空）
trigger1 = enemynear(var(16)),statetype=A
trigger1 = helper(23000),var(10)+const(size.ground.front)=[0,70]
trigger1 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-110,-30]

;==============================================================================
;■地雷設置ABEX攻撃発生中（ぱっちん系と同じCeil(2.0**12)）
;　└ダッシュ

;●地雷設置ABEXコンタクト中ダッシュで間合いを詰める【地雷設置AB後ダッシュ攻撃フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓Near距離測定
triggerall = fvar(26)<=350
;〓地雷設置AB
trigger1 = NumHelper(1230)
trigger1 = helper(1230),movecontact>=1
trigger1 = var(47):=Ceil(2.0**12)
trigger2 = NumHelper(1260)
trigger2 = helper(1260),movecontact>=1
trigger2 = var(47):=Ceil(2.0**12)
trigger3 = NumHelper(1265)
trigger3 = helper(1265),movecontact>=1
trigger3 = var(47):=Ceil(2.0**12)
trigger4 = NumHelper(1290)
trigger4 = helper(1290),movecontact>=1
trigger4 = var(47):=Ceil(2.0**12)
;〓地雷設置EX
trigger5 = NumHelper(10020)
trigger5 = helper(10020),movecontact>=1
trigger5 = var(47):=Ceil(2.0**12)


;==============================================================================
;■ガークラ発生中（ガークラ後ダッシュ攻撃フラグCeil(2.0**14)）
;　└ダッシュ

;●ガークラ中ダッシュで間合いを詰める【ガークラ後ダッシュ攻撃フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓Near距離測定
triggerall = fvar(26)<=350
;〓ガークラ状態
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger1 = enemynear(var(16)),statetype=S&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5002,5007)||enemynear(var(16)),anim=5910)
trigger1 = var(47):=Ceil(2.0**14)
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger2 = enemynear(var(16)),statetype=C&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5022,5027)||enemynear(var(16)),anim=5920)
trigger2 = var(47):=Ceil(2.0**14)


;==============================================================================
;■JC攻撃発生中着地後行動
;　├2A
;　├5B
;　├4C
;　├5A
;　│
;　├ダッシュ
;　│
;　├烈風拳AB
;　└ぱっちんB

;●JCヒット中2Aで追撃
[State -1]
Type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
;〓JC→2A（発生4F）（対地）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumHelper(662)>0
trigger1 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger1 = helper(662),AnimElemTime(6)>=0				;□3Hit目以降
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,32]
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumHelper(663)>0
trigger2 = Helper(663),NumTarget(662)>0&&Helper(663),movehit>=1		;□1~3Hit目判定
trigger2 = Helper(663),AnimElemTime(6)>=0				;□3Hit目以降
trigger2 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger2 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,32]
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumHelper(664)>0
trigger3 = Helper(664),NumTarget(662)>0&&Helper(664),movehit>=1		;□1~3Hit目判定
trigger3 = Helper(664),AnimElemTime(6)>=0				;□3Hit目以降
trigger3 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger3 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,32]
trigger4 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger4 = NumHelper(662)>0
trigger4 = helper(662),NumTarget(663)>0&&helper(662),movehit>=1		;□4Hit目判定
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger4 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,38]
trigger5 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = NumHelper(663)>0
trigger5 = Helper(663),NumTarget(663)>0&&Helper(663),movehit>=1		;□4Hit目判定
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger5 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger5 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,38]
trigger6 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger6 = NumHelper(664)>0
trigger6 = Helper(664),NumTarget(663)>0&&Helper(664),movehit>=1		;□4Hit目判定
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger6 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger6 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,38]

;●JCヒット中5Bで追撃
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JC→5B（発生8F）（対地）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumHelper(662)>0
trigger1 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger1 = helper(662),AnimElemTime(6)>=0				;□3Hit目以降
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,100]
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumHelper(663)>0
trigger2 = Helper(663),NumTarget(662)>0&&Helper(663),movehit>=1		;□1~3Hit目判定
trigger2 = Helper(663),AnimElemTime(6)>=0				;□3Hit目以降
trigger2 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,100]
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumHelper(664)>0
trigger3 = Helper(664),NumTarget(662)>0&&Helper(664),movehit>=1		;□1~3Hit目判定
trigger3 = Helper(664),AnimElemTime(6)>=0				;□3Hit目以降
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,100]
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger4 = NumHelper(662)>0
trigger4 = helper(662),NumTarget(663)>0&&helper(662),movehit>=1		;□4Hit目判定
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger4 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,130]
trigger5 = Ceil(var(52)/100%10)>=1
trigger5 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = NumHelper(663)>0
trigger5 = Helper(663),NumTarget(663)>0&&Helper(663),movehit>=1		;□4Hit目判定
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger5 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger5 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,130]
trigger6 = Ceil(var(52)/100%10)>=1
trigger6 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger6 = NumHelper(664)>0
trigger6 = Helper(664),NumTarget(663)>0&&Helper(664),movehit>=1		;□4Hit目判定
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger6 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger6 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,130]
;〓JC→5B（発生8F)（対地）（弱体化モード）
trigger7 = Ceil(var(52)/100%10)=0
trigger7 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = NumHelper(662)>0
trigger7 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger7 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger7 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,130]
trigger8 = Ceil(var(52)/100%10)=0
trigger8 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = NumHelper(663)>0
trigger8 = Helper(663),NumTarget(662)>0&&Helper(663),movehit>=1		;□1~3Hit目判定
trigger8 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger8 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,130]
trigger9 = Ceil(var(52)/100%10)=0
trigger9 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger9 = NumHelper(664)>0
trigger9 = Helper(664),NumTarget(662)>0&&Helper(664),movehit>=1		;□1~3Hit目判定
trigger9 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger9 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,130]

;●JCヒット中4Cで追撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JC→4C（発生7F）（対地）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumHelper(662)>0
trigger1 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger1 = helper(662),AnimElemTime(6)>=0				;□3Hit目以降
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,80]
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumHelper(663)>0
trigger2 = Helper(663),NumTarget(662)>0&&Helper(663),movehit>=1		;□1~3Hit目判定
trigger2 = Helper(663),AnimElemTime(6)>=0				;□3Hit目以降
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,80]
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumHelper(664)>0
trigger3 = Helper(664),NumTarget(662)>0&&Helper(664),movehit>=1		;□1~3Hit目判定
trigger3 = Helper(664),AnimElemTime(6)>=0				;□3Hit目以降
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,80]
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger4 = NumHelper(662)>0
trigger4 = helper(662),NumTarget(663)>0&&helper(662),movehit>=1		;□4Hit目判定
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,95]
trigger5 = Ceil(var(52)/100%10)>=1
trigger5 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = NumHelper(663)>0
trigger5 = Helper(663),NumTarget(663)>0&&Helper(663),movehit>=1		;□4Hit目判定
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,95]
trigger6 = Ceil(var(52)/100%10)>=1
trigger6 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger6 = NumHelper(664)>0
trigger6 = Helper(664),NumTarget(663)>0&&Helper(664),movehit>=1		;□4Hit目判定
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,95]
;〓JC→4C（発生9F)（対地）（弱体化モード）
trigger7 = Ceil(var(52)/100%10)=0
trigger7 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = NumHelper(662)>0
trigger7 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,95]
trigger8 = Ceil(var(52)/100%10)=0
trigger8 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = NumHelper(663)>0
trigger8 = Helper(663),NumTarget(662)>0&&Helper(663),movehit>=1		;□1~3Hit目判定
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,95]
trigger9 = Ceil(var(52)/100%10)=0
trigger9 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger9 = NumHelper(664)>0
trigger9 = Helper(664),NumTarget(662)>0&&Helper(664),movehit>=1		;□1~3Hit目判定
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,95]

;●JCヒット中5Aで追撃
[State -1]
Type = ChangeState
Value = 200
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JC→5A（発生7F)（対地）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumHelper(662)>0
trigger1 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger1 = helper(662),AnimElemTime(6)>=0				;□3Hit目以降
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger1 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,65]
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumHelper(663)>0
trigger2 = helper(663),NumTarget(662)>0&&helper(663),movehit>=1		;□1~3Hit目判定
trigger2 = helper(663),AnimElemTime(6)>=0				;□3Hit目以降
trigger2 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger2 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(663),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(663),movehit)))/(1-fvar(25))),0))=[0,65]
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumHelper(664)>0
trigger3 = helper(664),NumTarget(662)>0&&helper(664),movehit>=1		;□1~3Hit目判定
trigger3 = helper(664),AnimElemTime(6)>=0				;□3Hit目以降
trigger3 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger3 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(664),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(664),movehit)))/(1-fvar(25))),0))=[0,65]
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger4 = NumHelper(662)>0
trigger4 = helper(662),NumTarget(663)>0&&helper(662),movehit>=1		;□4Hit目判定
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,65]
trigger5 = Ceil(var(52)/100%10)>=1
trigger5 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = NumHelper(663)>0
trigger5 = Helper(663),NumTarget(663)>0&&Helper(663),movehit>=1		;□4Hit目判定
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger5 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger5 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(663),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(663),movehit)))/(1-fvar(25))),0))=[0,65]
trigger6 = Ceil(var(52)/100%10)>=1
trigger6 = (Ctrl&&stateno!=100)||(stateno=100&&time>=IfElse(enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)<=9,1,5))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger6 = NumHelper(664)>0
trigger6 = Helper(664),NumTarget(663)>0&&Helper(664),movehit>=1		;□4Hit目判定
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger6 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger6 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((Helper(664),movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-Helper(664),movehit)))/(1-fvar(25))),0))=[0,65]
;〓JC→5A（発生10F)（対地）（弱体化モード）
trigger7 = Ceil(var(52)/100%10)=0
trigger7 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = NumHelper(662)>0
trigger7 = helper(662),NumTarget(662)>0&&helper(662),movehit>=1		;□1~3Hit目判定
trigger7 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger7 = fvar(26)-(vel x*(0.85-(0.85**10.0))/0.15)+Ceil(IfElse((helper(662),movehit=[1,10]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(11.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,65]
trigger8 = Ceil(var(52)/100%10)=0
trigger8 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = NumHelper(663)>0
trigger8 = helper(663),NumTarget(662)>0&&helper(663),movehit>=1		;□1~3Hit目判定
trigger8 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger8 = fvar(26)-(vel x*(0.85-(0.85**10.0))/0.15)+Ceil(IfElse((helper(663),movehit=[1,10]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(11.0-helper(663),movehit)))/(1-fvar(25))),0))=[0,65]
trigger9 = Ceil(var(52)/100%10)=0
trigger9 = (Ctrl&&stateno!=100)||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger9 = NumHelper(664)>0
trigger9 = helper(664),NumTarget(662)>0&&helper(664),movehit>=1		;□1~3Hit目判定
trigger9 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger9 = fvar(26)-(vel x*(0.85-(0.85**10.0))/0.15)+Ceil(IfElse((helper(664),movehit=[1,10]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(11.0-helper(664),movehit)))/(1-fvar(25))),0))=[0,65]

;●JCコンタクト中ダッシュで間合いを詰める【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓JC（ヒット時3HIT目まで、ガード時4HIT目まで）
trigger1 = NumHelper(662)
trigger1 = IfElse(helper(662),movehit>=1,helper(662),AnimElemTime(7)<0,IfElse(helper(662),moveguarded>=1,1,0))
trigger1 = fvar(26)=[0,180]
trigger1 = var(47):=Ceil(2.0**10)
trigger2 = NumHelper(663)
trigger2 = IfElse(helper(663),movehit>=1,helper(663),AnimElemTime(7)<0,IfElse(helper(663),moveguarded>=1,1,0))
trigger2 = fvar(26)=[0,180]
trigger2 = var(47):=Ceil(2.0**10)
trigger3 = NumHelper(664)
trigger3 = IfElse(helper(664),movehit>=1,helper(664),AnimElemTime(7)<0,IfElse(helper(664),moveguarded>=1,1,0))
trigger3 = fvar(26)=[0,180]
trigger3 = var(47):=Ceil(2.0**10)
;〓JC（JC始動空中コンボルート時）
trigger4 = NumHelper(662)
trigger4 = helper(662),AnimElemTime(7)<0&&stateno=52
trigger4 = (var(48)&(Ceil(2.0**19)))				;□JC始動空中コンボルート時
trigger4 = fvar(26)=[50,120]
trigger4 = var(47):=Ceil(2.0**10)
trigger5 = NumHelper(662)
trigger5 = helper(662),AnimElemTime(7)<0&&stateno=52
trigger5 = (var(48)&(Ceil(2.0**19)))				;□JC始動空中コンボルート時
trigger5 = fvar(26)=[50,120]
trigger5 = var(47):=Ceil(2.0**10)
trigger6 = NumHelper(662)
trigger6 = helper(662),AnimElemTime(7)<0&&stateno=52
trigger6 = (var(48)&(Ceil(2.0**19)))				;□JC始動空中コンボルート時
trigger6 = fvar(26)=[50,120]
trigger6 = var(47):=Ceil(2.0**10)

;●JC発生中烈風拳ABで牽制
[State -1]
Type = ChangeState
Value = IfElse(Ceil(random/10%100)<=70,1001,1000)
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓21F後の予測座標
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=140-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=250
triggerall = Ceil(helper(23000),fvar(21))>=-40
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*30
;〓JC
trigger1 = NumHelper(662)
trigger1 = helper(662),AnimElemTime(9)<0
trigger2 = NumHelper(663)
trigger2 = helper(663),AnimElemTime(9)<0
trigger3 = NumHelper(664)
trigger3 = helper(664),AnimElemTime(9)<0

;●JC発生中ぱっちんBで牽制
[State -1]
Type = ChangeState
Value = 1401
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**15)))=0			;□4C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
triggerall = (var(48)&(Ceil(2.0**19)))=0			;□JC始動空中コンボルート以外
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓38F後の予測座標
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=220
triggerall = Ceil(helper(23000),fvar(38))>=-40
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15
;〓JC
trigger1 = NumHelper(662)
trigger1 = helper(662),AnimElemTime(9)<0
trigger2 = NumHelper(663)
trigger2 = helper(663),AnimElemTime(9)<0
trigger3 = NumHelper(664)
trigger3 = helper(664),AnimElemTime(9)<0

;==============================================================================
;■J2C攻撃発生中
;　├烈風拳AB
;　├4C
;　└ダッシュ

;●J2C発生中烈風拳ABで牽制
[State -1]
Type = ChangeState
Value = IfElse(Ceil(random/10%100)<=70,1001,1000)
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓21F後の予測座標
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=120
triggerall = Ceil(helper(23000),fvar(21))>=-40
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*30
;〓J2C
trigger1 = NumHelper(681)
trigger1 = helper(681),AnimElemTime(15)<0
trigger2 = NumHelper(682)
trigger2 = helper(682),AnimElemTime(17)<0

;●J2Cヒット中4Cで牽制
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓9F後の予測座標
triggerall = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=95
triggerall = Ceil(helper(23000),fvar(21))>=-80
;〓J2C
trigger1 = NumHelper(681)
trigger1 = helper(681),NumTarget(681)>0&&helper(681),movehit>=1
trigger2 = NumHelper(682)
trigger2 = helper(682),NumTarget(682)>0&&helper(682),movehit>=1

;●J2Cヒット中ダッシュで接近
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓J2C
trigger1 = NumHelper(681)
trigger1 = helper(681),NumTarget(681)>0&&helper(681),movehit>=1
trigger2 = NumHelper(682)
trigger2 = helper(682),NumTarget(682)>0&&helper(682),movehit>=1

;==============================================================================
;■J2B攻撃発生中着地後行動
;　├2A
;　├5B
;　├4C
;　│
;　└ダッシュ

;●J2Bコンタクト中2Aで追撃
[State -1]
Type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),vel x<0||enemynear(var(16)),stateno=[150,159]		;□めくり時除外orガード時
;〓J2B→2A（発生4F）（対地）（J2Bコンタクト中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(645)>0
trigger1 = Target(645),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-movehit)))/(1-fvar(25))),0))=[0,32]

;●J2Bヒット中4Cで追撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓J2B→4C（発生9F）（対地）（J2Bヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(645)>0
trigger1 = Target(645),time>=1
trigger1 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)=[9,13]
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,IfElse(enemynear(var(16)),GetHitVar(hittime)<=10,90,60)]

;●J2Bヒット中5Bで追撃
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),vel x<0||enemynear(var(16)),stateno=[150,159]		;□めくり時除外orガード時
;〓J2B→5B（発生8F）（対地）（J2Bコンタクト中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(645)>0
trigger1 = Target(645),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)=[8,13]
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]

;●J2Bヒット中ダッシュで間合いを詰める【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
;〓J2B（ヒット時）
trigger1 = NumTarget(645)>0
trigger1 = Target(645),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=14
trigger1 = fvar(26)=[0,180]
trigger1 = var(47):=Ceil(2.0**10)

;==============================================================================
;■JB攻撃発生中着地後行動
;　├2A
;　├5B
;　├4C
;　│
;　└ダッシュ

;●JBコンタクト中2Aで追撃
[State -1]
Type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JB→2A（発生4F）（対地）（JB1~3HIT目コンタクト中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(640)>0
trigger1 = Target(640),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-movehit)))/(1-fvar(25))),0))=[0,32]
;〓JB→2A（発生4F）（対地）（JB4HIT目コンタクト中攻撃）
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumTarget(641)>0
trigger2 = Target(641),time>=1
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger2 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger2 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-movehit)))/(1-fvar(25))),0))=[0,32]

;●JBヒット中5Bで追撃
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JB→5B（発生8F）（対地）（JB1~3HIT目ヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(640)>0
trigger1 = Target(640),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
;〓JB→5B（発生8F）（対地）（JB4HIT目ヒット中攻撃）
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumTarget(641)>0
trigger2 = Target(641),time>=1
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
;〓JB→5B（発生8F）（対地）（JB5HIT目ヒット中攻撃）
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumTarget(642)>0
trigger3 = Target(642),time>=1
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)=[8,13]
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]

;●JBヒット中4Cで追撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JB→4C（発生5F）（対地）（JB1~3HIT目ヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(640)>0
trigger1 = Target(640),time>=1
trigger1 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=5
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**5.0))/0.15)+Ceil(IfElse((movehit=[1,5]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(6.0-movehit)))/(1-fvar(25))),0))=[0,55]
;〓JB→4C（発生7F）（対地）（JB1~3HIT目ヒット中攻撃）
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumTarget(640)>0
trigger2 = Target(640),time>=1
trigger2 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-movehit)))/(1-fvar(25))),0))=[0,80]
;〓JB→4C（発生9F）（対地）（JB1~3HIT目ヒット中攻撃）
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumTarget(640)>0
trigger3 = Target(640),time>=1
trigger3 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
;〓JB→4C（発生5F）（対地）（JB4HIT目ヒット中攻撃）
trigger4 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger4 = NumTarget(641)>0
trigger4 = Target(641),time>=1
trigger4 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=5
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = fvar(26)-(vel x*(0.85-(0.85**5.0))/0.15)+Ceil(IfElse((movehit=[1,5]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(6.0-movehit)))/(1-fvar(25))),0))=[0,55]
;〓JB→4C（発生7F）（対地）（JB4HIT目ヒット中攻撃）
trigger5 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger5 = NumTarget(641)>0
trigger5 = Target(641),time>=1
trigger5 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-movehit)))/(1-fvar(25))),0))=[0,80]
;〓JB→4C（発生9F）（対地）（JB4HIT目ヒット中攻撃）
trigger6 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger6 = NumTarget(641)>0
trigger6 = Target(641),time>=1
trigger6 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
;〓JB→4C（発生7F）（対地）（JB4HIT目ヒット中攻撃）
trigger7 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = NumTarget(642)>0
trigger7 = Target(642),time>=1
trigger7 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)=[7,13]
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-movehit)))/(1-fvar(25))),0))=[0,80]
;〓JB→4C（発生9F）（対地）（JB4HIT目ヒット中攻撃）
trigger8 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = NumTarget(642)>0
trigger8 = Target(642),time>=1
trigger8 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)=[9,13]
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]

;●JB5HIT目コンタクト中ダッシュで間合いを詰める【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓JB（5HIT目ヒット時）
trigger1 = NumTarget(642)>0
trigger1 = Target(642),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=14
trigger1 = fvar(26)=[0,180]
trigger1 = var(47):=Ceil(2.0**10)

;==============================================================================
;■JA攻撃発生中着地後行動
;　├2A
;　├4C
;　└5B

;●JAコンタクト中2Aで追撃
[State -1]
Type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JA→2A（発生4F）（対地）（JAヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(630)>0
trigger1 = Target(630),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-movehit)))/(1-fvar(25))),0))=[0,32]

;●JAヒット中4Cで追撃
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JA→4C（発生5F）（対地）（JAヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(630)>0
trigger1 = Target(630),time>=1
trigger1 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=5
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**5.0))/0.15)+Ceil(IfElse((movehit=[1,5]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(6.0-movehit)))/(1-fvar(25))),0))=[0,55]
;〓JA→4C（発生7F）（対地）（JAヒット中攻撃）
trigger2 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = NumTarget(630)>0
trigger2 = Target(630),time>=1
trigger2 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**7.0))/0.15)+Ceil(IfElse((movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-movehit)))/(1-fvar(25))),0))=[0,80]
;〓JA→4C（発生9F）（対地）（JAヒット中攻撃）
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = NumTarget(630)>0
trigger3 = Target(630),time>=1
trigger3 = enemynear(var(16)),vel x>0||enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]

;●JAヒット中5Bで追撃
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓JA→5B（発生8F）（対地）（JAヒット中攻撃）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = NumTarget(630)>0
trigger1 = Target(630),time>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]

;==============================================================================
;■ゲイザー攻撃発生中ニュートラル後行動
;　├4C
;　├5B
;　├
;　└烈風拳A

;●ゲイザーヒット中4Cで牽制
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(50)&(Ceil(2.0**14)))=0
triggerall = helper(21000),var(0)>=110			;□画面端から距離110以上
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓9F後の予測座標
triggerall = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=140
triggerall = Ceil(helper(23000),fvar(21))>=-120
triggerall = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
;〓ゲイザー
trigger1 = NumHelper(1350)
trigger1 = helper(1350),NumTarget(1350)>0
trigger1 = helper(1350),movehit>=1
trigger2 = NumHelper(1351)
trigger2 = helper(1351),NumTarget(1350)>0
trigger2 = helper(1351),movehit>=1
trigger3 = NumHelper(1352)
trigger3 = helper(1352),NumTarget(1350)>0
trigger3 = helper(1352),movehit>=1
trigger4 = NumHelper(1353)
trigger4 = helper(1353),NumTarget(1350)>0
trigger4 = helper(1353),movehit>=1

;●ゲイザーヒット中5Bで牽制
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
triggerall = helper(21000),var(0)<=120			;□画面端から距離120以内
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓8F後の予測座標
triggerall = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=130
triggerall = Ceil(helper(23000),fvar(21))>=-10
triggerall = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
;〓ゲイザー
trigger1 = NumHelper(1350)
trigger1 = helper(1350),NumTarget(1350)>0
trigger1 = helper(1350),movehit>=1
trigger2 = NumHelper(1351)
trigger2 = helper(1351),NumTarget(1350)>0
trigger2 = helper(1351),movehit>=1
trigger3 = NumHelper(1352)
trigger3 = helper(1352),NumTarget(1350)>0
trigger3 = helper(1352),movehit>=1
trigger4 = NumHelper(1353)
trigger4 = helper(1353),NumTarget(1350)>0
trigger4 = helper(1353),movehit>=1

;●ゲイザー発生中烈風拳Aで牽制
[State -1]
Type = ChangeState
Value = 1000
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
;〓9F後の予測座標
triggerall = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=140
triggerall = Ceil(helper(23000),fvar(21))>=-40
;〓ゲイザー
trigger1 = NumHelper(1350)
trigger1 = helper(1350),NumTarget(1350)>0
trigger1 = helper(1350),movehit>=1
trigger2 = NumHelper(1351)
trigger2 = helper(1351),NumTarget(1350)>0
trigger2 = helper(1351),movehit>=1
trigger3 = NumHelper(1352)
trigger3 = helper(1352),NumTarget(1350)>0
trigger3 = helper(1352),movehit>=1
trigger4 = NumHelper(1353)
trigger4 = helper(1353),NumTarget(1350)>0
trigger4 = helper(1353),movehit>=1

;==============================================================================
;■烈風拳A攻撃発生中ニュートラル後行動
;　├2A
;　├5B
;　├4C
;　│
;　└ダッシュ

;●烈風拳Aコンタクト中2Aで追撃
[State -1]
Type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
triggerall = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
triggerall = fvar(26)-(vel x*(0.85-(0.85**4.0))/0.15)+Ceil(IfElse((movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-movehit)))/(1-fvar(25))),0))=[0,32]
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=L
;〓烈風拳A→2A（発生4F）（対地）（烈風拳Aコンタクト中攻撃）
trigger1 = NumHelper(1020)>0
trigger1 = helper(1020),NumTarget(1020)>0
trigger1 = helper(1020),movecontact>=1
trigger2 = NumHelper(1020)>0
trigger2 = helper(1020),NumTarget(1021)>0
trigger2 = helper(1020),movecontact>=1
trigger3 = NumHelper(1020)>0
trigger3 = helper(1020),NumTarget(1022)>0
trigger3 = helper(1020),movecontact>=1
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger4 = NumHelper(1050)>0
trigger4 = helper(1050),NumTarget(1050)>0
trigger4 = helper(1050),movecontact>=1
trigger5 = NumHelper(1050)>0
trigger5 = helper(1050),NumTarget(1051)>0
trigger5 = helper(1050),movecontact>=1
trigger6 = NumHelper(1050)>0
trigger6 = helper(1050),NumTarget(1052)>0
trigger6 = helper(1050),movecontact>=1
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4

;●烈風拳Aヒット時に4Cで牽制
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓9F後の予測座標
triggerall = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)=[0,95]
triggerall = Ceil(helper(23000),fvar(21))>=-40
;〓烈風拳A
trigger1 = NumHelper(1020)>0
trigger1 = helper(1020),NumTarget(1020)>0
trigger1 = helper(1020),movecontact>=1
trigger2 = NumHelper(1020)>0
trigger2 = helper(1020),NumTarget(1021)>0
trigger2 = helper(1020),movecontact>=1
trigger3 = NumHelper(1020)>0
trigger3 = helper(1020),NumTarget(1022)>0
trigger3 = helper(1020),movecontact>=1
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger4 = NumHelper(1050)>0
trigger4 = helper(1050),NumTarget(1050)>0
trigger4 = helper(1050),movecontact>=1
trigger5 = NumHelper(1050)>0
trigger5 = helper(1050),NumTarget(1051)>0
trigger5 = helper(1050),movecontact>=1
trigger6 = NumHelper(1050)>0
trigger6 = helper(1050),NumTarget(1052)>0
trigger6 = helper(1050),movecontact>=1
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9

;●烈風拳Aコンタクト＆発生中ダッシュで間合いを詰める【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓距離
triggerall = fvar(26)=[0,200]
;〓烈風拳A
trigger1 = NumHelper(1020)>0
trigger1 = helper(1020),NumTarget(1020)>0
trigger1 = helper(1020),movecontact>=1
trigger1 = enemynear(var(16)),movetype=H
trigger1 = var(47):=Ceil(2.0**10)
trigger2 = NumHelper(1020)>0
trigger2 = helper(1020),NumTarget(1021)>0
trigger2 = helper(1020),movecontact>=1
trigger2 = enemynear(var(16)),movetype=H
trigger2 = var(47):=Ceil(2.0**10)
trigger3 = NumHelper(1020)>0
trigger3 = helper(1020),NumTarget(1022)>0
trigger3 = helper(1020),movecontact>=1
trigger3 = enemynear(var(16)),movetype=H
trigger3 = var(47):=Ceil(2.0**10)
trigger4 = NumHelper(1050)>0
trigger4 = helper(1050),NumTarget(1050)>0
trigger4 = helper(1050),movecontact>=1
trigger4 = enemynear(var(16)),movetype=H
trigger4 = var(47):=Ceil(2.0**10)
trigger5 = NumHelper(1050)>0
trigger5 = helper(1050),NumTarget(1051)>0
trigger5 = helper(1050),movecontact>=1
trigger5 = enemynear(var(16)),movetype=H
trigger5 = var(47):=Ceil(2.0**10)
trigger6 = NumHelper(1050)>0
trigger6 = helper(1050),NumTarget(1052)>0
trigger6 = helper(1050),movecontact>=1
trigger6 = enemynear(var(16)),movetype=H
trigger6 = var(47):=Ceil(2.0**10)
trigger7 = NumHelper(1020)>0
trigger7 = fvar(26)=[100,200]
trigger7 = enemynear(var(16)),movetype!=H
trigger7 = Ceil((helper(1020),pos x*facing)+(pos x*facing*-1))<=fvar(26)	;□飛び道具位置<=P2位置
trigger7 = var(47):=Ceil(2.0**10)
trigger8 = NumHelper(1050)>0
trigger8 = fvar(26)=[100,200]
trigger8 = enemynear(var(16)),movetype!=H
trigger8 = Ceil((helper(1050),pos x*facing)+(pos x*facing*-1))<=fvar(26)	;□飛び道具位置<=P2位置
trigger8 = var(47):=Ceil(2.0**10)

;●烈風拳A3HIT目ヒット時にダッシュ5Bで牽制
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓8F後の予測座標
triggerall = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)=[0,125]
triggerall = Ceil(helper(23000),fvar(21))>=-20
;〓烈風拳A
trigger1 = NumHelper(1020)>0
trigger1 = helper(1020),NumTarget(1022)>0
trigger1 = helper(1020),movehit>=1
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = NumHelper(1050)>0
trigger2 = helper(1050),NumTarget(1052)>0
trigger2 = helper(1050),movehit>=1
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8

;==============================================================================
;■バースト攻撃ヒット中ニュートラル後行動
;　├烈風拳AB
;　│
;　└ダッシュ

;●バーストヒット中に烈風拳ABで牽制
[State -1]
Type = ChangeState
Value = IfElse(Ceil(random/10%100)<=70,1001,1000)
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = helper(21000),var(0)>=250			;□画面端から距離250以上
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓21F後の予測座標
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=120
triggerall = Ceil(helper(23000),fvar(21))>=-150
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓バースト
trigger1 = numhelper(16200)
trigger1 = helper(16200),numtarget(16200)
trigger1 = helper(16200),movehit>=1
trigger2 = numhelper(16202)
trigger2 = helper(16202),numtarget(16200)
trigger2 = helper(16202),movehit>=1
trigger3 = numhelper(16205)
trigger3 = helper(16205),numtarget(16200)
trigger3 = helper(16205),movehit>=1

;●バーストヒット中にダッシュで間合いを詰める【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = helper(21000),var(0)>=150			;□画面端から距離250以上
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)|Ceil(2.0**14)))=0
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H
;〓21F後の予測座標
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=120||fvar(26)<=150
triggerall = Ceil(helper(23000),fvar(21))>=-150||fvar(26)<=150
;〓バースト
trigger1 = numhelper(16200)
trigger1 = helper(16200),numtarget(16200)
trigger1 = helper(16200),movehit>=1
trigger1 = var(47):=Ceil(2.0**10)
trigger2 = numhelper(16202)
trigger2 = helper(16202),numtarget(16200)
trigger2 = helper(16202),movehit>=1
trigger2 = var(47):=Ceil(2.0**10)
trigger3 = numhelper(16205)
trigger3 = helper(16205),numtarget(16200)
trigger3 = helper(16205),movehit>=1
trigger3 = var(47):=Ceil(2.0**10)

;==============================================================================
;■予期しない攻撃ヒット時連携■

;■予期しない攻撃ヒット中4Cで追撃01
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(46)&(Ceil(2.0**3)|Ceil(2.0**4)|Ceil(2.0**5)|Ceil(2.0**6)|Ceil(2.0**7)|Ceil(2.0**8)|Ceil(2.0**9)|Ceil(2.0**10)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
;〓確率判定
triggerall = Ceil(random/10%100)<=50		;□確率判定
;〓4C（発生9F）（対地）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,90]

;■予期しない攻撃ヒット中5Bで追撃
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(46)&(Ceil(2.0**3)|Ceil(2.0**4)|Ceil(2.0**5)|Ceil(2.0**6)|Ceil(2.0**7)|Ceil(2.0**8)|Ceil(2.0**9)|Ceil(2.0**10)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓5B（発生8F）（対地）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**8.0))/0.15)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]

;■予期しない攻撃ヒット中4Cで追撃02
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(46)&(Ceil(2.0**3)|Ceil(2.0**4)|Ceil(2.0**5)|Ceil(2.0**6)|Ceil(2.0**7)|Ceil(2.0**8)|Ceil(2.0**9)|Ceil(2.0**10)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
;〓確率判定
triggerall = Ceil(random/10%100)<=40		;□確率判定
;〓4C（発生9F）（対地）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**9.0))/0.15)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,90]

;■予期しない攻撃ヒット中3Cで追撃
[State -1]
Type = ChangeState
Value = 460
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(46)&(Ceil(2.0**3)|Ceil(2.0**4)|Ceil(2.0**5)|Ceil(2.0**6)|Ceil(2.0**7)|Ceil(2.0**8)|Ceil(2.0**9)|Ceil(2.0**10)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),movetype=H&&enemynear(var(16)),stateno!=[150,159]
;〓3C（発生24F）（対地）
trigger1 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = (var(50)&(Ceil(2.0**16)))=0
trigger1 = fvar(26)-(vel x*(0.85-(0.85**24.0))/0.15)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[150-enemynear(var(16)),const(size.ground.back),190]

;------------------------------------------------------------------------------










;==============================================================================
;■ガード硬直時連携■（var(47)系）triggerall = (var(46)&(Ceil(2.0**26)))=0
;------------------------------------------------------------------------------

;==============================================================================
;■5A┬JP（ガークラ）（2HIT目）　（0-125）　（ノーマル＆ボス）（個別反応速度）
;　　├5B（対地） 25%（2HIT目）	 （0-120）
;　　├4C（対地） 40%（1~2HIT目）（0-50） 
;　　├4C（対地） 40%（2HIT目）	 （50-80）
;　　├2C（対地） 25%（1HIT目）	 （75~80-80~95）（画面端）　（ボスモード範囲拡大）
;　　├2C（対地） 15%（1HIT目）	 （70~80-80~95）（画面中央）（ボスモード範囲拡大）
;　　├2B（対地） 40%（2HIT目）	 （100-150）
;　　├JP（対地） 10%（2HIT目）	 （100-150）（ノーマル＆ボス）
;　　├4C（対地） 40%（2HIT目）　（0-100）
;　　├5B（対地）100%（2HIT目）	 （0-130）
;　　│
;　　├4A（対空）100%（1~2HIT目）（0-70） 
;　　├4C（対空）100%（2HIT目）	 （30-80）
;　　└4C（対空）100%（2HIT目）	 （0-130）

;■5Aキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C


;〓5A→ジャンプ（ガークラ）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger1 = enemynear(var(16)),statetype=S&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5002,5007)||enemynear(var(16)),anim=5910)
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = stateno=200&&time=10			;□2HIT目
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10	;□個別反応速度
trigger1 = fvar(26)=[0,130]
trigger1 = var(47):=Ceil(2.0**15)
trigger1 = fvar(28):=42
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger2 = enemynear(var(16)),statetype=C&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5022,5027)||enemynear(var(16)),anim=5920)
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = stateno=200&&time=10			;□2HIT目
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10	;□個別反応速度
trigger2 = fvar(26)=[0,130]
trigger2 = var(47):=Ceil(2.0**15)
trigger2 = fvar(28):=42
;〓5A→5B（発生8F）（対地）
trigger3 = stateno=200&&time=10			;□2HIT目
trigger3 = Ceil(random/10%100)<=25		;□確率判定
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger3 = fvar(28):=210
;〓5A→4C（発生5F）（対地）
trigger4 = stateno=200&&time=[9,10]		;□1～2HIT目
trigger4 = Ceil(random/10%100)<=60		;□確率判定
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),50]
trigger4 = fvar(28):=235
;〓5A→4C（発生9F）（対地）
trigger5 = stateno=200&&time=10			;□2HIT目
trigger5 = Ceil(random/10%100)<=40		;□確率判定
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[50,90]
trigger5 = fvar(28):=235
;〓5A→2C（発生17F）（対地＆画面端）
trigger6 = stateno=200&&time=9			;□1HIT目
trigger6 = Ceil(random/10%100)<=25		;□確率判定
trigger6 = helper(21000),var(0)<=100+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)			;□画面端
trigger6 = (var(50)&(Ceil(2.0**15)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = fvar(26)=[75+IfElse(Ceil(var(52)/100%10)>=2,5,0),80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger6 = fvar(28):=440
;〓5A→2C（発生17F）（対地）
trigger7 = stateno=200&&time=9			;□1HIT目
trigger7 = Ceil(random/10%100)<=15		;□確率判定
trigger7 = helper(21000),var(0)>=100+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)			;□画面中央
trigger7 = (var(50)&(Ceil(2.0**15)))=0
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = fvar(26)=[70+IfElse(Ceil(var(52)/100%10)>=2,5,0),80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger7 = fvar(28):=440
;〓5A→2B（発生18F）（対地）
trigger8 = stateno=200&&time=10			;□2HIT目
trigger8 = Ceil(random/10%100)<=40		;□確率判定
trigger8 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = fvar(26)=[100,150]
trigger8 = fvar(28):=420
;〓5A→ジャンプ（対地）（ノーマルモード以上）
trigger9 = Ceil(var(52)/100%10)>=1
trigger9 = stateno=200&&time=10			;□2HIT目
trigger9 = Ceil(random/10%100)<=20		;□確率判定
trigger9 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger9 = fvar(26)=[100,150]
trigger9 = fvar(28):=42
;〓5A→4C（発生9F）（対地）
trigger10 = stateno=200&&time=10			;□2HIT目
trigger10 = Ceil(random/10%100)<=40		;□確率判定
trigger10 = (var(50)&(Ceil(2.0**14)))=0
trigger10 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger10 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger10 = fvar(28):=235
;〓5A→5B（発生11F）（対地）
trigger11 = stateno=200&&time=10			;□2HIT目
trigger11 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger11 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger11 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger11 = fvar(28):=210

;★5A連打入れる？
;★ジャンプ入れる？

;〓5A→4A（発生10F）（対空）
trigger12 = stateno=200&&time=[9,10]		;□1～2HIT目
trigger12 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger12 = enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger12 = helper(23000),var(10)+const(size.ground.front)<=70
trigger12 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-110,-30]
trigger12 = fvar(28):=205
;〓5A→4C（発生7F）（対空）
trigger13 = stateno=200&&time=10		;□2HIT目
trigger13 = (var(50)&(Ceil(2.0**14)))=0
trigger13 = enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger13 = helper(23000),var(7)+const(size.ground.front)<=80
trigger13 = Ceil(helper(23000),fvar(7))>=-125
trigger13 = fvar(28):=235
;〓5A→4C（発生9F）（対空）
trigger14 = stateno=200&&time=10		;□2HIT目
trigger14 = (var(50)&(Ceil(2.0**14)))=0
trigger14 = enemynear(var(16)),statetype=A
trigger14 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger14 = helper(23000),var(9)+const(size.ground.front)<=130
trigger14 = Ceil(helper(23000),fvar(9))>=-140
trigger14 = fvar(28):=235
IgnoreHitPause = 1

;■5Aキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=200&&time>=9
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■4A┬4C	（地上） 20%（3HIT目）（35-100）
;　　├2B	（地上） 10%（3HIT目）（0-70）
;　　├5B	（地上）100%（3HIT目）（0-130）
;　　│
;　　├4C	（対空）100%（3HIT目）（30-80）
;　　├4C	（対空）100%（3HIT目）（0-130）
;　　└対空投げA（対空）100%（3HIT目）（20-75）

;■4Aキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C
;〓4A→4C（発生9F）（対地）
trigger1 = stateno=205&&time=12			;□3HIT目
trigger1 = Ceil(random/10%100)<=20		;□確率判定
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[35,100]
trigger1 = fvar(28):=235
;〓4A→2B（発生18F）（対地）
trigger2 = stateno=205&&time=12			;□3HIT目
trigger2 = Ceil(random/10%100)<=10		;□確率判定
trigger2 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),70]
trigger2 = fvar(28):=420
;〓4A→5B（発生11F）（対地）
trigger3 = stateno=205&&time=12			;□3HIT目
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger3 = fvar(28):=210
;〓4A→4C（発生7F）（対空）
trigger4 = stateno=205&&time=12			;□3HIT目
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger4 = helper(23000),var(7)+const(size.ground.front)<=80
trigger4 = Ceil(helper(23000),fvar(7))>=-125
trigger4 = fvar(28):=235
;〓4A→4C（発生9F）（対空）
trigger5 = stateno=205&&time=12			;□3HIT目
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(9)+const(size.ground.front)<=130
trigger5 = Ceil(helper(23000),fvar(9))>=-140
trigger5 = fvar(28):=235
;〓4A→対空投げA（発生16F）（対空）
trigger6 = stateno=205&&time=12
trigger6 = enemynear(var(16)),statetype=A
trigger6 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=75)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(16)+const(size.ground.front)<=75
trigger6 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-110+Ceil(fvar(36)),-35]
trigger6 = fvar(28):=1500
IgnoreHitPause = 1

;■4Aキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=205&&time>=12
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■2A┬2Aがブロされる→EXコマンド投げ
;　　├2Aがガードされる→特殊ガード後通常投げ
;　　│
;　　├2Aでガークラ→ジャンプ
;　　├2A（地上） 25%（1HIT目）	 （0-35）
;　　├5A（地上） 25%（1HIT目）	 （0-50）
;　　├5B（地上） 50%（1HIT目）	 （0-130）
;　　└当て投げ　 40%（1HIT目）  （25-33）

;■2AがブロされたときEXコマンド投げで反撃
[State -1]
type = ChangeState
Value = 2800
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=400&&time>=6			;□1HIT目
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(power/3000.0*Ceil(helper(21000),var(59)/1000%100)*25)||Ceil(helper(21000),var(59)/1000%100)=10
;〓Near状態
triggerall = enemynear(var(16)),stateno!=[40,49]
triggerall = (var(46)&(Ceil(2.0**18)))=0&&enemynear(var(16)),GetHitVar(IsBound)=0	;□非バインド中
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓1F後の予測座標【対地】（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = numenemy>=1
trigger1 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger1 = helper(23000),var(1)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),52]
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = numenemy>=2
trigger2 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger2 = helper(23000),var(1)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),52]
;〓10F後の予測座標【対地】（ノーマルモード以下）
trigger3 = Ceil(var(52)/100%10)<=1
trigger3 = numenemy>=1
trigger3 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger3 = helper(23000),var(10)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger4 = Ceil(var(52)/100%10)<=1
trigger4 = numenemy>=2
trigger4 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger4 = helper(23000),var(10)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]

;■2A後→特殊ガードで投げ無敵付与【投げ回避済みフラグON】
[State -1]
Type = ChangeState
Value = 120
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,159])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**2)))=0
triggerall = (var(47)&(Ceil(2.0**18)))
;〓特殊ガード使用条件
triggerall = fvar(20)>=60
triggerall = numhelper(16230)=0&&numhelper(16231)=0
triggerall = var(24)=0||StateNo!=[150,153]
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10
;〓フラグセット
trigger1 = var(24):=1
trigger1 = var(47):=Ceil(2.0**2)+Ceil(2.0**18)

;■2A後→投げ範囲内なら投げで反撃
[State -1]
Type = ChangeState
Value = 800
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**18)))
triggerall = numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10
;〓P2状態＆Near距離測定（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = fvar(26)<=57
;〓P2状態＆Near距離測定（ノーマルモード以下）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger2 = fvar(26)<=45

;■小足当て投げフラグリセット【小足当て投げフラグOFF】
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**18)))
trigger1 = (stateno!=[11,12])&&stateno!=400&&(stateno!=[120,140])
trigger1 = var(47):=(var(47)|Ceil(2.0**18))-(Ceil(2.0**18))||1
;〓P2状態＆Near距離測定（ボスモード）
trigger2 = Ceil(var(52)/100%10)>=2
trigger2 = fvar(26)>57
trigger2 = var(47):=(var(47)|Ceil(2.0**18))-(Ceil(2.0**18))||1
;〓P2状態＆Near距離測定（ノーマルモード以下）
trigger3 = Ceil(var(52)/100%10)<=1
trigger3 = fvar(26)>45
trigger3 = var(47):=(var(47)|Ceil(2.0**18))-(Ceil(2.0**18))||1
IgnoreHitPause = 1

;■小足当て投げフラグセット【小足当て投げフラグON】
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(47)&(Ceil(2.0**18)))=0
triggerall = numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0
;〓2A→2A（発生4F）（対地）
trigger1 = stateno=400&&time=6			;□1HIT目
trigger1 = Ceil(random/10%100)<=40		;□確率判定
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[25,33]
trigger1 = var(47):=Ceil(2.0**18)		;□小足当て投げフラグ
IgnoreHitPause = 1

;■2Aキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C
;〓基本使用条件
triggerall = (var(47)&(Ceil(2.0**18)))=0

;〓2A→ジャンプ（ガークラ）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger1 = enemynear(var(16)),statetype=S&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5002,5007)||enemynear(var(16)),anim=5910)
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = stateno=400&&time=6			;□1HIT目
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10	;□個別反応速度
trigger1 = fvar(26)=[0,130]
trigger1 = var(47):=Ceil(2.0**15)
trigger1 = fvar(28):=42
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = enemynear(var(16)),stateno=8300&&enemynear(var(16)),movetype=H	;□ガークラ状態
trigger2 = enemynear(var(16)),statetype=C&&(IfElse((enemynear(var(16)),time=[0,19]),enemynear(var(16)),anim=5022,5027)||enemynear(var(16)),anim=5920)
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = stateno=400&&time=6			;□1HIT目
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*100||Ceil(helper(21000),var(59)/1000%100)=10	;□個別反応速度
trigger2 = fvar(26)=[0,130]
trigger2 = var(47):=Ceil(2.0**15)
trigger2 = fvar(28):=42
;〓2A→2A（発生4F）（対地）
trigger3 = stateno=400&&time=6			;□1HIT目
trigger3 = Ceil(random/10%100)<=25		;□確率判定
trigger3 = IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger3 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),32]
trigger3 = fvar(28):=400
;〓2A→5A（発生5F）（対地）
trigger4 = stateno=400&&time=6			;□1HIT目
trigger4 = Ceil(random/10%100)<=45		;□確率判定
trigger4 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger4 = fvar(28):=200
;〓2A→5B（発生11F）（対地）
trigger5 = stateno=400&&time=6			;□2HIT目
trigger5 = Ceil(random/10%100)<=100		;□確率判定
trigger5 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger5 = fvar(28):=210
IgnoreHitPause = 1

;■2Aキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=400&&time>=6
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
triggerall = (var(47)&(Ceil(2.0**18)))=0	;□小足当て投げフラグOFF
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■5B┬4C　　　（対地） 50%（4HIT目）（85-100）
;　　├4C　　　（対地） 50%（5HIT目）（0-100）
;　　├3C　　　（対地） 40%（5HIT目）（100-180）
;　　├2B　　　（対地） 30%（5HIT目）（90-150）
;　　├ジャンプ（対地） 40%（5HIT目）（90-150） （ノーマル＆ボス）
;　　├6C　　　（対地） 30%（5HIT目）（80-200）
;　　├4B　　　（対地） 20%（5HIT目）（100-150）（座高判定あり）
;　　├瘴気結界（対地）A*5%（5HIT目）（100-300）
;　　├烈風拳A （対地）100%（5HIT目）（90-150）
;　　│
;　　├4C　　　（対空）100%（5HIT目）（30-80）
;　　├4C　　　（対空）100%（5HIT目）（0-130）
;　　└3C　　　（対空）100%（5HIT目）（0-180）


;■5Bキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓5B→4C（発生9F）（対地）
trigger1 = stateno=210&&time=17			;□4HIT目
trigger1 = Ceil(random/10%100)<=50		;□確率判定
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[85,100]
trigger1 = fvar(28):=235
;〓5B→4C（発生9F）（対地）
trigger2 = stateno=210&&time=20			;□5HIT目
trigger2 = Ceil(random/10%100)<=50		;□確率判定
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger2 = fvar(28):=235
;〓5B→3C（発生19F）（対地）
trigger3 = stateno=210&&time=20			;□5HIT目
trigger3 = Ceil(random/10%100)<=40		;□確率判定
trigger3 = (var(50)&(Ceil(2.0**16)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[100,190]
trigger3 = fvar(28):=460
;〓5B→2B（発生18F）（対地）
trigger4 = stateno=210&&time=20			;□5HIT目
trigger4 = Ceil(random/10%100)<=30		;□確率判定
trigger4 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[90,125]
trigger4 = fvar(28):=420
;〓5B→ジャンプ（対地）（ノーマルモード以上）
trigger5 = Ceil(var(52)/100%10)>=1
trigger5 = stateno=210&&time=20			;□5HIT目
trigger5 = Ceil(random/10%100)<=40		;□確率判定
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[100,180]
trigger5 = fvar(28):=42
trigger5 = var(47):=IfElse(fvar(26)>=150,Ceil(2.0**15),Ceil(2.0**16))
;〓5B→6C（発生15F）（対地）
trigger6 = stateno=210&&time=20			;□5HIT目
trigger6 = Ceil(random/10%100)<=30		;□確率判定
trigger6 = (var(50)&(Ceil(2.0**13)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = fvar(26)=[80,200]
trigger6 = fvar(28):=240
;〓5B→4B（発生18F）（対地）
trigger7 = stateno=210&&time=20			;□5HIT目
trigger7 = Ceil(random/10%100)<=20		;□確率判定
trigger7 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger7 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger7 = fvar(26)=[100,150]
trigger7 = fvar(28):=220
;〓5B→瘴気結界（対地）
trigger8 = (var(57)&(Ceil(2.0**25)))
trigger8 = stateno=210&&time=20				;□5HIT目
trigger8 = Ceil(random/10%100)<=Ceil(var(54)%10)*5	;□確率判定
trigger8 = Ceil(var(54)%10)>=3
trigger8 = Ceil(var(53)/1000%10)>=1
trigger8 = (var(46)&(Ceil(2.0**17)))=0		;□ロー・ブロッサム使用判定NG
trigger8 = !NumHelper(3310)&!NumHelper(3205)	;□瘴気結界ヘルパー＆花弁本体ヘルパー
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger8 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)=[5.0,9.0])||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger8 = fvar(26)=[100,300]
trigger8 = fvar(28):=3300
;〓5B→烈風拳A（対地）
trigger9 = stateno=210&&time=20			;□5HIT目
trigger9 = Ceil(random/10%100)<=100		;□確率判定
trigger9 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger9 = fvar(26)=[90,150]
trigger9 = fvar(28):=1000
;〓5B→ジャンプ（対地）（ノーマルモード以上）
trigger10 = Ceil(var(52)/100%10)>=1
trigger10 = stateno=210&&time=20			;□5HIT目
trigger10 = Ceil(random/10%100)<=100		;□確率判定
trigger10 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger10 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),180]
trigger10 = fvar(28):=42
trigger10 = var(47):=IfElse(fvar(26)>=150,Ceil(2.0**15),Ceil(2.0**16))
;〓5B→4C（発生7F）（対空）
trigger11 = stateno=210&&time=20		;□5HIT目
trigger11 = (var(50)&(Ceil(2.0**14)))=0
trigger11 = enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger11 = helper(23000),var(7)+const(size.ground.front)<=80
trigger11 = Ceil(helper(23000),fvar(7))>=-125
trigger11 = fvar(28):=235
;〓5B→4C（発生9F）（対空）
trigger12 = stateno=210&&time=20		;□5HIT目
trigger12 = (var(50)&(Ceil(2.0**14)))=0
trigger12 = enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger12 = helper(23000),var(9)+const(size.ground.front)<=130
trigger12 = Ceil(helper(23000),fvar(9))>=-140
trigger12 = fvar(28):=235
;〓5B→3C（発生19F）（対空）
trigger13 = stateno=210&&time=20		;□5HIT目
trigger13 = (var(50)&(Ceil(2.0**16)))=0
trigger13 = enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger13 = helper(23000),var(19)+const(size.ground.front)<=200
trigger13 = Ceil(helper(23000),fvar(19))>=-160
trigger13 = fvar(28):=460
IgnoreHitPause = 1

;■5Bキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=210&&time>=16
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■4B┬4C　　　（対地）100%　 （4HIT目）　（0-100）
;　　├6C　　　（対地） 30%　 （3HIT目）　（170-215）
;　　├ジャンプ（対地） 25%　 （3HIT目）　（140-170） （ノーマル＆ボス）
;　　├烈風拳A （両用）25~100%（3~4HIT目）（140-250）
;　　├3C　　　（対地）100%　 （3~4HIT目）（100-185）
;　　├ジャンプ（対地）100%　 （3HIT目）　（100-170） （ノーマル＆ボス）
;　　├烈風拳A （両用）100%　 （3~4HIT目）（100-250）
;　　│
;　　├4C　　　（対空）100%　 （4HIT目）　（30-80）
;　　├4C　　　（対空）100%　 （4HIT目）　（0-130）
;　　└3C　　　（対空）100%　 （4HIT目）　（0-180）

;■4Bキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓4B→4C（発生9F）（対地）
trigger1 = stateno=220&&time=26			;□3HIT目
trigger1 = Ceil(random/10%100)<=100		;□確率判定
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger1 = fvar(28):=235
;〓4B→6C（発生15F）（対地）
trigger2 = stateno=220&&time=26			;□3HIT目
trigger2 = Ceil(random/10%100)<=30		;□確率判定
trigger2 = (var(50)&(Ceil(2.0**13)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[170,215]
trigger2 = fvar(28):=240
;〓4B→ジャンプ（対地）（ノーマルモード以上）
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = stateno=220&&time=26			;□3HIT目
trigger3 = Ceil(random/10%100)<=25		;□確率判定
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[140,170]
trigger3 = fvar(28):=42
trigger3 = var(47):=Ceil(2.0**15)
;〓4B→烈風拳A（両用）
trigger4 = stateno=220&&(time=26||time=28)	;□3～4HIT目
trigger4 = IfElse(enemynear(var(16)),statetype=A,Ceil(random/10%100)<=25,1)		;□確率判定
trigger4 = fvar(26)=[140,250]
trigger4 = fvar(28):=1000
;〓4B→3C（発生19F）（対地）
trigger5 = stateno=220&&(time=26||time=28)	;□3～4HIT目
trigger5 = (var(50)&(Ceil(2.0**16)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),185]
trigger5 = fvar(28):=460
;〓4B→ジャンプ（対地）（ノーマルモード以上）
trigger6 = Ceil(var(52)/100%10)>=1
trigger6 = stateno=220&&time=26			;□3HIT目
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = fvar(26)=[100,170]
trigger6 = fvar(28):=42
trigger6 = var(47):=Ceil(2.0**15)
;〓4B→烈風拳A（両用）
trigger7 = stateno=220&&(time=26||time=28)	;□3～4HIT目
trigger7 = fvar(26)=[100,250]
trigger7 = fvar(28):=1000
;〓4B→4C（発生7F）（対空）
trigger8 = stateno=220&&time=28			;□4HIT目
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger8 = helper(23000),var(7)+const(size.ground.front)<=80
trigger8 = Ceil(helper(23000),fvar(7))>=-125
trigger8 = fvar(28):=235
;〓4B→4C（発生9F）（対空）
trigger9 = stateno=220&&time=28			;□4HIT目
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = enemynear(var(16)),statetype=A
trigger9 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger9 = helper(23000),var(9)+const(size.ground.front)<=130
trigger9 = Ceil(helper(23000),fvar(9))>=-140
trigger9 = fvar(28):=235
;〓4B→3C（発生19F）（対空）
trigger10 = stateno=220&&time=28		;□4HIT目
trigger10 = (var(50)&(Ceil(2.0**16)))=0
trigger10 = enemynear(var(16)),statetype=A
trigger10 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger10 = helper(23000),var(19)+const(size.ground.front)<=200
trigger10 = Ceil(helper(23000),fvar(19))>=-160
trigger10 = fvar(28):=460
IgnoreHitPause = 1

;■4Bキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=220&&time>=26
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■2B┬5B　　　（対地） 50%（2HIT目）（0-120）
;　　├2C　　　（対地） 25%（2HIT目）（75~80-80~95）（画面端）　（ボスモード範囲拡大）
;　　├4C　　　（対地）100%（2HIT目）（0-100）
;　　├ジャンプ（対地） 50%（2HIT目）（90-190） （ノーマルモード以上）
;　　├6C　　　（対地） 50%（2HIT目）（140-230）（画面中央）
;　　├4B　　　（対地） 20%（2HIT目）（125-150）
;　　├3C　　　（対地）100%（2HIT目）（0-200）
;　　├ジャンプ（対地）100%（2HIT目）（0-250） （ノーマルモード以上）
;　　│
;　　├4C　　　（対空）100%（2HIT目）（30-80）
;　　├4C　　　（対空）100%（2HIT目）（0-130）
;　　└3C　　　（対空）100%（2HIT目）（0-200）

;■2Bキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓2B→5B（発生8F）（対地）
trigger1 = stateno=420&&time=24			;□2HIT目
trigger1 = Ceil(random/10%100)<=50		;□確率判定
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger1 = fvar(28):=210
;〓2B→2C（発生17F）（対地＆画面端）
trigger2 = stateno=420&&time=24			;□2HIT目
trigger2 = Ceil(random/10%100)<=70		;□確率判定
trigger2 = helper(21000),var(0)<=100+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)			;□画面端
trigger2 = (var(50)&(Ceil(2.0**15)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[75+IfElse(Ceil(var(52)/100%10)>=2,5,0),80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger2 = fvar(28):=440
;〓2B→4C（発生9F）（対地）
trigger3 = stateno=420&&time=24			;□2HIT目
trigger3 = Ceil(random/10%100)<=100		;□確率判定
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger3 = fvar(28):=235
;〓2B→ジャンプ（対地）（ノーマルモード以上）
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = stateno=420&&time=24			;□2HIT目
trigger4 = Ceil(random/10%100)<=50		;□確率判定
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[90,190]
trigger4 = fvar(28):=42
trigger4 = var(47):=Ceil(2.0**16)
;〓2B→6C（発生15F）（対地）
trigger5 = stateno=420&&time=24			;□2HIT目
trigger5 = Ceil(random/10%100)<=100		;□確率判定
trigger5 = helper(21000),var(0)>=200+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back);□画面中央
trigger5 = (var(50)&(Ceil(2.0**13)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[140,230]
trigger5 = fvar(28):=240
;〓2B→4B（発生18F）（対地）
trigger6 = stateno=420&&time=24			;□2HIT目
trigger6 = Ceil(random/10%100)<=20		;□確率判定
trigger6 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger6 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger6 = fvar(26)=[125,150]
trigger6 = fvar(28):=220
;〓2B→3C（発生19F）（対地）
trigger7 = stateno=420&&time=24			;□2HIT目
trigger7 = (var(50)&(Ceil(2.0**16)))=0
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),200]
trigger7 = fvar(28):=460
;〓2B→ジャンプ（対地）（ノーマルモード以上）
trigger8 = Ceil(var(52)/100%10)>=1
trigger8 = stateno=420&&time=24	;□2HIT目
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),250]
trigger8 = fvar(28):=42
trigger8 = var(47):=Ceil(2.0**16)
;〓2B→4C（発生7F）（対空）
trigger9 = stateno=420&&time=24			;□2HIT目
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = enemynear(var(16)),statetype=A
trigger9 = helper(23000),var(7)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger9 = helper(23000),var(7)+const(size.ground.front)<=80
trigger9 = Ceil(helper(23000),fvar(7))>=-125
trigger9 = fvar(28):=235
;〓2B→4C（発生9F）（対空）
trigger10 = stateno=420&&time=24		;□2HIT目
trigger10 = (var(50)&(Ceil(2.0**14)))=0
trigger10 = enemynear(var(16)),statetype=A
trigger10 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger10 = helper(23000),var(9)+const(size.ground.front)<=130
trigger10 = Ceil(helper(23000),fvar(9))>=-140
trigger10 = fvar(28):=235
;〓2B→3C（発生19F）（対空）
trigger11 = stateno=420&&time=24		;□2HIT目
trigger11 = (var(50)&(Ceil(2.0**16)))=0
trigger11 = enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger11 = helper(23000),var(19)+const(size.ground.front)<=200
trigger11 = Ceil(helper(23000),fvar(19))>=-160
trigger11 = fvar(28):=460
IgnoreHitPause = 1

;■2Bキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=420&&time>=24
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = numhelper(424)=1
trigger1 = helper(424),moveguarded>=1
trigger2 = numhelper(425)=1
trigger2 = helper(425),moveguarded>=1
;〓P2ブロ状態
trigger3 = numenemy>=1
trigger3 = NumHelper(424)
trigger3 = helper(424),movehit>=1
trigger3 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&enemynear(var(16)),stateno=enemy(0),stateno
trigger4 = numenemy>=1
trigger4 = NumHelper(425)
trigger4 = helper(425),movehit>=1
trigger4 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger5 = numenemy>=2
trigger5 = NumHelper(424)
trigger5 = helper(424),movehit>=1
trigger5 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&enemynear(var(16)),stateno=enemy(1),stateno
trigger6 = numenemy>=2
trigger6 = NumHelper(425)
trigger6 = helper(425),movehit>=1
trigger6 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■5C┬5B　　　　　（対地） 50%（0-140）
;　　├4C　　　　　（対地） 50%（0-130）
;　　├ハイジャンプ（対地） 25%（0-120）
;　　├2B　　　　　（対地）100%（0-180）
;　　│
;　　├対空投げA　 （対空）100%（20-75）
;　　├4A　　　　　（対空）100%（0-70）
;　　└4C　　　　　（対空）100%（0-130）

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓ガード数加算リセット
trigger1 = stateno=230
trigger1 = time<=1
trigger1 = fvar(29):=0
IgnoreHitPause = 1

[State -1]
type = VarAdd
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓ガード数測定
triggerall = stateno=230
triggerall = moveguarded>=1
trigger1 = AnimElemTime(3)=0
trigger2 = AnimElemTime(4)=0
trigger3 = AnimElemTime(5)=0
trigger4 = AnimElemTime(6)=0
trigger5 = AnimElemTime(7)=0
trigger6 = AnimElemTime(8)=0
trigger7 = AnimElemTime(9)=0
trigger8 = AnimElemTime(10)=0
trigger9 = AnimElemTime(11)=0
trigger10 = AnimElemTime(12)=0
trigger11 = AnimElemTime(13)=0
trigger12 = Ceil(var(52)/100%10)>=1&&AnimElemTime(14)=0
trigger13 = Ceil(var(52)/100%10)>=1&&AnimElemTime(15)=0
trigger14 = Ceil(var(52)/100%10)>=1&&AnimElemTime(16)=0
trigger15 = Ceil(var(52)/100%10)>=1&&AnimElemTime(17)=0
fvar(29) = 1
IgnoreHitPause = 1

[State -1]
type = VarAdd
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓P2ブロ数測定
triggerall = stateno=230
triggerall = movehit>=1
triggerall = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&enemynear(var(16)),stateno=enemy(0),stateno
trigger1 = AnimElemTime(3)=0
trigger2 = AnimElemTime(4)=0
trigger3 = AnimElemTime(5)=0
trigger4 = AnimElemTime(6)=0
trigger5 = AnimElemTime(7)=0
trigger6 = AnimElemTime(8)=0
trigger7 = AnimElemTime(9)=0
trigger8 = AnimElemTime(10)=0
trigger9 = AnimElemTime(11)=0
trigger10 = AnimElemTime(12)=0
trigger11 = AnimElemTime(13)=0
trigger12 = Ceil(var(52)/100%10)>=1&&AnimElemTime(14)=0
trigger13 = Ceil(var(52)/100%10)>=1&&AnimElemTime(15)=0
trigger14 = Ceil(var(52)/100%10)>=1&&AnimElemTime(16)=0
trigger15 = Ceil(var(52)/100%10)>=1&&AnimElemTime(17)=0
fvar(29) = 1
IgnoreHitPause = 1

[State -1]
type = VarAdd
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓P4ブロ数測定
triggerall = stateno=230
triggerall = movehit>=1
triggerall = numenemy>=2
triggerall = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&enemynear(var(16)),stateno=enemy(1),stateno
trigger1 = AnimElemTime(3)=0
trigger2 = AnimElemTime(4)=0
trigger3 = AnimElemTime(5)=0
trigger4 = AnimElemTime(6)=0
trigger5 = AnimElemTime(7)=0
trigger6 = AnimElemTime(8)=0
trigger7 = AnimElemTime(9)=0
trigger8 = AnimElemTime(10)=0
trigger9 = AnimElemTime(11)=0
trigger10 = AnimElemTime(12)=0
trigger11 = AnimElemTime(13)=0
trigger12 = Ceil(var(52)/100%10)>=1&&AnimElemTime(14)=0
trigger13 = Ceil(var(52)/100%10)>=1&&AnimElemTime(15)=0
trigger14 = Ceil(var(52)/100%10)>=1&&AnimElemTime(16)=0
trigger15 = Ceil(var(52)/100%10)>=1&&AnimElemTime(17)=0
fvar(29) = 1
IgnoreHitPause = 1

;■5Cキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓5C→5B（発生8F）（対地）
trigger1 = stateno=230&&time>=IfElse(Ceil(var(52)/100%10)=0,41,44)
trigger1 = Ceil(random/10%100)<=50		;□確率判定
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),140]
trigger1 = fvar(28):=210
;〓5C→4C（発生9F）（対地）
trigger2 = stateno=230&&time>=IfElse(Ceil(var(52)/100%10)=0,41,44)
trigger2 = Ceil(random/10%100)<=50		;□確率判定
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger2 = fvar(28):=235
;〓5C→ハイジャンプ（対地）（ノーマルモード以上）
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = stateno=230&&time>=44
trigger3 = Ceil(random/10%100)<=25		;□確率判定
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger3 = fvar(28):=43
trigger3 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓5C→2B（発生18F）（対地）
trigger4 = stateno=230&&time>=IfElse(Ceil(var(52)/100%10)=0,41,44)
trigger4 = Ceil(random/10%100)<=100		;□確率判定
trigger4 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),180]
trigger4 = fvar(28):=420
;〓5C→5A（発生5F）（対地）
trigger5 = stateno=230&&time>=IfElse(Ceil(var(52)/100%10)=0,41,44)
trigger5 = Ceil(random/10%100)<=100		;□確率判定
trigger5 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger5 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger5 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger5 = fvar(28):=200
;〓5C→対空投げA（発生16F）（対空）
trigger6 = stateno=230&&time>=17
trigger6 = enemynear(var(16)),statetype=A
trigger6 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=75)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(16)+const(size.ground.front)<=75
trigger6 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-110+Ceil(fvar(36)),-35]
trigger6 = fvar(28):=1500
;〓5C→4A（発生10F）（対空）
trigger7 = stateno=230&&time>=17
trigger7 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger7 = enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger7 = helper(23000),var(10)+const(size.ground.front)<=70
trigger7 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-100,-35]
trigger7 = fvar(28):=205
;〓5C→4C（発生9F）（対空）
trigger8 = stateno=230&&time>=17
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger8 = helper(23000),var(9)+const(size.ground.front)<=130
trigger8 = Ceil(helper(23000),fvar(9))>=-140
trigger8 = fvar(28):=235
IgnoreHitPause = 1

;■5Cキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=230&&time>=17
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正
;〓P2多段ガード数確認
triggerall = IfElse(fvar(28)=1500,(enemynear(var(16)),statetype=A&&((fvar(29)>=3&&Ceil(helper(23000),fvar(16))>=-50)||Ceil(helper(23000),fvar(16))+Ceil(fvar(36))>=-40))||fvar(29)>=4,1)
triggerall = IfElse(fvar(28)=205,(enemynear(var(16)),statetype=A&&((fvar(29)>=3&&Ceil(helper(23000),fvar(10))>=-50)||Ceil(helper(23000),fvar(10))+Ceil(fvar(36))>=-35))||fvar(29)>=4,1)
triggerall = IfElse(fvar(28)=235,(enemynear(var(16)),statetype=A&&((fvar(29)>=4&&Ceil(helper(23000),fvar(9))>=-50)||Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-20))||fvar(29)>=5,1)
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■4C┬対空投げB　　 （対空）　100%（2~3HIT目）（110-185）
;　　├対空投げA　　 （対空）　100%（2~3HIT目）（20-75）
;　　│
;　　├5B	　　 （対地）　 50%（3HIT目）　（0-100）
;　　├3C	　　 （対地）　 30%（3HIT目）　（40-120）
;　　├烈風拳A	　　 （対地）　 30%（3HIT目）　（120-140）
;　　├ハイジャンプ　（対地）　 40%（3HIT目）　（0-130）
;　　├3C	　　 （対地）15~30%（2~3HIT目）（120-200）
;　　├6C	　　 （対地）20~35%（2~3HIT目）（100-200）
;　　├2C	　　 （対地）　 70%（2~3HIT目）（20~25-70~85）（ボスモード範囲拡大）
;　　├2B	　　 （対地）　 30%（3HIT目）　（70-180）
;　　├瘴気結界　　　（対地）　A*5%（5HIT目）　（100-300）
;　　├ゲイザーA　　 （対地）　 35%（2~3HIT目）（110-200）
;　　├地雷設置A　　 （対地）　 50%（3HIT目）　（80-180）
;　　├4B	　　 （対地）　 20%（3HIT目）　（125-150）
;　　├ハイジャンプ　（対地）　100%（3HIT目）　（0-150）
;　　├烈風拳A	　　 （対地）　 50%（2~3HIT目）（100-200）
;　　├3C	　　 （対地）　100%（2~3HIT目）（0-200）
;　　│
;　　├4A	　　 （対空）　100%（2~3HIT目）（0-70）
;　　├5C	　　 （対空）　100%（2~3HIT目）（0-100）
;　　└3C	　　 （対空）　100%（2~3HIT目）（0-200）

;■4C対空が空中ガードされたとき対空投げBで追撃
[State -1]
Type = ChangeState
Value = 1530
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=235
triggerall = statetype=S||statetype=C
triggerall = helper(21000),var(0)>=140			;□画面端から140以上
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
;〓反応判定
triggerall = Ceil(var(55)/10000%10)>=1||random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓19F後の予測座標（ガード状態）
trigger1 = moveguarded>=1
trigger1 = helper(23000),var(19)+const(size.ground.front)>=110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(19)+const(size.ground.front)<=160
trigger1 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-165+Ceil(fvar(36)),-115-Ceil(fvar(36))]
;〓19F後の予測座標（P2ブロ状態）
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = helper(23000),var(19)+const(size.ground.front)>=110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(19)+const(size.ground.front)<=160
trigger2 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-165+Ceil(fvar(36)),-115-Ceil(fvar(36))]
;〓19F後の予測座標（P4ブロ状態）
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger3 = helper(23000),var(19)+const(size.ground.front)>=110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(19)+const(size.ground.front)<=160
trigger3 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-165+Ceil(fvar(36)),-115-Ceil(fvar(36))]
;〓24F後の予測座標（ガード状態）
trigger4 = moveguarded>=1
trigger4 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(24)+const(size.ground.front)<=185
trigger4 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger5 = moveguarded=[1,5]
trigger5 = helper(23000),var(24)+const(size.ground.front)>=120-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(24)+const(size.ground.front)<=150
trigger5 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]
;〓24F後の予測座標（P2ブロ状態）
trigger6 = numenemy>=1
trigger6 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger6 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(24)+const(size.ground.front)<=185
trigger6 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger7 = numenemy>=1
trigger7 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger7 = helper(23000),var(24)+const(size.ground.front)>=120-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger7 = helper(23000),var(24)+const(size.ground.front)<=150
trigger7 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]
;〓24F後の予測座標（P4ブロ状態）
trigger8 = numenemy>=2
trigger8 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger8 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger8 = helper(23000),var(24)+const(size.ground.front)<=185
trigger8 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger9 = numenemy>=2
trigger9 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger9 = helper(23000),var(24)+const(size.ground.front)>=120-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger9 = helper(23000),var(24)+const(size.ground.front)<=150
trigger9 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]

;■4C対空が空中ガードされたとき対空投げAで追撃
[State -1]
Type = ChangeState
Value = 1500
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = !NumHelper(1535)&&!NumHelper(1505)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=235
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),statetype=A
;〓反応判定
;triggerall = Ceil(var(55)/10000%10)>=1||random<=Ceil(helper(21000),var(59)/1000%100)*50||Ceil(helper(21000),var(59)/1000%100)=10
;〓13F後の予測座標（Nearガード状態）
trigger1 = moveguarded>=1
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=64)||helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(13)+const(size.ground.front)<=64
trigger1 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120+Ceil(fvar(36)),-70-Ceil(fvar(36))]
;〓13F後の予測座標（P2ブロ状態）
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=64)||helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(13)+const(size.ground.front)<=64
trigger2 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120+Ceil(fvar(36)),-70-Ceil(fvar(36))]
;〓13F後の予測座標（P4ブロ状態）
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.ground.front)<=64)||helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(13)+const(size.ground.front)<=64
trigger3 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120+Ceil(fvar(36)),-70-Ceil(fvar(36))]
;〓16F後の予測座標（Nearガード状態）
trigger4 = moveguarded>=1
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=64)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(16)+const(size.ground.front)<=75
trigger4 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-130+Ceil(fvar(36)),-20]
;〓16F後の予測座標（P2ブロ状態）
trigger5 = numenemy>=1
trigger5 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger5 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=64)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(16)+const(size.ground.front)<=75
trigger5 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-130+Ceil(fvar(36)),-20]
;〓16F後の予測座標（P4ブロ状態）
trigger6 = numenemy>=2
trigger6 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger6 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=64)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(16)+const(size.ground.front)<=75
trigger6 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-130+Ceil(fvar(36)),-20]

;■4Cキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C
;〓4C→5B（発生8F）（対地）
trigger1 = stateno=235&&time=13						;□3HIT目
trigger1 = Ceil(random/10%100)<=50					;□確率判定
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger1 = fvar(28):=210
;〓4C→3C（発生19F）（対地）
trigger2 = stateno=235&&time=13						;□3HIT目
trigger2 = Ceil(random/10%100)<=IfElse((power=PowerMax||power>=3000)&&fvar(20)>=600,30,15)	;□確率判定
trigger2 = (var(50)&(Ceil(2.0**16)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[40,120]
trigger2 = fvar(28):=460
;〓4C→烈風拳A（対地）
trigger3 = stateno=235&&time=13						;□3HIT目
trigger3 = Ceil(random/10%100)<=30					;□確率判定
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[120,140]
trigger3 = fvar(28):=1000
;〓4C→ハイジャンプ（対地）（ノーマルモード以上）
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = stateno=235&&time=13						;□3HIT目
trigger4 = Ceil(random/10%100)<=150					;□確率判定
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger4 = fvar(28):=43
trigger4 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓4C→3C（発生19F）（対地）
trigger5 = stateno=235&&(time=9||time=13)				;□2~3HIT目
trigger5 = Ceil(random/10%100)<=IfElse(time=9,15,40)			;□確率判定
trigger5 = (var(50)&(Ceil(2.0**16)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),200]
trigger5 = fvar(28):=460
;〓4C→6C（発生15F）（対地）
trigger6 = stateno=235&&(time=9||time=13)				;□2~3HIT目
trigger6 = Ceil(random/10%100)<=IfElse(time=9,20,35)			;□確率判定
trigger6 = (var(50)&(Ceil(2.0**13)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = fvar(26)=[100,200]
trigger6 = fvar(28):=240
;〓4C→2C（発生17F）（対地）
trigger7 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger7 = Ceil(random/10%100)<=70					;□確率判定
trigger7 = (var(50)&(Ceil(2.0**15)))=0
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = fvar(26)=[20+IfElse(Ceil(var(52)/100%10)>=2,5,0),70+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger7 = fvar(28):=440
;〓4C→2B（発生18F）（対地）
trigger8 = stateno=235&&time=13						;□3HIT目
trigger8 = Ceil(random/10%100)<=30					;□確率判定
trigger8 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = fvar(26)=[70,180]
trigger8 = fvar(28):=420
;〓4C→瘴気結界（対地）
trigger9 = (var(57)&(Ceil(2.0**25)))
trigger9 = stateno=235&&time=13						;□3HIT目
trigger9 = Ceil(random/10%100)<=Ceil(var(54)%10)*5			;□確率判定
trigger9 = Ceil(var(54)%10)>=3
trigger9 = Ceil(var(53)/1000%10)>=1
trigger9 = (var(46)&(Ceil(2.0**17)))=0					;□ロー・ブロッサム使用判定NG
trigger9 = !NumHelper(3310)&!NumHelper(3205)				;□瘴気結界ヘルパー＆花弁本体ヘルパー
trigger9 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger9 = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger9 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)=[5.0,9.0])||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger9 = fvar(26)=[100,300]
trigger9 = fvar(28):=3300
;〓4C→ゲイザーA（発生27F）（対地）
trigger10 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger10 = Ceil(random/10%100)<=35					;□確率判定
trigger10 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger10 = fvar(26)=[110,200]
trigger10 = fvar(28):=1300
;〓4C→地雷設置A（対地）
trigger11 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger11 = stateno=235&&time=13					;□3HIT目
trigger11 = Ceil(random/10%100)<=50					;□確率判定
trigger11 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger11 = fvar(26)=[80,180]
trigger11 = fvar(28):=1200
;〓4C→4B（発生18F）（対地）
trigger12 = stateno=235&&time=13					;□3HIT目
trigger12 = Ceil(random/10%100)<=20					;□確率判定
trigger12 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger12 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger12 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger12 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger12 = fvar(26)=[125,150]
trigger12 = fvar(28):=220
;〓4C→ハイジャンプ（対地）（ノーマルモード以上）
trigger13 = Ceil(var(52)/100%10)>=1
trigger13 = stateno=235&&time=13					;□3HIT目
trigger13 = Ceil(random/10%100)<=100					;□確率判定
trigger13 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger13 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),150]
trigger13 = fvar(28):=43
trigger13 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓4C→烈風拳A（対地）
trigger14 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger14 = Ceil(random/10%100)<=50					;□確率判定
trigger14 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger14 = fvar(26)=[100,200]
trigger14 = fvar(28):=1000
;〓4C→3C（発生19F）（対地）
trigger15 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger15 = Ceil(random/10%100)<=100					;□確率判定
trigger15 = (var(50)&(Ceil(2.0**16)))=0
trigger15 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger15 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),200]
trigger15 = fvar(28):=460
;〓4C→4A（発生10F）（対空）
trigger16 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger16 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger16 = enemynear(var(16)),statetype=A
trigger16 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger16 = helper(23000),var(10)+const(size.ground.front)<=70
trigger16 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-100,-35]
trigger16 = fvar(28):=205
;〓4C→5C（対空）
trigger17 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger17 = (var(50)&(Ceil(2.0**12)))=0
trigger17 = enemynear(var(16)),statetype=A
trigger17 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger17 = helper(23000),var(10)+const(size.ground.front)<=100
trigger17 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-180,-100]
trigger17 = fvar(28):=230
;〓4C→3C（発生19F）（対空）
trigger18 = stateno=235&&time=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger18 = (var(50)&(Ceil(2.0**16)))=0
trigger18 = enemynear(var(16)),statetype=A
trigger18 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger18 = helper(23000),var(19)+const(size.ground.front)<=200
trigger18 = Ceil(helper(23000),fvar(19))>=-160
trigger18 = fvar(28):=460
IgnoreHitPause = 1

;■4Cキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=235&&time>=8
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正

;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■6C┬5B	（対地）　 30%（2~4HIT目）（0-105）
;　　├2C	（対地）　 70%（1~2HIT目）（40~45-60~75）（画面端）
;　　├2C	（対地）　 40%（1HIT目）　（20~25-60~75）（画面中央）
;　　├4C	（対地）　 50%（4~5HIT目）（0-120）
;　　├2B	（対地）　 30%（2&4HIT目）（80-140）
;　　├3C	（対地）　 50%（4~5HIT目）（0-190）
;　　├5A	（対地）　 50%（1~2HIT目）（0-65）
;　　├烈風拳A	（対地）　 50%（4~5HIT目）（165-270）
;　　├5C	（対地）　 30%（4~5HIT目）（110-140）
;　　├4B	（対地）　 20%（4~5HIT目）（125-150）
;　　├ゲイザーA（対地）　 50%（4~5HIT目）（150-175）
;　　├地雷設置A（対地）　 50%（4~5HIT目）（165-270）
;　　├4C	（対地）　100%（4~5HIT目）（0-120）
;　　├2C	（対地）　 50%（4~5HIT目）（40~45-60~75）（画面端）
;　　├2C	（対地）　 50%（4~5HIT目）（20~25-60~75）（画面中央）
;　　├5A	（対地）　100%（4~5HIT目）（0-65）
;　　├5B	（対地）　100%（4~5HIT目）（0-105）
;　　│
;　　├4C	（対空）　100%（3~5HIT目）（0-115）
;　　├5C	（対空）　100%（3~5HIT目）（0-100）
;　　├3C	（対空）　100%（4~5HIT目）（0-190）
;　　├地雷設置A（対地）　 50%（4~5HIT目）（165-270）
;　　└烈風拳AB	（対地）　100%（4~5HIT目）（165-270）

;■6Cキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓6C→5B（発生8F）（対地）
trigger1 = stateno=240&&(time=20||time=24||time=28)	;□2~4HIT目
trigger1 = Ceil(random/10%100)<=30			;□確率判定
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),105]
trigger1 = fvar(28):=210
;〓6C→2C（発生17F）（対地＆画面端）
trigger2 = stateno=240&&(time=15||time=20)		;□1~2HIT目
trigger2 = Ceil(random/10%100)<=70			;□確率判定
trigger2 = helper(21000),var(0)<=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)			;□画面端
trigger2 = (var(50)&(Ceil(2.0**15)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[40+IfElse(Ceil(var(52)/100%10)>=2,5,0),60+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger2 = fvar(28):=440
;〓6C→2C（発生17F）（対地＆画面中央）
trigger3 = stateno=240&&time=15				;□1HIT目
trigger3 = Ceil(random/10%100)<=40			;□確率判定
trigger3 = helper(21000),var(0)>=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)				;□画面中央
trigger3 = (var(50)&(Ceil(2.0**15)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[20+IfElse(Ceil(var(52)/100%10)>=2,5,0),60+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger3 = fvar(28):=440
;〓6C→4C（発生9F）（対地）
trigger4 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger4 = Ceil(random/10%100)<=50			;□確率判定
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger4 = fvar(28):=235
;〓6C→2B（発生18F）（対地）
trigger5 = stateno=240&&(time=20||time=28)		;□2&4HIT目
trigger5 = Ceil(random/10%100)<=30			;□確率判定
trigger5 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[80,140]
trigger5 = fvar(28):=420
;〓6C→3C（発生19F）（対地）
trigger6 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger6 = Ceil(random/10%100)<=50			;□確率判定
trigger6 = (var(50)&(Ceil(2.0**16)))=0
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),190]
trigger6 = fvar(28):=460
;〓6C→5A（発生5F）（対地）
trigger7 = stateno=240&&(time=15||time=20)		;□1~2HIT目
trigger7 = Ceil(random/10%100)<=50			;□確率判定
trigger7 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger7 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger7 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger7 = fvar(28):=200
;〓6C→烈風拳A（対地）
trigger8 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger8 = Ceil(random/10%100)<=50			;□確率判定
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = fvar(26)=[165,270]
trigger8 = fvar(28):=1000
;〓6C→5C（発生23F）（対地）
trigger9 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger9 = Ceil(random/10%100)<=30			;□確率判定
trigger9 = (var(50)&(Ceil(2.0**12)))=0
trigger9 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger9 = fvar(26)=[110,140]
trigger9 = fvar(28):=230
;〓6C→4B（発生18F）（対地）
trigger10 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger10 = Ceil(random/10%100)<=20			;□確率判定
trigger10 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger10 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger10 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger10 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger10 = fvar(26)=[125,150]
trigger10 = fvar(28):=220
;〓6C→ゲイザーA（発生27F）（対地）
trigger11 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger11 = Ceil(random/10%100)<=50			;□確率判定
trigger11 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger11 = fvar(26)=[150,175]
trigger11 = fvar(28):=1300
;〓6C→地雷設置A（対地）
trigger12 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger12 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger12 = Ceil(random/10%100)<=50			;□確率判定
trigger12 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger12 = fvar(26)=[165,270]
trigger12 = fvar(28):=1200
;〓6C→4C（発生9F）（対地）
trigger13 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger13 = Ceil(random/10%100)<=100			;□確率判定
trigger13 = (var(50)&(Ceil(2.0**14)))=0
trigger13 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger13 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger13 = fvar(28):=235
;〓6C→2C（発生17F）（対地＆画面端）
trigger14 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger14 = Ceil(random/10%100)<=50			;□確率判定
trigger14 = helper(21000),var(0)<=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)			;□画面端
trigger14 = (var(50)&(Ceil(2.0**15)))=0
trigger14 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger14 = fvar(26)=[40+IfElse(Ceil(var(52)/100%10)>=2,5,0),60+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger14 = fvar(28):=440
;〓6C→2C（発生17F）（対地＆画面中央）
trigger15 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger15 = Ceil(random/10%100)<=40			;□確率判定
trigger15 = helper(21000),var(0)>=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)				;□画面中央
trigger15 = (var(50)&(Ceil(2.0**15)))=0
trigger15 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger15 = fvar(26)=[20+IfElse(Ceil(var(52)/100%10)>=2,5,0),60+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger15 = fvar(28):=440
;〓6C→5A（発生5F）（対地）
trigger16 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger16 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger16 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger16 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger16 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger16 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger16 = fvar(28):=200
;〓6C→5B（発生8F）（対地）
trigger17 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger17 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger17 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger17 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),105]
trigger17 = fvar(28):=210
;〓6C→ぱっちんEX（発生18F）（対地）
trigger18 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger18 = IfElse(power>=7000,1,0)
trigger18 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger18 = helper(21000),var(0)>=240			;□画面端から距離240以上
trigger18 = helper(23000),var(18)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger18 = helper(23000),var(18)+const(size.ground.front)<=220
trigger18 = fvar(28):=1402
;〓6C→4C（発生9F）（対空）
trigger19 = stateno=240&&(time=24||time=28||time=32)	;□3~5HIT目
trigger19 = (var(50)&(Ceil(2.0**14)))=0
trigger19 = enemynear(var(16)),statetype=A
trigger19 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger19 = helper(23000),var(9)+const(size.ground.front)<=115
trigger19 = Ceil(helper(23000),fvar(9))>=-140
trigger19 = fvar(28):=235
;〓6C→5C（対空）
trigger20 = stateno=240&&(time=24||time=28||time=32)	;□3~5HIT目
trigger20 = (var(50)&(Ceil(2.0**12)))=0
trigger20 = enemynear(var(16)),statetype=A
trigger20 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger20 = helper(23000),var(10)+const(size.ground.front)<=100
trigger20 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-165,-100]
trigger20 = fvar(28):=230
;〓6C→3C（発生19F）（対空）
trigger21 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger21 = (var(50)&(Ceil(2.0**16)))=0
trigger21 = enemynear(var(16)),statetype=A
trigger21 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger21 = helper(23000),var(19)+const(size.ground.front)<=190
trigger21 = Ceil(helper(23000),fvar(19))>=-160
trigger21 = fvar(28):=460
;〓6C→地雷設置A（対空）
trigger22 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger22 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger22 = Ceil(random/10%100)<=50			;□確率判定
trigger22 = enemynear(var(16)),statetype=A
trigger22 = fvar(26)=[165,270]
trigger22 = fvar(28):=1200
;〓6C→烈風拳AB（対空）
trigger23 = stateno=240&&(time=28||time=32)		;□4~5HIT目
trigger23 = enemynear(var(16)),statetype=A
trigger23 = fvar(26)=[165,270]
trigger23 = fvar(28):=1000+IfElse(Ceil(random/10%100)<=50,0,1)
IgnoreHitPause = 1

;■6Cキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=240&&time>=14
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正

;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = moveguarded>=1
;〓P2ブロ状態
trigger2 = numenemy>=1
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger3 = numenemy>=2
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno


;==============================================================================
;■3C┬5B		（対地）　 50%（4HIT目）　（90-140）
;　　├6C		（対地）　 50%（3~4HIT目）（110-150）
;　　├烈風拳A		（対地）　 25%（4HIT目）　（0-80）（画面中央）（P2体力20%以下）
;　　├4C		（対地）　 50%（3~4HIT目）（0-120）
;　　├2B		（対地）　 50%（4HIT目）（80-140）
;　　│
;　　├EXコマンド投げ	（対地） P*20%（3~4HIT目）（0-49）（画面端）　（ノーマルモード以下）
;　　├EXコマンド投げ	（対地） P*20%（3~4HIT目）（0-49）（画面中央）（ノーマルモード以下）
;　　├EXコマンド投げ	（対地） P*20%（4HIT目）　（0-60）（画面端）　（ボスモード）
;　　├EXコマンド投げ	（対地） P*20%（4HIT目）　（0-60）（画面中央）（ボスモード）
;　　│
;　　├2C		（対地）30-90%（3~4HIT目）（60~65-90~105）（画面端）
;　　├2C		（対地）30-90%（3~4HIT目）（60~65-85~100）（画面中央）
;　　├5A		（対地）　 50%（4HIT目）　（0-65）
;　　├4B		（対地）　 20%（4HIT目）　（150-165）
;　　├6C		（対地）　 15%（3~4HIT目）（165-270）
;　　├烈風拳B		（対地）　 35%（4HIT目）　（165-275）
;　　├ゲイザーA	（対地）　 30%（4HIT目）　（155-170）
;　　├処罰		（対地）　P*5%（3~4HIT目）（0-270）
;　　├瘴気結界　　　	（対地）　A*5%（5HIT目）　（100-300）
;　　├地雷設置EX	（対地） P*10%（3~4HIT目）（170-270）
;　　├地雷設置A	（対地） 　20%（3~4HIT目）（165-270）
;　　├5B		（対地）　100%（4HIT目）　（0-140）
;　　├4C		（対地）　100%（3~4HIT目）（0-120）
;　　├5C		（対地）　100%（3~4HIT目）（110-140）
;　　│
;　　├2C		（対空）　100%（3HIT目）　（0-90~105）
;　　├4A		（対空）　100%（3HIT目）　（0-120）
;　　├4C		（対空）　100%（3HIT目）　（120-200）
;　　└対空投げA	（対空）　100%（3HIT目）　（20-75）

;■3Cキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓3C→5B（発生8F）（対地）
trigger1 = stateno=460&&time=35						;□4HIT目
trigger1 = Ceil(random/10%100)<=50					;□確率判定
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[90,140]
trigger1 = fvar(28):=210
;〓3C→6C（発生15F）（対地）
trigger2 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger2 = Ceil(random/10%100)<=50					;□確率判定
trigger2 = (var(50)&(Ceil(2.0**13)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[110,150]
trigger2 = fvar(28):=240
;〓3C→烈風拳A（対地）
trigger3 = Ceil(var(52)/100%10)>=1						;□ノーマルモード以上
trigger3 = stateno=460&&time=35							;□4HIT目
trigger3 = Ceil(random/10%100)<=25						;□確率判定
trigger3 = helper(21000),var(0)>=220						;□画面端から距離220以上
trigger3 = enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)<=2.5	;□P2体力25%以下
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[50,100]
trigger3 = fvar(28):=1000
;〓3C→4C（発生9F）（対地）
trigger4 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger4 = Ceil(random/10%100)<=50					;□確率判定
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger4 = fvar(28):=235
;〓3C→2B（発生18F）（対地）
trigger5 = stateno=460&&time=35						;□4HIT目
trigger5 = Ceil(random/10%100)<=50					;□確率判定
trigger5 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = fvar(26)=[80,160]
trigger5 = fvar(28):=420
;〓3C→EXコマンド投げ（発生10F）（対地）（画面端）（ノーマルモード以下）
trigger6 = var(59)>=3
trigger6 = Ceil(var(52)/100%10)<=1					;□ノーマルモード以下
trigger6 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger6 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger6 = Ceil(random/10%100)<=Ceil(power/1000.0)*20			;□確率判定
trigger6 = power>=1000
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = enemynear(var(16)),BackEdgeBodyDist<=6&&helper(21000),var(0)<=80+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))				;□画面端
trigger6 = fvar(26)-Ceil(abs((enemynear(var(16)),GetHitVar(xvel)*1.5)*(fvar(25)-(fvar(25)**15.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger6 = fvar(28):=2800
;〓3C→EXコマンド投げ（発生10F）（対地）（画面中央）（ノーマルモード以下）
trigger7 = var(59)>=3
trigger7 = Ceil(var(52)/100%10)<=1					;□ノーマルモード以下
trigger7 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger7 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger7 = Ceil(random/10%100)<=Ceil(power/1000.0)*20			;□確率判定
trigger7 = power>=1000
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = enemynear(var(16)),BackEdgeBodyDist>=6			;□画面中央
trigger7 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**15.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger7 = fvar(28):=2800
;〓3C→EXコマンド投げ（発生1F）（対地）（画面端）（ボスモード）
trigger8 = var(59)>=3
trigger8 = Ceil(var(52)/100%10)>=2					;□ボスモード
trigger8 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger8 = stateno=460&&time=35						;□4HIT目
trigger8 = Ceil(random/10%100)<=Ceil(power/1000.0)*20			;□確率判定
trigger8 = power>=1000
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = enemynear(var(16)),BackEdgeBodyDist<=6&&helper(21000),var(0)<=80+(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))						;□画面端
trigger8 = fvar(26)-Ceil(abs((enemynear(var(16)),GetHitVar(xvel)*1.5)*(fvar(25)-(fvar(25)**10.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger8 = fvar(28):=2800
;〓3C→EXコマンド投げ（発生1F）（対地）（画面中央）（ボスモード）
trigger9 = var(59)>=3
trigger9 = Ceil(var(52)/100%10)>=2					;□ボスモード
trigger9 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger9 = stateno=460&&time=35						;□4HIT目
trigger9 = Ceil(random/10%100)<=Ceil(power/1000.0)*20			;□確率判定
trigger9 = power>=1000
trigger9 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger9 = enemynear(var(16)),BackEdgeBodyDist>=6			;□画面中央
trigger9 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**10.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger9 = fvar(28):=2800
;〓3C→2C（発生17F）（対地＆画面端）
trigger10 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger10 = Ceil(random/10%100)<=IfElse(Ceil(var(52)/100%10)=0,30,90)	;□確率判定
trigger10 = helper(21000),var(0)<=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)						;□画面端
trigger10 = (var(50)&(Ceil(2.0**15)))=0
trigger10 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger10 = fvar(26)=[60+IfElse(Ceil(var(52)/100%10)>=2,5,0),90+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger10 = fvar(28):=440
;〓3C→2C（発生17F）（対地＆画面中央）
trigger11 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger11 = Ceil(random/10%100)<=IfElse(Ceil(var(52)/100%10)=0,30,90)	;□確率判定
trigger11 = helper(21000),var(0)>=130+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)						;□画面中央
trigger11 = (var(50)&(Ceil(2.0**15)))=0
trigger11 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger11 = fvar(26)=[60+IfElse(Ceil(var(52)/100%10)>=2,5,0),85+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger11 = fvar(28):=440
;〓3C→5A（発生5F）（対地）
trigger12 = stateno=460&&time=35					;□4HIT目
trigger12 = Ceil(random/10%100)<=50					;□確率判定
trigger12 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger12 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger12 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger12 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger12 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger12 = fvar(28):=200
;〓3C→4B（発生18F）（対地）
trigger13 = stateno=460&&time=35					;□4HIT目
trigger13 = Ceil(random/10%100)<=20					;□確率判定
trigger13 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger13 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger13 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger13 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger13 = fvar(26)=[150,165]
trigger13 = fvar(28):=220
;〓3C→6C（発生15F）（対地）
trigger14 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger14 = Ceil(random/10%100)<=15					;□確率判定
trigger14 = (var(50)&(Ceil(2.0**13)))=0
trigger14 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger14 = fvar(26)=[165,270]
trigger14 = fvar(28):=240
;〓3C→烈風拳B（対地）
trigger15 = Ceil(var(52)/100%10)>=1					;□ノーマルモード以上
trigger15 = stateno=460&&time=35					;□4HIT目
trigger15 = Ceil(random/10%100)<=35					;□確率判定
trigger15 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger15 = fvar(26)=[165,270]
trigger15 = fvar(28):=1001
;〓3C→ゲイザーA（発生27F）（対地）
trigger16 = Ceil(var(52)/100%10)>=1					;□ノーマルモード以上
trigger16 = stateno=460&&time=35					;□4HIT目
trigger16 = Ceil(random/10%100)<=30					;□確率判定
trigger16 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger16 = fvar(26)=[155,170]
trigger16 = fvar(28):=1300
;〓3C→全地面投げ（対地）
trigger17 = !NumHelper(1280)&&!NumHelper(1285)				;□EX地雷未設置
trigger17 = (LifeMax/10.0)*5>=Life
trigger17 = (var(58)&(Ceil(2.0**28)))
trigger17 = (power=PowerMax||power>=3000)&&fvar(20)>=600
trigger17 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger17 = Ceil(random/10%100)<=Ceil(power/1000.0)*5			;□確率判定
trigger17 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger17 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),270]
trigger17 = fvar(28):=1800
;〓4C→瘴気結界（対地）
trigger18 = (var(57)&(Ceil(2.0**25)))
trigger18 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger18 = Ceil(random/10%100)<=Ceil(var(54)%10)*5			;□確率判定
trigger18 = Ceil(var(54)%10)>=3
trigger18 = Ceil(var(53)/1000%10)>=1
trigger18 = (var(46)&(Ceil(2.0**17)))=0					;□ロー・ブロッサム使用判定NG
trigger18 = !NumHelper(3310)&!NumHelper(3205)				;□瘴気結界ヘルパー＆花弁本体ヘルパー
trigger18 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger18 = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger18 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)=[5.0,9.0])||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
trigger18 = fvar(26)=[100,300]
trigger18 = fvar(28):=3300
;〓3C→地雷設置EX（対地）
trigger19 = !NumHelper(1280)&&!NumHelper(1285)
trigger19 = power>=1000
trigger19 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger19 = Ceil(random/10%100)<=Ceil(power/1000.0)*10			;□確率判定
trigger19 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger19 = fvar(26)=[170,270]
trigger19 = fvar(28):=1202
;〓3C→地雷設置A（対地）
trigger20 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger20 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger20 = Ceil(random/10%100)<=20					;□確率判定
trigger20 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger20 = fvar(26)=[165,270]
trigger20 = fvar(28):=1200
;〓3C→5B（発生8F）（対地）
trigger21 = stateno=460&&time=35					;□4HIT目
trigger21 = Ceil(random/10%100)<=100					;□確率判定
trigger21 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger21 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger21 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),140]
trigger21 = fvar(28):=210
;〓3C→4C（発生9F）（対地）
trigger22 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger22 = Ceil(random/10%100)<=100					;□確率判定
trigger22 = (var(50)&(Ceil(2.0**14)))=0
trigger22 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger22 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger22 = fvar(28):=235
;〓3C→5C（発生23F）（対地）
trigger23 = stateno=460&&time=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger23 = Ceil(random/10%100)<=100					;□確率判定
trigger23 = (var(50)&(Ceil(2.0**12)))=0
trigger23 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger23 = fvar(26)=[110,140]
trigger23 = fvar(28):=230
;〓3C→4A（発生10F）（対空）
trigger24 = stateno=460&&time=33					;□3HIT目
trigger24 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger24 = enemynear(var(16)),statetype=A
trigger24 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger24 = helper(23000),var(10)+const(size.ground.front)<=120
trigger24 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-120,-35]
trigger24 = fvar(28):=205
;〓3C→2C（発生17F）（対空）
trigger25 = stateno=460&&time=33					;□3HIT目
trigger25 = (var(50)&(Ceil(2.0**15)))=0
trigger25 = enemynear(var(16)),statetype=A
trigger25 = helper(23000),var(17)+const(size.ground.front)=[0,120+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger25 = Ceil(helper(23000),fvar(17))>=-50
trigger25 = fvar(28):=440
;〓3C→4C（発生9F）（対空）
trigger26 = stateno=460&&time=33					;□3HIT目
trigger26 = (var(50)&(Ceil(2.0**14)))=0
trigger26 = enemynear(var(16)),statetype=A
trigger26 = helper(23000),var(9)+const(size.ground.front)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger26 = helper(23000),var(9)+const(size.ground.front)<=200
trigger26 = Ceil(helper(23000),fvar(9))>=-150
trigger26 = fvar(28):=235
;〓3C→対空投げA（発生16F）（対空）
trigger27 = stateno=460&&time=35					;□3HIT目
trigger27 = enemynear(var(16)),statetype=A
trigger27 = (helper(21000),var(1)<=30&&helper(23000),var(16)+const(size.ground.front)<=75)||helper(23000),var(16)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger27 = helper(23000),var(16)+const(size.ground.front)<=75
trigger27 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-110+Ceil(fvar(36)),-35]
trigger27 = fvar(28):=1500
IgnoreHitPause = 1

;■3Cキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=460&&time>=33
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正

;〓Nearガード状態（EXコマンド投げ以外）
trigger1 = Ceil(fvar(28))!=2800
trigger1 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger1 = moveguarded>=1
;〓P2ブロ状態（EXコマンド投げ以外）
trigger2 = numenemy>=1
trigger2 = Ceil(fvar(28))!=2800
trigger2 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態（EXコマンド投げ以外）
trigger3 = numenemy>=2
trigger3 = Ceil(fvar(28))!=2800
trigger3 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
;〓Nearガード状態（1F）（ボスモード）（EXコマンド投げ）
trigger4 = Ceil(var(52)/100%10)>=2
trigger4 = Ceil(fvar(28))=2800&&power>=1000
trigger4 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),HitDefAttr=SC,NA,AT,NP,SP
trigger4 = enemynear(var(16)),GetHitVar(hittime)<=0
trigger4 = moveguarded>=1
trigger4 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**10.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger4 = Ceil(helper(23000),fvar(1))>=0
;〓P2ブロ状態（1F）（ボスモード）（EXコマンド投げ）
trigger5 = numenemy>=1
trigger5 = Ceil(var(52)/100%10)>=2
trigger5 = Ceil(fvar(28))=2800&&power>=1000
trigger5 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),HitDefAttr=SC,NA,AT,NP,SP
trigger5 = enemynear(var(16)),GetHitVar(hittime)<=0
trigger5 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger5 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**10.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger5 = Ceil(helper(23000),fvar(1))>=0
;〓P4ブロ状態（1F）（ボスモード）（EXコマンド投げ）
trigger6 = numenemy>=2
trigger6 = Ceil(var(52)/100%10)>=2
trigger6 = Ceil(fvar(28))=2800&&power>=1000
trigger6 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),HitDefAttr=SC,NA,AT,NP,SP
trigger6 = enemynear(var(16)),GetHitVar(hittime)<=0
trigger6 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger6 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**10.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger6 = Ceil(helper(23000),fvar(1))>=0
;〓Nearガード状態（10F）（ノーマルモード以下）（EXコマンド投げ）
trigger7 = Ceil(var(52)/100%10)<=1
trigger7 = Ceil(fvar(28))=2800&&power>=1000
trigger7 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),GetHitVar(hittime)<=5||enemynear(var(16)),HitDefAttr=SCA,NA,AT,NP,SP
trigger7 = moveguarded>=1
trigger7 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**15.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger7 = Ceil(helper(23000),fvar(10))>=0
;〓P2ブロ状態（10F）（ノーマルモード以下）（EXコマンド投げ）
trigger8 = numenemy>=1
trigger8 = Ceil(var(52)/100%10)<=1
trigger8 = Ceil(fvar(28))=2800&&power>=1000
trigger8 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),GetHitVar(hittime)<=5||enemynear(var(16)),HitDefAttr=SCA,NA,AT,NP,SP
trigger8 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno
trigger8 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**15.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger8 = Ceil(helper(23000),fvar(10))>=0
;〓P4ブロ状態（10F）（ノーマルモード以下）（EXコマンド投げ）
trigger9 = numenemy>=2
trigger9 = Ceil(var(52)/100%10)<=1
trigger9 = Ceil(fvar(28))=2800&&power>=1000
trigger9 = enemynear(var(16)),Ctrl=1||enemynear(var(16)),GetHitVar(hittime)<=5||enemynear(var(16)),HitDefAttr=SCA,NA,AT,NP,SP
trigger9 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno
trigger9 = fvar(26)-Ceil(abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**15.0))/(1-fvar(25))))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger9 = Ceil(helper(23000),fvar(10))>=0


;==============================================================================
;■2C┬3C	（対地）　 50%（4~5HIT目）（0-190）
;　　├
;　　├4C	（対地）　 50%（4~5HIT目）（0-120）
;　　├5B	（対地）　100%（4HIT目）　（0-140）
;　　├5A	（対地）　 50%（4HIT目）　（0-65）
;　　│
;　　├4C
;　　├5C
;　　└3C

;■2Cキャンセル予定決定
[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = statetype=S||statetype=C

;〓2C→3C（発生19F）（対地）
trigger1 = (stateno=[441,442])&&time=1
trigger1 = Ceil(random/10%100)<=20			;□確率判定
trigger1 = helper(21000),var(0)<=90+IfElse(Ceil(var(52)/100%10)>=2,15,0)+enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)					;□画面端
trigger1 = (var(50)&(Ceil(2.0**16)))=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),100]
trigger1 = fvar(28):=460
;〓2C→4C（発生9F）（対地）
trigger2 = (stateno=[441,442])&&time=1
trigger2 = Ceil(random/10%100)<=100			;□確率判定
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),120]
trigger2 = fvar(28):=235
;〓2C→5B（発生8F）（対地）
trigger3 = (stateno=[441,442])&&time=1
trigger3 = Ceil(random/10%100)<=100			;□確率判定
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),140]
trigger3 = fvar(28):=210
;〓2C→5A（発生5F）（対地）
trigger4 = (stateno=[441,442])&&time=1
trigger4 = Ceil(random/10%100)<=100			;□確率判定
trigger4 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0	;□5A空振り記録
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),65]
trigger4 = fvar(28):=200
;〓2C→4A（発生10F）（対空）
trigger5 = (stateno=[441,442])&&time=1
trigger5 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger5 = enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(10)+const(size.ground.front)<=45
trigger5 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-105,-35]
trigger5 = fvar(28):=205
;〓2C→5C（対空）
trigger6 = (stateno=[441,442])&&time=1
trigger6 = (var(50)&(Ceil(2.0**12)))=0
trigger6 = enemynear(var(16)),statetype=A
trigger6 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(10)+const(size.ground.front)<=90
trigger6 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-170,-60]
trigger6 = fvar(28):=230
;〓2C→4C（発生9F）（対空）
trigger7 = (stateno=[441,442])&&time=1
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger7 = helper(23000),var(9)+const(size.ground.front)<=90
trigger7 = Ceil(helper(23000),fvar(9))>=-140
trigger7 = fvar(28):=235
;〓2C→3C（発生19F）（対空）
trigger8 = (stateno=[441,442])&&time=1
trigger8 = (var(50)&(Ceil(2.0**16)))=0
trigger8 = enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger8 = helper(23000),var(19)+const(size.ground.front)<=180
trigger8 = Ceil(helper(23000),fvar(19))>=-160
trigger8 = fvar(28):=460
IgnoreHitPause = 1

;■2Cキャンセル実行（ガード＆ブロ）
[State -1]
type = ChangeState
Value = Ceil(fvar(28))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (stateno=[441,442])&&time>=26
triggerall = statetype=S||statetype=C
triggerall = Ceil(fvar(28))!=0			;□格納StateNoが正

;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓Nearガード状態
trigger1 = numhelper(450)=1
trigger1 = helper(450),moveguarded>=1
trigger1 = Ceil(fvar(28))=460||enemynear(var(16)),statetype=A	;□2Bと対空限定
trigger2 = numhelper(451)=1
trigger2 = helper(451),moveguarded>=1
trigger2 = Ceil(fvar(28))=460||enemynear(var(16)),statetype=A	;□2Bと対空限定
;〓P2ブロ状態
trigger3 = numenemy>=1
trigger3 = NumHelper(450)
trigger3 = helper(450),movehit>=1
trigger3 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&enemynear(var(16)),stateno=enemy(0),stateno
trigger4 = numenemy>=1
trigger4 = NumHelper(451)
trigger4 = helper(451),movehit>=1
trigger4 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&enemynear(var(16)),stateno=enemy(0),stateno
;〓P4ブロ状態
trigger5 = numenemy>=2
trigger5 = NumHelper(450)
trigger5 = helper(450),movehit>=1
trigger5 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&enemynear(var(16)),stateno=enemy(1),stateno
trigger6 = numenemy>=2
trigger6 = NumHelper(451)
trigger6 = helper(451),movehit>=1
trigger6 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&enemynear(var(16)),stateno=enemy(1),stateno


;------------------------------------------------------------------------------


























;==============================================================================
;■連続技系行動■（var(47)系）triggerall = (var(46)&(Ceil(2.0**27)))=0
;------------------------------------------------------------------------------


;==============================================================================
;■5B始動Aルートフラグセット

;□5B→4C→3C┬→6C→2C【NC】ダッシュ┬→4C	（4C始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→4A	（4A始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→5B	（5B始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→4C	（4C始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　└→5B	（5B始動空中コンボルート）	○
;　　　　　　│
;　　　　　　├→2B				（2B始動アドリブコンボ）	○
;　　　　　　└→4B				（4B始動アドリブコンボ）	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=210,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓5B始動Aルート[0-57]（ノーマルモード）
trigger1 = Ceil(var(52)/100%10)=1							;□ノーマルモード
trigger1 = stateno=210&&movehit>=1&&time>=15						;□5Bが3HIT目までにヒット中
trigger1 = (var(50)&(Ceil(2.0**13)|Ceil(2.0**14)|Ceil(2.0**15)|Ceil(2.0**16)))=0	;□6C,4C,2C,3C,未使用
trigger1 = enemynear(var(16)),Const(size.head.pos.y)<=-60				;□身長判定
trigger1 = enemynear(var(16)),const(movement.stand.friction)<=0.85&&IfElse(enemynear(var(16)),statetype=C,enemynear(var(16)),const(movement.crouch.friction)<=0.85,1)									;□摩擦係数判定
trigger1 = fvar(26)=[0,57]
trigger1 = var(48):=Ceil(2.0**10)							;□5B始動AルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))						;□コンボルート固定スイッチON

;〓5B始動Aルート[0-70]（ボスモード）
trigger2 = Ceil(var(52)/100%10)>=2							;□ボスモード
trigger2 = stateno=210&&movehit>=1&&time>=15						;□5Bが3HIT目までにヒット中
trigger2 = (var(50)&(Ceil(2.0**13)|Ceil(2.0**14)|Ceil(2.0**15)|Ceil(2.0**16)))=0	;□6C,4C,2C,3C,未使用
trigger2 = enemynear(var(16)),Const(size.head.pos.y)<=-60				;□身長判定
trigger2 = helper(21000),var(1)<=200||(helper(21000),var(0)>=340&&Ceil(random/10%100)<=40)	;□距離＆確率判定
trigger2 = fvar(26)=[0,70]
trigger2 = var(48):=Ceil(2.0**10)							;□5B始動AルートON
trigger2 = var(48):=var(48)+(1*!(var(48)&(1)))						;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■5B始動Bルートフラグセット

;□5B┬[0-75]→2B┬→4C		（4C始動アドリブコンボ）				○
;　　│　　　　　│
;　　├[0-85]──┘
;　　│
;　　├[80-135]→6C→4C		（4C始動アドリブコンボ）（画面端から距離340以上）	○
;　　│
;　　├[0-100~110]→4C		（4C始動アドリブコンボ）				○
;　　│
;　　├[85-180]┬→[大]4B	（4B始動アドリブコンボ）				○
;　　│　　　　└→[小]6C	（6C始動空中コンボルート）				○
;　　│
;　　├→烈風拳B(50%)									○
;　　├→バックジャンプ		（ノーマルモード以上）	AIレベル3以上			○
;　　└→地雷設置A									○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=210,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓5B始動Bルート
trigger1 = stateno=210&&movehit>=1&&time>=15						;□5Bが3HIT目までにヒット中
trigger1 = var(48):=Ceil(2.0**11)							;□5B始動BルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))						;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■4C始動空中コンボルートフラグセット

;□4C┬【HJC】→JA┬→J2B→JC			（JC始動空中コンボルート）			AIレベル4以上	○
;　　│　　　　　 ├→JB【着地】→ダッシュ5C→4A（4A始動空中コンボルート）低重力補正<=0.035	AIレベル4以上	○
;　　│　　　　　 └→JB【着地】→ダッシュ4A	（4A始動空中コンボルート）低重力補正<=0.035	AIレベル4以上	○
;　　│
;　　├→3C┬→4A→4B→6C			（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　├→5A→4B→6C			（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　├→4B→6C				（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　│
;　　│　　├→2C【NC】ダッシュ┬→4A		（4A始動空中コンボルート）			AIレベル4以上	○
;　　│　　│　　　　　　　　  ├→5B		（5B始動空中コンボルート）			AIレベル4以上	○
;　　│　　│　　　　　　　　  └→4C		（4C始動空中コンボルート）			AIレベル4以上	○
;　　│　　│
;　　│　　└→対空投げA									AIレベル3以下	○
;　　│
;　　├┬→4B→6C			（6C始動空中コンボルート）P2画面端＆近中距離＆中重力補正0.041~0.064	○
;　　│└→6C				（6C始動空中コンボルート）P2画面端＆近中距離＆大重力補正0.065以上	○
;　　│
;　　├→5C┬→4B→6C			（6C始動空中コンボルート）低重力補正<=0.040				○
;　　│　　└→4A→4B→6C		（6C始動空中コンボルート）低重力補正<=0.040				○
;　　│
;　　├┬→対空投げA（近距離）		（ダウン追い討ちルート）				AIレベル3以上	○
;　　│└→対空投げB（中距離）		（ダウン追い討ちルート）				AIレベル3以上	○
;　　│
;　　├┬→地雷設置EX										AIレベル3以上	○
;　　│└→地雷設置A										AIレベル2以上	○
;　　│
;　　└→烈風拳A										AIレベル2以上	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=235,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓4C始動空中コンボルート
trigger1 = stateno=235&&movehit>=1&&time>=5				;□4Cが1HIT目までにヒット中
trigger1 = var(48):=Ceil(2.0**15)					;□4C始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■5B始動空中コンボルートフラグセット

;□5B→4C┬→6C				（6C始動空中コンボルート）	P2画面端付近or中距離or高重力補正>=0.065		○
;　　　　├→3C┬→4A→4B→6C		（6C始動空中コンボルート）	P2画面端＆近距離＆低重力補正<=0.040		○
;　　　　│　　└→5A→4B→6C		（6C始動空中コンボルート）							○
;　　　　│
;　　　　├→4B→6C			（6C始動空中コンボルート）	P2画面端＆近中距離＆中重力補正[0.041,0.064]	○
;　　　　│
;　　　　├→5C┬→4B→6C		（6C始動空中コンボルート）							○
;　　　　│　　└→4A→4B→6C		（6C始動空中コンボルート）							○
;　　　　│
;　　　　├┬→地雷設置EX										AIレベル3以上	○
;　　　　│└→地雷設置A										AIレベル2以上	○
;　　　　│
;　　　　└→烈風拳A											AIレベル2以上	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=210,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓5B始動空中コンボルート
trigger1 = stateno=210&&movehit>=1&&time>=15				;□5Bが3HIT目までにヒット中
trigger1 = (var(50)&(Ceil(2.0**14)))=0					;□4C,未使用
trigger1 = fvar(26)=[0,130]
trigger1 = var(48):=Ceil(2.0**16)					;□5B始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■4A始動空中コンボルートフラグセット

;□4A┬→4B→6C					（6C始動空中コンボへ）		（画面端付近or低空時）		AIレベル3以上	○
;　　│
;　　├→3C┬→2C(70%)┬→4C			（4C始動空中コンボルート）					AIレベル4以上	○
;　　│　　│　　　　 ├→【NC】ダッシュ4C	（4C始動空中コンボルート）							○
;　　│　　│　　　 　└→【NC】ダッシュ5B	（5B始動空中コンボルート）							○
;　　│　　│
;　　│　　├→対空投げA			（ダウン追い討ちルート）	（画面中央or2C使用済み）	AIレベル3以下	○
;　　│　　├→4C				（4C始動空中コンボルート）	（画面中央）			AIレベル3以下	○
;　　│　　│
;　　│　　├→5A┬→4B→6C			（6C始動空中コンボルート）	（画面端）			AIレベル4以上	○
;　　│　　│　　└→対空投げA			（ダウン追い討ちルート）	（画面端）			AIレベル4以上	○
;　　│　　└→4B→6C				（6C始動空中コンボルート）	（画面端付近or4C2C使用済み）	AIレベル3以上	○
;　　│
;　　├→5C┬→4C				（4C始動空中コンボルート）					AIレベル3以上	○
;　　│　　├→対空投げA			（ダウン追い討ちルート）	（中距離高々度or4C使用済み）	AIレベル2以下	○
;　　│　　└→4B→6C				（6C始動空中コンボルート）	（画面端密着付近）		AIレベル3以上	○
;　　│
;　　└→対空投げAB				（ダウン追い討ちルート）	（画面中央or3C使用済み）	AIレベル2以下	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=205,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓4A始動空中コンボルート
trigger1 = stateno=205&&movehit>=1&&time>=12				;□3HIT目持続中までにヒット中
trigger1 = var(48):=Ceil(2.0**17)					;□4A始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■6C始動空中コンボルートフラグセット

;□6C┬【JC】┬→空中ダッシュJC					（JC始動空中コンボルート）（画面端）	AIレベル3以上	○
;　　│　　　├→JB先端→空中ダッシュJ2B→JC			（JC始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　├→JA→J2B→JC					（JC始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　└→空中ダッシュJB先端【着地】→ダッシュ┬→5B→4C	（4C始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　　　　　　　　　　　　　　　　　　　　　└→4B	（4B始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│
;　　├┬→5A┬┬→3C→対空投げA	（ダウン追い討ちルート）（画面端）				AIレベル4以上	○
;　　│└→4A┘└→対空投げA		（ダウン追い討ちルート）（画面端）				AIレベル4以上	○
;　　│
;　　├→対空投げA			（ダウン追い討ちルート）（画面端）2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下　○
;　　├→対空投げB			（ダウン追い討ちルート）（画面端）2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下　○
;　　│
;　　├→ぱっちんB						（画面端付近）			　　AI低レベル時確率UP　○
;　　├→ぱっちんEX						（画面端付近）						○
;　　├→全地面投げ						（画面端付近）						○
;　　├→4C							（JC始動空中コンボルート）				○
;　　│
;　　├→地雷設置EX						（画面中央）						○
;　　├→地雷設置A						（画面中央）						○
;　　└→烈風拳AB						（画面中央）						○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=240,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓6C始動空中コンボルート
trigger1 = stateno=240&&movehit>=1&&time>=28				;□4HIT目以降ヒット中
trigger1 = var(48):=Ceil(2.0**18)					;□6C始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■JC始動空中コンボルートフラグセット

;□JC【着地】┬→ジャンプ→JA┬→J2B→JC【着地】				（画面端付近）	AIレベル3以上	○
;　　　　　　│　　　　　　　├→JB(30%)→J2C【着地】┬→JA→J2B→JC【着地】	（画面端）	AIレベル4以上	○
;　　　　　　│　　　　　　　│　　　　　　　　　　　└→対空投げB		（画面端）	AIレベル3以上	○
;　　　　　　│　　　　　　　│
;　　　　　　│　　　　　　　├→JB【着地】ダッシュ5C				（画面端）	AIレベル3以上	○
;　　　　　　│　　　　　　　└→JB【着地】ダッシュ4A				（画面端）	AIレベル3以上	○
;　　　　　　│
;　　　　　　└→ダッシュ┬→4A（4A始動空中コンボルートへ）			（画面端）	AIレベル4以上	○
;　　　　　　　　　　　　├→4B（4B始動空中コンボルートへ）			（画面端付近）	AIレベル3以上	○
;　　　　　　　　　　　　├→3C（3C始動空中コンボルートへ）			（遠距離）	AIレベル4以上	○
;　　　　　　　　　　　　└→4C（4C始動空中コンボルートへ）			（高重力時フォロー）		○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C||statetype=A
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓JC始動空中コンボルート
trigger1 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = numhelper(662)
trigger1 = helper(662),movehit>=1
trigger1 = var(48):=Ceil(2.0**19)						;□JC始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))					;□コンボルート固定スイッチON

trigger2 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = numhelper(663)
trigger2 = helper(663),movehit>=1
trigger2 = var(48):=Ceil(2.0**19)						;□JC始動空中コンボルートON
trigger2 = var(48):=var(48)+(1*!(var(48)&(1)))					;□コンボルート固定スイッチON

trigger3 = Ctrl||(stateno=100&&time>=1)||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = numhelper(664)
trigger3 = helper(664),movehit>=1
trigger3 = var(48):=Ceil(2.0**19)						;□JC始動空中コンボルートON
trigger3 = var(48):=var(48)+(1*!(var(48)&(1)))					;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■4B始動空中コンボルート

;□4B┬→2B→5B→4C→6C				（6C始動空中コンボルート）	（画面端）高重力コンボ〆	AIレベル4以上	○
;　　│
;　　├→3C┬→2C(70%)┬→4C			（4C始動空中コンボルート）							
;　　│　　│　　　　 ├→【NC】ダッシュ4C	（4C始動空中コンボルート）							
;　　│　　│　　　 　└→【NC】ダッシュ5B	（5B始動空中コンボルート）							
;　　│　　│
;　　│　　├→4C				（4C始動空中コンボルート）	（画面中央）					
;　　│　　├→4A→対空投げ				
;　　│　　├→5A				
;　　│　　└→対空投げA			（ダウン追い討ちルート）	（画面中央or2C使用済み）			
;　　│
;　　├→4A					（4A始動空中コンボルート）							○
;　　├→4C					（4C始動空中コンボルート）							○
;　　├→6C					（6C始動空中コンボルート）							○
;　　│
;　　└→烈風拳AB														○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=220,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓4B始動空中コンボルート
trigger1 = stateno=220&&movehit>=1&&time>=27				;□4HIT目以降ヒット中
trigger1 = var(48):=Ceil(2.0**20)					;□4B始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■3C始動空中コンボルート

;□3C┬→4A				（4A始動空中コンボルート）		AIレベル4以上	○
;　　├→5A┬→4B			（4B始動空中コンボルート）		AIレベル4以上	○
;　　│　　└→対空投げA		（ダウン追い討ちルート）		AIレベル4以上	○
;　　├→4C				（4C始動空中コンボルート）　　AIレベル4以上で精度上昇	○
;　　│
;　　├→2C【NC】ダッシュ┬→4A		（4A始動空中コンボルート）		AIレベル4以上	○
;　　│　　　　　　　　  ├→5B		（5B始動空中コンボルート）		AIレベル4以上	○
;　　│　　　　　　　　  └→4C		（4C始動空中コンボルート）		AIレベル4以上	○
;　　│
;　　├→4B				（4B始動空中コンボルート）		AIレベル4以上	○
;　　│
;　　└→対空投げA			（ダウン追い討ちルート）　　AIレベル3以下or2C使用済み	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=460,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓3C始動空中コンボルート
trigger1 = stateno=460&&movehit>=1&&time>=33				;□3HIT目以降ヒット中
trigger1 = var(48):=Ceil(2.0**21)					;□3C始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■2C始動空中コンボルート

;□2C┬→4B	（4B始動空中コンボルート）　			画面中央～画面端				○
;　　├→3C(30%)（3C始動空中コンボルート）　			画面後ろ端（中重力）				○
;　　├→4C	（4C始動空中コンボルート）			画面中央　（中重力）	AIレベル3以下or高重力	○
;　　│
;　　└→【NC】ダッシュ┬→4A	（4A始動空中コンボルート）					AIレベル4以上	○
;　　　　　　　　　　　├→5B	（5B始動空中コンボルート）	画面端				AIレベル4以上	○
;　　　　　　　　　　　└→4C	（4C始動空中コンボルート）					AIレベル4以上	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=440,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓2C始動空中コンボルート
trigger1 = (stateno=[440,442])&&numhelper(450)=1
trigger1 = helper(450),movehit>=1&&time>=26				;□3HIT目以降ヒット中
trigger1 = var(48):=Ceil(2.0**22)					;□2C始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

trigger2 = (stateno=[440,442])&&numhelper(451)=1
trigger2 = helper(451),movehit>=1&&time>=26				;□3HIT目以降ヒット中
trigger2 = var(48):=Ceil(2.0**22)					;□2C始動空中コンボルートON
trigger2 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■2B始動空中コンボルート

;□2B┬→5B	（5B始動空中コンボルート）（画面端）			○
;　　│
;　　├→4B	（4B始動空中コンボルート）（画面端付近～画面中央）	○
;　　├→6C	（6C始動空中コンボルート）（画面中央）			○
;　　└→4C	（4C始動空中コンボルート）（低空フォロー用）		○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=420,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓2C始動空中コンボルート
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movehit>=1&&time>=24				;□2HIT目以降ヒット中
trigger1 = var(48):=Ceil(2.0**23)					;□2B始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movehit>=1&&time>=24				;□2HIT目以降ヒット中
trigger2 = var(48):=Ceil(2.0**23)					;□2B始動空中コンボルートON
trigger2 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■5C始動空中コンボルート

;□5C┬→4B		（4B始動空中コンボルート）	○
;　　├→4A		（4A始動空中コンボルート）	○
;　　├→5A						○
;　　├→4C		（4C始動空中コンボルート）	○
;　　└→対空投げA	（ダウン追い討ちルート）	○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート固定スイッチ
triggerall = (var(48)&(1))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=230,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓5C始動空中コンボルート
trigger1 = stateno=230&&movehit>=1&&time>=17
trigger1 = var(48):=Ceil(2.0**24)					;□5C始動空中コンボルートON
trigger1 = var(48):=var(48)+(1*!(var(48)&(1)))				;□コンボルート固定スイッチON

IgnoreHitPause = 1


;==============================================================================
;■ダウン追い討ちルート

;　　　　　　　　┌→烈風拳A→ぱっちんAB					AIレベル2以下	○
;　　　　　┌→5B┴→地雷設置A							AIレベル2以下	○
;　　　　　│
;□各種投げ┴┬→ダッシュ2A┬→2B┬→4C→6C┬→2C				AIレベル3以下	○
;　　　　　　└→2A*n───┘　　│　　　　└→2C→5B┬→地雷設置A(15%)		AIレベル4以上	○
;　　　　　　　　　　　　　　　　│　　　　　　　　　└→烈風拳A→ぱっちんAB	AIレベル4以上	○
;　　　　　　　　　　　　　　　　│
;　　　　　　　　　　　　　　　　└→5B→6C┬→2C→4C┬→烈風拳B→ぱっちんAB	AIレベル4以上	○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→地雷設置A		AIレベル3以下	○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→地雷設置B				○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→ゲイザー				○
;　　　　　　　　　　　　　　　　　　　　　│　　　　└→烈風拳A→ぱっちんAB			○
;　　　　　　　　　　　　　　　　　　　　　│
;　　　　　　　　　　　　　　　　　　　　　├→4C→溜め2C					○
;　　　　　　　　　　　　　　　　　　　　　├→地雷設置A					○
;　　　　　　　　　　　　　　　　　　　　　└→烈風拳A						○

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(Ceil(fvar(27))=810||Ceil(fvar(27))=1175||fvar(27))=1500||Ceil(fvar(27))=1530||Ceil(fvar(27))=1810,1)
;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H

;〓ダウン追い討ちルート（通常投げ）
trigger1 = stateno=810&&time>=1
trigger1 = target(800),time>=1
trigger1 = enemynear(var(16)),statetype=L
trigger1 = var(48):=Ceil(2.0**29)					;□ダウン追い討ちルートON

;〓ダウン追い討ちルート（テレポ投げ）
trigger2 = stateno=1175&&time>=1
trigger2 = target(1170),time>=1
trigger2 = enemynear(var(16)),statetype=L
trigger2 = var(48):=Ceil(2.0**29)					;□ダウン追い討ちルートON

;〓ダウン追い討ちルート（対空投げA）
trigger3 = numhelper(1505)=1
trigger3 = helper(1505),numtarget(1505)>=1&&helper(1505),time>=1
trigger3 = var(48):=Ceil(2.0**29)					;□ダウン追い討ちルートON

;〓ダウン追い討ちルート（対空投げB）
trigger4 = numhelper(1535)=1
trigger4 = helper(1535),numtarget(1535)>=1&&helper(1535),time>=1
trigger4 = var(48):=Ceil(2.0**29)					;□ダウン追い討ちルートON

;〓ダウン追い討ちルート（全地面投げ）
trigger5 = stateno=1810&&time>=1
trigger5 = target(1800),time>=1
trigger5 = enemynear(var(16)),statetype=L
trigger5 = var(48):=Ceil(2.0**29)					;□ダウン追い討ちルートON

IgnoreHitPause = 1


;==============================================================================
;■EX投げ追い討ちルート

;□EXコマンド投げ→5B（5B始動ダウン追い討ちアドリブルート）

;------------------------------------------------------------------------------

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = IfElse(Ceil(fvar(27)),Ceil(fvar(27))=2810,1)

;〓Near敵状態
triggerall = enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=A

;〓EX投げ追い討ちルート
trigger1 = numtarget(2800)>0
trigger1 = target(2800),time>=1
trigger1 = enemynear(var(16)),stateno=2821
trigger1 = var(48):=Ceil(2.0**28)					;□EX投げ追い討ちルートON

IgnoreHitPause = 1


;------------------------------------------------------------------------------




















;==============================================================================
;■コンボ実行■（var(47)系）triggerall = (var(46)&(Ceil(2.0**27)))=0
;------------------------------------------------------------------------------


;==============================================================================
;■5B始動Aルート

;□5B→4C→3C┬→6C→2C【NC】ダッシュ┬→4C	（4C始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→4A	（4A始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→5B	（5B始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　├→4C	（4C始動空中コンボルート）	○
;　　　　　　│　　　　　　　　　　　└→5B	（5B始動空中コンボルート）	○
;　　　　　　│
;　　　　　　├→2B				（2B始動アドリブコンボ）	○
;　　　　　　└→4B				（4B始動アドリブコンボ）	○

;------------------------------------------------------------------------------
;■5B始動Aルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**10)))			;□5B始動Aルート

;〓5B→4C（発生9F）（対地）
trigger1 = stateno=210&&movehit>=1&&time>=16
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),95]
trigger1 = fvar(27):=235

;〓4C→3C（発生19F）（対地）
trigger2 = stateno=235&&movehit>=1&&time>=9		;□2HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger2 = (var(50)&(Ceil(2.0**16)))=0
trigger2 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)		;□身長判定
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger2 = fvar(27):=460

;〓4C→3C（発生24F）（対地）
trigger3 = stateno=235&&movehit>=1&&time>=9		;□2HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger3 = (var(50)&(Ceil(2.0**16)))=0
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),195]
trigger3 = fvar(27):=460

;〓3C→6C（発生20F）（対地）（画面中央）
trigger4 = stateno=460&&movehit>=1&&time>=35		;□4HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger4 = (var(50)&(Ceil(2.0**13)))=0
trigger4 = enemynear(var(16)),BackEdgeBodyDist>=6	;□画面中央
trigger4 = IfElse(Ceil(var(52)/100%10)>=2,helper(21000),var(1)<=200||(helper(21000),var(0)>=340&&Ceil(random/10%100)<=50),1)	;□確率判定
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)-Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[70-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),210]
trigger4 = fvar(27):=240

;〓3C→6C（発生20F）（対地）（画面端）
trigger5 = stateno=460&&movehit>=1&&time>=35		;□4HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger5 = (var(50)&(Ceil(2.0**13)))=0
trigger5 = enemynear(var(16)),BackEdgeBodyDist<=6	;□画面端
trigger5 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger5 = fvar(26)-Ceil(IfElse((movehit=[1,20]),abs((enemynear(var(16)),GetHitVar(xvel)*1.5)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[70-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),210]
trigger5 = fvar(27):=240

;〓3C→2B（発生21F）（対地）
trigger6 = stateno=460&&movehit>=1&&time>=35		;□4HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger6 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)-Ceil(IfElse((movehit=[1,21]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(22.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger6 = fvar(27):=420
trigger6 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓3C→4B（発生18F）（対地）
trigger7 = stateno=460&&movehit>=1&&time>=35		;□4HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger7 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger7 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)		;□身長判定
trigger7 = fvar(26)-Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger7 = fvar(27):=220
trigger7 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓6C→2C（発生17F）（対地）
trigger8 = stateno=240&&movehit>=1&&time>=20		;□2HIT目
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger8 = (var(50)&(Ceil(2.0**15)))=0
trigger8 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger8 = fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,75+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger8 = fvar(27):=440

;〓ダッシュ→4C（発生9F）（対空）
trigger9 = (stateno=100&&time>=12)||stateno=101		;□ダッシュ中
trigger9 = helper(21000),var(0)>=140			;□画面端から距離140以上
trigger9 = (var(47)&(Ceil(2.0**13)))			;□しゃがみ大後ダッシュ攻撃フラグ○
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = Ceil(fvar(31))-(11)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger9 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)=[0,IfElse(Ceil(var(52)/100%10)>=2,35,45)]
trigger9 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-50
trigger9 = fvar(27):=235
trigger9 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓ダッシュ→4A（発生10F）（対空）
trigger10 = (stateno=100&&time>=6)||stateno=101		;□ダッシュ中
trigger10 = IfElse(Ceil(var(52)/100%10)=1,helper(21000),var(0)>=110,1)	;□ノーマルモードで画面端から距離110以上
trigger10 = (var(47)&(Ceil(2.0**13)))			;□しゃがみ大後ダッシュ攻撃フラグ○
trigger10 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger10 = Ceil(fvar(31))-(12)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=IfElse(Ceil(var(52)/100%10)>=2,45,70)
trigger10 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger10 = fvar(27):=205
trigger10 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger11 = (stateno=100&&time>=8)||stateno=101		;□ダッシュ中
trigger11 = (var(47)&(Ceil(2.0**13)))			;□しゃがみ大後ダッシュ攻撃フラグ○
trigger11 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger11 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=IfElse(helper(21000),var(0)<=160,0,90)
trigger11 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=IfElse(helper(21000),var(0)<=160,90,135)
trigger11 = Ceil(helper(23000),fvar(8))=[-60,-5]
trigger11 = fvar(27):=210
trigger11 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓ダッシュ→4C（発生9F）（対空）
trigger12 = (stateno=100&&time>=16)||stateno=101	;□ダッシュ中（20F経過フォロー用）
trigger12 = (var(47)&(Ceil(2.0**13)))			;□しゃがみ大後ダッシュ攻撃フラグ○
trigger12 = (var(50)&(Ceil(2.0**14)))=0
trigger12 = Ceil(fvar(31))-(11)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger12 = fvar(27):=235
trigger12 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger13 = (stateno=100&&time>=16)||stateno=101	;□ダッシュ中
trigger13 = (var(47)&(Ceil(2.0**13)))			;□しゃがみ大後ダッシュ攻撃フラグ○
trigger13 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger13 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=135
trigger13 = fvar(27):=210
trigger13 = var(48):=(var(48)|1)-(1)||1			;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■5B始動Aルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**10)))		;□5B始動Aルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C

;〓5B→4C
trigger1 = stateno=210&&movehit>=1&&time>=16
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = Ceil(fvar(27))=235
;〓4C→3C
trigger2 = stateno=235&&movehit>=1&&time>=8
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = Ceil(fvar(27))=460
;〓4C→3C
trigger3 = stateno=235&&movehit>=1&&time>=8
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = Ceil(fvar(27))=460
;〓3C→6C
trigger4 = stateno=460&&movehit>=1&&time>=35
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger4 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger4 = Ceil(fvar(27))=240
;〓3C→6C
trigger5 = stateno=460&&movehit>=1&&time>=35
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = Ceil(fvar(27))=240
;〓3C→2B
trigger6 = stateno=460&&movehit>=1&&time>=35
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger6 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger6 = Ceil(fvar(27))=420
;〓3C→4B
trigger7 = stateno=460&&movehit>=1&&time>=35
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger7 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger7 = Ceil(fvar(27))=220
;〓6C→2C
trigger8 = stateno=240&&movehit>=1&&time>=20
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger8 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger8 = Ceil(fvar(27))=440
;〓ダッシュ→4C
trigger9 = (stateno=100&&time>=4)||stateno=101
trigger9 = enemynear(var(16)),statetype=A
trigger9 = Ceil(fvar(27))=235
;〓ダッシュ→4A
trigger10 = (stateno=100&&time>=4)||stateno=101
trigger10 = enemynear(var(16)),statetype=A
trigger10 = Ceil(fvar(27))=205
;〓ダッシュ→5B
trigger11 = (stateno=100&&time>=8)||stateno=101
trigger11 = enemynear(var(16)),statetype=A
trigger11 = Ceil(fvar(27))=210
;〓ダッシュ→4C
trigger12 = (stateno=100&&time>=18)||stateno=101
trigger12 = enemynear(var(16)),statetype=A
trigger12 = Ceil(fvar(27))=235
;〓ダッシュ→5B
trigger13 = (stateno=100&&time>=18)||stateno=101
trigger13 = enemynear(var(16)),statetype=A
trigger13 = Ceil(fvar(27))=210


;==============================================================================
;■5B始動Bルートフラグセット

;□5B┬[0-75]→2B┬→4C		（4C始動アドリブコンボ）				○
;　　│　　　　　│
;　　├[0-85]──┘
;　　│
;　　├[80-135]→6C→4C		（4C始動アドリブコンボ）（画面端から距離340以上）	○
;　　│
;　　├[0-100~110]→4C		（4C始動アドリブコンボ）				○
;　　│
;　　├[85-180]┬→[大]4B	（4B始動アドリブコンボ）				○
;　　│　　　　└→[小]6C	（6C始動空中コンボルート）				○
;　　│
;　　├→烈風拳B(50%)									○
;　　├→バックジャンプ		（ノーマルモード以上）	AIレベル3以上			○
;　　└→地雷設置A									○

;------------------------------------------------------------------------------
;■5B始動Bルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**11)))				;□5B始動Bルート

;〓5B→2B（発生18F）（対地）
trigger1 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger1 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger1 = (var(50)&(Ceil(2.0**14)))=0				;□4C未使用
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),75]
trigger1 = fvar(27):=420

;〓5B→4C（発生9F）（対地）
trigger2 = stateno=210&&movehit>=1&&time>=17
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),85]
trigger2 = fvar(27):=235
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→6C（発生15F）（対地）
trigger3 = Ceil(var(52)/100%10)>=1				;□ノーマルモード以上
trigger3 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger3 = (var(50)&(Ceil(2.0**13)))=0
trigger3 = (var(50)&(Ceil(2.0**14)|Ceil(2.0**16)))=0		;□3C4C未使用
trigger3 = helper(21000),var(0)>=340				;□画面端から距離340以上
trigger3 = power>=2000
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),115]
trigger3 = fvar(27):=240

;〓5B→4C（発生9F）（対地）
trigger4 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),110]
trigger4 = fvar(27):=235
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→4C（発生9F）（対地）
trigger5 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=C
trigger5 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger5 = fvar(27):=235
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→4B（発生18+2F）（対地）
trigger6 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger6 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger6 = enemynear(var(16)),Const(size.head.pos.y)<=-60	;□身長判定
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger6 = fvar(26)+Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[50-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),185]
trigger6 = fvar(27):=220
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→6C（発生20F）（対地）
trigger7 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger7 = (var(50)&(Ceil(2.0**13)))=0
trigger7 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger7 = fvar(26)+Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),210]
trigger7 = fvar(27):=240
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2B→4C（発生9F）（対地）
trigger8 = stateno=420&&numhelper(424)=1
trigger8 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger8 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),95]
trigger8 = fvar(27):=235
trigger8 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger9 = stateno=420&&numhelper(425)=1
trigger9 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger9 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),95]
trigger9 = fvar(27):=235
trigger9 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓6C→4C（発生9F）（対地）
trigger10 = stateno=240&&movehit>=1&&time>=20			;□2HIT目
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = (var(50)&(Ceil(2.0**14)))=0
trigger10 = helper(21000),var(0)>=200				;□画面端から距離200以上
trigger10 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger10 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger10 = fvar(27):=235
trigger10 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→烈風拳B（対地）
trigger11 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger11 = Ceil(random/10%100)<=50				;□確率判定
trigger11 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger11 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),180]
trigger11 = fvar(27):=1001
trigger11 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5B→ジャンプ（対地）（ノーマルモード以上）
trigger12 = var(59)>=3						;□AIレベル3以上
trigger12 = Ceil(var(52)/100%10)>=1
trigger12 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger12 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger12 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),180]
trigger12 = fvar(27):=42
trigger12 = var(47):=Ceil(2.0**15)
trigger12 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→地雷設置A（対空）
trigger13 = stateno=210&&movehit>=1&&time>=17			;□4HIT目
trigger13 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger13 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger13 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),180]
trigger13 = fvar(27):=1200
trigger13 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■5B始動Bルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**11)))		;□5B始動Bルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓5B→2B
trigger1 = stateno=210&&movehit>=1&&time>=17
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger1 = Ceil(fvar(27))=420
;〓5B→4C
trigger2 = stateno=210&&movehit>=1&&time>=17
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = Ceil(fvar(27))=235
;〓5B→6C
trigger3 = stateno=210&&movehit>=1&&time>=17
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger3 = Ceil(fvar(27))=240
;〓5B→4C
trigger4 = stateno=210&&movehit>=1&&time>=17
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger4 = enemynear(var(16)),statetype=S
trigger4 = Ceil(fvar(27))=235
;〓5B→4C
trigger5 = stateno=210&&movehit>=1&&time>=17
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger5 = enemynear(var(16)),statetype=C
trigger5 = Ceil(fvar(27))=235
;〓5B→4B
trigger6 = stateno=210&&movehit>=1&&time>=17
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger6 = enemynear(var(16)),statetype=S
trigger6 = Ceil(fvar(27))=220
;〓5B→6C
trigger7 = stateno=210&&movehit>=1&&time>=17
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger7 = Ceil(fvar(27))=240
;〓2B→4C
trigger8 = stateno=420&&numhelper(424)=1
trigger8 = helper(424),movehit>=1&&time>=24
trigger8 = Ceil(fvar(27))=235

trigger9 = stateno=420&&numhelper(425)=1
trigger9 = helper(425),movehit>=1&&time>=24
trigger9 = Ceil(fvar(27))=235
;〓6C→4C
trigger10 = stateno=240&&movehit>=1&&time=20
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = Ceil(fvar(27))=235
;〓5B→烈風拳B
trigger11 = stateno=210&&movehit>=1&&time>=17
trigger11 = Ceil(fvar(27))=1001
;〓5B→ジャンプ
trigger12 = stateno=210&&movehit>=1&&time>=17
trigger12 = Ceil(fvar(27))=42
;〓5B→地雷設置A
trigger13 = stateno=210&&movehit>=1&&time>=17
trigger13 = Ceil(fvar(27))=1200


;==============================================================================
;■4C始動空中コンボルート

;□4C┬【HJC】→JA┬→J2B→JC			（JC始動空中コンボルート）			AIレベル4以上	○
;　　│　　　　　 ├→JB【着地】→ダッシュ5C→4A（4A始動空中コンボルート）低重力補正<=0.035	AIレベル4以上	○
;　　│　　　　　 └→JB【着地】→ダッシュ4A	（4A始動空中コンボルート）低重力補正<=0.035	AIレベル4以上	○
;　　│
;　　├→3C┬→4A→4B→6C			（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　├→5A→4B→6C			（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　├→4B→6C				（6C始動空中コンボルート）			AIレベル3以上	○
;　　│　　│
;　　│　　├→2C【NC】ダッシュ┬→4A		（4A始動空中コンボルート）			AIレベル4以上	○
;　　│　　│　　　　　　　　  ├→5B		（5B始動空中コンボルート）			AIレベル4以上	○
;　　│　　│　　　　　　　　  └→4C		（4C始動空中コンボルート）			AIレベル4以上	○
;　　│　　│
;　　│　　└→対空投げA									AIレベル3以下	○
;　　│
;　　├┬→4B→6C			（6C始動空中コンボルート）P2画面端＆近中距離＆中重力補正0.041~0.064	○
;　　│└→6C				（6C始動空中コンボルート）P2画面端＆近中距離＆大重力補正0.065以上	○
;　　│
;　　├→5C┬→4B→6C			（6C始動空中コンボルート）低重力補正<=0.040				○
;　　│　　└→4A→4B→6C		（6C始動空中コンボルート）低重力補正<=0.040				○
;　　│
;　　├┬→対空投げA（近距離）		（ダウン追い討ちルート）				AIレベル3以上	○
;　　│└→対空投げB（中距離）		（ダウン追い討ちルート）				AIレベル3以上	○
;　　│
;　　├┬→CCC											AIレベル3以上	○
;　　│├→巨人召喚										AIレベル3以上	○
;　　│├→地雷設置EX										AIレベル3以上	○
;　　│└→地雷設置A										AIレベル2以上	○
;　　│
;　　└→烈風拳A										AIレベル2以上	○

;------------------------------------------------------------------------------
;■4C始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**15)))				;□4C始動空中コンボルート

;〓4C→ハイジャンプ（発生10F）（対空）
trigger1 = var(59)>=4						;□AIレベル4以上
trigger1 = stateno=235&&movehit>=1&&time>=9
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = enemynear(var(16)),vel y<0				;□上昇中
trigger1 = helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75]
trigger1 = Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-50,0]
trigger1 = fvar(27):=43
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;〓ハイジャンプ→JA（9F目持続当て）（空対空）（ノーマルモード以上）
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = stateno=50&&time>=1
trigger2 = (var(50)&(Ceil(2.0**19)))=0
trigger2 = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
trigger2 = statetype=A&&enemynear(var(16)),statetype=A
trigger2 = helper(23000),var(7)+const(size.air.front)-(vel x*7)<=70
trigger2 = Ceil(Ceil(helper(23000),fvar(7))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0)))=[-60,20]
trigger2 = fvar(27):=630

;〓ハイジャンプ→JA（11F目持続当て）（空対空）（弱体化モード）
trigger3 = Ceil(var(52)/100%10)=0
trigger3 = stateno=50&&time>=1
trigger3 = (var(50)&(Ceil(2.0**19)))=0
trigger3 = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
trigger3 = statetype=A&&enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(11)+const(size.air.front)-(vel x*11)<=70
trigger3 = Ceil(Ceil(helper(23000),fvar(11))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0)))=[-60,20]
trigger3 = fvar(27):=630

;〓JA→J2B（空対空）
trigger4 = stateno=630&&movehit>=1&&time>=11			;□2HIT目
trigger4 = (var(50)&(Ceil(2.0**23)))=0
trigger4 = statetype=A&&enemynear(var(16)),statetype=A
trigger4 = vel y<0						;□上昇中
trigger4 = helper(23000),var(17)+const(size.air.front)-(vel x*17)<=30
trigger4 = (Ceil(Ceil(helper(23000),fvar(17))+Ceil(enemynear(var(17)),Const(size.mid.pos.y)*0.50)-Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0)))=[-90,-15])||time>=12
trigger4 = fvar(27):=645

;〓JA→JB（空対空）
trigger5 = stateno=630&&movehit>=1&&time>=IfElse(vel y>0,7,11)	;□1~2HIT目
trigger5 = fvar(9)<=0.050					;□重力補正
trigger5 = (var(50)&(Ceil(2.0**22)))=0
trigger5 = statetype=A&&enemynear(var(16)),statetype=A
trigger5 = vel y<0						;□上昇中
trigger5 = movehit>=6
trigger5 = fvar(27):=640

;〓J2B→JC（空対空）
trigger6 = stateno=645&&movehit>=1&&time>=16			;□1HIT目
trigger6 = (var(50)&(Ceil(2.0**25)))=0
trigger6 = statetype=A&&enemynear(var(16)),statetype=A
trigger6 = fvar(27):=650
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ジャンプ→JC（空対空）
trigger7 = stateno=50&&time>=1
trigger7 = vel y>0						;□下降中
trigger7 = enemynear(var(16)),movetype=H
trigger7 = statetype=A&&enemynear(var(16)),statetype=A
trigger7 = prevstateno=630
trigger7 = fvar(27):=650
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→3C（発生19F）（対空）
trigger8 = var(59)>=3						;□AIレベル3以上
trigger8 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger8 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger8 = (var(50)&(Ceil(2.0**16)))=0
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = enemynear(var(16)),vel x<=0
trigger8 = helper(21000),var(0)<=155||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(19.0-1.0)))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),120]
trigger8 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(19.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((19.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-105,-90]
trigger8 = fvar(27):=460

;〓4C→3C（発生28F）（対空）
trigger9 = var(59)>=3						;□AIレベル3以上
trigger9 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger9 = Ceil(fvar(31))-(30)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger9 = (var(50)&(Ceil(2.0**16)))=0
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = enemynear(var(16)),vel x<=0
trigger9 = helper(21000),var(0)<=250||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(28.0-1.0)))=[130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),120]
trigger9 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(28.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((28.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-160,-10]
trigger9 = fvar(27):=460

;〓4C→4B（発生18F）（対空）
trigger10 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger10 = (fvar(9)=[0.041,0.064])||(fvar(9)<0.065&&enemynear(var(16)),vel y>0&&helper(21000),var(0)=[120,195])	;□重力補正
trigger10 = Ceil(fvar(31))-(20)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger10 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = helper(23000),var(18)+const(size.ground.front)<=185
trigger10 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger10 = fvar(27):=220

;〓4C→6C（発生19F）（対空）
trigger11 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger11 = fvar(9)>=0.065||(fvar(9)<0.065&&enemynear(var(16)),vel y>0&&helper(21000),var(0)<=250)	;□重力補正
trigger11 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger11 = (var(50)&(Ceil(2.0**13)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(19)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger11 = helper(23000),var(19)+const(size.ground.front)<=250
trigger11 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-40+IfElse(helper(21000),var(0)<=180,0,-120),-10]
trigger11 = fvar(27):=240
trigger11 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→5C（発生12F）（対空）
trigger12 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger12 = fvar(9)<=0.040					;□重力補正（弱）
trigger12 = Ceil(fvar(31))-(14)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger12 = (var(50)&(Ceil(2.0**12)))=0
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = enemynear(var(16)),vel x<=0
trigger12 = helper(21000),var(0)<=50||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(12.0-1.0)))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),30]
trigger12 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(12.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((12.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-165,-140]
trigger12 = fvar(27):=230

;〓4C→5C（発生18F）（対空）
trigger13 = stateno=235&&movehit>=1&&time>=9			;□2HIT目
trigger13 = fvar(9)<=0.040					;□重力補正（弱）
trigger13 = Ceil(fvar(31))-(14)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger13 = (var(50)&(Ceil(2.0**12)))=0
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = enemynear(var(16)),vel x<=0
trigger13 = helper(21000),var(0)<=140||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(18.0-1.0)))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),70]
trigger13 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(18.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((18.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-140,-120]
trigger13 = fvar(27):=230

;〓着地→ダッシュ（JBヒット時）
trigger14 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger14 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0	;□JBヒット中
trigger14 = NumHelper(662)=0&&NumHelper(663)=0&&NumHelper(664)=0	;□JC無し
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = fvar(26)=[0,100]
trigger14 = var(47):=Ceil(2.0**10)
trigger14 = fvar(27):=100

;〓ダッシュ→5C（発生7F）（対空）
trigger15 = (stateno=100&&time>=1)||stateno=101
trigger15 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger15 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=30
trigger15 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-155,-145]
trigger15 = fvar(27):=230

;〓ダッシュ→5C（発生13F）（対空）
trigger16 = (stateno=100&&time>=1)||stateno=101
trigger16 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = helper(23000),var(13)+const(size.ground.front)-(vel x*(0.85-(0.85**14.0))/0.15)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger16 = helper(23000),var(13)+const(size.ground.front)-(vel x*(0.85-(0.85**14.0))/0.15)<=65
trigger16 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-155,-140]
trigger16 = fvar(27):=230

;〓ダッシュ→4A（発生10F）（対空）
trigger17 = (stateno=100&&time>=1)||stateno=101
trigger17 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0
trigger17 = Ceil(fvar(31))-(12)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger17 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger17 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=70
trigger17 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger17 = fvar(27):=205
trigger17 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger18 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger18 = helper(21000),var(0)<=150				;□画面端から距離150以内
trigger18 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger18 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger18 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger18 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger18 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),100]
trigger18 = Ceil(helper(23000),fvar(8))=[-60,20]		;◆範囲拡大実験中
trigger18 = fvar(27):=210
trigger18 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4C（発生4F）（対空）
trigger19 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger19 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger19 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger19 = (var(50)&(Ceil(2.0**14)))=0
trigger19 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger19 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger19 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger19 = helper(23000),var(4)+const(size.ground.front)-(vel x*(0.85-(0.85**5.0))/0.15)=[25,50]
trigger19 = Ceil(helper(23000),fvar(4))>=-20
trigger19 = fvar(27):=235
trigger19 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4A（発生10F）（対空）
trigger20 = stateno=230&&movehit>=1&&time>=17
trigger20 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger20 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger20 = (Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),60])||helper(21000),var(0)<=100
trigger20 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-60,-10]
trigger20 = fvar(27):=205
trigger20 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4B（発生18F）（対空）
trigger21 = stateno=230&&movehit>=1&&time>=19
trigger21 = helper(21000),var(0)=[80,185]			;□画面端付近
trigger21 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger21 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger21 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*18))*-1.0))=[80,185]
trigger21 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger21 = fvar(27):=220

;〓3C→4A（発生10F）（対空）
trigger22 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger22 = NumTarget(461)>0					;□3HIT目命中
trigger22 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger22 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger22 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=65||helper(21000),var(0)<=160
trigger22 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-60,0]
trigger22 = fvar(27):=205

;〓3C→5A（発生7F）（対空）
trigger23 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger23 = NumTarget(461)>0					;□3HIT目命中
trigger23 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger23 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger23 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))<=50
trigger23 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-30,0]
trigger23 = fvar(27):=200

;〓3C→4B（発生18F）（対空）
trigger24 = var(59)>=3						;□AIレベル3以上
trigger24 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger24 = NumTarget(461)>0					;□3HIT目命中
trigger24 = (helper(21000),var(0)=[170,190])||(var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))	;□画面端付近or4A使用済み
trigger24 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger24 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger24 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=60)
trigger24 = !(Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,0])
trigger24 = fvar(26)=[50,200]
trigger24 = enemynear(var(16)),pos y<=-80
trigger24 = fvar(27):=220

;〓3C→2C（発生17F）（対空）
trigger25 = var(59)>=4						;□AIレベル4以上
trigger25 = fvar(9)<0.070					;□重力補正
trigger25 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger25 = NumTarget(461)>0					;□3HIT目命中
trigger25 = enemynear(var(16)),Const(size.mid.pos.y)>=-65	;□座高判定
trigger25 = Ceil(fvar(26))>=110||helper(21000),var(0)<=145	;□確率距離画面端判定
trigger25 = (var(50)&(Ceil(2.0**15)))=0
trigger25 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger25 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=60)
trigger25 = !(Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,0])
trigger25 = fvar(26)=[0,150]
trigger25 = enemynear(var(16)),pos y<=-100
trigger25 = fvar(27):=440

;〓3C→対空投げA（発生13F）（対空）
trigger26 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger26 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger26 = NumTarget(461)>0					;□3HIT目命中
trigger26 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger26 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*13))*-1.0))=[35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),64]
trigger26 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-110,-70]
trigger26 = fvar(27):=1500
trigger26 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生16F）（対空）
trigger27 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger27 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger27 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger27 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger27 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-120,-20]
trigger27 = fvar(27):=1500
trigger27 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4A→4B（発生18F）（対空）
trigger28 = stateno=205&&movehit>=1&&time>=16			;□3HIT目
trigger28 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger28 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger28 = helper(23000),var(18)+const(size.ground.front)<=165
trigger28 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-50]
trigger28 = fvar(27):=220

;〓5A→4B（発生18F）（対空）
trigger29 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger29 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger29 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger29 = helper(23000),var(18)+const(size.ground.front)<=165
trigger29 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger29 = fvar(27):=220

;〓4B→6C（発生15F）（対空）
trigger30 = stateno=220&&movehit>=1&&time>=27			;□4HIT目
trigger30 = (var(50)&(Ceil(2.0**13)))=0
trigger30 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger30 = helper(23000),var(15)+const(size.ground.front)>=70-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger30 = helper(23000),var(15)+const(size.ground.front)<=210
trigger30 = Ceil(helper(23000),fvar(15))+Ceil(fvar(36))=[-60+Ifelse(fvar(26)>=110,-40,0),-10]
trigger30 = fvar(27):=240
trigger30 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→対空投げB（発生18F）（対空）
trigger31 = var(59)>=3						;□AIレベル3以上
trigger31 = !(helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75])||time>=10	;□4C始動空中コンボルート攻撃範囲NG
trigger31 = !(Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-50,0])||time>=10
trigger31 = stateno=235&&movehit>=1&&time>=7			;□1HIT目
trigger31 = helper(21000),var(0)>=190||(var(50)&(Ceil(2.0**16)))	;□画面端から190以上or3C使用済み
trigger31 = Ceil(fvar(31))-(20)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger31 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger31 = enemynear(var(16)),vel x<=0
trigger31 = helper(21000),var(0)<=190||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(18.0-1.0)))=[80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),155]
trigger31 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(18.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((18.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-160,-115]
trigger31 = fvar(27):=1530
trigger31 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→対空投げB（発生24F）（対空）
trigger32 = var(59)>=3						;□AIレベル3以上
trigger32 = stateno=235&&movehit>=1&&time>=7			;□1HIT目
trigger32 = helper(21000),var(0)>=190||(var(50)&(Ceil(2.0**16)))	;□画面端から190以上or3C使用済み
trigger32 = Ceil(fvar(31))-(26)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger32 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger32 = enemynear(var(16)),vel x<=0
trigger32 = helper(21000),var(0)<=190||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(24.0-1.0)))=[150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),185]
trigger32 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(24.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((24.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-195,-175]
trigger32 = fvar(27):=1530
trigger32 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger33 = var(59)>=3						;□AIレベル3以上
trigger33 = stateno=235&&movehit>=1&&time>=7			;□1HIT目
trigger33 = helper(21000),var(0)>=190||(var(50)&(Ceil(2.0**16)))	;□画面端から190以上or3C使用済み
trigger33 = Ceil(fvar(31))-(26)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger33 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger33 = enemynear(var(16)),vel x<=0
trigger33 = helper(21000),var(0)<=190||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(24.0-1.0)))=[120-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),150]
trigger33 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(24.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((24.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-175,-140]
trigger33 = fvar(27):=1530
trigger33 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→対空投げA（発生13F）（対空）
trigger34 = var(59)>=3						;□AIレベル3以上
trigger34 = !(helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75])||time>=10	;□4C始動空中コンボルート攻撃範囲NG
trigger34 = !(Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-50,0])||time>=10
trigger34 = stateno=235&&movehit>=1&&time=5			;□1HIT目
trigger34 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger34 = Ceil(fvar(31))-(15)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger34 = helper(21000),var(0)<=90||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(13.0-1.0)))=[35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),64]
trigger34 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(13.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((13.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-120,-85]
trigger34 = fvar(27):=1500
trigger34 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→対空投げA（発生16F）（対空）
trigger35 = var(59)>=3						;□AIレベル3以上
trigger35 = !(helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75])||time>=10	;□4C始動空中コンボルート攻撃範囲NG
trigger35 = !(Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-50,0])||time>=10
trigger35 = stateno=235&&movehit>=1&&time=5			;□1HIT目
trigger35 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger35 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger35 = helper(21000),var(0)<=110||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(16.0-1.0)))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),50]
trigger35 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(16.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((16.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-130,-20]
trigger35 = fvar(27):=1500
trigger35 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger36 = var(59)>=3						;□AIレベル3以上
trigger36 = !(helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75])||time>=10	;□4C始動空中コンボルート攻撃範囲NG
trigger36 = !(Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-50,0])||time>=10
trigger36 = stateno=235&&movehit>=1&&time=5			;□1HIT目
trigger36 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger36 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger36 = helper(21000),var(0)<=110||Ceil(fvar(26)+(enemynear(var(16)),GetHitVar(xvel)*facing*(16.0-1.0)))=[40-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger36 = Ceil(enemynear(var(16)),pos y+(enemynear(var(16)),GetHitVar(yvel)*(16.0-1.0))+((enemynear(var(16)),GetHitVar(yaccel)*Ceil((16.0-1.0)**2.0))/2))+Ceil(fvar(36))=[-130,-80]
trigger36 = fvar(27):=1500
trigger36 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→CCC（対空）
trigger37 = var(59)>=3
trigger37 = (var(57)&(Ceil(2.0**27)))
trigger37 = Ceil(var(53)/1000%10)>=1
trigger37 = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)		;□CCC攻撃＆地面＆触手ヘルパー
trigger37 = stateno=235&&movehit>=1&&time>=10						;□2HIT目
trigger37 = enemynear(var(16)),GetHitVar(fall.recovertime)>=999			;□カウンターヒット時
trigger37 = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
trigger37 = Ceil(var(54)%10)>=7			;□7冊消費
trigger37 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))*2.0)<=Life/(LifeMax/10.0))
trigger37 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=5.0)
trigger37 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=9||((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2
trigger37 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger37 = fvar(26)>=165
trigger37 = fvar(27):=3400
trigger37 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→巨人召喚（対空）
trigger38 = var(59)>=3						;□AIレベル3以上
trigger38 = (var(58)&(Ceil(2.0**26)))
trigger38 = !NumHelper(7005)
trigger38 = stateno=235&&movehit>=1&&time>=10			;□2HIT目
trigger38 = Ceil(random/10%100)<=Ceil(power/1000.0)*15		;□確率判定
trigger38 = (power=PowerMax||power>=7000)&&fvar(20)>1
trigger38 = fvar(20)>=IfElse(Ceil(var(52)/100%10)<=1,2000,4000)

trigger38 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)>=2.0)
trigger38 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)<=enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))
trigger38 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,6.0]	;□体力差60%以内
trigger38 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger38 = fvar(26)=[165,270]
trigger38 = fvar(27):=7000
trigger38 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→地雷設置EX（対空）
trigger39 = var(59)>=3						;□AIレベル3以上
trigger39 = !NumHelper(1280)&&!NumHelper(1285)
trigger39 = power>=1000
trigger39 = stateno=235&&movehit>=1&&time>=10			;□2HIT目
trigger39 = Ceil(random/10%100)<=Ceil(power/1000.0)*15		;□確率判定
trigger39 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger39 = fvar(26)=[165,270]
trigger39 = fvar(27):=1202
trigger39 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→烈風拳A（対空）
trigger40 = var(59)>=2						;□AIレベル2以上
trigger40 = stateno=235&&movehit>=1&&time>=10			;□2HIT目
trigger40 = Ceil(random/10%100)<=50				;□確率判定
trigger40 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger40 = fvar(26)=[165,270]
trigger40 = fvar(27):=1000
trigger40 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C→地雷設置A（対空）
trigger41 = var(59)>=2						;□AIレベル2以上
trigger41 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger41 = stateno=235&&movehit>=1&&time>=10			;□2HIT目
trigger41 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger41 = fvar(26)=[165,270]
trigger41 = fvar(27):=1200
trigger41 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■4C始動空中コンボルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**15)))		;□4C始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = enemynear(var(16)),statetype=A

;〓ハイジャンプ
trigger1 = stateno=235&&movehit>=1&&time>=1
trigger1 = statetype=S||statetype=C
trigger1 = Ceil(fvar(27))=43
;〓JA
trigger2 = stateno=50&&time>=1
trigger2 = statetype=A
trigger2 = Ceil(fvar(27))=630
;〓JA
trigger3 = stateno=50&&time>=1
trigger3 = statetype=A
trigger3 = Ceil(fvar(27))=630
;〓JA→J2B
trigger4 = stateno=630&&movehit>=1&&time>=7
trigger4 = statetype=A
trigger4 = Ceil(fvar(27))=645
;〓JA→JB
trigger5 = stateno=630&&movehit>=1&&time>=7
trigger5 = statetype=A
trigger5 = Ceil(fvar(27))=640
;〓J2B→JC
trigger6 = stateno=645&&movehit>=1&&time>=16
trigger6 = statetype=A
trigger6 = Ceil(fvar(27))=650
;〓JA→JC
trigger7 = stateno=50&&time>=1
trigger7 = statetype=A
trigger7 = Ceil(fvar(27))=650
;〓4C→3C
trigger8 = stateno=235&&movehit>=1&&time>=9
trigger8 = statetype=S||statetype=C
trigger8 = Ceil(fvar(27))=460
;〓4C→3C
trigger9 = stateno=235&&movehit>=1&&time>=9
trigger9 = statetype=S||statetype=C
trigger9 = Ceil(fvar(27))=460
;〓4C→6C
trigger10 = stateno=235&&movehit>=1&&time>=9
trigger10 = statetype=S||statetype=C
trigger10 = Ceil(fvar(27))=240
;〓4C→4B
trigger11 = stateno=235&&movehit>=1&&time>=9
trigger11 = statetype=S||statetype=C
trigger11 = Ceil(fvar(27))=220
;〓4C→5C
trigger12 = stateno=235&&movehit>=1&&time>=9
trigger12 = statetype=S||statetype=C
trigger12 = Ceil(fvar(27))=230
;〓4C→5C
trigger13 = stateno=235&&movehit>=1&&time>=9
trigger13 = statetype=S||statetype=C
trigger13 = Ceil(fvar(27))=230
;〓着地→ダッシュ
trigger14 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger14 = statetype=S||statetype=C
trigger14 = Ceil(fvar(27))=100
;〓ダッシュ→5C
trigger15 = (stateno=100&&time>=1)||stateno=101
trigger15 = statetype=S||statetype=C
trigger15 = Ceil(fvar(27))=230
;〓ダッシュ→5C
trigger16 = (stateno=100&&time>=1)||stateno=101
trigger16 = statetype=S||statetype=C
trigger16 = Ceil(fvar(27))=230
;〓ダッシュ→4A
trigger17 = (stateno=100&&time>=1)||stateno=101
trigger17 = statetype=S||statetype=C
trigger17 = Ceil(fvar(27))=205
;〓ダッシュ→5B
trigger18 = (stateno=100&&time>=8)||stateno=101
trigger18 = statetype=S||statetype=C
trigger18 = Ceil(fvar(27))=210
;〓ダッシュ→4C
trigger19 = (stateno=100&&time>=4)||stateno=101
trigger19 = statetype=S||statetype=C
trigger19 = Ceil(fvar(27))=235
;〓5C→4A
trigger20 = stateno=230&&movehit>=1&&time>=17
trigger20 = statetype=S||statetype=C
trigger20 = Ceil(fvar(27))=205
;〓5C→4B
trigger21 = stateno=230&&movehit>=1&&time>=19
trigger21 = statetype=S||statetype=C
trigger21 = Ceil(fvar(27))=220
;〓3C→4A
trigger22 = stateno=460&&movehit>=1&&time>=34
trigger22 = statetype=S||statetype=C
trigger22 = Ceil(fvar(27))=205
;〓3C→5A
trigger23 = stateno=460&&movehit>=1&&time>=34
trigger23 = statetype=S||statetype=C
trigger23 = Ceil(fvar(27))=200
;〓3C→4B
trigger24 = stateno=460&&movehit>=1&&time=33
trigger24 = statetype=S||statetype=C
trigger24 = Ceil(fvar(27))=220
;〓3C→2C
trigger25 = stateno=460&&movehit>=1&&time=33
trigger25 = statetype=S||statetype=C
trigger25 = Ceil(fvar(27))=440
;〓3C→対空投げA
trigger26 = stateno=460&&movehit>=1&&time>=33
trigger26 = statetype=S||statetype=C
trigger26 = Ceil(fvar(27))=1500
;〓3C→対空投げA
trigger27 = stateno=460&&movehit>=1&&time>=33
trigger27 = statetype=S||statetype=C
trigger27 = Ceil(fvar(27))=1500
;〓4A→4B
trigger28 = stateno=205&&movehit>=1&&time>=16
trigger28 = statetype=S||statetype=C
trigger28 = Ceil(fvar(27))=220
;〓5A→4B
trigger29 = stateno=200&&movehit>=1&&time>=9
trigger29 = statetype=S||statetype=C
trigger29 = Ceil(fvar(27))=220
;〓4B→6C
trigger30 = stateno=220&&movehit>=1&&time>=27
trigger30 = statetype=S||statetype=C
trigger30 = Ceil(fvar(27))=240
;〓4C→対空投げB
trigger31 = stateno=235&&movehit>=1&&time>=7
trigger31 = statetype=S||statetype=C
trigger31 = Ceil(fvar(27))=1530
;〓4C→対空投げB
trigger32 = stateno=235&&movehit>=1&&time>=7
trigger32 = statetype=S||statetype=C
trigger32 = Ceil(fvar(27))=1530
trigger33 = stateno=235&&movehit>=1&&time>=7
trigger33 = statetype=S||statetype=C
trigger33 = Ceil(fvar(27))=1530
;〓4C→対空投げA
trigger34 = stateno=235&&movehit>=1&&time>=5
trigger34 = statetype=S||statetype=C
trigger34 = Ceil(fvar(27))=1500
;〓4C→対空投げA
trigger35 = stateno=235&&movehit>=1&&time>=5
trigger35 = statetype=S||statetype=C
trigger35 = Ceil(fvar(27))=1500
trigger36 = stateno=235&&movehit>=1&&time>=5
trigger36 = statetype=S||statetype=C
trigger36 = Ceil(fvar(27))=1500
;〓4C→CCC（対空）
trigger37 = stateno=235&&movehit>=1&&time>=10
trigger37 = statetype=S||statetype=C
trigger37 = Ceil(fvar(27))=3400
;〓4C→巨人召喚
trigger38 = stateno=235&&movehit>=1&&time>=10
trigger38 = statetype=S||statetype=C
trigger38 = Ceil(fvar(27))=7000
;〓4C→地雷設置EX
trigger39 = stateno=235&&movehit>=1&&time>=10
trigger39 = statetype=S||statetype=C
trigger39 = Ceil(fvar(27))=1202
;〓4C→烈風拳A
trigger40 = stateno=235&&movehit>=1&&time>=10
trigger40 = statetype=S||statetype=C
trigger40 = Ceil(fvar(27))=1000
;〓4C→地雷設置A
trigger41 = stateno=235&&movehit>=1&&time>=10
trigger41 = statetype=S||statetype=C
trigger41 = Ceil(fvar(27))=1200


;==============================================================================
;■5B始動空中コンボルート

;□5B→4C┬→6C				（6C始動空中コンボルート）	P2画面端付近or中距離or高重力補正>=0.065		○
;　　　　├→3C┬→4A→4B→6C		（6C始動空中コンボルート）	P2画面端＆近距離＆低重力補正<=0.040		○
;　　　　│　　└→5A→4B→6C		（6C始動空中コンボルート）							○
;　　　　│
;　　　　├→4B→6C			（6C始動空中コンボルート）	P2画面端＆近中距離＆中重力補正[0.041,0.064]	○
;　　　　│
;　　　　├→5C┬→4B→6C		（6C始動空中コンボルート）							○
;　　　　│　　└→4A→4B→6C		（6C始動空中コンボルート）							○
;　　　　│
;　　　　├┬→地雷設置EX										AIレベル3以上	○
;　　　　│└→地雷設置A										AIレベル2以上	○
;　　　　│
;　　　　└→烈風拳A											AIレベル2以上	○

;------------------------------------------------------------------------------
;■5B始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**16)))					;□5B始動空中コンボルート

;〓5B→4C（発生9F）（対空）
trigger1 = stateno=210&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,19,17);◆15	;□5Bが4~5HIT目
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = fvar(26)=[0,115]
trigger1 = Ceil(helper(23000),fvar(9))>=-140
trigger1 = fvar(27):=235

;〓4C→3C（発生19F）（対空）
trigger2 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger2 = (var(50)&(Ceil(2.0**16)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(19)+const(size.ground.front)<=120
trigger2 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-105,-90]
trigger2 = fvar(27):=460

;〓4C→3C（発生24F）（対空）
trigger3 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger3 = Ceil(fvar(31))-(26)>=0||Ceil(fvar(31))=0			;□復帰判定
trigger3 = (var(50)&(Ceil(2.0**16)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = enemynear(var(16)),vel x<=0
trigger3 = helper(23000),var(28)+const(size.ground.front)=[75-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),160]
trigger3 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-120,-80]
trigger3 = fvar(27):=460

;〓4C→4B（発生18F）（対空）
trigger4 = stateno=235&&movehit>=1&&time>=9						;□2HIT目
trigger4 = (fvar(9)=[0.041,0.064])||(fvar(9)<0.065&&helper(21000),var(0)=[120,195])	;□重力補正（中）＆画面端付近
trigger4 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(18)+const(size.ground.front)<=185
trigger4 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger4 = fvar(27):=220

;〓4C→6C（発生19F）（対空）
trigger5 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger5 = fvar(9)>=0.065||(fvar(9)<0.065&&helper(21000),var(0)<=250)	;□重力補正（強）or画面端以外
trigger5 = (var(50)&(Ceil(2.0**13)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(19)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(19)+const(size.ground.front)<=250
trigger5 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-40+IfElse(helper(21000),var(0)<=180,0,-120),-10]
trigger5 = fvar(27):=240
trigger5 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓4C→地雷設置EX（対空）
trigger6 = var(59)>=3							;□AIレベル3以上
trigger6 = !NumHelper(1280)&&!NumHelper(1285)
trigger6 = power>=1000
trigger6 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger6 = Ceil(random/10%100)<=Ceil(power/1000.0)*15			;□確率判定
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = fvar(26)=[165,270]
trigger6 = fvar(27):=1202
trigger6 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓4C→烈風拳A（対空）
trigger7 = var(59)>=2							;□AIレベル2以上
trigger7 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger7 = Ceil(random/10%100)<=50					;□確率判定
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = fvar(26)=[165,270]
trigger7 = fvar(27):=1000
trigger7 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓4C→地雷設置A（対空）
trigger8 = var(59)>=2							;□AIレベル2以上
trigger8 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger8 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = fvar(26)=[165,270]
trigger8 = fvar(27):=1200
trigger8 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓4C→5C（発生12F）（対空）
trigger9 = stateno=235&&movehit>=1&&time>=9				;□2HIT目
trigger9 = fvar(9)<=0.040						;□重力補正（弱）
trigger9 = helper(21000),var(0)<=155					;□画面端から距離155以内
trigger9 = (var(50)&(Ceil(2.0**12)))=0
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = (helper(23000),var(12)+const(size.ground.front)=[100,130])||(helper(23000),var(12)+const(size.ground.front)=[0,60])
trigger9 = Ceil(helper(23000),fvar(12))+Ceil(fvar(36))=[-170,-60]
trigger9 = fvar(27):=230

;〓5C→4A（発生10F）（対空）
trigger10 = stateno=230&&movehit>=1&&time>=19
trigger10 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = (Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),60])||helper(21000),var(0)<=100
trigger10 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-60,-10]
trigger10 = fvar(27):=205

;〓5C→4B（発生18F）（対空）
trigger11 = stateno=230&&movehit>=1&&time>=19
trigger11 = helper(21000),var(0)=[80,185]				;□画面端付近
trigger11 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*18))*-1.0))=[60,185]
trigger11 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger11 = fvar(27):=220

;〓4A→4B（発生18F）（対空）
trigger12 = stateno=205&&movehit>=1&&time>=16				;□3HIT目
trigger12 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(18)+const(size.ground.front)<=165
trigger12 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-50]
trigger12 = fvar(27):=220

;〓4B→6C（発生15F）（対空）
trigger13 = stateno=220&&movehit>=1&&time>=27				;□4HIT目
trigger13 = (var(50)&(Ceil(2.0**13)))=0
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(15)+const(size.ground.front)>=70-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger13 = helper(23000),var(15)+const(size.ground.front)<=210
trigger13 = Ceil(helper(23000),fvar(15))+Ceil(fvar(36))=[-60+Ifelse(fvar(26)>=110,-40,0),-10]
trigger13 = fvar(27):=240
trigger13 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓3C→4A（発生10F）（対空）
trigger14 = stateno=460&&movehit>=1&&time>=34				;□3HIT目
trigger14 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=60||helper(21000),var(0)<=160
trigger14 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,0]
trigger14 = fvar(27):=205

;〓3C→5A（発生7F）（対空）
trigger15 = stateno=460&&movehit>=1&&time>=34				;□3HIT目
trigger15 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))<=50
trigger15 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-30,0]
trigger15 = fvar(27):=200

;〓5A→4B（発生18F）（対空）
trigger16 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger16 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = helper(23000),var(18)+const(size.ground.front)<=165
trigger16 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger16 = fvar(27):=220

IgnoreHitPause = 1


;■5B始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**16)))		;□5B始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓5B→4C
trigger1 = stateno=210&&movehit>=1&&time>=17
trigger1 = Ceil(fvar(27))=235
;〓4C→3C
trigger2 = stateno=235&&movehit>=1&&time>=9
trigger2 = Ceil(fvar(27))=460
;〓4C→3C
trigger3 = stateno=235&&movehit>=1&&time>=9
trigger3 = Ceil(fvar(27))=460
;〓4C→6C
trigger4 = stateno=235&&movehit>=1&&time>=9
trigger4 = Ceil(fvar(27))=240
;〓4C→4B
trigger5 = stateno=235&&movehit>=1&&time>=9
trigger5 = Ceil(fvar(27))=220
;〓4C→地雷設置EX
trigger6 = stateno=235&&movehit>=1&&time>=10
trigger6 = Ceil(fvar(27))=1202
;〓4C→烈風拳A
trigger7 = stateno=235&&movehit>=1&&time>=10
trigger7 = Ceil(fvar(27))=1000
;〓4C→地雷設置A
trigger8 = stateno=235&&movehit>=1&&time>=10
trigger8 = Ceil(fvar(27))=1200
;〓4C→5C
trigger9 = stateno=235&&movehit>=1&&time>=9
trigger9 = Ceil(fvar(27))=230
;〓5C→4A
trigger10 = stateno=230&&movehit>=1&&time>=19
trigger10 = Ceil(fvar(27))=205
;〓5C→4B
trigger11 = stateno=230&&movehit>=1&&time>=19
trigger11 = Ceil(fvar(27))=220
;〓4A→4B
trigger12 = stateno=205&&movehit>=1&&time>=12
trigger12 = Ceil(fvar(27))=220
;〓4B→6C
trigger13 = stateno=220&&movehit>=1&&time>=27
trigger13 = Ceil(fvar(27))=240
;〓3C→4A
trigger14 = stateno=460&&movehit>=1&&time>=33
trigger14 = Ceil(fvar(27))=205
;〓3C→5A
trigger15 = stateno=460&&movehit>=1&&time>=34
trigger15 = Ceil(fvar(27))=200
;〓5A→4B
trigger16 = stateno=200&&movehit>=1&&time>=9
trigger16 = Ceil(fvar(27))=220


;==============================================================================
;■4A始動空中コンボルート

;□4A┬→4B→6C					（6C始動空中コンボへ）		（画面端付近or低空時）		AIレベル3以上	○
;　　│
;　　├→3C┬→2C(70%)┬→4C			（4C始動空中コンボルート）					AIレベル4以上	○
;　　│　　│　　　　 ├→【NC】ダッシュ4C	（4C始動空中コンボルート）							○
;　　│　　│　　　 　└→【NC】ダッシュ5B	（5B始動空中コンボルート）							○
;　　│　　│
;　　│　　├→対空投げA			（ダウン追い討ちルート）	（画面中央or2C使用済み）	AIレベル3以下	○
;　　│　　├→4C				（4C始動空中コンボルート）	（画面中央）			AIレベル3以下	○
;　　│　　│
;　　│　　├→5A┬→4B→6C			（6C始動空中コンボルート）	（画面端）			AIレベル4以上	○
;　　│　　│　　└→対空投げA			（ダウン追い討ちルート）	（画面端）			AIレベル4以上	○
;　　│　　└→4B→6C				（6C始動空中コンボルート）	（画面端付近or4C2C使用済み）	AIレベル3以上	○
;　　│
;　　├→5C┬→4C				（4C始動空中コンボルート）					AIレベル3以上	○
;　　│　　├→対空投げA			（ダウン追い討ちルート）	（中距離高々度or4C使用済み）	AIレベル2以下	○
;　　│　　└→4B→6C				（6C始動空中コンボルート）	（画面端密着付近）		AIレベル3以上	○
;　　│
;　　└→対空投げAB				（ダウン追い討ちルート）	（画面中央or3C使用済み）	AIレベル2以下	○

;------------------------------------------------------------------------------
;■4A始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**17)))				;□4A始動空中コンボルート

;〓4A→4B（発生18F）（対空）
trigger1 = var(59)>=3						;□AIレベル3以上
trigger1 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger1 = helper(21000),var(0)<=190				;□画面端
trigger1 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger1 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = helper(23000),var(18)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(18)+const(size.ground.front)<=200
trigger1 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-60]
trigger1 = fvar(27):=220

;〓4A→対空投げB（発生18F）（対空）
trigger2 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>=4||(var(50)&(Ceil(2.0**16)))||time>=20||var(59)<=2 ;□AIレベル2以下or3C使用済み
trigger2 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger2 = Ceil(fvar(31))-(20)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger2 = helper(21000),var(0)>=125				;□画面端から125以上
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = helper(23000),var(18)+const(size.ground.front)>=100-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(18)+const(size.ground.front)<=150
trigger2 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-150,-115]
trigger2 = fvar(27):=1530
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4A→対空投げA（発生13F）（対空）
trigger3 = (var(50)&(Ceil(2.0**16)))||time>=20||fvar(9)>=0.070||var(59)<=2	;□AIレベル2以下or3C使用済み
trigger3 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger3 = Ceil(fvar(31))-(15)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(13)+const(size.ground.front)<=64
trigger3 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-110,-70]
trigger3 = fvar(27):=1500
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4A→対空投げA（発生16F）（対空）
trigger4 = (var(50)&(Ceil(2.0**16)))||time>=20||fvar(9)>=0.070||var(59)<=2	;□AIレベル2以下or3C使用済み
trigger4 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger4 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(16)+const(size.ground.front)>=3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(16)+const(size.ground.front)<=75
trigger4 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-120,-20]
trigger4 = fvar(27):=1500
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4A→3C（発生19F）（対空）
trigger5 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=4&&fvar(9)<=0.070	;□2C+JCの使用回数判定＆重力補正
trigger5 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger5 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger5 = (var(50)&(Ceil(2.0**16)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(19)+const(size.ground.front)=[0,115]
trigger5 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-95,-65]
trigger5 = fvar(27):=460

;〓4A→3C（発生24F）（対空）
trigger6 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=4&&fvar(9)<=0.070	;□2C+JCの使用回数判定＆重力補正
trigger6 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger6 = Ceil(fvar(31))-(26)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger6 = (var(50)&(Ceil(2.0**16)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = helper(23000),var(24)+const(size.ground.front)=[110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),135]
trigger6 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160,-80]
trigger6 = fvar(27):=460

;〓4A→3C（発生28F）（対空）
trigger7 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=4&&fvar(9)<=0.070	;□2C+JCの使用回数判定＆重力補正
trigger7 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger7 = Ceil(fvar(31))-(30)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger7 = (var(50)&(Ceil(2.0**16)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(28)+const(size.ground.front)=[130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),190]
trigger7 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-160,-10]
trigger7 = fvar(27):=460

;〓4A→5C（発生12F）（対空）
trigger8 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger8 = (var(50)&(Ceil(2.0**12)))=0
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(12)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger8 = helper(23000),var(12)+const(size.ground.front)<=30
trigger8 = Ceil(helper(23000),fvar(12))+Ceil(fvar(36))=[-165,-140]
trigger8 = fvar(27):=230

;〓4A→5C（発生18F）（対空）
trigger9 = stateno=205&&movehit>=1&&time>=12			;□4Aが3HIT目までにヒット中
trigger9 = (var(50)&(Ceil(2.0**12)))=0
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = helper(23000),var(18)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger9 = helper(23000),var(18)+const(size.ground.front)<=70
trigger9 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-140,-120]
trigger9 = fvar(27):=230

;〓3C→4B（発生18F）（対空）
trigger10 = (var(50)&(Ceil(2.0**14)|Ceil(2.0**15)))||var(59)>=3	;□AIレベル3以上or4C2C使用済み
trigger10 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger10 = NumTarget(461)>0					;□3HIT目命中
trigger10 = (helper(21000),var(0)=[145,190])||(var(50)&(Ceil(2.0**14)|Ceil(2.0**15)))	;□画面端付近or4C2C使用済み
trigger10 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = fvar(26)=[50,200]
trigger10 = enemynear(var(16)),pos y<=-80
trigger10 = fvar(27):=220

;〓3C→2C（発生17F）（対空）
trigger11 = var(59)>=4						;□AIレベル4以上
trigger11 = fvar(9)<0.070					;□重力補正
trigger11 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger11 = NumTarget(461)>0					;□3HIT目命中
trigger11 = enemynear(var(16)),Const(size.mid.pos.y)>=-65	;□座高判定
trigger11 = Ceil(random/10%100)<=70||Ceil(fvar(26))>=110||helper(21000),var(0)<=145	;□確率距離画面端判定
trigger11 = (var(50)&(Ceil(2.0**15)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = fvar(26)=[0,150]
trigger11 = enemynear(var(16)),pos y<=-100
trigger11 = fvar(27):=440

;〓3C→対空投げA（発生13F）（対空）
trigger12 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger12 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*13))*-1.0))=[35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),64]
trigger12 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-110,-70]
trigger12 = fvar(27):=1500
trigger12 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生16F）（対空）
trigger13 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger13 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger13 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-120,-20]
trigger13 = fvar(27):=1500
trigger13 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生9F）（対空）
trigger14 = (var(50)&(Ceil(2.0**15)))||var(59)<=3		;□2C使用済みorAIレベル3以下
trigger14 = stateno=460&&movehit>=1&&time=34			;□3HIT目
trigger14 = (var(50)&(Ceil(2.0**14)))=0
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = fvar(26)>=145
trigger14 = fvar(27):=235
trigger14 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生4F）（対空）
trigger15 = var(59)>=4						;□AIレベル4以上
trigger15 = stateno=460&&movehit>=1&&time>=34			;□3HIT目（ヒットストップ後）
trigger15 = helper(21000),var(0)>=160||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))	;□画面端から距離160以上or4B使用済み
trigger15 = (var(50)&(Ceil(2.0**14)))=0
trigger15 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger15 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40
trigger15 = Ceil(helper(23000),fvar(4))>=-5
trigger15 = fvar(27):=235
trigger15 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生7F）（対空）
trigger16 = var(59)>=4						;□AIレベル4以上
trigger16 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger16 = helper(21000),var(0)>=160||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))	;□画面端から距離160以上or4B使用済み
trigger16 = (var(50)&(Ceil(2.0**14)))=0
trigger16 = Ceil(fvar(31))-(9)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger16 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger16 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger16 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85]
trigger16 = Ceil(helper(23000),fvar(7))>=-15
trigger16 = fvar(27):=235
trigger16 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生7F）（対空）
trigger17 = var(59)>=4						;□AIレベル4以上
trigger17 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger17 = helper(21000),var(0)>=160||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))	;□画面端から距離160以上or4B使用済み
trigger17 = (var(50)&(Ceil(2.0**14)))=0
trigger17 = Ceil(fvar(31))-(9)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger17 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger17 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger17 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger17 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger17 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85])
trigger17 = !(Ceil(helper(23000),fvar(7))>=-15)
trigger17 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[100,125]
trigger17 = Ceil(helper(23000),fvar(7))>=-40
trigger17 = fvar(27):=235
trigger17 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→5A（発生7F）（対空）
trigger18 = var(59)>=4						;□AIレベル4以上
trigger18 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger18 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger18 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger18 = helper(21000),var(0)<=170				;□画面端から距離170以内
trigger18 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))<=50
trigger18 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-30,0]
trigger18 = fvar(27):=200

;〓5A→4B（発生18F）（対空）
trigger19 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger19 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger19 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger19 = helper(23000),var(18)+const(size.ground.front)<=165
trigger19 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger19 = fvar(27):=220

;〓5A→対空投げA（発生13F）（対空）
trigger28 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger28 = Ceil(fvar(31))-(15)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger28 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger28 = helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger28 = helper(23000),var(13)+const(size.ground.front)<=64||helper(21000),var(0)<=120
trigger28 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120,-70]
trigger28 = fvar(27):=1500
trigger28 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→対空投げA（発生16F）（対空）
trigger29 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger29 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger29 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger29 = helper(23000),var(16)+const(size.ground.front)>=3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger29 = helper(23000),var(16)+const(size.ground.front)<=75||helper(21000),var(0)<=120
trigger29 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-130,-20]
trigger29 = fvar(27):=1500
trigger29 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger20 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger20 = helper(21000),var(0)<=150				;□画面端から距離150以内
trigger20 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger20 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger20 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger20 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger20 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),100]
trigger20 = Ceil(helper(23000),fvar(8))=[-60,20]		;◆範囲拡大実験中
trigger20 = fvar(27):=210
trigger20 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4C（発生4F）（対空）
trigger21 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger21 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger21 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger21 = (var(50)&(Ceil(2.0**14)))=0
trigger21 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger21 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger21 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger21 = helper(23000),var(4)+const(size.ground.front)-(vel x*(0.85-(0.85**5.0))/0.15)=[25,50]
trigger21 = Ceil(helper(23000),fvar(4))>=-20
trigger21 = fvar(27):=235
trigger21 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→6C（発生15F）（対空）
trigger22 = stateno=220&&movehit>=1&&time>=27			;□4HIT目
trigger22 = (var(50)&(Ceil(2.0**13)))=0
trigger22 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger22 = helper(23000),var(15)+const(size.ground.front)>=70-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger22 = helper(23000),var(15)+const(size.ground.front)<=210
trigger22 = Ceil(helper(23000),fvar(15))+Ceil(fvar(36))=[-60+Ifelse(fvar(26)>=110,-40,0),-10]
trigger22 = fvar(27):=240
trigger22 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生4F）（対空）
trigger23 = var(59)>=4						;□AIレベル4以上
trigger23 = stateno=230&&movehit>=1&&time>=23
trigger23 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger23 = (var(50)&(Ceil(2.0**14)))=0
trigger23 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger23 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger23 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40
trigger23 = Ceil(helper(23000),fvar(4))>=-5
trigger23 = fvar(27):=235
trigger23 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生7F）（対空）
trigger24 = var(59)>=4						;□AIレベル4以上
trigger24 = stateno=230&&movehit>=1&&time>=23
trigger24 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger24 = (var(50)&(Ceil(2.0**14)))=0
trigger24 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger24 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger24 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger24 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger24 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85]
trigger24 = Ceil(helper(23000),fvar(7))>=-15
trigger24 = fvar(27):=235
trigger24 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生7F）（対空）
trigger25 = var(59)>=4						;□AIレベル4以上
trigger25 = stateno=230&&movehit>=1&&time>=23
trigger25 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger25 = (var(50)&(Ceil(2.0**14)))=0
trigger25 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger25 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger25 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger25 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger25 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85])
trigger25 = !(Ceil(helper(23000),fvar(7))>=-15)
trigger25 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[100,125]
trigger25 = Ceil(helper(23000),fvar(7))>=-40
trigger25 = fvar(27):=235
trigger25 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→対空投げA（発生16F）（対空）
trigger26 = (var(50)&(Ceil(2.0**14)))||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))||var(59)<=2	;□AIレベル2以下or4C4B使用済み
trigger26 = stateno=230&&movehit>=1&&time>=19			;□3HIT目
trigger26 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger26 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger26 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-110+Ceil(fvar(36)),-35]
trigger26 = fvar(27):=1500
trigger26 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4B（発生18F）（対空）
trigger27 = var(59)>=3						;□AIレベル3以上
trigger27 = stateno=230&&movehit>=1&&time>=19
trigger27 = helper(21000),var(0)<=190				;□画面端
trigger27 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger27 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger27 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*18))*-1.0))=[20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),185]
trigger27 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger27 = fvar(27):=220

IgnoreHitPause = 1


;■4A始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**17)))		;□4A始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓4A→4B
trigger1 = stateno=205&&movehit>=1&&time>=12
trigger1 = Ceil(fvar(27))=220
;〓4A→対空投げB
trigger2 = stateno=205&&movehit>=1&&time>=12
trigger2 = Ceil(fvar(27))=1530
;〓4A→対空投げA
trigger3 = stateno=205&&movehit>=1&&time>=12
trigger3 = Ceil(fvar(27))=1500
;〓4A→対空投げA
trigger4 = stateno=205&&movehit>=1&&time>=12
trigger4 = Ceil(fvar(27))=1500
;〓4A→3C
trigger5 = stateno=205&&movehit>=1&&time>=12
trigger5 = Ceil(fvar(27))=460
;〓4A→3C
trigger6 = stateno=205&&movehit>=1&&time>=12
trigger6 = Ceil(fvar(27))=460
;〓4A→3C
trigger7 = stateno=205&&movehit>=1&&time>=12
trigger7 = Ceil(fvar(27))=460
;〓4A→5C
trigger8 = stateno=205&&movehit>=1&&time>=12
trigger8 = Ceil(fvar(27))=230
;〓4A→5C
trigger9 = stateno=205&&movehit>=1&&time>=12
trigger9 = Ceil(fvar(27))=230
;〓3C→4B
trigger10 = stateno=460&&movehit>=1&&time=33
trigger10 = Ceil(fvar(27))=220
;〓3C→2C
trigger11 = stateno=460&&movehit>=1&&time=33
trigger11 = Ceil(fvar(27))=440
;〓3C→対空投げA
trigger12 = stateno=460&&movehit>=1&&time>=33
trigger12 = Ceil(fvar(27))=1500
;〓3C→対空投げA
trigger13 = stateno=460&&movehit>=1&&time>=33
trigger13 = Ceil(fvar(27))=1500
;〓3C→4C
trigger14 = stateno=460&&movehit>=1&&time>=33
trigger14 = Ceil(fvar(27))=235
;〓3C→4C
trigger15 = stateno=460&&movehit>=1&&time>=33
trigger15 = Ceil(fvar(27))=235
;〓3C→4C
trigger16 = stateno=460&&movehit>=1&&time>=33
trigger16 = Ceil(fvar(27))=235
;〓3C→4C
trigger17 = stateno=460&&movehit>=1&&time>=33
trigger17 = Ceil(fvar(27))=235
;〓3C→5A
trigger18 = stateno=460&&movehit>=1&&time>=34
trigger18 = Ceil(fvar(27))=200
;〓5A→4B
trigger19 = stateno=200&&movehit>=1&&time>=9
trigger19 = Ceil(fvar(27))=220
;〓5A→対空投げA
trigger28 = stateno=200&&movehit>=1&&time>=8
trigger28 = Ceil(fvar(27))=1500
;〓5A→対空投げA
trigger29 = stateno=200&&movehit>=1&&time>=8
trigger29 = Ceil(fvar(27))=1500
;〓ダッシュ→5B
trigger20 = (stateno=100&&time>=8)||stateno=101
trigger20 = Ceil(fvar(27))=210
;〓ダッシュ→4C
trigger21 = (stateno=100&&time>=4)||stateno=101
trigger21 = Ceil(fvar(27))=235
;〓4B→6C
trigger22 = stateno=220&&movehit>=1&&time>=27
trigger22 = Ceil(fvar(27))=240
;〓5C→4C
trigger23 = stateno=230&&movehit>=1&&time>=23
trigger23 = Ceil(fvar(27))=235
;〓5C→4C
trigger24 = stateno=230&&movehit>=1&&time>=23
trigger24 = Ceil(fvar(27))=235
;〓5C→4C
trigger25 = stateno=230&&movehit>=1&&time>=23
trigger25 = Ceil(fvar(27))=235
;〓5C→対空投げA
trigger26 = stateno=230&&movehit>=1&&time>=19
trigger26 = Ceil(fvar(27))=1500
;〓5C→4B
trigger27 = stateno=230&&movehit>=1&&time>=1
trigger27 = Ceil(fvar(27))=220


;==============================================================================
;■6C始動空中コンボルート

;□6C┬【JC】┬→空中ダッシュJC					（JC始動空中コンボルート）（画面端）	AIレベル3以上	○
;　　│　　　├→JB先端→空中ダッシュJ2B→JC			（JC始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　├→JA→J2B→JC					（JC始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　└→空中ダッシュJB先端【着地】→ダッシュ┬→5B→4C	（4C始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│　　　　　　　　　　　　　　　　　　　　　　　└→4B	（4B始動空中コンボルート）（画面端付近）AIレベル3以上	○
;　　│
;　　├┬→5A┬┬→3C→対空投げA	（ダウン追い討ちルート）（画面端）				AIレベル4以上	○
;　　│└→4A┘└→対空投げA		（ダウン追い討ちルート）（画面端）				AIレベル4以上	○
;　　│
;　　├→対空投げA			（ダウン追い討ちルート）（画面端）2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下　○
;　　├→対空投げB			（ダウン追い討ちルート）（画面端）2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下　○
;　　│
;　　├→ぱっちんB						（画面端付近）			　　AI低レベル時確率UP　○
;　　├→ぱっちんEX						（画面端付近）						○
;　　├→全地面投げ						（画面端付近）						○
;　　├→4C							（JC始動空中コンボルート）				○
;　　│
;　　├→CCC							（画面中央）			　　AIレベル3以上	○
;　　├→地雷設置EX						（画面中央）						○
;　　├→地雷設置A						（画面中央）						○
;　　└→烈風拳AB						（画面中央）						○


;------------------------------------------------------------------------------
;■6C始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**18)))				;□6C始動空中コンボルート

;------------------------------------------------------------------------------

;〓6C→ぱっちんB
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
trigger1 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=1&&fvar(9)<=0.025	;□2C+JCの使用回数判定＆重力補正
trigger1 = stateno=240&&movehit>=1&&time=32				;□5HIT目
trigger1 = Ceil(random/10%100)<=IfElse(var(59)<=3,(5-var(59))*5,0)	;□確率判定
trigger1 = helper(21000),var(0)<=200					;□画面端から距離200以内
trigger1 = enemynear(var(16)),Const(size.mid.pos.y)>=-60		;□P2座高判定
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = helper(23000),var(38)+const(size.ground.front)>=140-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(38)+const(size.ground.front)<=170
trigger1 = Ceil(helper(23000),fvar(38))<=-5
trigger1 = fvar(27):=1401
trigger1 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓6C→全地面投げ
trigger2 = (var(58)&(Ceil(2.0**28)))
trigger2 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=1&&fvar(9)<=0.025	;□2C+JCの使用回数判定＆重力補正
trigger2 = stateno=240&&movehit>=1&&time>=32				;□5HIT目
trigger2 = (power=PowerMax||power>=3000)&&fvar(20)>=600
trigger2 = Ceil((Life/LifeMax)*100)<=50					;□体力50%以下
trigger2 = enemynear(var(16)),power>=2000				;□P2多ゲージ時
trigger2 = Ceil(random/10%100)<=IfElse(var(59)<=4,(5-var(59))*5,0)	;□確率判定
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = fvar(37):=enemynear(var(16)),GetHitVar(yaccel)
trigger2 = fvar(37)!=0
trigger2 = fvar(37):=Ceil(Abs((enemynear(var(16)),GetHitVar(yvel)/fvar(37)*2+1)**2.0/4.0-enemynear(var(16)),pos y/fvar(37)*2.0)**0.5-(enemynear(var(16)),GetHitVar(yvel)/fvar(37)*2.0+1.0)/2.0-1.0)
trigger2 = fvar(37):=IfElse(Ceil(fvar(37))<=39,Ceil(fvar(37)),39)
trigger2 = helper(23000),var(Ceil(fvar(37)))+const(size.ground.front)<=(50+((Ceil(fvar(37))+1+30)/3-16)*15)+enemynear(var(16)),const(size.air.front)
trigger2 = Ceil(helper(23000),fvar(Ceil(fvar(37))))<=-20
trigger2 = fvar(27):=1800
trigger2 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓6C→ジャンプ（対空）（ノーマルモード以上）
trigger3 = var(59)>=3							;□AIレベル3以上
trigger3 = Ceil(var(52)/100%10)>=1
trigger3 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=2||fvar(9)<=0.070	;□2C+JCの使用回数判定＆重力補正
trigger3 = stateno=240&&movehit>=1&&time=28				;□4HIT目
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = (fvar(26)>=140&&helper(21000),var(0)=[190,250])||helper(21000),var(0)=[250,300]	;□画面端から距離190~250
trigger3 = fvar(27):=42
trigger3 = var(47):=Ceil(2.0**15)

;〓6C→ジャンプ（対空）（ノーマルモード以上）
trigger4 = var(59)>=3							;□AIレベル3以上
trigger4 = Ceil(var(52)/100%10)>=1
trigger4 = Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)<=2||fvar(9)<=0.070	;□2C+JCの使用回数判定＆重力補正
trigger4 = stateno=240&&movehit>=1&&time=32				;□5HIT目
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = (fvar(26)<=165&&helper(21000),var(0)<=250)||helper(21000),var(0)<=200	;□画面端から距離250以内
trigger4 = fvar(27):=42
trigger4 = var(47):=Ceil(2.0**15)

;〓ジャンプ→空中前ダッシュ（最速前ダッシュ）
trigger5 = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
trigger5 = stateno=50&&pos y<=-20&&time>=3
trigger5 = IfElse(fvar(9)<=0.045,time>=8,time>=3)			;□重力補正ディレイ
trigger5 = vel x>0							;□前ジャンプ中
trigger5 = (var(47)&(Ceil(2.0**17)))=0					;□ハイジャンプ中NG
trigger5 = helper(21000),var(0)<=150||(helper(21000),var(0)<=190&&enemynear(var(16)),vel y>0)
trigger5 = statetype=A&&enemynear(var(16)),statetype=A
trigger5 = fvar(27):=110

;〓空中前ダッシュ→JC（対空）
trigger6 = time>=IfElse(Ceil(var(52)/100%10)>=2,6,8)||pos y<=IfElse(Ceil(var(52)/100%10)>=2,-50,-60)||stateno=111
trigger6 = ((stateno=110&&time>=3)||stateno=111)&&vel x>0		;□前ダッシュ中
trigger6 = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
trigger6 = helper(21000),var(0)<=190
trigger6 = statetype=A&&enemynear(var(16)),statetype=A
trigger6 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=85)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=-30-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=85
trigger6 = Ceil(helper(23000),fvar(5))>=-80
trigger6 = fvar(27):=650
trigger6 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓ジャンプ→JB先端（対空）
trigger7 = stateno=50&&pos y<=-20&&time>=3
trigger7 = statetype=A&&vel x>0						;□前ジャンプ中
trigger7 = helper(21000),var(0)>=180
trigger7 = statetype=A&&enemynear(var(16)),statetype=A
trigger7 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定
trigger7 = helper(23000),var(20)+const(size.air.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger7 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=150
trigger7 = Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[-60,10]
trigger7 = fvar(27):=640

;〓ジャンプ→空中前ダッシュ（JB先端当てダッシュ）
trigger8 = Ceil(var(52)/100%10)>=1
trigger8 = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
trigger8 = stateno=50&&pos y<=-20&&time>=5
trigger8 = vel x>0							;□前ジャンプ中
trigger8 = (var(47)&(Ceil(2.0**17)))=0					;□ハイジャンプ中NG
trigger8 = helper(21000),var(0)>=220
trigger8 = statetype=A&&enemynear(var(16)),statetype=A
trigger8 = fvar(27):=110

;〓空中前ダッシュ→JB先端（対空）
trigger9 = time>=IfElse(Ceil(var(52)/100%10)>=2,6,8)||pos y<=IfElse(Ceil(var(52)/100%10)>=2,-50,-60)
trigger9 = ((stateno=110&&time>=2)||stateno=111)&&vel x>0			;□前ダッシュ中
trigger9 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定
trigger9 = helper(21000),var(0)>=180
trigger9 = statetype=A&&enemynear(var(16)),statetype=A
trigger9 = helper(23000),var(20)+const(size.air.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger9 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=150
trigger9 = Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[-60,10+30]
trigger9 = fvar(27):=640

;〓JB先端→空中前ダッシュ
trigger10 = NumTarget(642)>0
trigger10 = Target(642),Time>=0
trigger10 = stateno=640&&movehit>=1&&movehit<=4
trigger10 = AnimElemTime(9)>=1&&AnimElemTime(10)<0
trigger10 = statetype=A&&enemynear(var(16)),statetype=A
trigger10 = Ceil(pos y+(vel y*2)+(const(movement.yaccel)*2*(2+1)/2.0))<0	;□着地F判定
trigger10 = helper(21000),var(0)<=220						;□画面端から距離220以内
trigger10 = fvar(27):=110

;〓空中前ダッシュ→J2B（対空）
trigger11 = Ceil(helper(23000),fvar(17))<=-100					;□高空時
trigger11 = time>=IfElse(Ceil(var(52)/100%10)>=2,6,8)||pos y<=IfElse(Ceil(var(52)/100%10)>=2,-50,-60)
trigger11 = ((stateno=110&&time>=3)||stateno=111)&&vel x>0			;□前ダッシュ中
trigger11 = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))<0	;□着地F判定
trigger11 = statetype=A&&enemynear(var(16)),statetype=A
trigger11 = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=100)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=75
trigger11 = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=100
trigger11 = Ceil(helper(23000),fvar(17))+Ceil(fvar(36))-Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[-145,-40]
trigger11 = fvar(27):=645

;〓J2B→JC（対空）
trigger12 = stateno=645&&((Ceil(var(52)/100%10)>=2&&movecontact)||movehit)&&time>11
trigger12 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=enemynear(var(16)),const(size.air.front)&&Ceil(enemynear(var(16)),facing=facing*-1)	;□正面着地判断（めくり時出さない）
trigger12 = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
trigger12 = statetype=A&&enemynear(var(16)),statetype=A
trigger12 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=100)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=10-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger12 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=85
trigger12 = fvar(27):=650
trigger12 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→CCC
trigger13 = var(59)>=3								;□AIレベル4以上
trigger13 = (var(57)&(Ceil(2.0**27)))
trigger13 = Ceil(var(53)/1000%10)>=1
trigger13 = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)		;□CCC攻撃＆地面＆触手ヘルパー
trigger13 = Ceil(var(54)%10)>=7							;□7冊消費
trigger13 = stateno=240&&movehit>=1&&time=32					;□5HIT目
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = helper(21000),var(0)>=160						;□画面前端以外
trigger13 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))*2.0)<=Life/(LifeMax/10.0))
trigger13 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=5.0)
trigger13 = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=9||((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2
trigger13 = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
trigger13 = fvar(27):=3400
trigger13 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→地雷設置EX
trigger14 = !NumHelper(1280)&&!NumHelper(1285)
trigger14 = power>=1000
trigger14 = stateno=240&&movehit>=1&&time=33					;□5HIT目終了後
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = helper(21000),var(0)=[235,370]					;□画面端から中央付近まで
trigger14 = Ceil(random/10%100)<=Ceil(power/1000.0)*15				;□確率判定
trigger14 = fvar(27):=1202
trigger14 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→地雷設置A（対空）
trigger15 = Ceil(var(52)/100%10)>=1
trigger15 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger15 = stateno=240&&movehit>=1&&time=33					;□5HIT目終了後
trigger15 = Ceil(random/10%100)<=10						;□確率判定
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = fvar(26)>=165
trigger15 = fvar(27):=1200
trigger15 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→烈風拳A（対空）
trigger16 = Ceil(var(52)/100%10)>=1
trigger16 = stateno=240&&movehit>=1&&time>=37					;□5HIT目終了後
trigger16 = Ceil(random/10%100)<=IfElse(helper(21000),var(0)>=420,70,40)	;□確率判定
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = fvar(26)>=165
trigger16 = fvar(27):=1000
trigger16 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→烈風拳B（対空）
trigger17 = Ceil(var(52)/100%10)>=1
trigger17 = stateno=240&&movehit>=1&&time>=37					;□5HIT目終了後
trigger17 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger17 = fvar(26)>=165
trigger17 = fvar(27):=1001
trigger17 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→4A（発生10F）（対空）
trigger18 = var(59)>=4								;□AIレベル4以上
trigger18 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)	;□2C+JCの使用回数判定＆重力補正
trigger18 = stateno=240&&movehit>=1
trigger18 = IfElse(helper(21000),var(0)<=90,time>=32,time>=28)			;□3~4HIT目
trigger18 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger18 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger18 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger18 = helper(23000),var(10)+const(size.ground.front)<=80
trigger18 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-110,-30]
trigger18 = fvar(27):=205

;〓6C→5A（発生7F）（対空）
trigger19 = var(59)>=4								;□AIレベル4以上
trigger19 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)	;□2C+JCの使用回数判定＆重力補正
trigger19 = stateno=240&&movehit>=1
trigger19 = IfElse(helper(21000),var(0)<=90,time>=32,time>=28)			;□3~4HIT目
trigger19 = IfElse(stateno=200,1,(var(50)&(1))=0)
trigger19 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger19 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger19 = helper(23000),var(7)+const(size.ground.front)>=25-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger19 = helper(23000),var(7)+const(size.ground.front)<=105||helper(21000),var(0)<=110
trigger19 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-90,-45]
trigger19 = fvar(27):=200

;〓6C→対空投げA（発生13F）（対空）
trigger20 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0||var(59)<=2	;□2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下
trigger20 = stateno=240&&movehit>=1
trigger20 = IfElse(helper(21000),var(0)<=90,time>=32,time>=28)			;□3~4HIT目
trigger20 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger20 = helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger20 = helper(23000),var(13)+const(size.ground.front)<=64||helper(21000),var(0)<=90
trigger20 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120+Ceil(fvar(36)),-70-Ceil(fvar(36))]
trigger20 = fvar(27):=1500
trigger20 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→対空投げA（発生16F）（対空）
trigger21 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0||var(59)<=2	;□2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下
trigger21 = stateno=240&&movehit>=1
trigger21 = IfElse(helper(21000),var(0)<=90,time>=32,time>=28)			;□3~4HIT目
trigger21 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger21 = helper(23000),var(16)+const(size.ground.front)>=3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger21 = helper(23000),var(16)+const(size.ground.front)<=75
trigger21 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-130+Ceil(fvar(36)),-20]
trigger21 = fvar(27):=1500
trigger21 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→対空投げB（発生18F）（対空）
trigger22 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0||var(59)<=2	;□2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下
trigger22 = stateno=240&&movehit>=1&&time>=32					;□4HIT目
trigger22 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger22 = helper(21000),var(0)>=125						;□画面端から125以上
trigger22 = helper(23000),var(18)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger22 = helper(23000),var(18)+const(size.ground.front)<=150
trigger22 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-115-Ceil(fvar(36))]
trigger22 = fvar(27):=1530
trigger22 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→対空投げB（発生24F）（対空）
trigger23 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0||var(59)<=2	;□2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下
trigger23 = stateno=240&&movehit>=1&&time>=32					;□4HIT目
trigger23 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger23 = helper(21000),var(0)>=125						;□画面端から125以上
trigger23 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger23 = helper(23000),var(24)+const(size.ground.front)<=185
trigger23 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger23 = fvar(27):=1530
trigger23 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

trigger24 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0||var(59)<=2	;□2C+JCの使用回数判定＆重力補正or弱体化モードorAIレベル2以下
trigger24 = stateno=240&&movehit>=1&&time>=32					;□4HIT目
trigger24 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger24 = helper(21000),var(0)>=125						;□画面端から125以上
trigger24 = helper(23000),var(24)+const(size.ground.front)>=130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger24 = helper(23000),var(24)+const(size.ground.front)<=150
trigger24 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]
trigger24 = fvar(27):=1530
trigger24 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→ぱっちんEX（発生18F）（対空）
trigger25 = stateno=240&&movehit>=1&&time>=32					;□5HIT目
trigger25 = power>3000
trigger25 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger25 = IfElse(Ceil(var(52)/100%10)=0,helper(21000),var(0)<=290,(helper(21000),var(0)=[235,290]))	;□画面端から距離290以内
trigger25 = helper(23000),var(18)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger25 = helper(23000),var(18)+const(size.ground.front)<=220
trigger25 = fvar(27):=1402
trigger25 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓6C→4C（発生9F）（対空）
trigger26 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)||Ceil(var(52)/100%10)=0	;□2C+JCの使用回数判定＆重力補正or弱体化モード
trigger26 = stateno=240&&movehit>=1
trigger26 = IfElse(helper(21000),var(0)<=90,time>=32,time>=28)			;□3~4HIT目
trigger26 = (var(50)&(Ceil(2.0**14)))=0
trigger26 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger26 = fvar(26)=[80,115]
trigger26 = Ceil(helper(23000),fvar(9))>=-60
trigger26 = fvar(27):=235
trigger26 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓4A→3C（発生19F）（対空）
trigger27 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))				;□4B使用済み
trigger27 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger27 = stateno=205&&movehit>=1&&time>=12					;□3HIT目
trigger27 = (var(50)&(Ceil(2.0**16)))=0
trigger27 = enemynear(var(16)),pos y<=-80
trigger27 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger27 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger27 = helper(23000),var(19)+const(size.ground.front)<=210
trigger27 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-160,-60]
trigger27 = fvar(27):=460

;〓5A→3C（発生19F）（対空）
trigger28 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger28 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger28 = (var(50)&(Ceil(2.0**16)))=0
trigger28 = enemynear(var(16)),pos y<=-80
trigger28 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger28 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger28 = helper(23000),var(19)+const(size.ground.front)<=210
trigger28 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-160,-60]
trigger28 = fvar(27):=460

;〓4A→対空投げA（発生16F）（対空）
trigger29 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger29 = stateno=205&&movehit>=1&&time>=12					;□3HIT目

trigger29 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger29 = (Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75])
trigger29 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-80,-20]
trigger29 = fvar(27):=1500
trigger29 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓5A→対空投げA（発生16F）（対空）
trigger30 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger30 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger30 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger30 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger30 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-80,-20]
trigger30 = fvar(27):=1500
trigger30 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生13F）（対空）
trigger31 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger31 = stateno=460&&movehit>=1&&time=33					;□3HIT目
trigger31 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger31 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*13))*-1.0))=[35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),64]
trigger31 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-110,-70]
trigger31 = fvar(27):=1500
trigger31 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生16F）（対空）
trigger32 = (Ceil(var(9)%10)+(Ceil(var(9)/100%10)*1.5)>2&&fvar(9)>0.070)
trigger32 = stateno=460&&movehit>=1&&time=33					;□3HIT目
trigger32 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger32 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger32 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-120,-15]		;◆調整(-20→-15)
trigger32 = fvar(27):=1500
trigger32 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓ジャンプ→JA（9F目持続当て）（空対空）（ノーマルモード以上）
trigger33 = var(59)>=3								;□AIレベル3以上
trigger33 = Ceil(var(52)/100%10)>=1
trigger33 = stateno=50&&time>=1							;□ジャンプ中
trigger33 = (var(50)&(Ceil(2.0**19)))=0
trigger33 = statetype=A&&enemynear(var(16)),statetype=A
trigger33 = helper(21000),var(0)<=130						;□画面端から130以内
trigger33 = helper(23000),var(9)+const(size.air.front)-(vel x*9)<=70
trigger33 = Ceil(Ceil(helper(23000),fvar(9))+Ceil(fvar(36))-Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0)))=[-60,20]
trigger33 = fvar(27):=630

;〓ジャンプ→JA（11F目持続当て）（空対空）（弱体化モード）
trigger34 = var(59)>=3								;□AIレベル3以上
trigger34 = Ceil(var(52)/100%10)=0
trigger34 = stateno=50&&time>=1							;□ジャンプ中
trigger34 = (var(50)&(Ceil(2.0**19)))=0
trigger34 = statetype=A&&enemynear(var(16)),statetype=A
trigger34 = helper(21000),var(0)<=130						;□画面端から130以内
trigger34 = helper(23000),var(11)+const(size.air.front)-(vel x*11)<=70
trigger34 = Ceil(Ceil(helper(23000),fvar(11))+Ceil(fvar(36))-Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0)))=[-60,20]
trigger34 = fvar(27):=630

;〓J2B（空対空）
trigger35 = var(59)>=3								;□AIレベル3以上
trigger35 = stateno=630&&movehit>=1&&time=11					;□2HIT目
trigger35 = vel y<0								;□上昇中
trigger35 = statetype=A&&enemynear(var(16)),statetype=A
trigger35 = fvar(27):=645

;〓着地→ダッシュ（JBヒット時）
trigger36 = var(59)>=3								;□AIレベル3以上
trigger36 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger36 = NumTarget(642)>0							;□JB先端ヒット中
trigger36 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger36 = fvar(26)=[0,190]
trigger36 = var(47):=Ceil(2.0**10)
trigger36 = fvar(27):=100

;〓ダッシュ→5B（発生8F）（対空）
trigger37 = var(59)>=3								;□AIレベル3以上
trigger37 = (stateno=100&&time>=16)||stateno=101				;□ダッシュ中
trigger37 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger37 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger37 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=100||(stateno=101&&time>=1)
trigger37 = Ceil(helper(23000),fvar(8))<=-35||(stateno=101&&time>=1)
trigger37 = fvar(27):=210

;〓ダッシュ→4B（発生18F）（対空）（画面端高重力用）
trigger38 = var(59)>=3								;□AIレベル3以上
trigger38 = (stateno=100&&time>=8)||stateno=101
trigger38 = helper(21000),var(0)<=190						;□画面端付近
trigger38 = IfElse(helper(21000),var(0)<=90&&fvar(9)<=0.050,time>=10-Ceil(var(9)/100%10),time>=5-Ceil(var(9)/100%10))	;□ディレイ
trigger38 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger38 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger38 = helper(23000),var(18)+const(size.ground.front)-(vel x*(0.85-(0.85**19.0))/0.15)<=90
trigger38 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-85,-50-Ceil(fvar(36))]
trigger38 = fvar(27):=220
trigger38 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓5B→4C（発生7F）（対空）
trigger39 = stateno=210&&movehit>=1&&time>=16					;□5Bが4HIT目
trigger39 = (var(50)&(Ceil(2.0**14)))=0
trigger39 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger39 = fvar(26)=[0,80]
trigger39 = Ceil(helper(23000),fvar(7))>=-10
trigger39 = fvar(27):=235
trigger39 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

;〓5B→4C（発生9F）（対空）
trigger40 = stateno=210&&movehit>=1&&time>=16					;□5Bが4HIT目
trigger40 = (var(50)&(Ceil(2.0**14)))=0
trigger40 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger40 = fvar(26)=[80,115]
trigger40 = Ceil(helper(23000),fvar(9))>=-10
trigger40 = fvar(27):=235
trigger40 = var(48):=(var(48)|1)-(1)||1						;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■6C始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**18)))		;□6C始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = enemynear(var(16)),statetype=A

;〓6C→ぱっちんB
trigger1 = stateno=240&&movehit>=1&&time=32
trigger1 = statetype=S||statetype=C
trigger1 = Ceil(fvar(27))=1401
;〓6C→全地面投げ
trigger2 = stateno=240&&movehit>=1&&time>=32
trigger2 = statetype=S||statetype=C
trigger2 = Ceil(fvar(27))=1800
;〓6C→ジャンプ
trigger3 = stateno=240&&movehit>=1&&time>=28
trigger3 = statetype=S||statetype=C
trigger3 = Ceil(fvar(27))=42
;〓6C→ジャンプ
trigger4 = stateno=240&&movehit>=1&&time>=32
trigger4 = statetype=S||statetype=C
trigger4 = Ceil(fvar(27))=42
;〓ジャンプ→空中前ダッシュ
trigger5 = stateno=50&&pos y<=-20&&time>=3
trigger5 = statetype=A
trigger5 = Ceil(fvar(27))=110
;〓空中前ダッシュ→JC
trigger6 = ((stateno=110&&time>=2)||stateno=111)&&vel x>0
trigger6 = statetype=A
trigger6 = Ceil(fvar(27))=650
;〓ジャンプ→JB先端
trigger7 = stateno=50&&pos y<=-20&&time>=3
trigger7 = statetype=A
trigger7 = Ceil(fvar(27))=640
;〓ジャンプ→空中前ダッシュ
trigger8 = stateno=50&&pos y<=-20&&time>=3
trigger8 = statetype=A
trigger8 = Ceil(fvar(27))=110
;〓空中前ダッシュ→JB先端
trigger9 = ((stateno=110&&time>=2)||stateno=111)&&vel x>0
trigger9 = statetype=A
trigger9 = Ceil(fvar(27))=640
;〓JB先端→空中前ダッシュ
trigger10 = NumTarget(642)>0
trigger10 = Target(642),Time>=0
trigger10 = stateno=640&&movehit>=1&&movehit<=4
trigger10 = AnimElemTime(9)>=1&&AnimElemTime(10)<0
trigger10 = statetype=A
trigger10 = Ceil(fvar(27))=110
;〓空中前ダッシュ→J2B
trigger11 = ((stateno=110&&time>=2)||stateno=111)&&vel x>0
trigger11 = statetype=A
trigger11 = Ceil(fvar(27))=645
;〓J2B→JC
trigger12 = stateno=645&&movehit>=1&&time>11
trigger12 = statetype=A
trigger12 = Ceil(fvar(27))=650
;〓6C→CCC
trigger13 = stateno=240&&movehit>=1&&time>=32
trigger13 = statetype=S||statetype=C
trigger13 = Ceil(fvar(27))=3400
;〓地雷設置EX
trigger14 = stateno=240&&movehit>=1&&time>=33
trigger14 = statetype=S||statetype=C
trigger14 = Ceil(fvar(27))=1202
;〓6C→地雷設置A
trigger15 = stateno=240&&movehit>=1&&time>=33
trigger15 = statetype=S||statetype=C
trigger15 = Ceil(fvar(27))=1200
;〓6C→烈風拳A
trigger16 = stateno=240&&movehit>=1&&time>=37
trigger16 = statetype=S||statetype=C
trigger16 = Ceil(fvar(27))=1000
;〓6C→烈風拳B
trigger17 = stateno=240&&movehit>=1&&time>=37
trigger17 = statetype=S||statetype=C
trigger17 = Ceil(fvar(27))=1001
;〓6C→4A（発生10F）（対空）
trigger18 = stateno=240&&movehit>=1&&time>=28
trigger18 = statetype=S||statetype=C
trigger18 = Ceil(fvar(27))=205
;〓6C→5A
trigger19 = stateno=240&&movehit>=1&&time>=28
trigger19 = statetype=S||statetype=C
trigger19 = Ceil(fvar(27))=200
;〓6C→対空投げA
trigger20 = stateno=240&&movehit>=1&&time>=28
trigger20 = statetype=S||statetype=C
trigger20 = Ceil(fvar(27))=1500
;〓6C→対空投げA
trigger21 = stateno=240&&movehit>=1&&time>=28
trigger21 = statetype=S||statetype=C
trigger21 = Ceil(fvar(27))=1500
;〓6C→対空投げB
trigger22 = stateno=240&&movehit>=1&&time>=32
trigger22 = statetype=S||statetype=C
trigger22 = Ceil(fvar(27))=1530
;〓6C→対空投げB
trigger23 = stateno=240&&movehit>=1&&time>=32
trigger23 = statetype=S||statetype=C
trigger23 = Ceil(fvar(27))=1530
;〓6C→対空投げB
trigger24 = stateno=240&&movehit>=1&&time>=32
trigger24 = statetype=S||statetype=C
trigger24 = Ceil(fvar(27))=1530
;〓6C→ぱっちんEX
trigger25 = stateno=240&&movehit>=1&&time>=32
trigger25 = statetype=S||statetype=C
trigger25 = Ceil(fvar(27))=1402
;〓6C→4C（発生9F）（対空）
trigger26 = stateno=240&&movehit>=1
trigger26 = statetype=S||statetype=C
trigger26 = Ceil(fvar(27))=235
;〓4A→対空投げA
trigger27 = stateno=205&&movehit>=1&&time>=12
trigger27 = statetype=S||statetype=C
trigger27 = Ceil(fvar(27))=1500
;〓5A→対空投げA
trigger28 = stateno=200&&movehit>=1&&time>=9
trigger28 = statetype=S||statetype=C
trigger28 = Ceil(fvar(27))=1500
;〓4A→3C
trigger29 = stateno=205&&movehit>=1&&time>=12
trigger29 = statetype=S||statetype=C
trigger29 = Ceil(fvar(27))=460
;〓5A→3C
trigger30 = stateno=200&&movehit>=1&&time>=9
trigger30 = statetype=S||statetype=C
trigger30 = Ceil(fvar(27))=460
;〓3C→対空投げA
trigger31 = stateno=460&&movehit>=1&&time=33
trigger31 = statetype=S||statetype=C
trigger31 = Ceil(fvar(27))=1500
;〓3C→対空投げA
trigger32 = stateno=460&&movehit>=1&&time=33
trigger32 = statetype=S||statetype=C
trigger32 = Ceil(fvar(27))=1500
;〓JA
trigger33 = stateno=50&&time>=1
trigger33 = statetype=A
trigger33 = Ceil(fvar(27))=630
;〓JA
trigger34 = stateno=50&&time>=1
trigger34 = statetype=A
trigger34 = Ceil(fvar(27))=630
;〓JA→J2B
trigger35 = stateno=630&&movehit>=1&&time>=7
trigger35 = statetype=A
trigger35 = Ceil(fvar(27))=645
;〓着地→ダッシュ
trigger36 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger36 = statetype=S||statetype=C
trigger36 = Ceil(fvar(27))=100
;〓ダッシュ→5B
trigger37 = (stateno=100&&time>=8)||stateno=101
trigger37 = statetype=S||statetype=C
trigger37 = Ceil(fvar(27))=210
;〓ダッシュ→4B
trigger38 = (stateno=100&&time>=8)||stateno=101
trigger38 = statetype=S||statetype=C
trigger38 = Ceil(fvar(27))=220
;〓5B→4C
trigger39 = stateno=210&&movehit>=1&&time>=16
trigger39 = statetype=S||statetype=C
trigger39 = Ceil(fvar(27))=235
;〓5B→4C
trigger40 = stateno=210&&movehit>=1&&time>=16
trigger40 = statetype=S||statetype=C
trigger40 = Ceil(fvar(27))=235


;==============================================================================
;■JC始動空中コンボルート

;□JC【着地】┬→ジャンプ→JA┬→J2B→JC【着地】				（画面端付近）	AIレベル3以上	○
;　　　　　　│　　　　　　　├→JB(30%)→J2C【着地】┬→JA→J2B→JC【着地】	（画面端）	AIレベル4以上	○
;　　　　　　│　　　　　　　│　　　　　　　　　　　└→対空投げB		（画面端）	AIレベル3以上	○
;　　　　　　│　　　　　　　│
;　　　　　　│　　　　　　　├→JB【着地】ダッシュ5C				（画面端）	AIレベル3以上	○
;　　　　　　│　　　　　　　└→JB【着地】ダッシュ4A				（画面端）	AIレベル3以上	○
;　　　　　　│
;　　　　　　└→ダッシュ┬→4A（4A始動空中コンボルートへ）			（画面端）	AIレベル4以上	○
;　　　　　　　　　　　　├→4B（4B始動空中コンボルートへ）			（画面端付近）	AIレベル3以上	○
;　　　　　　　　　　　　├→3C（3C始動空中コンボルートへ）			（遠距離）	AIレベル4以上	○
;　　　　　　　　　　　　└→4C（4C始動空中コンボルートへ）			（高重力時フォロー）		○

;------------------------------------------------------------------------------
;■JC始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**19)))				;□JC始動空中コンボルート

;〓JC着地→ハイジャンプ（対空）
trigger1 = helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75]
trigger1 = Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-60,0]
trigger1 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = numhelper(662)
trigger1 = helper(662),movehit>=1
trigger1 = helper(662),time<=30					;□出掛かりのみ
trigger1 = helper(21000),var(0)>=170				;□画面端から170以上
trigger1 = fvar(26)=[0,100]
trigger1 = fvar(27):=43
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

trigger2 = helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75]
trigger2 = Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-60,0]
trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = numhelper(663)
trigger2 = helper(663),movehit>=1
trigger2 = helper(663),time<=30					;□出掛かりのみ
trigger2 = helper(21000),var(0)>=170				;□画面端から170以上
trigger2 = fvar(26)=[0,100]
trigger2 = fvar(27):=43
trigger2 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

trigger3 = helper(23000),var(10)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.fwd.x)+2.4,const(velocity.jump.fwd.x)+0.8)*7)+const(size.air.front)=[IfElse(Ceil(var(52)/100%10)>=2,-10,10),75]
trigger3 = Ceil(Ceil(helper(23000),fvar(10))+Ceil(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(IfElse(Ceil(var(52)/100%10)>=1,const(velocity.jump.y)-1.65,const(velocity.jump.y)-1.75)*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[-60,0]
trigger3 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = numhelper(664)
trigger3 = helper(664),movehit>=1
trigger3 = helper(664),time<=30					;□出掛かりのみ
trigger3 = helper(21000),var(0)>=170				;□画面端から170以上
trigger3 = fvar(26)=[0,100]
trigger3 = fvar(27):=43
trigger3 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;〓JC着地→ハイジャンプ（対空）（J2C画面端コンボ用）
trigger4 = (stateno=100&&time>=8)||stateno=101
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = numhelper(662)
trigger4 = helper(662),movehit>=1&&helper(662),time<=30		;□出掛かりのみ
trigger4 = helper(662),AnimElemTime(8)>=0			;□ディレイ
trigger4 = Ceil(var(9)/100%10)<=1&&fvar(9)=[0.030,0.045]	;□JCの使用回数判定＆重力補正
trigger4 = helper(21000),var(0)<=50				;□画面端から80以内
trigger4 = Ceil(random/10%100)<=30				;□確率判定
trigger4 = fvar(26)<=100
trigger4 = fvar(27):=43
trigger4 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

trigger5 = (stateno=100&&time>=8)||stateno=101
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = numhelper(663)
trigger5 = helper(663),movehit>=1&&helper(663),time<=30		;□出掛かりのみ
trigger5 = helper(663),AnimElemTime(8)>=0			;□ディレイ
trigger5 = Ceil(var(9)/100%10)<=1&&fvar(9)=[0.030,0.045]	;□JCの使用回数判定＆重力補正
trigger5 = helper(21000),var(0)<=80				;□画面端から80以内
trigger5 = Ceil(random/10%100)<=30				;□確率判定
trigger5 = fvar(26)<=100
trigger5 = fvar(27):=43
trigger5 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

trigger6 = (stateno=100&&time>=8)||stateno=101
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = numhelper(664)
trigger6 = helper(664),movehit>=1&&helper(664),time<=30		;□出掛かりのみ
trigger6 = helper(664),AnimElemTime(8)>=0			;□ディレイ
trigger6 = Ceil(var(9)/100%10)<=1&&fvar(9)=[0.030,0.045]	;□JCの使用回数判定＆重力補正
trigger6 = helper(21000),var(0)<=80				;□画面端から80以内
trigger6 = Ceil(random/10%100)<=30				;□確率判定
trigger6 = fvar(26)<=100
trigger6 = fvar(27):=43
trigger6 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;〓JC着地→ジャンプ（対空）
trigger7 = var(59)>=3						;□AIレベル3以上
trigger7 = Ceil(var(9)/100%10)<=1&&fvar(9)<=0.065		;□JCの使用回数判定＆重力補正
trigger7 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = enemynear(var(16)),vel y<0				;□P2上昇中
trigger7 = numhelper(662)
trigger7 = helper(662),movehit>=1
trigger7 = helper(662),AnimElemTime(8)>=0			;□ディレイ
trigger7 = helper(21000),var(0)<=170				;□画面端から距離170以内
trigger7 = fvar(26)<=80
trigger7 = fvar(27):=42
trigger7 = var(47):=Ceil(2.0**15)

trigger8 = var(59)>=3						;□AIレベル3以上
trigger8 = Ceil(var(9)/100%10)<=1&&fvar(9)<=0.065		;□JCの使用回数判定＆重力補正
trigger8 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = enemynear(var(16)),vel y<0				;□P2上昇中
trigger8 = numhelper(663)
trigger8 = helper(663),movehit>=1
trigger8 = helper(663),AnimElemTime(8)>=0			;□ディレイ
trigger8 = helper(21000),var(0)<=170				;□画面端から距離170以内
trigger8 = fvar(26)<=80
trigger8 = fvar(27):=42
trigger8 = var(47):=Ceil(2.0**15)

trigger9 = var(59)>=3						;□AIレベル3以上
trigger9 = Ceil(var(9)/100%10)<=1&&fvar(9)<=0.065		;□JCの使用回数判定＆重力補正
trigger9 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = enemynear(var(16)),vel y<0				;□P2上昇中
trigger9 = numhelper(664)
trigger9 = helper(664),movehit>=1
trigger9 = helper(664),AnimElemTime(8)>=0			;□ディレイ
trigger9 = helper(21000),var(0)<=170				;□画面端から距離170以内
trigger9 = fvar(26)<=80
trigger9 = fvar(27):=42
trigger9 = var(47):=Ceil(2.0**15)

;〓着地→ダッシュ（JBヒット時）
trigger10 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger10 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0	;□JBヒット中
trigger10 = NumHelper(662)=0&&NumHelper(663)=0&&NumHelper(664)=0	;□JC無し
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = fvar(26)=[0,100]
trigger10 = var(47):=Ceil(2.0**10)
trigger10 = fvar(27):=100

;〓ダッシュ→5C（発生7F）（対空）（JBヒット時）			;★製作中
trigger11 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger11 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger11 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=30
trigger11 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-160,-145]
trigger11 = fvar(27):=230
trigger11 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4A（発生10F）（対空）（JBヒット時）
trigger12 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger12 = NumTarget(640)>0||NumTarget(641)>0||NumTarget(642)>0
trigger12 = Ceil(fvar(31))-(12)>=0||Ceil(fvar(31))=0	;□復帰判定
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=70
trigger12 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger12 = fvar(27):=205
trigger12 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓着地→ダッシュ（JCヒット時）
trigger13 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger13 = NumHelper(662)>0||NumHelper(663)>0||NumHelper(664)>0	;□JCヒット
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = fvar(26)=[0,150]
trigger13 = var(47):=Ceil(2.0**10)
trigger13 = fvar(27):=100

;〓4A（発生10F）（対空）（画面端特定条件用）
trigger14 = var(59)>=4						;□AIレベル4以上
trigger14 = (Ceil(var(9)/100%10)>1&&fvar(9)<=0.040)||(fvar(9)>=0.090||Ceil(var(9)/100%10)>2)	;□JCの使用回数判定＆重力補正
trigger14 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger14 = helper(21000),var(0)<=110				;□画面端付近
trigger14 = IfElse(helper(21000),var(0)<=90&&fvar(9)<=0.050,time>=10,time>=5)	;□ディレイ
trigger14 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger14 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,-10]
trigger14 = fvar(27):=205
trigger14 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B（発生18F）（対空）（画面端高重力用）
trigger15 = var(59)>=3						;□AIレベル3以上
trigger15 = fvar(9)>=0.035||helper(23000),var(10)+const(size.ground.front)=[120,180]	;□重力補正or中間距離
trigger15 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger15 = helper(21000),var(0)<=190				;□画面端付近
trigger15 = IfElse(helper(21000),var(0)<=90&&fvar(9)<=0.050,time>=11-Ceil(var(9)/100%10),time>=6-Ceil(var(9)/100%10))	;□ディレイ調整
trigger15 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = helper(23000),var(18)+const(size.ground.front)-(vel x*(0.85-(0.85**19.0))/0.15)<=80
trigger15 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-85,-50]
trigger15 = fvar(27):=220
trigger15 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4A（発生10F）（対空）（画面端高重力フォローor画面中央中重力以下）
trigger16 = var(59)>=4						;□AIレベル4以上
trigger16 = (fvar(9)>=0.040&&helper(21000),var(0)<=110)||helper(21000),var(0)>=180	;□重力補正＆画面端判定
trigger16 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger16 = IfElse(helper(21000),var(0)<=90&&fvar(9)<=0.050,time>=10,time>=5)	;□ディレイ
trigger16 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=75
trigger16 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,-10]
trigger16 = fvar(27):=205
trigger16 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C（発生24F）（対空）
trigger17 = var(59)>=4						;□AIレベル4以上
trigger17 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger17 = (var(50)&(Ceil(2.0**16)))=0
trigger17 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger17 = helper(23000),var(24)+const(size.ground.front)=[115-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),135]
trigger17 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-155,-80]
trigger17 = fvar(27):=460
trigger17 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C（発生28F）（対空）
trigger18 = var(59)>=4						;□AIレベル4以上
trigger18 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger18 = (var(50)&(Ceil(2.0**16)))=0
trigger18 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger18 = helper(23000),var(28)+const(size.ground.front)=[160-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),190]
trigger18 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-154,-10]
trigger18 = fvar(27):=460
trigger18 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4C（発生9F）（対空）（低空遠距離フォロー用）
trigger19 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger19 = (var(50)&(Ceil(2.0**14)))=0
trigger19 = Ceil(fvar(31))-(11)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger19 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger19 = helper(23000),var(9)+const(size.ground.front)=[IfElse(fvar(9)>=0.075,5,50),100]
trigger19 = Ceil(helper(23000),fvar(9))+Ceil(fvar(36))>=-130
trigger19 = fvar(27):=235
trigger19 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ジャンプ→JA（9F目持続当て）（空対空）（ノーマルモード以上）
trigger20 = Ceil(var(52)/100%10)>=1
trigger20 = stateno=50&&time>=1					;□ジャンプ中
trigger20 = (var(50)&(Ceil(2.0**19)))=0
trigger20 = statetype=A&&enemynear(var(16)),statetype=A
trigger20 = helper(23000),var(7)+const(size.air.front)-(vel x*7)<=70
trigger20 = Ceil(Ceil(helper(23000),fvar(7))+Ceil(fvar(36))-Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0)))=[-60,20]
trigger20 = fvar(27):=630

;〓ジャンプ→JA（11F目持続当て）（空対空）（弱体化モード）
trigger21 = Ceil(var(52)/100%10)=0
trigger21 = stateno=50&&time>=1					;□ジャンプ中
trigger21 = (var(50)&(Ceil(2.0**19)))=0
trigger21 = statetype=A&&enemynear(var(16)),statetype=A
trigger21 = helper(23000),var(11)+const(size.air.front)-(vel x*11)<=70
trigger21 = Ceil(Ceil(helper(23000),fvar(11))+Ceil(fvar(36))-Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0)))=[-60,20]
trigger21 = fvar(27):=630

;〓JA→JB（空対空）	;★製作中
trigger22 = stateno=630&&movehit>=1&&time=11			;□1~2HIT目
trigger22 = statetype=A&&enemynear(var(16)),statetype=A
trigger22 = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
trigger22 = helper(21000),var(0)<=80				;□画面端
trigger22 = vel y<0						;□上昇中
trigger22 = fvar(27):=640

;〓JA→J2B（空対空）
trigger23 = stateno=630&&movehit>=1&&time>=11			;□1~2HIT目
trigger23 = vel y<0						;□上昇中
trigger23 = statetype=A&&enemynear(var(16)),statetype=A
trigger23 = fvar(27):=645

;〓J2B→JC（空対空）
trigger24 = stateno=645&&movehit>=1&&time>=16			;□1HIT目
trigger24 = statetype=A&&enemynear(var(16)),statetype=A
trigger24 = fvar(27):=650
trigger24 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓JB→J2C
trigger25 = stateno=640&&movehit>=1&&time>=11
trigger25 = (var(50)&(Ceil(2.0**26)))=0
trigger25 = !numhelper(681)&&!numhelper(682)
trigger25 = statetype=A&&enemynear(var(16)),statetype=A
trigger25 = NumTarget(641)>0
trigger25 = Target(641),Time>=1
trigger25 = fvar(27):=670

;〓ジャンプ→JC（空対空）
trigger26 = stateno=50&&time>=1
trigger26 = prevstateno=630
trigger26 = statetype=A&&enemynear(var(16)),statetype=A
trigger26 = vel y>0						;□下降中
trigger26 = enemynear(var(16)),movetype=H
trigger26 = fvar(27):=650
trigger26 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓J2C着地→ハイジャンプ（対空）（J2C画面端コンボ用）
trigger27 = var(59)>=4						;□AIレベル4以上
trigger27 = stateno=52&&time>=5
trigger27 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger27 = NumTarget(681)>0
trigger27 = helper(681),movehit>=1
trigger27 = helper(21000),var(0)<=170				;□画面端から160以内
trigger27 = fvar(26)<=130
trigger27 = fvar(27):=43
trigger27 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;〓J2C着地→対空投げB（発生18F）（対空）
trigger28 = var(59)>=3						;□AIレベル3以上
trigger28 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger28 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger28 = helper(21000),var(0)>=125				;□画面端から125以上
trigger28 = helper(23000),var(18)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger28 = helper(23000),var(18)+const(size.ground.front)<=150
trigger28 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-115-Ceil(fvar(36))]
trigger28 = fvar(27):=1530
trigger28 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓J2C着地→対空投げB（発生24F）（対空）
trigger29 = var(59)>=3						;□AIレベル3以上
trigger29 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger29 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger29 = helper(21000),var(0)>=125				;□画面端から125以上
trigger29 = helper(23000),var(24)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger29 = helper(23000),var(24)+const(size.ground.front)<=185
trigger29 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-205+Ceil(fvar(36)),-175-Ceil(fvar(36))]
trigger29 = fvar(27):=1530
trigger29 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger30 = var(59)>=3						;□AIレベル3以上
trigger30 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger30 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger30 = helper(21000),var(0)>=125				;□画面端から125以上
trigger30 = helper(23000),var(24)+const(size.ground.front)>=130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger30 = helper(23000),var(24)+const(size.ground.front)<=150
trigger30 = Ceil(helper(23000),fvar(24))+Ceil(fvar(36))=[-160+Ceil(fvar(36)),-140-Ceil(fvar(36))]
trigger30 = fvar(27):=1530
trigger30 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■JC始動空中コンボルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**19)))				;□JC始動空中コンボルート
triggerall = Ceil(fvar(27))!=0					;□格納StateNoが正
triggerall = enemynear(var(16)),statetype=A

;〓ハイジャンプ
trigger1 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = statetype=S||statetype=C
trigger1 = helper(21000),var(0)>=170
trigger1 = Ceil(fvar(27))=43

trigger2 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = helper(21000),var(0)>=170
trigger2 = statetype=S||statetype=C
trigger2 = Ceil(fvar(27))=43

trigger3 = Ctrl||(stateno=100&&time>=1)||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = helper(21000),var(0)>=170
trigger3 = statetype=S||statetype=C
trigger3 = Ceil(fvar(27))=43
;〓ハイジャンプ
trigger4 = (stateno=100&&time>=8)||stateno=101
trigger4 = statetype=S||statetype=C
trigger4 = helper(21000),var(0)<=80
trigger4 = Ceil(fvar(27))=43

trigger5 = (stateno=100&&time>=8)||stateno=101
trigger5 = helper(21000),var(0)<=80
trigger5 = statetype=S||statetype=C
trigger5 = Ceil(fvar(27))=43

trigger6 = (stateno=100&&time>=8)||stateno=101
trigger6 = helper(21000),var(0)<=80
trigger6 = statetype=S||statetype=C
trigger6 = Ceil(fvar(27))=43
;〓ジャンプ
trigger7 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger7 = statetype=S||statetype=C
trigger7 = Ceil(fvar(27))=42

trigger8 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger8 = statetype=S||statetype=C
trigger8 = Ceil(fvar(27))=42

trigger9 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger9 = statetype=S||statetype=C
trigger9 = Ceil(fvar(27))=42
;〓着地→ダッシュ
trigger10 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger10 = statetype=S||statetype=C
trigger10 = Ceil(fvar(27))=100
;〓ダッシュ→5C
trigger11 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger11 = statetype=S||statetype=C
trigger11 = Ceil(fvar(27))=230
;〓ダッシュ→4A
trigger12 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger12 = statetype=S||statetype=C
trigger12 = Ceil(fvar(27))=205
;〓着地→ダッシュ（JCヒット時）
trigger13 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger13 = statetype=S||statetype=C
trigger13 = Ceil(fvar(27))=100
;〓4A
trigger14 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger14 = statetype=S||statetype=C
trigger14 = Ceil(fvar(27))=205
;〓4B
trigger15 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger15 = statetype=S||statetype=C
trigger15 = Ceil(fvar(27))=220
;〓4A
trigger16 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger16 = statetype=S||statetype=C
trigger16 = Ceil(fvar(27))=205
;〓3C
trigger17 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger17 = statetype=S||statetype=C
trigger17 = Ceil(fvar(27))=460
;〓3C
trigger18 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger18 = statetype=S||statetype=C
trigger18 = Ceil(fvar(27))=460
;〓4C
trigger19 = (Ctrl&&time>=10)||(stateno=100&&time>=11)||stateno=101
trigger19 = statetype=S||statetype=C
trigger19 = Ceil(fvar(27))=235
;〓JA
trigger20 = stateno=50&&time>=1
trigger20 = statetype=A
trigger20 = Ceil(fvar(27))=630
;〓JA
trigger21 = stateno=50&&time>=1
trigger21 = statetype=A
trigger21 = Ceil(fvar(27))=630
;〓JA→JB
trigger22 = stateno=630&&movehit>=1&&time>=7
trigger22 = statetype=A
trigger22 = Ceil(fvar(27))=640
;〓JA→J2B
trigger23 = stateno=630&&movehit>=1&&time>=7
trigger23 = statetype=A
trigger23 = Ceil(fvar(27))=645
;〓J2B→JC
trigger24 = stateno=645&&movehit>=1&&time>=16
trigger24 = statetype=A
trigger24 = Ceil(fvar(27))=650
;〓JB→J2C
trigger25 = stateno=640&&movehit>=1&&time>=11
trigger25 = statetype=A
trigger25 = Ceil(fvar(27))=670
;〓JC
trigger26 = stateno=50&&time>=1
trigger26 = statetype=A
trigger26 = Ceil(fvar(27))=650
;〓J2C着地→ハイジャンプ
trigger27 = stateno=52&&time>=5
trigger27 = statetype=S||statetype=C
trigger27 = Ceil(fvar(27))=43
;〓J2C着地→対空投げB
trigger28 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger28 = statetype=S||statetype=C
trigger28 = Ceil(fvar(27))=1530
;〓J2C着地→対空投げB
trigger29 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger29 = statetype=S||statetype=C
trigger29 = Ceil(fvar(27))=1530

trigger30 = Ctrl||(stateno=100&&time>=1)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger30 = statetype=S||statetype=C
trigger30 = Ceil(fvar(27))=1530


;==============================================================================
;■4B始動空中コンボルート

;□4B┬→2B→5B→4C→6C				（6C始動空中コンボルート）	（画面端）高重力コンボ〆	AIレベル4以上	○
;　　│
;　　├→3C┬→2C(70%)┬→4C			（4C始動空中コンボルート）							
;　　│　　│　　　　 ├→【NC】ダッシュ4C	（4C始動空中コンボルート）							
;　　│　　│　　　 　└→【NC】ダッシュ5B	（5B始動空中コンボルート）							
;　　│　　│
;　　│　　├→4C				（4C始動空中コンボルート）	（画面中央）					
;　　│　　├→4A→対空投げ				
;　　│　　├→5A				
;　　│　　└→対空投げA			（ダウン追い討ちルート）	（画面中央or2C使用済み）			
;　　│
;　　├→4A					（4A始動空中コンボルート）							○
;　　├→4C					（4C始動空中コンボルート）							○
;　　├→6C					（6C始動空中コンボルート）							○
;　　│
;　　└→烈風拳AB														○

;------------------------------------------------------------------------------
;■4B始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**20)))				;□4B始動空中コンボルート

;〓4B→2B（発生12F）（対地）
trigger1 = var(59)>=4						;□AIレベル4以上
trigger1 = stateno=220&&movehit>=1&&time>=26			;□4HIT目
trigger1 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = fvar(9)>=0.050	;◆0.065			;□重力補正
trigger1 = Ceil(fvar(31))-(14)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger1 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),35]
trigger1 = Ceil(helper(23000),fvar(12))<=-5
trigger1 = fvar(27):=420

;〓4B→2B（発生18F）（対地）
trigger2 = var(59)>=4						;□AIレベル4以上
trigger2 = stateno=220&&movehit>=1&&time>=26			;□4HIT目
trigger2 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = fvar(9)>=0.050	;◆0.065			;□重力補正
trigger2 = Ceil(fvar(31))-(19)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger2 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),75]
trigger2 = Ceil(helper(23000),fvar(17))<=-5
trigger2 = fvar(27):=420

;〓4B→4A（発生10F）（対空）
trigger3 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger3 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(10)+const(size.ground.front)<=70-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger3 = fvar(27):=205
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→6C（発生15F）（対空）
trigger4 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger4 = (var(50)&(Ceil(2.0**13)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(15)+const(size.ground.front)>=70-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(15)+const(size.ground.front)<=IfElse(helper(21000),var(0)>=360,190,210)
trigger4 = Ceil(helper(23000),fvar(15))+Ceil(fvar(36))=[-60+Ifelse(fvar(26)>=110,-40,0),-10]
trigger4 = fvar(27):=240
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→3C（発生19F）（対空）
trigger5 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger5 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger5 = (var(50)&(Ceil(2.0**13)))				;□6C使用済み
trigger5 = (var(50)&(Ceil(2.0**16)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = enemynear(var(16)),vel x<=0
trigger5 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(19)+const(size.ground.front)<=120
trigger5 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-105,-90]
trigger5 = fvar(27):=460
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→3C（発生28F）（対空）
trigger6 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger6 = Ceil(fvar(31))-(30)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger6 = (var(50)&(Ceil(2.0**13)))				;□6C使用済み
trigger6 = (var(50)&(Ceil(2.0**16)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = enemynear(var(16)),vel x<=0
trigger6 = helper(23000),var(28)+const(size.ground.front)=[130-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),190]
trigger6 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-160,-10]
trigger6 = fvar(27):=460
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→4C（発生9F）（対空）
trigger7 = stateno=220&&movehit>=1&&time>=29			;□4HIT目
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger7 = helper(23000),var(9)+const(size.ground.front)<=105
trigger7 = Ceil(helper(23000),fvar(9))>=-10
trigger7 = fvar(27):=235
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓4B→烈風拳A
trigger8 = stateno=220&&movehit>=1&&time>=28				;□4HIT目
trigger8 = Ceil(random/10%100)<=IfElse(helper(21000),var(0)>=420,70,40)	;□確率判定
trigger8 = enemynear(var(16)),GetHitVar(fall)=0				;□ダウンフラグ無し
trigger8 = helper(21000),var(0)>=340||time>=32				;□画面端から340以上or時間経過
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = fvar(26)>=150
trigger8 = fvar(27):=1000
trigger8 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓4B→烈風拳B
trigger9 = stateno=220&&movehit>=1&&time>=28				;□4HIT目
trigger9 = enemynear(var(16)),GetHitVar(fall)=0				;□ダウンフラグ無し
trigger9 = helper(21000),var(0)>=340					;□画面端から340以上
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = fvar(26)>=150
trigger9 = fvar(27):=1001
trigger9 = var(48):=(var(48)|1)-(1)||1					;□コンボルート固定スイッチOFF

;〓2B→5B（発生8F）（対空）
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger10 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = helper(21000),var(0)<=120				;□画面端から距離110以内
trigger10 = fvar(27):=210

trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger11 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = helper(21000),var(0)<=120				;□画面端から距離110以内
trigger11 = fvar(27):=210

;〓5B→4C（発生9F）（対空）
trigger12 = stateno=210&&movehit>=1&&time>=IfElse(helper(21000),var(0)<=90,20,16)	;□5Bが4~5HIT目
trigger12 = (var(50)&(Ceil(2.0**14)))=0
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = fvar(26)=[0,115]
trigger12 = Ceil(helper(23000),fvar(9))>=-140
trigger12 = fvar(27):=235

;〓4C→6C（発生19F）（対空）
trigger13 = stateno=235&&movehit>=1&&time>=7			;□2HIT目
trigger13 = (var(50)&(Ceil(2.0**13)))=0
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(19)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger13 = helper(23000),var(19)+const(size.ground.front)<=250
trigger13 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-40+IfElse(helper(21000),var(0)<=180,0,-120),-10]
trigger13 = fvar(27):=240
trigger13 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1

;■4B始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**20)))		;□4B始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓4B→2B
trigger1 = stateno=220&&movehit>=1&&time>=26
trigger1 = Ceil(fvar(27))=420
;〓4B→2B
trigger2 = stateno=220&&movehit>=1&&time>=26
trigger2 = Ceil(fvar(27))=420
;〓4B→4A
trigger3 = stateno=220&&movehit>=1&&time>=28
trigger3 = Ceil(fvar(27))=205
;〓4B→6C
trigger4 = stateno=220&&movehit>=1&&time>=28
trigger4 = Ceil(fvar(27))=240
;〓4B→3C
trigger5 = stateno=220&&movehit>=1&&time>=28
trigger5 = Ceil(fvar(27))=460
;〓4B→3C
trigger6 = stateno=220&&movehit>=1&&time>=28
trigger6 = Ceil(fvar(27))=460
;〓4B→4C
trigger7 = stateno=220&&movehit>=1&&time>=29
trigger7 = Ceil(fvar(27))=235
;〓4B→烈風拳A
trigger8 = stateno=220&&movehit>=1&&time>=28
trigger8 = Ceil(fvar(27))=1000
;〓4B→烈風拳B
trigger9 = stateno=220&&movehit>=1&&time>=28
trigger9 = Ceil(fvar(27))=1001
;〓2B→5B
trigger10 = stateno=420&&numhelper(424)=1
trigger10 = helper(424),movehit>=1&&time>=24
trigger10 = Ceil(fvar(27))=210
;〓2B→5B
trigger11 = stateno=420&&numhelper(425)=1
trigger11 = helper(425),movehit>=1&&time>=24
trigger11 = Ceil(fvar(27))=210
;〓5B→4C
trigger12 = stateno=210&&movehit>=1&&time>=16
trigger12 = Ceil(fvar(27))=235
;〓4C→6C
trigger13 = stateno=235&&movehit>=1&&time>=7
trigger13 = Ceil(fvar(27))=240


;==============================================================================
;■3C始動空中コンボルート

;□3C┬→4A				（4A始動空中コンボルート）		AIレベル4以上	○
;　　├→5A┬→4B			（4B始動空中コンボルート）		AIレベル4以上	○
;　　│　　└→対空投げA		（ダウン追い討ちルート）		AIレベル4以上	○
;　　├→4C				（4C始動空中コンボルート）　　AIレベル4以上で精度上昇	○
;　　│
;　　├→2C【NC】ダッシュ┬→4A		（4A始動空中コンボルート）		AIレベル4以上	○
;　　│　　　　　　　　  ├→5B		（5B始動空中コンボルート）		AIレベル4以上	○
;　　│　　　　　　　　  └→4C		（4C始動空中コンボルート）		AIレベル4以上	○
;　　│
;　　├→4B				（4B始動空中コンボルート）		AIレベル4以上	○
;　　│
;　　└→対空投げA			（ダウン追い討ちルート）　　AIレベル3以下or2C使用済み	○


;------------------------------------------------------------------------------
;■3C始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**21)))				;□3C始動空中コンボルート

;〓3C→4A（発生10F）（対空）
trigger1 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger1 = NumTarget(461)>0					;□3HIT目命中
trigger1 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=65||helper(21000),var(0)<=140
trigger1 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-60,0]
trigger1 = fvar(27):=205
trigger1 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→5A（発生7F）（対空）
trigger2 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger2 = NumTarget(461)>0					;□3HIT目命中
trigger2 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))<=50||helper(21000),var(0)<=140
trigger2 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-30,0]
trigger2 = fvar(27):=200

;〓3C→4C（発生9F）（対空）
trigger3 = (var(50)&(Ceil(2.0**15)))||var(59)<=3		;□2C使用済みorAIレベル3以下
trigger3 = stateno=460&&movehit>=1&&time=34			;□3HIT目
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = fvar(26)>=145
trigger3 = fvar(27):=235
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生4F）（対空）
trigger4 = var(59)>=4						;□AIレベル4以上
trigger4 = stateno=460&&movehit>=1&&time>=34			;□3HIT目（ヒットストップ後）
trigger4 = helper(21000),var(0)>=130||enemynear(var(16)),pos y>=-20||(var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))					;□画面端から距離130以上or低空or4A4B使用済み
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger4 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40
trigger4 = Ceil(helper(23000),fvar(4))>=-5
trigger4 = fvar(27):=235
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生7F）（対空）
trigger5 = var(59)>=4						;□AIレベル4以上
trigger5 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger5 = helper(21000),var(0)>=130||enemynear(var(16)),pos y>=-20||(var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))					;□画面端から距離130以上or低空or4A4B使用済み
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = Ceil(fvar(31))-(9)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger5 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger5 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger5 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85]
trigger5 = Ceil(helper(23000),fvar(7))>=-15
trigger5 = fvar(27):=235
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→4C（発生7F）（対空）
trigger6 = var(59)>=4						;□AIレベル4以上
trigger6 = stateno=460&&movehit>=1&&time>=34			;□3HIT目
trigger6 = helper(21000),var(0)>=130||enemynear(var(16)),pos y>=-20||(var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))					;□画面端から距離130以上or低空or4A4B使用済み
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = Ceil(fvar(31))-(9)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger6 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger6 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger6 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85])
trigger6 = !(Ceil(helper(23000),fvar(7))>=-15)
trigger6 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[100,125]
trigger6 = Ceil(helper(23000),fvar(7))>=-40
trigger6 = fvar(27):=235
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→2C（発生17F）（対空）
trigger7 = var(59)>=4						;□AIレベル4以上
trigger7 = fvar(9)<0.070					;□重力補正
trigger7 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger7 = NumTarget(461)>0					;□3HIT目命中
trigger7 = enemynear(var(16)),Const(size.mid.pos.y)>=-65	;□座高判定
trigger7 = Ceil(fvar(26))>=110||helper(21000),var(0)<=145	;□距離画面端判定
trigger7 = (var(50)&(Ceil(2.0**15)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=60)
trigger7 = !(Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,0])
trigger7 = fvar(26)=[0,140]
trigger7 = enemynear(var(16)),pos y<=-100
trigger7 = fvar(27):=440

;〓3C→4B（発生18F）（対空）
trigger8 = var(59)>=4						;□AIレベル4以上
trigger8 = stateno=460&&movehit>=1&&time>=33			;□3HIT目
trigger8 = NumTarget(461)>0					;□3HIT目命中
trigger8 = helper(21000),var(0)>=130||(var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))	;□画面端以外or4A使用済み
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger8 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))<=60)
trigger8 = !(Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-50,0])
trigger8 = ((fvar(26)=[50,120])&&enemynear(var(16)),pos y<=-80)||((fvar(26)=[120,150])&&enemynear(var(16)),pos y<=-90)||((fvar(26)=[150,200])&&enemynear(var(16)),pos y<=-100)
trigger8 = fvar(27):=220
trigger8 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生13F）（対空）
trigger9 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger9 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger9 = NumTarget(461)>0					;□3HIT目命中
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*13))*-1.0))=[35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),64]
trigger9 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-110,-70]
trigger9 = fvar(27):=1500
trigger9 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓3C→対空投げA（発生16F）（対空）
trigger10 = (var(50)&(Ceil(2.0**15)))||fvar(9)>=0.070||var(59)<=3	;□2C使用済みor重力補正orAIレベル3以下
trigger10 = stateno=460&&movehit>=1&&time=33			;□3HIT目
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger10 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-120,-20]
trigger10 = fvar(27):=1500
trigger10 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4B（発生18F）（対空）
trigger11 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger11 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger11 = helper(23000),var(18)+const(size.ground.front)<=165
trigger11 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger11 = fvar(27):=220

;〓5A→対空投げA（発生13F）（対空）
trigger12 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger12 = Ceil(fvar(31))-(15)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger12 = helper(23000),var(13)+const(size.ground.front)>=35-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger12 = helper(23000),var(13)+const(size.ground.front)<=64||helper(21000),var(0)<=120
trigger12 = Ceil(helper(23000),fvar(13))+Ceil(fvar(36))=[-120,-70]
trigger12 = fvar(27):=1500
trigger12 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→対空投げA（発生16F）（対空）
trigger13 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger13 = Ceil(fvar(31))-(18)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger13 = helper(23000),var(16)+const(size.ground.front)>=3-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger13 = helper(23000),var(16)+const(size.ground.front)<=75||helper(21000),var(0)<=120
trigger13 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-130,-20]
trigger13 = fvar(27):=1500
trigger13 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4A（発生10F）（対空）
trigger14 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger14 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger14 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger14 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger14 = Ceil(fvar(31))-(12)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger14 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=70
trigger14 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger14 = fvar(27):=205
trigger14 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger15 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger15 = helper(21000),var(0)<=150				;□画面端から距離150以内
trigger15 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger15 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger15 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger15 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),100]
trigger15 = Ceil(helper(23000),fvar(8))=[-60,20]		;◆範囲拡大実験中
trigger15 = fvar(27):=210
trigger15 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4C（発生4F）（対空）
trigger16 = (stateno=100&&time>=4)||stateno=101			;□ダッシュ中
trigger16 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger16 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger16 = (var(50)&(Ceil(2.0**14)))=0
trigger16 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger16 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger16 = helper(23000),var(4)+const(size.ground.front)-(vel x*(0.85-(0.85**5.0))/0.15)=[25,50]
trigger16 = Ceil(helper(23000),fvar(4))>=-20
trigger16 = fvar(27):=235
trigger16 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■3C始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**21)))		;□3C始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓3C→4A
trigger6 = stateno=460&&movehit>=1&&time>=34
trigger6 = Ceil(fvar(27))=205
;〓3C→5A
trigger7 = stateno=460&&movehit>=1&&time>=34
trigger7 = Ceil(fvar(27))=200
;〓3C→4C
trigger1 = stateno=460&&movehit>=1&&time=34
trigger1 = statetype=S||statetype=C
trigger1 = Ceil(fvar(27))=235
;〓3C→4C
trigger2 = stateno=460&&movehit>=1&&time>=34
trigger2 = Ceil(fvar(27))=235
;〓3C→4C
trigger3 = stateno=460&&movehit>=1&&time>=34
trigger3 = Ceil(fvar(27))=235
;〓3C→4C
trigger4 = stateno=460&&movehit>=1&&time>=34
trigger4 = statetype=S||statetype=C
trigger4 = Ceil(fvar(27))=235
;〓3C→2C
trigger5 = stateno=460&&movehit>=1&&time>=33
trigger5 = Ceil(fvar(27))=440
;〓3C→4B
trigger8 = stateno=460&&movehit>=1&&time>=33
trigger8 = Ceil(fvar(27))=220
;〓3C→対空投げA
trigger9 = stateno=460&&movehit>=1&&time=33
trigger9 = Ceil(fvar(27))=1500
;〓3C→対空投げA
trigger10 = stateno=460&&movehit>=1&&time=33
trigger10 = Ceil(fvar(27))=1500
;〓5A→4B
trigger11 = stateno=200&&movehit>=1&&time>=9
trigger11 = Ceil(fvar(27))=220
;〓5A→対空投げA
trigger12 = stateno=200&&movehit>=1&&time>=9
trigger12 = Ceil(fvar(27))=1500
;〓5A→対空投げA
trigger13 = stateno=200&&movehit>=1&&time>=9
trigger13 = Ceil(fvar(27))=1500
;〓ダッシュ→4A
trigger14 = (stateno=100&&time>=4)||stateno=101
trigger14 = Ceil(fvar(27))=205
;〓ダッシュ→5B
trigger15 = (stateno=100&&time>=4)||stateno=101
trigger15 = Ceil(fvar(27))=210
;〓ダッシュ→4C
trigger16 = (stateno=100&&time>=4)||stateno=101
trigger16 = Ceil(fvar(27))=235


;==============================================================================
;■2C始動空中コンボルート

;□2C┬→4B	（4B始動空中コンボルート）　			画面中央～画面端				○
;　　├→3C(30%)（3C始動空中コンボルート）　			画面後ろ端（中重力）				○
;　　├→4C	（4C始動空中コンボルート）			画面中央　（中重力）	AIレベル3以下or高重力	○
;　　│
;　　└→【NC】ダッシュ┬→4A	（4A始動空中コンボルート）					AIレベル4以上	○
;　　　　　　　　　　　├→5B	（5B始動空中コンボルート）	画面端				AIレベル4以上	○
;　　　　　　　　　　　└→4C	（4C始動空中コンボルート）					AIレベル4以上	○

;------------------------------------------------------------------------------
;■2C始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**22)))				;□2C始動空中コンボルート

;〓2C→4B（発生18F）（対空）
trigger1 = (stateno=[440,442])&&numhelper(450)=1
trigger1 = helper(450),movehit>=1&&time>=26			;□3HIT目以降ヒット中
trigger1 = (var(50)&(Ceil(2.0**13)))=0				;□6C未使用
trigger1 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = helper(21000),var(0)<=340||var(59)<=3		;□画面端から距離340以内orAIレベル3以下
trigger1 = helper(23000),var(18)+const(size.ground.front)<=165
trigger1 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger1 = fvar(27):=220
trigger1 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger2 = (stateno=[440,442])&&numhelper(451)=1
trigger2 = helper(451),movehit>=1&&time>=26			;□3HIT目以降ヒット中
trigger2 = (var(50)&(Ceil(2.0**13)))=0				;□6C未使用
trigger2 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = helper(21000),var(0)<=340||var(59)<=3		;□画面端から距離340以内orAIレベル3以下
trigger2 = helper(23000),var(18)+const(size.ground.front)<=165
trigger2 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger2 = fvar(27):=220
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2C→3C（発生19F）（対空）
trigger3 = (stateno=[440,442])&&numhelper(450)=1
trigger3 = helper(450),movehit>=1&&time=27			;□3HIT目以降ヒット中
trigger3 = fvar(9)>=0.015					;□重力補正
trigger3 = Ceil(random/10%100)<=30				;□確率判定
trigger3 = (var(50)&(Ceil(2.0**16)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(19)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger3 = fvar(26)=[50,80]
trigger3 = fvar(27):=460
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger4 = (stateno=[440,442])&&numhelper(451)=1
trigger4 = helper(451),movehit>=1&&time=27			;□3HIT目以降ヒット中
trigger4 = fvar(9)>=0.015					;□重力補正
trigger4 = Ceil(random/10%100)<=30				;□確率判定
trigger4 = (var(50)&(Ceil(2.0**16)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(19)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger4 = fvar(26)=[50,80]
trigger4 = fvar(27):=460
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2C→4C（発生9F）（対空）
trigger5 = fvar(9)>=0.030||var(59)<=3				;□中重力以上orAIレベル3以下
trigger5 = (stateno=[440,442])&&numhelper(450)=1
trigger5 = helper(450),movehit>=1&&time>=34			;□3HIT目以降ヒット中
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(9)+const(size.ground.front)<=115
trigger5 = Ceil(helper(23000),fvar(9))>=-130
trigger5 = fvar(27):=235
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger6 = fvar(9)>=0.030||var(59)<=3				;□中重力以上orAIレベル3以下
trigger6 = (stateno=[440,442])&&numhelper(451)=1
trigger6 = helper(451),movehit>=1&&time>=34			;□3HIT目以降ヒット中
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger6 = helper(23000),var(9)+const(size.ground.front)<=115
trigger6 = Ceil(helper(23000),fvar(9))>=-120
trigger6 = fvar(27):=235
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4A（発生10F）（対空）
trigger7 = var(59)>=4						;□AIレベル4以上
trigger7 = (stateno=100&&time>=8)||stateno=101			;□ダッシュ中
trigger7 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger7 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger7 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger7 = Ceil(fvar(31))-(12)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(10)+const(size.ground.front)-(vel x*(0.85-(0.85**11.0))/0.15)<=70
trigger7 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-80,-40]
trigger7 = fvar(27):=205
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→5B（発生8F）（対空）
trigger8 = var(59)>=4						;□AIレベル4以上
trigger8 = (stateno=100&&time>=9)||stateno=101			;□ダッシュ中
trigger8 = helper(21000),var(0)<=150				;□画面端から距離150以内
trigger8 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger8 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger8 = Ceil(fvar(31))-(10)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),100]
trigger8 = Ceil(helper(23000),fvar(8))=[-60,20]			;◆範囲拡大実験中
trigger8 = fvar(27):=210
trigger8 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓ダッシュ→4C（発生4F）（対空）
trigger9 = var(59)>=4						;□AIレベル4以上
trigger9 = (stateno=100&&time>=10)||stateno=101			;□ダッシュ中
trigger9 = helper(21000),var(0)>=110				;□画面端から距離110以上
trigger9 = (var(47)&(Ceil(2.0**13)))				;□しゃがみ大後ダッシュ攻撃フラグ○
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = Ceil(fvar(31))-(6)>=0||Ceil(fvar(31))=0		;□復帰判定
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger9 = helper(23000),var(4)+const(size.ground.front)-(vel x*(0.85-(0.85**5.0))/0.15)=[25,50]
trigger9 = Ceil(helper(23000),fvar(4))>=-20
trigger9 = fvar(27):=235
trigger9 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■2C始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**22)))		;□2C始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓2C→4B
trigger1 = (stateno=[440,442])&&numhelper(450)=1
trigger1 = helper(450),movehit>=1&&time>=26
trigger1 = Ceil(fvar(27))=220

trigger2 = (stateno=[440,442])&&numhelper(451)=1
trigger2 = helper(451),movehit>=1&&time>=26
trigger2 = Ceil(fvar(27))=220
;〓2C→3C
trigger3 = (stateno=[440,442])&&numhelper(450)=1
trigger3 = helper(450),movehit>=1&&time>=26
trigger3 = Ceil(fvar(27))=460

trigger4 = (stateno=[440,442])&&numhelper(451)=1
trigger4 = helper(451),movehit>=1&&time>=26
trigger4 = Ceil(fvar(27))=460
;〓2C→4C
trigger5 = (stateno=[440,442])&&numhelper(450)=1
trigger5 = helper(450),movehit>=1&&time>=34
trigger5 = Ceil(fvar(27))=235

trigger6 = (stateno=[440,442])&&numhelper(451)=1
trigger6 = helper(451),movehit>=1&&time>=34
trigger6 = Ceil(fvar(27))=235
;〓ダッシュ→4A
trigger7 = (stateno=100&&time>=4)||stateno=101
trigger7 = Ceil(fvar(27))=205
;〓ダッシュ→5B
trigger8 = (stateno=100&&time>=4)||stateno=101
trigger8 = Ceil(fvar(27))=210
;〓ダッシュ→4C
trigger9 = (stateno=100&&time>=4)||stateno=101
trigger9 = Ceil(fvar(27))=235


;==============================================================================
;■2B始動空中コンボルート

;□2B┬→5B	（5B始動空中コンボルート）（画面端）			○
;　　│
;　　├→4B	（4B始動空中コンボルート）（画面端付近～画面中央）	○
;　　├→6C	（6C始動空中コンボルート）（画面中央）			○
;　　└→4C	（4C始動空中コンボルート）（低空フォロー用）		○

;------------------------------------------------------------------------------
;■2B始動空中コンボルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**23)))				;□2B始動空中コンボルート

;〓2B→5B（発生8F）（対空）
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = helper(21000),var(0)<=110				;□画面端から距離110以内
trigger1 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),110]
trigger1 = Ceil(helper(23000),fvar(8))=[-50,20]			;◆範囲拡大実験中
trigger1 = fvar(27):=210
trigger1 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger2 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = helper(21000),var(0)<=110				;□画面端から距離110以内
trigger2 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),110]
trigger2 = Ceil(helper(23000),fvar(8))=[-50,20]			;◆範囲拡大実験中
trigger2 = fvar(27):=210
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2B→4B（発生18F）（対空）
trigger3 = stateno=420&&numhelper(424)=1
trigger3 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger3 = (var(50)&(Ceil(2.0**13)))=0				;□6C未使用
trigger3 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(18)+const(size.ground.front)<=120
trigger3 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger3 = fvar(27):=220
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger4 = stateno=420&&numhelper(425)=1
trigger4 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger4 = (var(50)&(Ceil(2.0**13)))=0				;□6C未使用
trigger4 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = helper(23000),var(18)+const(size.ground.front)<=120
trigger4 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-95,-50]
trigger4 = fvar(27):=220
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2B→6C（発生19F）（対空）
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger5 = (var(50)&(Ceil(2.0**13)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = helper(23000),var(19)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger5 = helper(23000),var(19)+const(size.ground.front)<=250
trigger5 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-40+IfElse(helper(21000),var(0)<=180,0,-120),-10]
trigger5 = fvar(27):=240
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger6 = (var(50)&(Ceil(2.0**13)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = helper(23000),var(19)+const(size.ground.front)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger6 = helper(23000),var(19)+const(size.ground.front)<=250
trigger6 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-40+IfElse(helper(21000),var(0)<=180,0,-120),-10]
trigger6 = fvar(27):=240
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓2B→4C（発生9F）（対空）
trigger7 = fvar(9)>=0.030||var(59)<=3				;□中重力以上orAIレベル3以下
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger7 = helper(23000),var(9)+const(size.ground.front)<=115
trigger7 = Ceil(helper(23000),fvar(9))>=-130
trigger7 = fvar(27):=235
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

trigger8 = fvar(9)>=0.030||var(59)<=3				;□中重力以上orAIレベル3以下
trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger8 = helper(23000),var(9)+const(size.ground.front)<=115
trigger8 = Ceil(helper(23000),fvar(9))>=-130
trigger8 = fvar(27):=235
trigger8 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■2B始動空中コンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**23)))		;□2B始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓2B→5B
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movehit>=1&&time>=24
trigger1 = Ceil(fvar(27))=210

trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movehit>=1&&time>=24
trigger2 = Ceil(fvar(27))=210

;〓2B→4B
trigger3 = stateno=420&&numhelper(424)=1
trigger3 = helper(424),movehit>=1&&time>=24
trigger3 = Ceil(fvar(27))=220

trigger4 = stateno=420&&numhelper(425)=1
trigger4 = helper(425),movehit>=1&&time>=24
trigger4 = Ceil(fvar(27))=220

;〓2B→6C
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24
trigger5 = Ceil(fvar(27))=240

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24
trigger6 = Ceil(fvar(27))=240

;〓2B→4C
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24
trigger7 = Ceil(fvar(27))=235

trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24
trigger8 = Ceil(fvar(27))=235


;==============================================================================
;■5C始動空中コンボルート

;□5C┬→4B		（4B始動空中コンボルート）	○
;　　├→4A		（4A始動空中コンボルート）	○
;　　├→5A						○
;　　├→4C		（4C始動空中コンボルート）	○
;　　└→対空投げA	（ダウン追い討ちルート）	○

;------------------------------------------------------------------------------
;■5C始動Aルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**24)))				;□5C始動空中コンボルート

;〓5C→4B（発生18F）（対空）
trigger1 = stateno=230&&movehit>=1&&time>=19
trigger1 = helper(21000),var(0)=[80,185]			;□画面端付近
trigger1 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*18))*-1.0))=[80,185]
trigger1 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-90,-40]
trigger1 = fvar(27):=220
trigger1 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4A（発生10F）（対空）
trigger2 = stateno=230&&movehit>=1&&time>=17
trigger2 = (var(50)&(Ceil(2.0**1)|Ceil(2.0**4)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger2 = (Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*10))*-1.0))=[0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),60])||helper(21000),var(0)<=100
trigger2 = Ceil(helper(23000),fvar(10))+Ceil(fvar(36))=[-60,-10]
trigger2 = fvar(27):=205
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→5A（発生7F）（対空）
trigger3 = stateno=230&&movehit>=1&&time>=17
trigger3 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger3 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))<=50||helper(21000),var(0)<=140
trigger3 = Ceil(helper(23000),fvar(7))+Ceil(fvar(36))=[-30,0]
trigger3 = fvar(27):=200
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生4F）（対空）
trigger4 = var(59)>=4						;□AIレベル4以上
trigger4 = stateno=230&&movehit>=1&&time>=23
trigger4 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger4 = (var(50)&(Ceil(2.0**14)))=0
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger4 = Ceil(pos y+(vel y*6)+(const(movement.yaccel)*6*(6+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger4 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40
trigger4 = Ceil(helper(23000),fvar(4))>=-5
trigger4 = fvar(27):=235
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生7F）（対空）
trigger5 = var(59)>=4						;□AIレベル4以上
trigger5 = stateno=230&&movehit>=1&&time>=23
trigger5 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger5 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger5 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger5 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger5 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85]
trigger5 = Ceil(helper(23000),fvar(7))>=-15
trigger5 = fvar(27):=235
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→4C（発生7F）（対空）
trigger6 = var(59)>=4						;□AIレベル4以上
trigger6 = stateno=230&&movehit>=1&&time>=23
trigger6 = helper(21000),var(0)>=170				;□画面端から距離170以上
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger6 = Ceil(pos y+(vel y*9)+(const(movement.yaccel)*9*(9+1)/2.0))>0	;□着地2F前に1HIT目命中
trigger6 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*4))*-1.0))<=40)
trigger6 = !(Ceil(helper(23000),fvar(4))>=-5)
trigger6 = !(Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[50,85])
trigger6 = !(Ceil(helper(23000),fvar(7))>=-15)
trigger6 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*7))*-1.0))=[100,125]
trigger6 = Ceil(helper(23000),fvar(7))>=-40
trigger6 = fvar(27):=235
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5C→対空投げA（発生16F）（対空）
trigger7 = (var(50)&(Ceil(2.0**14)))||(var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))||var(59)<=2	;□AIレベル2以下or4C4B使用済み
trigger7 = stateno=230&&movehit>=1&&time>=19			;□3HIT目
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = Ceil(fvar(26)+((abs(enemynear(var(16)),GetHitVar(xvel)*16))*-1.0))=[20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back)),75]
trigger7 = Ceil(helper(23000),fvar(16))+Ceil(fvar(36))=[-110+Ceil(fvar(36)),-35]
trigger7 = fvar(27):=1500
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■5C始動空中コンボルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**24)))		;□5C始動空中コンボルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓5C→4B
trigger1 = stateno=230&&movehit>=1&&time>=19
trigger1 = Ceil(fvar(27))=220
;〓5C→4A
trigger2 = stateno=230&&movehit>=1&&time>=17
trigger2 = Ceil(fvar(27))=205
;〓5C→5A
trigger3 = stateno=230&&movehit>=1&&time>=17
trigger3 = Ceil(fvar(27))=200
;〓5C→4C
trigger4 = stateno=230&&movehit>=1&&time>=23
trigger4 = Ceil(fvar(27))=235
;〓5C→4C
trigger5 = stateno=230&&movehit>=1&&time>=23
trigger5 = Ceil(fvar(27))=235
;〓5C→4C
trigger6 = stateno=230&&movehit>=1&&time>=23
trigger6 = Ceil(fvar(27))=235
;〓5C→対空投げA
trigger7 = stateno=230&&movehit>=1&&time>=19
trigger7 = Ceil(fvar(27))=1500


;==============================================================================
;■ダウン追い討ちルート

;　　　　　　　　┌→烈風拳A→ぱっちんAB					AIレベル2以下	○
;　　　　　┌→5B┴→地雷設置A							AIレベル2以下	○
;　　　　　│
;□各種投げ┴┬→ダッシュ2A┬→2B┬→4C→6C┬→2C				AIレベル3以下	○
;　　　　　　└→2A*n───┘　　│　　　　└→2C→5B┬→地雷設置A(15%)		AIレベル4以上	○
;　　　　　　　　　　　　　　　　│　　　　　　　　　└→烈風拳A→ぱっちんAB	AIレベル4以上	○
;　　　　　　　　　　　　　　　　│
;　　　　　　　　　　　　　　　　└→5B→6C┬→2C→4C┬→烈風拳B→ぱっちんAB	AIレベル4以上	○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→地雷設置A		AIレベル3以下	○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→地雷設置B				○
;　　　　　　　　　　　　　　　　　　　　　│　　　　├→ゲイザー				○
;　　　　　　　　　　　　　　　　　　　　　│　　　　└→烈風拳A→ぱっちんAB			○
;　　　　　　　　　　　　　　　　　　　　　│
;　　　　　　　　　　　　　　　　　　　　　├→4C→溜め2C					○
;　　　　　　　　　　　　　　　　　　　　　├→地雷設置A					○
;　　　　　　　　　　　　　　　　　　　　　└→烈風拳A						○

;★EX地雷が逆ノックバックでヒット中6Cが当たるか判定する予定

;------------------------------------------------------------------------------
;■ダウン追い討ちルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**29)))							;□ダウン追い討ちルート

;〓通常対空テレポ全地面投げ→ダッシュ
trigger1 = var(59)>=3
trigger1 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = (enemynear(var(16)),stateno=[820,821])||(enemynear(var(16)),stateno=[1180,1181])||(enemynear(var(16)),stateno=1521)||(enemynear(var(16)),stateno=[1550,1551])||(enemynear(var(16)),stateno=[1820,1821])
trigger1 = IfElse(enemynear(var(16)),stateno=1550,enemynear(var(16)),time>=35,1)	;□対空投げB相打ち用ディレイ
trigger1 = helper(21000),var(0)>=70							;□画面端から距離70以上
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger1 = enemynear(var(16)),movetype=H
trigger1 = fvar(26)=[0,150]
trigger1 = var(47):=Ceil(2.0**10)
trigger1 = fvar(27):=100

;〓通常対空テレポ全地面投げ→2A（発生4F）（対地）
trigger2 = var(59)>=3
trigger2 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = (enemynear(var(16)),stateno=[820,821])||(enemynear(var(16)),stateno=[1180,1181])||(enemynear(var(16)),stateno=1521)||(enemynear(var(16)),stateno=[1550,1551])||(enemynear(var(16)),stateno=[1820,1821])
trigger2 = IfElse(enemynear(var(16)),stateno=1550,enemynear(var(16)),time>=39,1)	;□対空投げB相打ち用ディレイ
trigger2 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger2 = enemynear(var(16)),movetype=H
trigger2 = fvar(26)+(enemynear(var(16)),Const(size.mid.pos.y)*0.50)<=35||helper(21000),var(0)<=70
trigger2 = fvar(27):=400

;〓通常対空テレポ全地面投げダッシュ→5B（発生8F）（対地）
trigger3 = var(59)<=2
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = (enemynear(var(16)),stateno=[820,821])||(enemynear(var(16)),stateno=[1180,1181])||(enemynear(var(16)),stateno=1521)||(enemynear(var(16)),stateno=[1550,1551])||(enemynear(var(16)),stateno=[1820,1821])
trigger3 = IfElse(enemynear(var(16)),stateno=1550,enemynear(var(16)),time>=39,1)	;□対空投げB相打ち用ディレイ
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger3 = enemynear(var(16)),movetype=H
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[55,130]
trigger3 = fvar(27):=210

;〓ダッシュ→2A（発生4F）（対地）
trigger4 = (stateno=100&&time>=5)||stateno=101
trigger4 = (var(47)&(Ceil(2.0**10)))							;□ダッシュ短距離接近フラグ○
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger4 = enemynear(var(16)),movetype=H
trigger4 = fvar(26)+(enemynear(var(16)),Const(size.mid.pos.y)*0.50)-(vel x*(0.90-(0.90**4.0))/0.10)<=35
trigger4 = fvar(27):=400
trigger4 = var(48):=(var(48)|1)-(1)||1							;□コンボルート固定スイッチOFF

;〓2A→2A（発生4F）（対地）
trigger5 = (var(46)&(Ceil(2.0**19)))||Ceil(helper(24000),var(30)=0)			;□ダウン打撃無敵測定実験
trigger5 = stateno=400&&movehit>=1&&IfElse(var(59)>=5,time>=6,time>=8)			;□1HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger5 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger5 = IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger5 = helper(21000),var(0)<=95				;□画面端から距離90以内
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger5 = fvar(26)<=32
trigger5 = fvar(27):=400

;〓2A→2B（発生12F）（対地）
trigger6 = (var(46)&(Ceil(2.0**19)))||Ceil(helper(24000),var(30)=0)			;□ダウン打撃無敵測定実験
trigger6 = stateno=400&&movehit>=1&&IfElse(var(59)>=5||fvar(26)>=32||helper(21000),var(0)>=95,time>=6,time>=8)	;□1HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger6 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger6 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger6 = fvar(26)-(vel x*(0.85-(0.85**12.0))/0.15)-Ceil(IfElse((movehit=[1,12]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(13.0-movehit)))/(1-fvar(25))),0))<=40+(15)
trigger6 = fvar(27):=420

;〓2B→5B（発生8F）（対地）
trigger7 = helper(21000),var(0)<=140||Ceil(var(52)/100%10)=0				;□画面端から距離140以内or弱体化モード
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=IfElse(helper(21000),var(0)<=100,24,32)	;□2~4HIT目、画面端から距離100以内
trigger7 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger7 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(424),movehit)))/(1-fvar(25))),0))=[0,130]
trigger7 = fvar(27):=210

trigger8 = helper(21000),var(0)<=140||Ceil(var(52)/100%10)=0				;□画面端から距離140以内or弱体化モード
trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=IfElse(helper(21000),var(0)<=100,24,32)	;□2~4HIT目、画面端から距離100以内
trigger8 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger8 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(425),movehit)))/(1-fvar(25))),0))=[0,130]
trigger8 = fvar(27):=210

;〓2B→4C（発生9F）（対地）
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=IfElse(helper(21000),var(0)<=100,24,32)	;□2~4HIT目、画面端から距離100以内
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger9 = (var(50)&(Ceil(2.0**14)))=0
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger9 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(424),movehit)))/(1-fvar(25))),0))=[0,65]
trigger9 = fvar(27):=235

trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=IfElse(helper(21000),var(0)<=100,24,32)	;□2~4HIT目、画面端から距離100以内
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = (var(50)&(Ceil(2.0**14)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger10 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(425),movehit)))/(1-fvar(25))),0))=[0,65]
trigger10 = fvar(27):=235

;〓5B→4C（発生9F）（対地）
trigger11 = var(59)>=3						;□AIレベル3以上
trigger11 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger11 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger11 = (var(50)&(Ceil(2.0**14)))=0
trigger11 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger11 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,IfElse(Ceil(var(52)/100%10)=0,90,50)+(20)]	;□ダウン状態
trigger11 = fvar(27):=235

;〓5B→6C（発生15F）（対地）
trigger12 = var(59)>=3						;□AIレベル3以上
trigger12 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger12 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger12 = (var(50)&(Ceil(2.0**13)))=0
trigger12 = helper(21000),var(0)>=90				;□画面端から距離90以上
trigger12 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger12 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[70-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),210]
trigger12 = fvar(27):=240

;〓5B→地雷設置A（対地）
trigger13 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger13 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger13 = Ceil(random/10%100)<=15				;□確率判定
trigger13 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger13 = fvar(26)=[100,200]
trigger13 = fvar(27):=1200

;〓5B→烈風拳A（対地）
trigger14 = stateno=210&&movehit>=1&&time>=20			;□5HIT目
trigger14 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger14 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),200]
trigger14 = fvar(27):=1000

;〓4C→2C（発生17F）（対地）
trigger15 = helper(21000),var(0)<=120||var(59)<=3		;□画面端から距離90以内orAIレベル3以下
trigger15 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger15 = (var(50)&(Ceil(2.0**15)))=0
trigger15 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger15 = (fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)])||helper(21000),var(0)<=125
trigger15 = fvar(27):=440

;〓4C→6C（発生15F）（対地）
trigger16 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger16 = (var(50)&(Ceil(2.0**13)))=0
trigger16 = helper(21000),var(0)>=90				;□画面端から距離90以上
trigger16 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger16 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[70-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),210]
trigger16 = fvar(27):=240

;〓4C→烈風拳B（対地）
trigger17 = var(59)>=4						;□AIレベル4以上
trigger17 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger17 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger17 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger17 = Ceil(random/10%100)<=50				;□確率判定
trigger17 = (fvar(26)+(enemynear(var(16)),Const(size.mid.pos.y)*0.50)=[0,55])||helper(21000),var(0)<=100
trigger17 = fvar(27):=1001

;〓4C→地雷設置A（対地）
trigger18 = var(59)<=3						;□AIレベル3以下
trigger18 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger18 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger18 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger18 = Ceil(random/10%100)<=10				;□確率判定
trigger18 = helper(21000),var(0)>=125				;□画面端から距離125以上
trigger18 = fvar(26)=[100,200]
trigger18 = fvar(27):=1200

;〓4C→地雷設置B（対地）
trigger19 = !NumHelper(1260)
trigger19 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger19 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger19 = Ceil(random/10%100)<=IfElse(var(59)<=3,30,10)	;□確率判定
trigger19 = helper(21000),var(0)<=125				;□画面端から距離125以内
trigger19 = fvar(27):=1201

;〓4C→ゲイザー（対地）
trigger20 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger20 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger20 = Ceil(random/10%100)<=IfElse(var(59)<=3,35,15)	;□確率判定
trigger20 = helper(21000),var(0)=[120,150]			;□画面端から距離120~150
trigger20 = fvar(27):=1300

;〓4C→烈風拳A（対地）
trigger21 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger21 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger21 = fvar(27):=1000

;〓6C→2C（発生17F）（対地）
trigger22 = var(59)>=4						;□AIレベル4以上
trigger22 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger22 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger22 = (var(50)&(Ceil(2.0**15)))=0
trigger22 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger22 = (fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)])||helper(21000),var(0)<=125
trigger22 = fvar(27):=440

;〓6C→4C（発生9F）（対地）
trigger23 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger23 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger23 = (var(50)&(Ceil(2.0**14)))=0
trigger23 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger23 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,100]
trigger23 = fvar(27):=235

;〓6C→地雷設置A（対地）
trigger24 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger24 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger24 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger24 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger24 = Ceil(random/10%100)<=10				;□確率判定
trigger24 = helper(21000),var(0)>=125				;□画面端から距離125以上
trigger24 = fvar(26)=[60,200]
trigger24 = fvar(27):=1200

;〓6C→烈風拳A（対地）
trigger25 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger25 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger25 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger25 = fvar(27):=1000

;〓6C→ジャンプ（対地）（ノーマルモード以上）
trigger26 = var(59)>=3						;□AIレベル3以上
trigger26 = Ceil(var(52)/100%10)>=1
trigger26 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger26 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger26 = fvar(27):=42
trigger26 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)

;〓2C→4C（発生9F）（対地）
trigger27 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger27 = (stateno=[440,442])&&numhelper(450)=1
trigger27 = helper(450),movehit>=1&&time>=34
trigger27 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger27 = (var(50)&(Ceil(2.0**14)))=0
trigger27 = helper(21000),var(0)<=125				;□画面端から距離125以内
trigger27 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger27 = fvar(26)+Ceil(IfElse((helper(450),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(450),movehit)))/(1-fvar(25))),0))=[0,100]
trigger27 = fvar(27):=235

trigger28 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger28 = (stateno=[440,442])&&numhelper(451)=1
trigger28 = helper(451),movehit>=1&&time>=34
trigger28 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger28 = (var(50)&(Ceil(2.0**14)))=0
trigger28 = helper(21000),var(0)<=125				;□画面端から距離125以内
trigger28 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger28 = fvar(26)+Ceil(IfElse((helper(451),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(451),movehit)))/(1-fvar(25))),0))=[0,100]
trigger28 = fvar(27):=235

;〓2C→5B（発生8F）（対地）
trigger29 = var(59)>=4						;□AIレベル4以上
trigger29 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger29 = (stateno=[440,442])&&numhelper(450)=1
trigger29 = helper(450),movehit>=1&&time>=34
trigger29 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger29 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger29 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger29 = fvar(26)+Ceil(IfElse((helper(450),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(450),movehit)))/(1-fvar(25))),0))=[0,130]
trigger29 = fvar(27):=210

trigger30 = var(59)>=4						;□AIレベル4以上
trigger30 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger30 = (stateno=[440,442])&&numhelper(451)=1
trigger30 = helper(451),movehit>=1&&time>=34
trigger30 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger30 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger30 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger30 = fvar(26)+Ceil(IfElse((helper(451),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(451),movehit)))/(1-fvar(25))),0))=[0,130]
trigger30 = fvar(27):=210

;〓烈風拳A→ぱっちんB（対地）（ノーマルモード以上）
trigger31 = var(59)>=3						;□AIレベル3以上
trigger31 = Ceil(var(52)/100%10)>=1
trigger31 = stateno=1000&&time>=IfElse(Ceil(var(52)/100%10)>=2,19,31)
trigger31 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger31 = fvar(26)=[100,240]
trigger31 = fvar(27):=1401

;〓烈風拳A→ぱっちんB（対地）（弱体化モード）
trigger32 = var(59)>=3						;□AIレベル3以上
trigger32 = Ceil(var(52)/100%10)=0
trigger32 = stateno=1000&&time>=31
trigger32 = NumHelper(1020)>=1
trigger32 = helper(1020),movecontact
trigger32 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger32 = fvar(26)=[100,240]
trigger32 = fvar(27):=1401

trigger33 = var(59)>=3						;□AIレベル3以上
trigger33 = Ceil(var(52)/100%10)=0
trigger33 = stateno=1000&&time>=31
trigger33 = NumHelper(1050)>=1
trigger33 = helper(1050),movecontact
trigger33 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=L
trigger33 = fvar(26)=[100,240]
trigger33 = fvar(27):=1401

IgnoreHitPause = 1


;■ダウン追い討ちルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**29)))		;□ダウン追い討ちルート
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=L

;〓通常対空テレポ全地面投げ→ダッシュ
trigger1 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = Ceil(fvar(27))=100
;〓通常対空テレポ全地面投げ→2A
trigger2 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger2 = Ceil(fvar(27))=400
;〓通常対空テレポ全地面投げダッシュ→5B
trigger3 = (Ctrl&&stateno!=100)||(stateno=100&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger3 = Ceil(fvar(27))=210
;〓ダッシュ→2A
trigger4 = (stateno=100&&time>=5)||stateno=101
trigger4 = Ceil(fvar(27))=400
;〓2A→2A
trigger5 = stateno=400&&movehit>=1&&time>=6
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger5 = Ceil(fvar(27))=400
;〓2A→2B
trigger6 = stateno=400&&movehit>=1&&time>=6
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger6 = Ceil(fvar(27))=420
;〓2B→5B
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24
trigger7 = Ceil(fvar(27))=210
trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24
trigger8 = Ceil(fvar(27))=210
;〓2B→4C
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=24
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger9 = Ceil(fvar(27))=235
trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=24
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = Ceil(fvar(27))=235
;〓5B→4C
trigger11 = stateno=210&&movehit>=1&&time>=20
trigger11 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger11 = Ceil(fvar(27))=235
;〓5B→6C
trigger12 = stateno=210&&movehit>=1&&time>=20
trigger12 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger12 = Ceil(fvar(27))=240
;〓5B→地雷設置A
trigger13 = stateno=210&&movehit>=1&&time>=20
trigger13 = Ceil(fvar(27))=1200
;〓5B→烈風拳A
trigger14 = stateno=210&&movehit>=1&&time>=20
trigger14 = Ceil(fvar(27))=1000
;〓4C→2C
trigger15 = stateno=235&&movehit>=1&&time>=8
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger15 = Ceil(fvar(27))=440
;〓4C→6C
trigger16 = stateno=235&&movehit>=1&&time>=8
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger16 = Ceil(fvar(27))=240
;〓4C→烈風拳B
trigger17 = stateno=235&&movehit>=1&&time>=8
trigger17 = Ceil(fvar(27))=1001
;〓4C→地雷設置A
trigger18 = stateno=235&&movehit>=1&&time>=8
trigger18 = Ceil(fvar(27))=1200
;〓4C→地雷設置B
trigger19 = stateno=235&&movehit>=1&&time>=8
trigger19 = Ceil(fvar(27))=1201
;〓4C→ゲイザー
trigger20 = stateno=235&&movehit>=1&&time>=8
trigger20 = Ceil(fvar(27))=1300
;〓4C→烈風拳A
trigger21 = stateno=235&&movehit>=1&&time>=8
trigger21 = Ceil(fvar(27))=1000
;〓6C→2C
trigger22 = stateno=240&&movehit>=1&&time>=28
trigger22 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger22 = Ceil(fvar(27))=440
;〓6C→4C
trigger23 = stateno=240&&movehit>=1&&time>=28
trigger23 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger23 = Ceil(fvar(27))=235
;〓6C→地雷設置A
trigger24 = stateno=240&&movehit>=1&&time>=28
trigger24 = Ceil(fvar(27))=1200
;〓6C→烈風拳A
trigger25 = stateno=240&&movehit>=1&&time>=28
trigger25 = Ceil(fvar(27))=1000
;〓6C→ジャンプ
trigger26 = stateno=240&&movehit>=1&&time>=28
trigger26 = Ceil(fvar(27))=42
;〓2C→4C
trigger27 = (stateno=[440,442])&&numhelper(450)=1
trigger27 = helper(450),movehit>=1&&time>=34
trigger27 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger27 = Ceil(fvar(27))=235
trigger28 = (stateno=[440,442])&&numhelper(451)=1
trigger28 = helper(451),movehit>=1&&time>=34
trigger28 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger28 = Ceil(fvar(27))=235
;〓2C→5B
trigger29 = (stateno=[440,442])&&numhelper(450)=1
trigger29 = helper(450),movehit>=1&&time>=34
trigger29 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger29 = Ceil(fvar(27))=210
trigger30 = (stateno=[440,442])&&numhelper(451)=1
trigger30 = helper(451),movehit>=1&&time>=34
trigger30 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger30 = Ceil(fvar(27))=210
;〓烈風拳A→ぱっちんB
trigger31 = Ceil(var(52)/100%10)>=1
trigger31 = stateno=1000&&time>=19
trigger31 = fvar(26)=[100,240]
trigger31 = Ceil(fvar(27))=1401
;〓烈風拳A→ぱっちんB
trigger32 = Ceil(var(52)/100%10)=0
trigger32 = stateno=1000&&time>=31
trigger32 = NumHelper(1020)>=1
trigger32 = helper(1020),movecontact
trigger32 = Ceil(fvar(27))=1401
trigger33 = Ceil(var(52)/100%10)=0
trigger33 = stateno=1000&&time>=31
trigger33 = NumHelper(1050)>=1
trigger33 = helper(1050),movecontact
trigger33 = Ceil(fvar(27))=1401


;==============================================================================
;■EX投げ追い討ちルート

;□EXコマンド投げ→5B（5B始動ダウン追い討ちアドリブルート）

;------------------------------------------------------------------------------
;■EX投げ追い討ちルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(Ceil(2.0**28)))					;□EX投げ追い討ちルート

;〓5B（発生8F）（対地）
trigger1 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),125]
trigger1 = fvar(27):=210
IgnoreHitPause = 1

;■EX投げ追い討ちルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(Ceil(2.0**28)))			;□EX投げ追い討ちルート
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=A

;〓5B
trigger1 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger1 = Ceil(fvar(27))=210


;==============================================================================
;■5A始動アドリブコンボ

;□5A┬→4C(20%)	（4C始動アドリブコンボ）			○
;　　│
;　　├→5B		（5B始動Aルート）（5B始動Bルート）		○
;　　├→4C		（4C始動アドリブコンボ）			○
;　　├→4B		（4B始動アドリブコンボ）（P2立ち限定）		○
;　　├→4B		（4B始動アドリブコンボ）（P2しゃがみ限定）	○
;　　├→6C		（6C始動アドリブコンボ）			○
;　　│
;　　├→4B	（対空）（4B始動空中コンボルート）			○
;　　├→4C(50%)（対空）（4C始動空中コンボルート）			○
;　　├→3C	（対空）（3C始動空中コンボルート）（遠距離時ガード連携）○
;　　└→4C	（対空）（4C始動空中コンボルート）			○

;------------------------------------------------------------------------------
;■5Aキャンセル予定決定

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルートNG

;〓5A→4C（発生9F）（対地）
trigger1 = stateno=200&&movehit>=1&&time>=9			;□1~2HIT目
trigger1 = Ceil(random/10%100)<=20				;□確率判定
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[80-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger1 = fvar(27):=235
trigger1 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→5B（発生8F）（対地）
trigger2 = stateno=200&&movehit>=1&&time>=9			;□1~2HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger2 = fvar(27):=210
trigger2 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4C（発生9F）（対地）
trigger3 = stateno=200&&movehit>=1&&time>=9			;□1~2HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger3 = fvar(27):=235
trigger3 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4B（発生18F）（対地）（P2立ち状態）
trigger4 = stateno=200&&movehit>=1&&time=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger4 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger4 = NumTarget(201)>0
trigger4 = Target(201),Time>0					;□2HIT目限定
trigger4 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger4 = enemynear(var(16)),Const(size.head.pos.y)<=-60	;□身長判定
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger4 = fvar(27):=220
trigger4 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4B（発生18F）（対地）（P2しゃがみ状態）
trigger5 = stateno=200&&movehit>=1&&time=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger5 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger5 = NumTarget(201)>0
trigger5 = Target(201),Time>0					;□2HIT目限定
trigger5 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=C
trigger5 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
trigger5 = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
trigger5 = fvar(26)+Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger5 = fvar(27):=220
trigger5 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→6C（発生15F）（対地）
trigger6 = stateno=200&&movehit>=1&&time=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger6 = (var(50)&(Ceil(2.0**13)))=0
trigger6 = NumTarget(201)>0
trigger6 = Target(201),Time>0					;□2HIT目限定
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[80-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),220]
trigger6 = fvar(27):=240
trigger6 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4B（発生18F）（対空）
trigger7 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger7 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger7 = helper(23000),var(18)+const(size.ground.front)<=165
trigger7 = Ceil(helper(23000),fvar(18))+Ceil(fvar(36))=[-110,-50]
trigger7 = fvar(27):=220
trigger7 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4C（発生9F）（対空）
trigger8 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = Ceil(random/10%100)<=50				;□確率判定
trigger8 = helper(21000),var(0)>=250				;□画面端から距離250以上
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger8 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger8 = helper(23000),var(9)+const(size.ground.front)<=90
trigger8 = Ceil(helper(23000),fvar(9))>=-130
trigger8 = fvar(27):=235
trigger8 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→3C（発生19F）（対空）（遠距離時ガード連携）
trigger9 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger9 = (var(50)&(Ceil(2.0**16)))=0
trigger9 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger9 = helper(23000),var(19)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger9 = helper(23000),var(19)+const(size.ground.front)<=210
trigger9 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-160,-60]
trigger9 = fvar(27):=460
trigger9 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

;〓5A→4C（発生9F）（対空）
trigger10 = stateno=200&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)>=1,10,9)	;□1~2HIT目
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = (var(50)&(Ceil(2.0**14)))=0
trigger10 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=A
trigger10 = helper(23000),var(9)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger10 = helper(23000),var(9)+const(size.ground.front)<=115
trigger10 = Ceil(helper(23000),fvar(9))>=-140
trigger10 = fvar(27):=235
trigger10 = var(48):=(var(48)|1)-(1)||1				;□コンボルート固定スイッチOFF

IgnoreHitPause = 1


;■5A始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A

;〓5A→4C
trigger1 = stateno=200&&movehit>=1&&time>=9
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = Ceil(fvar(27))=235
;〓5A→5B
trigger2 = stateno=200&&movehit>=1&&time>=9
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = Ceil(fvar(27))=210
;〓5A→4C
trigger3 = stateno=200&&movehit>=1&&time>=9
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = Ceil(fvar(27))=235
;〓5A→4B
trigger4 = stateno=200&&movehit>=1&&time>=9
trigger4 = Ceil(fvar(27))=220
;〓5A→4B
trigger5 = stateno=200&&movehit>=1&&time>=9
trigger5 = Ceil(fvar(27))=220
;〓5A→6C
trigger6 = stateno=200&&movehit>=1&&time>=9
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger6 = Ceil(fvar(27))=240
;〓5A→4B
trigger7 = stateno=200&&movehit>=1&&time>=9
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger7 = Ceil(fvar(27))=220
;〓5A→4C
trigger8 = stateno=200&&movehit>=1&&time>=9
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger8 = Ceil(fvar(27))=235
;〓5A→3C
trigger9 = stateno=200&&movehit>=1&&time>=9
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger9 = Ceil(fvar(27))=460
;〓5A→4C
trigger10 = stateno=200&&movehit>=1&&time>=9
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger10 = Ceil(fvar(27))=235


;==============================================================================
;■2A始動アドリブコンボ

;□2A┬→5B	（5B始動Aルート）（5B始動Bルート）	○
;　　│
;　　├→2B	（2B始動アドリブコンボ）		○
;　　└→4C	（4C始動アドリブコンボ）		○

;------------------------------------------------------------------------------
;■2Aキャンセル予定決定

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓2A→5B（発生8F）（対地）
trigger1 = stateno=400&&movehit>=1&&time>=6			;□1HIT目
trigger1 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger1 = fvar(27):=210

;〓2A→2B（発生12F）（対地）
trigger2 = stateno=400&&movehit>=1&&time>=6			;□1HIT目
trigger2 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,12]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(13.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),40]
trigger2 = fvar(27):=420

;〓2A→4C（発生9F）（対地）
trigger3 = stateno=400&&movehit>=1&&time>=6			;□1HIT目
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A)
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger3 = fvar(27):=235

IgnoreHitPause = 1


;■2A始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C

;〓2A→5B
trigger1 = stateno=400&&movehit>=1&&time>=6
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger1 = Ceil(fvar(27))=210
;〓2A→2B
trigger2 = stateno=400&&movehit>=1&&time>=6
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger2 = Ceil(fvar(27))=420
;〓2A→4C
trigger3 = stateno=400&&movehit>=1&&time>=6
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = Ceil(fvar(27))=235


;==============================================================================
;■4A始動アドリブコンボ

;□4A┬→2B　	（2B始動アドリブコンボ）	○
;　　├→5B　	（5B始動Bルート）		○
;　　│
;　　├→4C　	（4C始動アドリブコンボ）	○
;　　├→4B　	（4B始動アドリブコンボ）	○
;　　│
;　　├→3C　	（3C始動アドリブコンボ）	○
;　　├→2C　	（2C始動アドリブコンボ）	○
;　　└→6C　	（6C始動アドリブコンボ）	○

;------------------------------------------------------------------------------
;■4Aキャンセル予定決定

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0						;□コンボルート固定スイッチNG

;〓4A→2B（発生22F）（対地）
trigger1 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger1 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),75]
trigger1 = fvar(27):=420

;〓4A→5B（発生8F）（対地）
trigger2 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger2 = fvar(27):=210

;〓4A→4C（発生9F）（対地）
trigger3 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),110]
trigger3 = fvar(27):=235

;〓4A→4B（発生18F）（対地）
trigger4 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger4 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger4 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger4 = fvar(27):=220

;〓4A→3C（発生19F）（対地）
trigger5 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger5 = (var(50)&(Ceil(2.0**16)))=0
trigger5 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger5 = fvar(26)+Ceil(IfElse((movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger5 = fvar(27):=460

;〓4A→2C（発生17F）（対空）
trigger6 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger6 = (var(50)&(Ceil(2.0**15)))=0
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,70+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger6 = fvar(27):=440

;〓4C→6C（発生20F）（対地）
trigger7 = stateno=205&&movehit>=1&&time>=12				;□3HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger7 = (var(50)&(Ceil(2.0**13)))=0
trigger7 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger7 = fvar(26)+Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),210]
trigger7 = fvar(27):=240

IgnoreHitPause = 1


;■4A始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓4A→2B
trigger1 = stateno=205&&movehit>=1&&time>=12
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger1 = Ceil(fvar(27))=420
;〓4A→5B
trigger2 = stateno=205&&movehit>=1&&time>=12
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger2 = Ceil(fvar(27))=210
;〓4A→4C
trigger3 = stateno=205&&movehit>=1&&time>=12
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = Ceil(fvar(27))=235
;〓4A→4B
trigger4 = stateno=205&&movehit>=1&&time>=12
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger4 = Ceil(fvar(27))=220
;〓4B→3C
trigger5 = stateno=205&&movehit>=1&&time>=12
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger5 = Ceil(fvar(27))=460
;〓3C→2C
trigger6 = stateno=205&&movehit>=1&&time>=12
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger6 = Ceil(fvar(27))=440
;〓4C→6C
trigger7 = stateno=205&&movehit>=1&&time>=12
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger7 = Ceil(fvar(27))=240


;==============================================================================
;■4C始動アドリブコンボ

;□4C┬→4B		（4B始動アドリブコンボ）	○
;　　├→3C		（3C始動空中コンボルート）	○
;　　├→5B		（5B始動Bルート）		○
;　　├→6C		（6C始動空中コンボルート）	○
;　　│
;　　├→烈風拳B					○
;　　├→烈風拳A					○
;　　└→ハイジャンプ					○

;------------------------------------------------------------------------------
;■4C始動アドリブコンボ

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0							;□コンボルート固定スイッチNG

;〓4C→4B（発生18+2F）（対地）
trigger1 = stateno=235&&movehit>=1&&time>=13					;□3HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger1 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger1 = enemynear(var(16)),Const(size.head.pos.y)<=-60			;□身長判定
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[50-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),185]
trigger1 = fvar(27):=220

;〓4C→3C（発生19F）（対地）
trigger2 = Ceil(var(52)/100%10)>=1||(power>=2000&&helper(21000),var(0)>=200)	;□ノーマルモード以上orゲージ保有画面中央
trigger2 = stateno=235&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger2 = (var(50)&(Ceil(2.0**16)))=0
trigger2 = enemynear(var(16)),Const(size.head.pos.y)<=-60			;□身長判定
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger2 = fvar(27):=460

;〓4C→3C（発生24F）（対地）
trigger3 = Ceil(var(52)/100%10)>=1||(power>=2000&&helper(21000),var(0)>=200)	;□ノーマルモード以上orゲージ保有画面中央
trigger3 = stateno=235&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger3 = (var(50)&(Ceil(2.0**16)))=0
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),195]
trigger3 = fvar(27):=460

;〓4C→5B（発生8F）（対地）
trigger4 = stateno=235&&movehit>=1&&time>=13					;□3HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger4 = fvar(27):=210

;〓4C→6C（発生20F）（対地）
trigger5 = stateno=235&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger5 = (var(50)&(Ceil(2.0**13)))=0
trigger5 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger5 = fvar(26)+Ceil(IfElse((movehit=[1,20]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(21.0-movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),210]
trigger5 = fvar(27):=240

;〓4C→ハイジャンプ（対地）（ノーマルモード以上）
trigger6 = Ceil(var(52)/100%10)>=1
trigger6 = stateno=235&&movehit>=1&&time>=13					;□3HIT目
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),130]
trigger6 = fvar(27):=43
trigger6 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)

;〓4C→烈風拳B（対地）
trigger7 = stateno=235&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger7 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger7 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),90]
trigger7 = fvar(27):=1001

;〓4C→烈風拳A（対地）
trigger8 = stateno=235&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,9,13)	;□2~3HIT目
trigger8 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger8 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),185]
trigger8 = fvar(27):=1000

IgnoreHitPause = 1


;■4C始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓4C→4B
trigger1 = stateno=235&&movehit>=1&&time>=13
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger1 = Ceil(fvar(27))=220
;〓4C→3C
trigger2 = stateno=235&&movehit>=1&&time>=9
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger2 = Ceil(fvar(27))=460
;〓4C→3C
trigger3 = stateno=235&&movehit>=1&&time>=9
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger3 = Ceil(fvar(27))=460
;〓4C→5B
trigger4 = stateno=235&&movehit>=1&&time>=9
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = Ceil(fvar(27))=210
;〓4C→6C
trigger5 = stateno=235&&movehit>=1&&time>=9
trigger5 = 1;enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=20
trigger5 = Ceil(fvar(27))=240
;〓4C→ハイジャンプ
trigger6 = stateno=235&&movehit>=1&&time>=13
trigger6 = Ceil(fvar(27))=43
;〓4C→烈風拳B
trigger7 = stateno=235&&movehit>=1&&time>=9
trigger7 = Ceil(fvar(27))=1001
;〓4C→烈風拳A
trigger8 = stateno=235&&movehit>=1&&time>=9
trigger8 = Ceil(fvar(27))=1000


;==============================================================================
;■2B始動アドリブコンボ

;□2B┬→4C		（4C始動アドリブコンボ）	○
;　　├→4B		（4B始動アドリブコンボ）	○
;　　├→5B		（5B始動Bルート）		○
;　　├→3C		（3C始動空中コンボルート）	○
;　　├→6C		（6C始動空中コンボルート）	○
;　　└→バックジャンプ					○

;------------------------------------------------------------------------------
;■2B始動アドリブコンボ

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓2B→4C（発生9F）（対地）
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),95]
trigger1 = fvar(27):=235

trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),95]
trigger2 = fvar(27):=235

;〓2B→4B（発生18F）（対地）
trigger3 = stateno=420&&numhelper(424)=1
trigger3 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger3 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger3 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger3 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),140]
trigger3 = fvar(27):=220

trigger4 = stateno=420&&numhelper(425)=1
trigger4 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger4 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger4 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),140]
trigger4 = fvar(27):=220

;〓2B→5B（発生8F）（対地）
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger5 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger5 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger5 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),100]
trigger5 = fvar(27):=210

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger6 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),100]
trigger6 = fvar(27):=210

;〓2B→3C（発生19F）（対地）
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger7 = (var(50)&(Ceil(2.0**16)))=0
trigger7 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger7 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),115]
trigger7 = fvar(27):=460

trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger8 = (var(50)&(Ceil(2.0**16)))=0
trigger8 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger8 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),115]
trigger8 = fvar(27):=460

;〓2B→3C（発生24F）（対地）
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger9 = (var(50)&(Ceil(2.0**16)))=0
trigger9 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger9 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-helper(424),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),195]
trigger9 = fvar(27):=460

trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger10 = (var(50)&(Ceil(2.0**16)))=0
trigger10 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger10 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-helper(425),movehit)))/(1-fvar(25))),0))=[0-enemynear(var(16)),const(size.ground.back),195]
trigger10 = fvar(27):=460

;〓2B→6C（発生24F）（対地）
trigger11 = stateno=420&&numhelper(424)=1
trigger11 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger11 = (var(50)&(Ceil(2.0**13)))=0
trigger11 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger11 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-helper(424),movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),220]
trigger11 = fvar(27):=240

trigger12 = stateno=420&&numhelper(425)=1
trigger12 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger12 = (var(50)&(Ceil(2.0**13)))=0
trigger12 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger12 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-helper(425),movehit)))/(1-fvar(25))),0))=[120-enemynear(var(16)),const(size.ground.back),220]
trigger12 = fvar(27):=240

;〓2B→ジャンプ（対地）（ノーマルモード以上）
trigger13 = Ceil(var(52)/100%10)>=1
trigger13 = stateno=420&&numhelper(424)=1
trigger13 = helper(424),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger13 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger13 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),250]
trigger13 = fvar(27):=42
trigger13 = var(47):=Ceil(2.0**16)

trigger14 = Ceil(var(52)/100%10)>=1
trigger14 = stateno=420&&numhelper(425)=1
trigger14 = helper(425),movehit>=1&&time>=24			;□2HIT目以降ヒット中
trigger14 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger14 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),250]
trigger14 = fvar(27):=42
trigger14 = var(47):=Ceil(2.0**16)

IgnoreHitPause = 1


;■2B始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓2B→4C
trigger1 = stateno=420&&numhelper(424)=1
trigger1 = helper(424),movehit>=1&&time>=24
trigger1 = Ceil(fvar(27))=235

trigger2 = stateno=420&&numhelper(425)=1
trigger2 = helper(425),movehit>=1&&time>=24
trigger2 = Ceil(fvar(27))=235
;〓2B→4B
trigger3 = stateno=420&&numhelper(424)=1
trigger3 = helper(424),movehit>=1&&time>=24
trigger3 = Ceil(fvar(27))=220

trigger4 = stateno=420&&numhelper(425)=1
trigger4 = helper(425),movehit>=1&&time>=24
trigger4 = Ceil(fvar(27))=220
;〓2B→5B
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24
trigger5 = Ceil(fvar(27))=210

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24
trigger6 = Ceil(fvar(27))=210
;〓2B→3C
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24
trigger7 = Ceil(fvar(27))=460

trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24
trigger8 = Ceil(fvar(27))=460
;〓2B→3C
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=24
trigger9 = Ceil(fvar(27))=460

trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=24
trigger10 = Ceil(fvar(27))=460
;〓2B→6C
trigger11 = stateno=420&&numhelper(424)=1
trigger11 = helper(424),movehit>=1&&time>=24
trigger11 = Ceil(fvar(27))=240

trigger12 = stateno=420&&numhelper(425)=1
trigger12 = helper(425),movehit>=1&&time>=24
trigger12 = Ceil(fvar(27))=240
;〓2B→ジャンプ
trigger13 = stateno=420&&numhelper(424)=1
trigger13 = helper(424),movehit>=1&&time>=24
trigger13 = Ceil(fvar(27))=42

trigger14 = stateno=420&&numhelper(425)=1
trigger14 = helper(425),movehit>=1&&time>=24
trigger14 = Ceil(fvar(27))=42


;==============================================================================
;■4B始動アドリブコンボ

;□4B┬→2B		（2B始動アドリブコンボ）	○
;　　├→4C		（4C始動アドリブコンボ）	○
;　　├→4C		（4C始動アドリブコンボ）	○
;　　├→2B		（2B始動アドリブコンボ）	○
;　　│
;　　├→5B		（5B始動Bルート）		○
;　　├→3C		（3C始動空中コンボルート）	○
;　　├→ぱっちんEX					○
;　　├→6C		（6C始動空中コンボルート）	○
;　　│
;　　├→ぱっちんEX					○
;　　├→ジャンプ					○
;　　└→烈風A						○

;------------------------------------------------------------------------------
;■4B始動アドリブコンボ

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓4B→2B（発生22F）（対地）
trigger1 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=22
trigger1 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,22]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(23.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger1 = fvar(27):=420

;〓4B→4C（発生9F）（対地）
trigger2 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),110]
trigger2 = fvar(27):=235

;〓4B→4C（発生9F）（対地）
trigger3 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=C
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger3 = fvar(27):=235

;〓4B→2B（発生24F）（対地）
trigger4 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger4 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),125]
trigger4 = fvar(27):=420

;〓4B→5B（発生8F）（対地）
trigger5 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger5 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger5 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger5 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger5 = fvar(27):=210

;〓4B→3C（発生19F）（対地）
trigger6 = Ceil(var(52)/100%10)>=1||(power>=2000&&helper(21000),var(0)>=200)	;□ノーマルモード以上orゲージ保有画面中央
trigger6 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger6 = (var(50)&(Ceil(2.0**16)))=0
trigger6 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)			;□身長判定
trigger6 = fvar(26)+Ceil(IfElse((movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger6 = fvar(27):=460

;〓4B→3C（発生24F）（対地）
trigger7 = Ceil(var(52)/100%10)>=1||(power>=2000&&helper(21000),var(0)>=200)	;□ノーマルモード以上orゲージ保有画面中央
trigger7 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger7 = (var(50)&(Ceil(2.0**16)))=0
trigger7 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger7 = fvar(26)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),195]
trigger7 = fvar(27):=460

;〓4B→ぱっちんEX（発生18F）（対地）
trigger8 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger8 = power>=3000
trigger8 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger8 = helper(21000),var(0)>=340				;□画面端から距離340以上
trigger8 = fvar(26)=[70-enemynear(var(16)),const(size.ground.back),200]
trigger8 = fvar(27):=1402

;〓4B→6C（発生24F）（対地）
trigger9 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger9 = (var(50)&(Ceil(2.0**13)))=0
trigger9 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger9 = fvar(26)+Ceil(IfElse((movehit=[1,24]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(25.0-movehit)))/(1-fvar(25))),0))=[80-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),220]
trigger9 = fvar(27):=240

;〓4B→ぱっちんEX（発生18F）（対地）
trigger10 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger10 = power>=3000
trigger10 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger10 = helper(21000),var(0)>=125				;□画面端から距離125以上
trigger10 = fvar(26)=[70-enemynear(var(16)),const(size.ground.back),200]
trigger10 = fvar(27):=1402

;〓4B→ジャンプ（対地）（ノーマルモード以上）
trigger11 = Ceil(var(52)/100%10)>=1
trigger11 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger11 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger11 = fvar(26)=[0-enemynear(var(16)),const(size.ground.back),250]
trigger11 = fvar(27):=42
trigger11 = var(47):=Ceil(2.0**15)

;〓4B→烈風拳A（対地）
trigger12 = stateno=220&&movehit>=1&&time>=28			;□4HIT目
trigger12 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger12 = fvar(26)=[160,270]
trigger12 = fvar(27):=1000

IgnoreHitPause = 1


;■4B始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓4B→2B
trigger1 = stateno=220&&movehit>=1&&time>=28
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=22
trigger1 = Ceil(fvar(27))=420
;〓4B→4C
trigger2 = stateno=220&&movehit>=1&&time>=28
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = enemynear(var(16)),statetype=S
trigger2 = Ceil(fvar(27))=235
;〓4B→4C
trigger3 = stateno=220&&movehit>=1&&time>=28
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = enemynear(var(16)),statetype=C
trigger3 = Ceil(fvar(27))=235
;〓4B→2B
trigger4 = stateno=220&&movehit>=1&&time>=28
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger4 = Ceil(fvar(27))=420

;〓4B→5B
trigger5 = stateno=220&&movehit>=1&&time>=28
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger5 = Ceil(fvar(27))=210
;〓4B→3C
trigger6 = stateno=220&&movehit>=1&&time>=28
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger6 = Ceil(fvar(27))=460
;〓4B→3C
trigger7 = stateno=220&&movehit>=1&&time>=28
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger7 = Ceil(fvar(27))=460
;〓4B→ぱっちんEX
trigger8 = stateno=220&&movehit>=1&&time>=28
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger8 = Ceil(fvar(27))=1402
;〓4B→6C
trigger9 = stateno=220&&movehit>=1&&time>=28
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=24
trigger9 = Ceil(fvar(27))=240
;〓4B→ぱっちんEX
trigger10 = stateno=220&&movehit>=1&&time>=28
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger10 = Ceil(fvar(27))=1402
;〓4B→ジャンプ
trigger11 = stateno=220&&movehit>=1&&time>=28
trigger11 = Ceil(fvar(27))=42
;〓4B→烈風拳A
trigger12 = stateno=220&&movehit>=1&&time>=28
trigger12 = Ceil(fvar(27))=1000


;==============================================================================
;■3C始動アドリブコンボ

;□3C┬→全地面投げ		（ダウン追い討ちルート）				　　体力50%以下		　　　 ○
;　　├→EXコマンド投げ		（EXコマンド投げ始動コンボルート）（画面端から距離340以上） 根性値突破用or4ゲージ以上　○
;　　│
;　　├→2C			（2C始動空中コンボルート）（ノーマルモード以上or4C使用済み）	○
;　　├→2B			（2B始動アドリブコンボ）	○
;　　│
;　　├→5B			（5B始動Bルート）		○
;　　│
;　　├→4C			（4C始動アドリブコンボ）	○
;　　├→4B			（4B始動アドリブコンボ）	○
;　　├→EXぱっちん					（画面端から距離430以上）	○
;　　├→6C			（6C始動空中コンボルート）				○
;　　│
;　　├→全地面投げ		（ダウン追い討ちルート）				○
;　　├→EXコマンド投げ		（EXコマンド投げ始動コンボルート）			○
;　　│
;　　├→5C			（5C始動アドリブコンボ）				○
;　　├→EXぱっちん					（画面端から距離125以上）	○
;　　│
;　【連携】
;　　│　　　　　　　　　　　　　　　┌→テレポEX	（ダウン追い討ちルート）　2ゲージ
;　　└(340以上)→×烈風AB→ぱっちんB┴→全地面投げ	（ダウン追い討ちルート）　5ゲージ

;------------------------------------------------------------------------------
;■3C始動アドリブコンボ

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓3C→全地面投げ（発生19+2F）（対地）
trigger1 = (LifeMax/10.0)*5>=Life
trigger1 = (var(58)&(Ceil(2.0**28)))
trigger1 = (power=PowerMax||power>=3000)&&fvar(20)>=600
trigger1 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,32,35)	;□3~4HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger1 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger1 = fvar(26)-Ceil(IfElse((movehit=[1,21]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(22.0-movehit)))/(1-fvar(25))),0))=[-80,80]
trigger1 = fvar(27):=1800

;〓3C→EXコマンド投げ（発生10F）（対地）（画面中央）（ノーマルモード）
trigger2 = var(59)>=3
trigger2 = (enemynear(var(16)),LifeMax/10.0)*3>=enemynear(var(16)),Life||power>=4000
trigger2 = Ceil(var(52)/100%10)=1					;□ノーマルモード
trigger2 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger2 = stateno=460&&movehit>=1&&time>=35				;□3~4HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=10
trigger2 = power>=1000
trigger2 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger2 = helper(21000),var(0)>=340					;□画面端から距離340以上
trigger2 = fvar(26)-Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger2 = fvar(27):=2800

;〓3C→EXコマンド投げ（発生1F）（対地）（画面中央）（ボスモード）
trigger3 = var(59)>=3
trigger3 = (enemynear(var(16)),LifeMax/10.0)*3>=enemynear(var(16)),Life||power>=4000
trigger3 = Ceil(var(52)/100%10)>=2					;□ボスモード
trigger3 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger3 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=1
trigger3 = power>=1000
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = helper(21000),var(0)>=340					;□画面端から距離340以上
trigger3 = fvar(26)-Ceil(IfElse((movehit=[1,6]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(7.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger3 = fvar(27):=2800

;〓3C→2C（発生17F）（対地）
trigger4 = Ceil(var(52)/100%10)>=1||(var(50)&(Ceil(2.0**14)))		;□ノーマルモード以上or4C使用済み
trigger4 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger4 = (var(50)&(Ceil(2.0**15)))=0
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)-Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,70+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger4 = fvar(27):=440

;〓3C→2B（発生21F）（対地）
trigger5 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger5 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger5 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger5 = fvar(26)-Ceil(IfElse((movehit=[1,21]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(22.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger5 = fvar(27):=420

;〓3C→5B（発生8F）（対地）
trigger6 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger6 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger6 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger6 = fvar(26)-Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),115]
trigger6 = fvar(27):=210

;〓3C→4C（発生9F）（対地）
trigger7 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger7 = (var(50)&(Ceil(2.0**14)))=0
trigger7 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger7 = fvar(26)-Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),110]
trigger7 = fvar(27):=235

;〓3C→4C（発生9F）（対地）
trigger8 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger8 = (var(50)&(Ceil(2.0**14)))=0
trigger8 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=C
trigger8 = fvar(26)-Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger8 = fvar(27):=235

;〓3C→4B（発生18F）（対地）
trigger9 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger9 = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
trigger9 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger9 = fvar(26)-Ceil(IfElse((movehit=[1,18]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(19.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger9 = fvar(27):=220

;〓3C→ぱっちんEX（発生18F）（対地）
trigger10 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger10 = power>=3000
trigger10 = Ceil(random/10%100)<=Ceil(power/1000.0)*5			;□確率判定
trigger10 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger10 = helper(21000),var(0)>=430					;□画面端から距離430以上
trigger10 = fvar(26)=[70-enemynear(var(16)),const(size.ground.back),200]
trigger10 = fvar(27):=1402

;〓3C→6C（発生19F）（対地）
trigger11 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger11 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger11 = (var(50)&(Ceil(2.0**13)))=0
trigger11 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger11 = fvar(26)-Ceil(IfElse((movehit=[1,19]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(20.0-movehit)))/(1-fvar(25))),0))=[80-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),220]
trigger11 = fvar(27):=240

;〓3C→全地面投げ（発生19+2F）（対地）
trigger12 = (LifeMax/10.0)*5>=Life
trigger12 = (var(58)&(Ceil(2.0**28)))
trigger12 = (power=PowerMax||power>=3000)&&fvar(20)>=600
trigger12 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,32,35)	;□3~4HIT目
trigger12 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger12 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger12 = fvar(26)-Ceil(IfElse((movehit=[1,21]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(22.0-movehit)))/(1-fvar(25))),0))=[-80,80]
trigger12 = fvar(27):=1800

;〓3C→EXコマンド投げ（発生10F）（対地）（画面中央）（ノーマルモード）
trigger13 = var(59)>=3
trigger13 = Ceil(var(52)/100%10)=1					;□ノーマルモード
trigger13 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger13 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger13 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=10
trigger13 = power>=1000
trigger13 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger13 = fvar(26)-Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),49]
trigger13 = fvar(27):=2800

;〓3C→EXコマンド投げ（発生1F）（対地）（画面中央）（ボスモード）
trigger14 = var(59)>=3
trigger14 = Ceil(var(52)/100%10)>=2					;□ボスモード
trigger14 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger14 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger14 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=1
trigger14 = power>=1000
trigger14 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger14 = fvar(26)-Ceil(IfElse((movehit=[1,6]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(7.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),60]
trigger14 = fvar(27):=2800

;〓3C→ぱっちんEX（発生18F）（対地）
trigger15 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger15 = power>=3000
trigger15 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger15 = helper(21000),var(0)>=125					;□画面端から距離125以上
trigger15 = fvar(26)=[70-enemynear(var(16)),const(size.ground.back),200]
trigger15 = fvar(27):=1402

;〓3C→5C（発生23F）（対地）
trigger16 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=23
trigger16 = (var(50)&(Ceil(2.0**12)))=0
trigger16 = (enemynear(var(16)),statetype=S&&enemynear(var(16)),Const(size.head.pos.y)<=-60)||(enemynear(var(16)),statetype=C&&(enemynear(var(16)),Const(size.mid.pos.y)*0.90)<=-60)				;□身長判定
trigger16 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger16 = fvar(26)-Ceil(IfElse((movehit=[1,23]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(24.0-movehit)))/(1-fvar(25))),0))=[125-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),140]
trigger16 = fvar(27):=230

;〓3C→烈風拳A（対地）
trigger17 = Ceil(var(52)/100%10)>=1					;□ノーマルモード以上
trigger17 = stateno=460&&movehit>=1&&time>=35				;□4HIT目
trigger17 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger17 = fvar(26)=[160,270]
trigger17 = fvar(27):=1000

IgnoreHitPause = 1


;■3C始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓3C→全地面投げ
trigger1 = stateno=460&&movehit>=1&&time>=32
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger1 = Ceil(fvar(27))=1800
;〓3C→EXコマンド投げ
trigger2 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger2 = stateno=460&&movehit>=1&&time>=35
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=10
trigger2 = Ceil(fvar(27))=2800
;〓3C→EXコマンド投げ
trigger3 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger3 = stateno=460&&movehit>=1&&time>=35
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=1
trigger3 = Ceil(fvar(27))=2800
;〓3C→2C
trigger4 = stateno=460&&movehit>=1&&time>=33
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger4 = Ceil(fvar(27))=440
;〓4B→2B
trigger5 = stateno=460&&movehit>=1&&time>=35
trigger5 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger5 = Ceil(fvar(27))=420
;〓3C→5B
trigger6 = stateno=460&&movehit>=1&&time>=35
trigger6 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger6 = Ceil(fvar(27))=210
;〓3C→4C
trigger7 = stateno=460&&movehit>=1&&time>=33
trigger7 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger7 = enemynear(var(16)),statetype=S
trigger7 = Ceil(fvar(27))=235
;〓3C→4C
trigger8 = stateno=460&&movehit>=1&&time>=33
trigger8 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger8 = enemynear(var(16)),statetype=C
trigger8 = Ceil(fvar(27))=235
;〓3C→4B
trigger9 = stateno=460&&movehit>=1&&time>=35
trigger9 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger9 = Ceil(fvar(27))=220
;〓3C→ぱっちんEX
trigger10 = stateno=460&&movehit>=1&&time>=32
trigger10 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger10 = Ceil(fvar(27))=1402
;〓3C→6C
trigger11 = stateno=460&&movehit>=1&&time>=33
trigger11 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=19
trigger11 = Ceil(fvar(27))=240
;〓3C→全地面投げ
trigger12 = stateno=460&&movehit>=1&&time>=32
trigger12 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=21
trigger12 = Ceil(fvar(27))=1800
;〓3C→EXコマンド投げ
trigger13 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger13 = stateno=460&&movehit>=1&&time>=35
trigger13 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=10
trigger13 = Ceil(fvar(27))=2800
;〓3C→EXコマンド投げ
trigger14 = Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)<Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50);□非アーマー
trigger14 = stateno=460&&movehit>=1&&time>=35
trigger14 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=1
trigger14 = Ceil(fvar(27))=2800
;〓3C→ぱっちんEX
trigger15 = stateno=460&&movehit>=1&&time>=32
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=18
trigger15 = Ceil(fvar(27))=1402
;〓3C→5C
trigger16 = stateno=460&&movehit>=1&&time>=33
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=23
trigger16 = Ceil(fvar(27))=230
;〓3C→烈風拳A
trigger17 = stateno=460&&movehit>=1&&time>=35
trigger17 = Ceil(fvar(27))=1000


;==============================================================================
;■5C始動アドリブコンボ

;□5C┬→4C	（4C始動アドリブコンボ）	○
;　　├→5B	（5B始動Bルート）		○
;　　│
;　　└→5A	（5A始動アドリブコンボ）	○

;------------------------------------------------------------------------------
;■5C始動アドリブコンボ

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(48)&(1))=0					;□コンボルート固定スイッチNG

;〓5C→4C（発生9F）（対地）
trigger1 = stateno=230&&movehit>=1&&time>=36
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = (var(50)&(Ceil(2.0**14)))=0
trigger1 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=S
trigger1 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger1 = fvar(27):=235

;〓5C→4C（発生9F）（対地）
trigger2 = stateno=230&&movehit>=1&&time>=36
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = (var(50)&(Ceil(2.0**14)))=0
trigger2 = (statetype=S||statetype=C)&&enemynear(var(16)),statetype=C
trigger2 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),90]
trigger2 = fvar(27):=235

;〓5C→5B（発生8F）（対地）
trigger3 = stateno=230&&movehit>=1&&time>=36
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger3 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger3 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger3 = fvar(26)-Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),125]
trigger3 = fvar(27):=210

;〓5C→5A（発生7F）（対地）
trigger4 = stateno=230&&movehit>=1&&time>=36
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger4 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
trigger4 = (statetype=S||statetype=C)&&(enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C)
trigger4 = fvar(26)-Ceil(IfElse((movehit=[1,7]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(8.0-movehit)))/(1-fvar(25))),0))=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),100]
trigger4 = fvar(27):=200

IgnoreHitPause = 1


;■5C始動アドリブコンボキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(48)&(1))=0				;□コンボルート固定スイッチOFF
triggerall = Ceil(fvar(27))!=0				;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓5C→4C
trigger1 = stateno=230&&movehit>=1&&time>=36
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger1 = enemynear(var(16)),statetype=S
trigger1 = Ceil(fvar(27))=235
;〓5C→4C
trigger2 = stateno=230&&movehit>=1&&time>=36
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger2 = enemynear(var(16)),statetype=C
trigger2 = Ceil(fvar(27))=235
;〓5C→5B
trigger3 = stateno=230&&movehit>=1&&time>=36
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger3 = Ceil(fvar(27))=210

;〓5C→5A
trigger4 = stateno=230&&movehit>=1&&time>=36
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=7
trigger4 = Ceil(fvar(27))=200


;==============================================================================
;■ダウン追い討ちアドリブルート

;□2A┬→2A		○○
;　　├→2B		○○
;　　├→4C		○○
;　　└→5B		○○

;□2B┬→4C		○○
;　　├→2C		○○
;　　├→5B		○○
;　　└→6C		○○

;□4C┬→6C		○○
;　　├→2B		○○
;　　├→5B		○○
;　　├→2C		○○
;　　├→ぱっちんA	○－
;　　└→烈風拳A	○－

;□2C┬→4C		○○
;　　├→5B		○○
;　　└→6C		○○

;□5B┬→4C		○○
;　　├→6C		○○
;　　├→ぱっちん	○－
;　　├→地雷設置A	○－
;　　├→烈風拳A	○－
;　　└→ジャンプ	○－

;□6C┬→2C		○○
;　　├→4C		○○
;　　├→5B		○○
;　　├→ぱっちんA	○－
;　　├→烈風拳A	○－
;　　└→ジャンプ	○－

;□3C┬→2C		○○
;　　├→4C		○○
;　　├→5B		○○
;　　├→ぱっちんA	○－
;　　└→烈風拳A	○－

;□JC┬→5B		○－
;　　└→4C		○－

;------------------------------------------------------------------------------
;■ダウン追い討ちアドリブルート

[State -1]
type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=L

;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**29)))=0			;□ダウン追い討ちルート以外

;〓2A→2A（発生4F）（対地）
trigger1 = stateno=400&&movehit>=1&&IfElse(var(59)>=5,time>=6,time>=8)			;□1HIT目
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger1 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger1 = fvar(26)<=32
trigger1 = fvar(27):=400

;〓2A→2B（発生12F）（対地）
trigger2 = stateno=400&&movehit>=1&&IfElse(var(59)>=5||fvar(26)>=32,time>=6,time>=8)	;□1HIT目
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger2 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger2 = fvar(26)-(vel x*(0.85-(0.85**12.0))/0.15)-Ceil(IfElse((movehit=[1,12]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(13.0-movehit)))/(1-fvar(25))),0))<=40+(15)
trigger2 = fvar(27):=420

;〓2A→4C（発生9F）（対地）
trigger3 = stateno=400&&movehit>=1&&IfElse(var(59)>=5||fvar(26)>=32,time>=6,time>=8)	;□1HIT目
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = (var(50)&(Ceil(2.0**14)))=0
trigger3 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
trigger3 = fvar(27):=235

;〓2A→5B（発生8F）（対地）
trigger4 = stateno=400&&movehit>=1&&time>=6			;□1HIT目
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger4 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
trigger4 = fvar(27):=210

;〓2B→4C（発生9F）（対地）
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24			;□2HIT目
trigger5 = (var(50)&(Ceil(2.0**14)))=0
trigger5 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(424),movehit)))/(1-fvar(25))),0))=[0,95]
trigger5 = fvar(27):=235

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24			;□2HIT目
trigger6 = (var(50)&(Ceil(2.0**14)))=0
trigger6 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(425),movehit)))/(1-fvar(25))),0))=[0,95]
trigger6 = fvar(27):=235

;〓2B→2C（発生17F）（対地）
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24			;□2HIT目
trigger7 = (var(50)&(Ceil(2.0**15)))=0
trigger7 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-helper(424),movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger7 = fvar(27):=440

trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24			;□2HIT目
trigger8 = (var(50)&(Ceil(2.0**15)))=0
trigger8 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-helper(425),movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger8 = fvar(27):=440

;〓2B→5B（発生8F）（対地）
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=24			;□2HIT目
trigger9 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger9 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(424),movehit)))/(1-fvar(25))),0))=[0,130]
trigger9 = fvar(27):=210

trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=24			;□2HIT目
trigger10 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger10 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(425),movehit)))/(1-fvar(25))),0))=[0,130]
trigger10 = fvar(27):=210

;〓2B→6C（発生15F）（対地）
trigger11 = stateno=420&&numhelper(424)=1
trigger11 = helper(424),movehit>=1&&time>=24			;□2HIT目
trigger11 = (var(50)&(Ceil(2.0**13)))=0
trigger11 = fvar(26)+Ceil(IfElse((helper(424),movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-helper(424),movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),210]
trigger11 = fvar(27):=240

trigger12 = stateno=420&&numhelper(425)=1
trigger12 = helper(425),movehit>=1&&time>=24			;□2HIT目
trigger12 = (var(50)&(Ceil(2.0**13)))=0
trigger12 = fvar(26)+Ceil(IfElse((helper(425),movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-helper(425),movehit)))/(1-fvar(25))),0))=[80-enemynear(var(16)),const(size.ground.back),210]
trigger12 = fvar(27):=240

;〓4C→6C（発生15F）（対地）
trigger13 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger13 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger13 = (var(50)&(Ceil(2.0**13)))=0
trigger13 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[75,210]
trigger13 = fvar(27):=240

;〓4C→2B（発生12F）（対地）
trigger14 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger14 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger14 = (var(50)&(Ceil(2.0**8)|Ceil(2.0**11)))=0
trigger14 = fvar(26)-(vel x*(0.85-(0.85**12.0))/0.15)-Ceil(IfElse((movehit=[1,12]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(13.0-movehit)))/(1-fvar(25))),0))<=40+(15)
trigger14 = fvar(27):=420

;〓4C→5B（発生8F）（対地）
trigger15 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger15 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger15 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
trigger15 = fvar(27):=210

;〓4C→2C（発生17F）（対地）
trigger16 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger16 = (var(50)&(Ceil(2.0**15)))=0
trigger16 = fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger16 = fvar(27):=440

;〓4C→ぱっちんA
trigger17 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger17 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),75]
trigger17 = fvar(27):=1400

;〓4C→烈風拳A（対地）
trigger18 = stateno=235&&movehit>=1&&time>=8			;□2HIT目
trigger18 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),200]
trigger18 = fvar(27):=1000

;〓2C→4C（発生9F）（対地）
trigger19 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger19 = (stateno=[440,442])&&numhelper(450)=1
trigger19 = helper(450),movehit>=1&&time>=34
trigger19 = (var(50)&(Ceil(2.0**14)))=0
trigger19 = fvar(26)+Ceil(IfElse((helper(450),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(450),movehit)))/(1-fvar(25))),0))=[0,100]
trigger19 = fvar(27):=235

trigger20 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger20 = (stateno=[440,442])&&numhelper(451)=1
trigger20 = helper(451),movehit>=1&&time>=34
trigger20 = (var(50)&(Ceil(2.0**14)))=0
trigger20 = fvar(26)+Ceil(IfElse((helper(451),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(451),movehit)))/(1-fvar(25))),0))=[0,100]
trigger20 = fvar(27):=235

;〓2C→5B（発生8F）（対地）
trigger21 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger21 = (stateno=[440,442])&&numhelper(450)=1
trigger21 = helper(450),movehit>=1&&time>=34
trigger21 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger21 = fvar(26)+Ceil(IfElse((helper(450),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(450),movehit)))/(1-fvar(25))),0))=[0,130]
trigger21 = fvar(27):=210

trigger22 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger22 = (stateno=[440,442])&&numhelper(451)=1
trigger22 = helper(451),movehit>=1&&time>=34
trigger22 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger22 = fvar(26)+Ceil(IfElse((helper(451),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(451),movehit)))/(1-fvar(25))),0))=[0,130]
trigger22 = fvar(27):=210

;〓2C→6C（発生15F）（対地）
trigger23 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger23 = (stateno=[440,442])&&numhelper(450)=1
trigger23 = helper(450),movehit>=1&&time>=34
trigger23 = (var(50)&(Ceil(2.0**13)))=0
trigger23 = fvar(26)+Ceil(IfElse((helper(450),movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-helper(450),movehit)))/(1-fvar(25))),0))=[75,210]
trigger23 = fvar(27):=240

trigger24 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger24 = (stateno=[440,442])&&numhelper(451)=1
trigger24 = helper(451),movehit>=1&&time>=34
trigger24 = (var(50)&(Ceil(2.0**13)))=0
trigger24 = fvar(26)+Ceil(IfElse((helper(451),movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-helper(451),movehit)))/(1-fvar(25))),0))=[75,210]
trigger24 = fvar(27):=240

;〓5B→4C（発生9F）（対地）
trigger25 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger25 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger25 = (var(50)&(Ceil(2.0**14)))=0
trigger25 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
trigger25 = fvar(27):=235

;〓5B→6C（発生9F）（対地）
trigger26 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger26 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger26 = (var(50)&(Ceil(2.0**13)))=0
trigger26 = fvar(26)+Ceil(IfElse((movehit=[1,15]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(16.0-movehit)))/(1-fvar(25))),0))=[75,210]
trigger26 = fvar(27):=240

;〓5B→ぱっちんA（対地）
trigger27 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger27 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),65]
trigger27 = fvar(27):=1400

;〓5B→地雷設置A（対地）
trigger28 = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
trigger28 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger28 = Ceil(random/10%100)<=25				;□確率判定
trigger28 = fvar(26)=[90,130]
trigger28 = fvar(27):=1200

;〓5B→烈風拳A（対地）
trigger29 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger29 = fvar(26)=[0,200]
trigger29 = fvar(27):=1000

;〓5B→ジャンプ（対地）（ノーマルモード以上）
trigger30 = Ceil(var(52)/100%10)>=1
trigger30 = stateno=210&&movehit>=1&&time>=20			;□5Bが4HIT目
trigger30 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),180]
trigger30 = fvar(27):=42
trigger30 = var(47):=Ceil(2.0**15)

;〓6C→2C（発生17F）（対地）
trigger31 = stateno=240&&movehit>=1&&time>=28			;□2HIT目
trigger31 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger31 = (var(50)&(Ceil(2.0**15)))=0
trigger31 = fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,75+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger31 = fvar(27):=440

;〓6C→4C（発生9F）（対地）
trigger32 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger32 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger32 = (var(50)&(Ceil(2.0**14)))=0
trigger32 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
trigger32 = fvar(27):=235

;〓6C→5B（発生8F）（対地）
trigger33 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger33 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger33 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger33 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
trigger33 = fvar(27):=210

;〓6C→ぱっちんA（対地）（ノーマルモード以上）
trigger34 = Ceil(var(52)/100%10)>=1
trigger34 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger34 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),65]
trigger34 = fvar(27):=1400

;〓6C→烈風拳A（対地）（ノーマルモード以上）
trigger35 = Ceil(var(40)/10000)=0				;□移動起き上がり除外
trigger35 = Ceil(var(52)/100%10)>=1
trigger35 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger35 = fvar(26)=[0,300]
trigger35 = fvar(27):=1000

;〓6C→ジャンプ（対地）（ノーマルモード以上）
trigger36 = Ceil(var(52)/100%10)>=1
trigger36 = stateno=240&&movehit>=1&&time>=28			;□4HIT目
trigger36 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),120]
trigger36 = fvar(27):=42
trigger36 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)

;〓3C→2C（発生17F）（対空）
trigger37 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger37 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger37 = (var(50)&(Ceil(2.0**15)))=0
trigger37 = fvar(26)+Ceil(IfElse((movehit=[1,17]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(18.0-movehit)))/(1-fvar(25))),0))=[0,80+IfElse(Ceil(var(52)/100%10)>=2,15,0)]
trigger37 = fvar(27):=440

;〓3C→4C（発生9F）（対地）
trigger38 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger38 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger38 = (var(50)&(Ceil(2.0**14)))=0
trigger38 = fvar(26)+Ceil(IfElse((movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-movehit)))/(1-fvar(25))),0))=[0,95]
trigger38 = fvar(27):=235

;〓3C→5B（発生8F）（対地）
trigger39 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger39 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger39 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger39 = fvar(26)+Ceil(IfElse((movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-movehit)))/(1-fvar(25))),0))=[0,130]
trigger39 = fvar(27):=210

;〓3C→ぱっちんA（対地）（ノーマルモード以上）
trigger40 = Ceil(var(52)/100%10)>=1
trigger40 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger40 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),65]
trigger40 = fvar(27):=1400

;〓3C→烈風拳A（対地）（ノーマルモード以上）
trigger41 = Ceil(var(52)/100%10)>=1
trigger41 = stateno=460&&movehit>=1&&time>=IfElse(Ceil(var(52)/100%10)=0,33,35)	;□3~4HIT目
trigger41 = fvar(26)=[0,300]
trigger41 = fvar(27):=1000

;〓5C→ぱっちんA
trigger42 = stateno=230&&movehit>=1&&time>=19
trigger42 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),75]
trigger42 = fvar(27):=1400

;〓5C→烈風拳A（対地）
trigger43 = stateno=230&&movehit>=1&&time>=19
trigger43 = fvar(26)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),200]
trigger43 = fvar(27):=1000

;〓JC→5B（発生8F）（対地）
trigger44 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger44 = NumHelper(662)>0
trigger44 = helper(662),movehit=[1,8]
trigger44 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger44 = fvar(26)+Ceil(IfElse((helper(662),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,130]
trigger44 = fvar(27):=210

trigger45 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger45 = NumHelper(663)>0
trigger45 = helper(663),movehit=[1,8]
trigger45 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger45 = fvar(26)+Ceil(IfElse((helper(663),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(663),movehit)))/(1-fvar(25))),0))=[0,130]
trigger45 = fvar(27):=210

trigger46 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger46 = NumHelper(664)>0
trigger46 = helper(664),movehit=[1,8]
trigger46 = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
trigger46 = fvar(26)+Ceil(IfElse((helper(664),movehit=[1,8]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(9.0-helper(664),movehit)))/(1-fvar(25))),0))=[0,130]
trigger46 = fvar(27):=210

;〓JC→4C（発生9F）（対地）
trigger47 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger47 = NumHelper(662)>0
trigger47 = helper(662),movehit=[1,7]
trigger47 = (var(50)&(Ceil(2.0**14)))=0
trigger47 = fvar(26)+Ceil(IfElse((helper(662),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,95]
trigger47 = fvar(27):=235

trigger48 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger48 = NumHelper(663)>0
trigger48 = helper(663),movehit=[1,7]
trigger48 = (var(50)&(Ceil(2.0**14)))=0
trigger48 = fvar(26)+Ceil(IfElse((helper(663),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(663),movehit)))/(1-fvar(25))),0))=[0,95]
trigger48 = fvar(27):=235

trigger49 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger49 = NumHelper(664)>0
trigger49 = helper(664),movehit=[1,7]
trigger49 = (var(50)&(Ceil(2.0**14)))=0
trigger49 = fvar(26)+Ceil(IfElse((helper(664),movehit=[1,9]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(10.0-helper(664),movehit)))/(1-fvar(25))),0))=[0,95]
trigger49 = fvar(27):=235


;〓JC→2A（発生4F）（対地）
trigger50 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger50 = NumHelper(662)>0
trigger50 = helper(662),movehit>=1
trigger50 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger50 = fvar(26)+Ceil(IfElse((helper(662),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-helper(662),movehit)))/(1-fvar(25))),0))=[0,32]
trigger50 = fvar(27):=400

trigger51 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger51 = NumHelper(663)>0
trigger51 = helper(663),movehit>=1
trigger51 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger51 = fvar(26)+Ceil(IfElse((helper(663),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-helper(663),movehit)))/(1-fvar(25))),0))=[0,32]
trigger51 = fvar(27):=400

trigger52 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger52 = NumHelper(664)>0
trigger52 = helper(664),movehit>=1
trigger52 = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
trigger52 = fvar(26)+Ceil(IfElse((helper(664),movehit=[1,4]),abs(enemynear(var(16)),GetHitVar(xvel)*(fvar(25)-(fvar(25)**(5.0-helper(664),movehit)))/(1-fvar(25))),0))=[0,32]
trigger52 = fvar(27):=400

IgnoreHitPause = 1


;■ダウン追い討ちアドリブルートキャンセル実行（連続技用）
[State -1]
type = ChangeState
Value = Ceil(fvar(27))
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓基本使用条件
triggerall = Ceil(fvar(27))!=0			;□格納StateNoが正
triggerall = statetype=S||statetype=C
triggerall = enemynear(var(16)),statetype=L

;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**29)))=0	;□ダウン追い討ちルート以外

;〓2A→2A
trigger1 = stateno=400&&movehit>=1&&time>=6
trigger1 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=4
trigger1 = Ceil(fvar(27))=400
;〓2A→2B
trigger2 = stateno=400&&movehit>=1&&time>=6
trigger2 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger2 = Ceil(fvar(27))=420

;〓2A→4C
trigger3 = stateno=400&&movehit>=1&&time>=6
trigger3 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger3 = Ceil(fvar(27))=235
;〓2A→5B
trigger4 = stateno=400&&movehit>=1&&time>=6
trigger4 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger4 = Ceil(fvar(27))=210
;〓2B→4C
trigger5 = stateno=420&&numhelper(424)=1
trigger5 = helper(424),movehit>=1&&time>=24
trigger5 = Ceil(fvar(27))=235

trigger6 = stateno=420&&numhelper(425)=1
trigger6 = helper(425),movehit>=1&&time>=24
trigger6 = Ceil(fvar(27))=235
;〓2B→2C
trigger7 = stateno=420&&numhelper(424)=1
trigger7 = helper(424),movehit>=1&&time>=24
trigger7 = Ceil(fvar(27))=440

trigger8 = stateno=420&&numhelper(425)=1
trigger8 = helper(425),movehit>=1&&time>=24
trigger8 = Ceil(fvar(27))=440
;〓2B→5B
trigger9 = stateno=420&&numhelper(424)=1
trigger9 = helper(424),movehit>=1&&time>=24
trigger9 = Ceil(fvar(27))=210

trigger10 = stateno=420&&numhelper(425)=1
trigger10 = helper(425),movehit>=1&&time>=24
trigger10 = Ceil(fvar(27))=210
;〓2B→6C
trigger11 = stateno=420&&numhelper(424)=1
trigger11 = helper(424),movehit>=1&&time>=24
trigger11 = Ceil(fvar(27))=240

trigger12 = stateno=420&&numhelper(425)=1
trigger12 = helper(425),movehit>=1&&time>=24
trigger12 = Ceil(fvar(27))=240
;〓4C→6C
trigger13 = stateno=235&&movehit>=1&&time>=8
trigger13 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger13 = Ceil(fvar(27))=240
;〓4C→2B
trigger14 = stateno=235&&movehit>=1&&time>=8
trigger14 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=12
trigger14 = Ceil(fvar(27))=420
;〓4C→5B
trigger15 = stateno=235&&movehit>=1&&time>=8
trigger15 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger15 = Ceil(fvar(27))=210
;〓4C→2C
trigger16 = stateno=235&&movehit>=1&&time>=8
trigger16 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger16 = Ceil(fvar(27))=440
;〓4C→ぱっちんA
trigger17 = stateno=235&&movehit>=1&&time>=8
trigger17 = Ceil(fvar(27))=1400
;〓4C→烈風拳A
trigger18 = stateno=235&&movehit>=1&&time>=8
trigger18 = Ceil(fvar(27))=1000
;〓2C→4C
trigger19 = (stateno=[440,442])&&numhelper(450)=1
trigger19 = helper(450),movehit>=1&&time>=34
trigger19 = Ceil(fvar(27))=235

trigger20 = (stateno=[440,442])&&numhelper(451)=1
trigger20 = helper(451),movehit>=1&&time>=34
trigger20 = Ceil(fvar(27))=235
;〓2C→5B
trigger21 = (stateno=[440,442])&&numhelper(450)=1
trigger21 = helper(450),movehit>=1&&time>=34
trigger21 = Ceil(fvar(27))=210

trigger22 = (stateno=[440,442])&&numhelper(451)=1
trigger22 = helper(451),movehit>=1&&time>=34
trigger22 = Ceil(fvar(27))=210
;〓2C→6C
trigger23 = (stateno=[440,442])&&numhelper(450)=1
trigger23 = helper(450),movehit>=1&&time>=34
trigger23 = Ceil(fvar(27))=240

trigger24 = (stateno=[440,442])&&numhelper(451)=1
trigger24 = helper(451),movehit>=1&&time>=34
trigger24 = Ceil(fvar(27))=240
;〓5B→4C
trigger25 = stateno=210&&movehit>=1&&time>=20
trigger25 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger25 = Ceil(fvar(27))=235
;〓5B→6C
trigger26 = stateno=210&&movehit>=1&&time>=20
trigger26 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=15
trigger26 = Ceil(fvar(27))=240
;〓5B→ぱっちんA
trigger27 = stateno=210&&movehit>=1&&time>=20
trigger27 = Ceil(fvar(27))=1400
;〓5B→地雷設置A
trigger28 = stateno=210&&movehit>=1&&time>=20
trigger28 = Ceil(fvar(27))=1200
;〓5B→烈風拳A（対地）
trigger29 = stateno=210&&movehit>=1&&time>=20
trigger29 = Ceil(fvar(27))=1000
;〓5B→ジャンプ
trigger30 = stateno=210&&movehit>=1&&time>=20
trigger30 = Ceil(fvar(27))=42
;〓6C→2C
trigger31 = stateno=240&&movehit>=1&&time>=28
trigger31 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger31 = Ceil(fvar(27))=440
;〓6C→4C
trigger32 = stateno=240&&movehit>=1&&time>=28
trigger32 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger32 = Ceil(fvar(27))=235
;〓6C→5B
trigger33 = stateno=240&&movehit>=1&&time>=28
trigger33 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger33 = Ceil(fvar(27))=210
;〓6C→ぱっちんA
trigger34 = stateno=240&&movehit>=1&&time>=28
trigger34 = Ceil(fvar(27))=1400
;〓6C→烈風拳A
trigger35 = stateno=240&&movehit>=1&&time>=28
trigger35 = Ceil(fvar(27))=1000
;〓6C→ジャンプ
trigger36 = stateno=240&&movehit>=1&&time>=28
trigger36 = Ceil(fvar(27))=42
;〓3C→2C
trigger37 = stateno=460&&movehit>=1&&time>=33
trigger37 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=17
trigger37 = Ceil(fvar(27))=440
;〓3C→4C
trigger38 = stateno=460&&movehit>=1&&time>=33
trigger38 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=9
trigger38 = Ceil(fvar(27))=235
;〓3C→5B
trigger39 = stateno=460&&movehit>=1&&time>=33
trigger39 = enemynear(var(16)),GetHitVar(hitshaketime)+enemynear(var(16)),GetHitVar(hittime)>=8
trigger39 = Ceil(fvar(27))=210
;〓3C→ぱっちんA
trigger40 = stateno=460&&movehit>=1&&time>=33
trigger40 = Ceil(fvar(27))=1400
;〓3C→烈風拳A
trigger41 = stateno=460&&movehit>=1&&time>=33
trigger41 = Ceil(fvar(27))=1000
;〓5C→ぱっちんA
trigger42 = stateno=230&&movehit>=1&&time>=19
trigger42 = Ceil(fvar(27))=1400
;〓5C→烈風拳A（対地）
trigger43 = stateno=230&&movehit>=1&&time>=19
trigger43 = Ceil(fvar(27))=1000
;〓JC→5B
trigger44 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger44 = NumHelper(662)>0
trigger44 = helper(662),movehit=[1,8]
trigger44 = Ceil(fvar(27))=210

trigger45 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger45 = NumHelper(663)>0
trigger45 = helper(663),movehit=[1,8]
trigger45 = Ceil(fvar(27))=210

trigger46 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger46 = NumHelper(664)>0
trigger46 = helper(664),movehit=[1,8]
trigger46 = Ceil(fvar(27))=210
;〓JC→4C
trigger47 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger47 = NumHelper(662)>0
trigger47 = helper(662),movehit=[1,7]
trigger47 = Ceil(fvar(27))=235

trigger48 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger48 = NumHelper(663)>0
trigger48 = helper(663),movehit=[1,7]
trigger48 = Ceil(fvar(27))=235

trigger49 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger49 = NumHelper(664)>0
trigger49 = helper(664),movehit=[1,7]
trigger49 = Ceil(fvar(27))=235
;〓JC→2A
trigger50 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger50 = NumHelper(662)>0
trigger50 = helper(662),movehit>=1
trigger50 = Ceil(fvar(27))=400

trigger51 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger51 = NumHelper(663)>0
trigger51 = helper(663),movehit>=1
trigger51 = Ceil(fvar(27))=400

trigger52 = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
trigger52 = NumHelper(664)>0
trigger52 = helper(664),movehit>=1
trigger52 = Ceil(fvar(27))=400


;------------------------------------------------------------------------------











































;==============================================================================
;■牽制＆立ち回り系行動■triggerall = (var(46)&(Ceil(2.0**28)))=0
;------------------------------------------------------------------------------

;★ダッシュから全地面投げぶっぱを追加する？	3ゲージ以上＆体力大幅負け



;==============================================================================
;■■接近距離（Pos X=[0,50]）


;●後ジャンプ（投げキャラ警戒）【最速空中後ダッシュ予約フラグON】
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=4
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**16)))=0
triggerall = fvar(33)=0
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)>=2	;□投げ技被弾回数
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,140])
;〓画面端距離測定
triggerall = helper(21000),var(1)>=120||(numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（地上限定）
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),65]
trigger1 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)


;■2Aで牽制（小足）
[State -1]
type = ChangeState
Value = 400
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
triggerall = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=400,1,(var(50)&(Ceil(2.0**2)))=0)
triggerall = fvar(33)=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = (var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2		;□打撃無敵測定実験
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-4)
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓4F後の予測座標
trigger1 = helper(23000),var(4)+const(size.ground.front)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(4)+const(size.ground.front)<=32
trigger1 = Ceil(helper(23000),fvar(4))=0


;■EXゲイザーで牽制（削り殺し用）
[State -1]
Type = ChangeState
Value = 1302
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = power>=3000
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-28)
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)<=1.5	;□P2体力15%以下
triggerall = helper(21000),var(0)>=220						;□画面端から距離220以上
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(power/1000.0)*5
;〓27F後の座標【対地】
trigger1 = helper(23000),var(27)+const(size.ground.front)>=20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(27)+const(size.ground.front)<=48+abs(enemynear(var(16)),animtime+27)


;■通常投げ
[State -1]
type = ChangeState
Value = 800
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = (var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2		;□投げ無敵測定実験
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),GetHitVar(hittime)<=0
triggerall = (enemynear(var(16)),stateno!=[40,49])&&(enemynear(var(16)),stateno!=[150,153])
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓1F後の予測座標（ボスモード）
trigger1 = Ceil(var(52)/100%10)>=2
trigger1 = fvar(32)=0
trigger1 = enemynear(var(16)),HitDefAttr=SC,AA,AP,AT||enemynear(var(16)),movetype=I||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-1)
trigger1 = helper(23000),var(1)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(1)+const(size.ground.front)<=49
trigger1 = Ceil(helper(23000),fvar(1))=0
;〓6F後の予測座標（ノーマルモード以下）（烈風拳Aが近くに無いとき）
trigger2 = Ceil(var(52)/100%10)<=1
trigger2 = fvar(32)<6
trigger2 = numhelper(1020)=0&&numhelper(1020)>=1
trigger2 = (Ceil(enemynear(var(16)),pos x*enemynear(var(16)),facing+helper(1020),pos x*facing)*-1)!=[-100,100]
trigger2 = (enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-6)||(enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)
trigger2 = helper(23000),var(6)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(6)+const(size.ground.front)<=35
trigger2 = Ceil(helper(23000),fvar(6))=0
;〓6F後の予測座標（ノーマルモード以下）（烈風拳Aが近くに無いとき）
trigger3 = Ceil(var(52)/100%10)<=1
trigger3 = fvar(32)<6
trigger3 = numhelper(1020)=0&&numhelper(1050)>=1
trigger3 = (Ceil(enemynear(var(16)),pos x*enemynear(var(16)),facing+helper(1050),pos x*facing)*-1)!=[-100,100]
trigger3 = (enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-6)||(enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)
trigger3 = helper(23000),var(6)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(6)+const(size.ground.front)<=35
trigger3 = Ceil(helper(23000),fvar(6))=0
;〓8F後の予測座標（ノーマルモード以下）
trigger4 = Ceil(var(52)/100%10)<=1
trigger4 = fvar(32)<8
trigger4 = numhelper(1020)=0&&numhelper(1050)=0					;□烈風拳A無いとき
trigger4 = (enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-6)||(enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)
trigger4 = helper(23000),var(8)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger4 = helper(23000),var(8)+const(size.ground.front)<=44
trigger4 = Ceil(helper(23000),fvar(8))=0


;■5Aで牽制
[State -1]
type = ChangeState
Value = 200
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = IfElse(stateno=200,1,(var(50)&(1))=0)
triggerall = (var(50)&(Ceil(2.0**4)|Ceil(2.0**11)))=0&&IfElse(stateno=200,1,(var(50)&(1))=0)
triggerall = fvar(33)=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)||Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)	;□打撃無敵測定実験＆対アーマー
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓7F後の予測座標（近距離）
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=25-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=60
trigger1 = Ceil(helper(23000),fvar(7))>=-20
;〓7F後の予測座標（中距離）（空振り対応）
trigger2 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)))=0
trigger2 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=65-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=90
trigger2 = Ceil(helper(23000),fvar(7))>=-20
;〓7F後の予測座標（遠距離）（空振り対応）
trigger3 = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**10)|Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0
trigger3 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=75-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=105
trigger3 = Ceil(helper(23000),fvar(7))>=-20


;●画面端に追い詰められているときテレポB【回避テレポ済みフラグON】
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),movetype=A&&!enemynear(var(16)),HitDefAttr=SCA,AT
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
triggerall = enemynear(var(16)),time<=10||(helper(23000),var(55)>10&&enemynear(var(16)),animtime<=-15)
;〓画面端脱出距離
trigger1 = helper(21000),var(1)<=80
trigger1 = fvar(26)=[50,75]
trigger1 = var(4):=2
trigger1 = var(47):=Ceil(2.0**7)


;●後ダッシュで間合いを離す
[State -1]
Type = ChangeState
Value = 105
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=52&&time>=IfElse(Ceil(var(52)/100%10)>=2,0,1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),HitDefAttr=SC,AA
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15
triggerall = enemynear(var(16)),time<=10||(helper(23000),var(55)>10&&enemynear(var(16)),animtime<=-15)
;〓画面端距離測定
triggerall = helper(21000),var(1)>=120
;〓攻撃回避距離
trigger1 = fvar(26)=[80,100]


;●前ジャンプ
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = fvar(33)=0										;□起き上がった直後NG
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後NG
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓攻撃ヘルパー判断
triggerall = helper(25000),fvar(10)=0&&helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0
triggerall = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】（J2B範囲）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*15					;□個別反応速度
trigger1 = enemynear(var(16)),GetHitVar(hittime)>=10&&enemynear(var(16)),stateno=[150,153]	;□ガード硬直狙い
trigger1 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=0	;□投げ技被弾回数
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)=[30,120]
trigger1 = Ceil(helper(23000),fvar(10))>=-10
trigger1 = var(47):=Ceil(2.0**15)

trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*15					;□個別反応速度
trigger2 = enemynear(var(16)),GetHitVar(hittime)>=10&&enemynear(var(16)),stateno=[150,153]	;□ガード硬直狙い
trigger2 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=3	;□投げ技被弾回数
trigger2 = helper(21000),var(1)>=175								;□画面中央
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(23000),var(10)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),30]
trigger2 = Ceil(helper(23000),fvar(10))>=-10
trigger2 = var(47):=Ceil(2.0**15)

trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*15					;□個別反応速度
trigger3 = enemynear(var(16)),GetHitVar(hittime)>=10&&enemynear(var(16)),stateno=[150,153]	;□ガード硬直狙い
trigger3 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=4	;□投げ技被弾回数
trigger3 = (var(47)&(Ceil(2.0**15)))=0
trigger3 = helper(23000),var(10)+const(size.ground.front)=[120,130]
trigger3 = Ceil(helper(23000),fvar(10))>=-10
trigger3 = var(47):=Ceil(2.0**15)

;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】（J2B範囲）
trigger4 = random<=Ceil(helper(21000),var(59)/1000%100)*5					;□個別反応速度
trigger4 = enemynear(var(16)),movetype!=A&&InGuardDist=0&&helper(23000),InGuardDist=0		;□待機中狙い
trigger4 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=0	;□投げ技被弾回数
trigger4 = (var(47)&(Ceil(2.0**15)))=0
trigger4 = helper(23000),var(10)+const(size.ground.front)=[30,120]
trigger4 = Ceil(helper(23000),fvar(10))>=-10
trigger4 = var(47):=Ceil(2.0**15)

trigger5 = random<=Ceil(helper(21000),var(59)/1000%100)*5					;□個別反応速度
trigger5 = enemynear(var(16)),movetype!=A&&InGuardDist=0&&helper(23000),InGuardDist=0		;□待機中狙い
trigger5 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=3	;□投げ技被弾回数
trigger5 = helper(21000),var(1)>=120								;□画面中央
trigger5 = (var(47)&(Ceil(2.0**15)))=0
trigger5 = helper(23000),var(10)+const(size.ground.front)=[0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),30]
trigger5 = Ceil(helper(23000),fvar(10))>=-10
trigger5 = var(47):=Ceil(2.0**15)

trigger6 = random<=Ceil(helper(21000),var(59)/1000%100)*5					;□個別反応速度
trigger6 = enemynear(var(16)),movetype!=A&&InGuardDist=0&&helper(23000),InGuardDist=0		;□待機中狙い
trigger6 = Ceil(var(41)/10%10)+Ceil(var(42)/10%10)+Ceil(var(43)/10%10)+Ceil(var(44)/10%10)<=4	;□投げ技被弾回数
trigger6 = (var(47)&(Ceil(2.0**15)))=0
trigger6 = helper(23000),var(10)+const(size.ground.front)=[120,130]
trigger6 = Ceil(helper(23000),fvar(10))>=-10
trigger6 = var(47):=Ceil(2.0**15)


;●ハイジャンプ
[State -1]
type = ChangeState
Value = 43
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),stateno!=8300					;□ガークラ状態NG
;〓攻撃ヘルパー判断
triggerall = helper(25000),fvar(10)=0&&helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0
triggerall = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10			;□確率判定

;〓5F後の予測座標（連携開始）【前方ハイジャンプフラグON】（JC→空中後ダッシュ連携へ）
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = (InGuardDist=0||helper(23000),InGuardDist=0)
trigger1 = helper(23000),var(5)+const(size.ground.front)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=70
trigger1 = Ceil(helper(23000),fvar(5))>=-10
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)


;==============================================================================
;■■近距離（Pos X=[50,100]）

;●後ジャンプ【最速空中後ダッシュ予約フラグON】
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**16)))=0
triggerall = fvar(33)=0
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,140])

;〓画面端距離測定
triggerall = helper(21000),var(1)>=120||(numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15
;〓5F後の予測座標（地上限定）
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)>=60-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)<=115
trigger1 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)
;〓5F後の予測座標（低空限定対空）
trigger2 = enemynear(var(16)),statetype=A
trigger2 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)<=115
trigger2 = Ceil(helper(23000),fvar(5))>=-30
trigger2 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)


;■4Cで牽制
[State -1]
Type = ChangeState
Value = 235
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**14)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)||Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)	;□打撃無敵測定実験＆対アーマー
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓5F後の予測座標（対地）
trigger1 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-5)
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)>=10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)<=50
trigger1 = Ceil(helper(23000),fvar(5))>=-20
;〓7F後の予測座標
trigger2 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-7)
trigger2 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(7)+const(size.ground.front)-(vel x*(0.85-(0.85**8.0))/0.15)<=80
trigger2 = Ceil(helper(23000),fvar(7))>=-20
;〓9F後の予測座標
trigger3 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-7)
trigger3 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger3 = Ceil(helper(23000),fvar(9))>=-20
;〓9F後の予測座標（P1＆P2同一方向）（背面を見せてるP2への攻撃）
trigger4 = enemynear(var(16)),facing=facing
trigger4 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger4 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger4 = Ceil(helper(23000),fvar(9))>=-20
;〓9F後の予測座標（ロー・ブロッサム用）
trigger5 = numhelper(3205)
trigger5 = helper(3205),var(50)=[1,8]
trigger5 = !enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger5 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)>=-10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(9)+const(size.ground.front)-(vel x*(0.85-(0.85**10.0))/0.15)<=110
trigger5 = Ceil(helper(23000),fvar(9))>=-20


;●ダッシュで間合いを詰める（近距離用）【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)))=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = (enemynear(var(16)),movetype!=A&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-10)
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),anim=5300	;□個別反応速度（気絶中100％）
;〓Near距離測定
trigger1 = fvar(26)=[80,150]
trigger1 = var(47):=Ceil(2.0**10)


;==============================================================================
;■■中間距離（Pos X=[75,150]）

;■5Bで牽制
[State -1]
Type = ChangeState
Value = 210
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**5)|Ceil(2.0**11)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)||((stateno=[100,102])&&time>=10)
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)||Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)	;□打撃無敵測定実験＆対アーマー
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25

;〓8F後の予測座標（対地）
trigger1 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-8)
trigger1 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=126
trigger1 = Ceil(helper(23000),fvar(8))>=0
;〓11F後の予測座標
trigger2 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-8)
trigger2 = helper(23000),var(11)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=60-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(11)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=134
trigger2 = Ceil(helper(23000),fvar(11))>=0
;〓8F後の予測座標（対地）（ロー・ブロッサム用）
trigger3 = numhelper(3205)
trigger3 = helper(3205),var(50)=[1,8]
trigger3 = !enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger3 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)>=-15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(8)+const(size.ground.front)-(vel x*(0.85-(0.85**9.0))/0.15)<=126
trigger3 = Ceil(helper(23000),fvar(8))>=0


;■ぱっちんAで牽制
[State -1]
Type = ChangeState
Value = 1400
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10			;□確率判定
;〓23F後の予測座標
trigger1 = helper(23000),var(23)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=145-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(23)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=175
trigger1 = Ceil(helper(23000),fvar(23))>=-40


;■地雷設置A
[State -1]
type = ChangeState
Value = 1200
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15			;□確率判定
;〓25F後の予測座標
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=165-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=195
trigger1 = Ceil(helper(23000),fvar(25))>=-10


;■地雷設置B
[State -1]
type = ChangeState
Value = 1201
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1260)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*15			;□確率判定
;〓25F後の予測座標
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=135-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=155
trigger1 = Ceil(helper(23000),fvar(25))>=-10


;■巨人召喚（タッグ対応）
[State -1]
type = ChangeState
Value = 7000
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(58)&(Ceil(2.0**26)))
triggerall = !NumHelper(7005)

;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (power=PowerMax||power>=7000)&&fvar(20)>1
triggerall = fvar(20)>=IfElse(Ceil(var(52)/100%10)<=1,2000,4000)
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)>=2.0)
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)<=enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,6.0]	;□体力差60%以内
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(power/2500.0)*100	;□確率判定
;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))

;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
trigger1 = Ceil(helper(23000),fvar(25))>=-100
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger2 = Ceil(helper(23000),fvar(25))>=-100
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)
trigger3 = Ceil(helper(23000),fvar(25))>=-100


;■ロー・ブロッサム
[State -1]
type = ChangeState
Value = 3200
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**26)))
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = alive=1&&Ceil(var(53)/1000%10)>=1		;□暗殺帳ON
triggerall = !NumHelper(3205)&&!NumHelper(3310)		;□花弁本体ヘルパー＆瘴気結界ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=4			;□4冊消費
;〓発動条件
triggerall = (var(46)&(Ceil(2.0**17)))			;□ロー・ブロッサム使用判定ON
triggerall = helper(21000),var(0)>=200			;□画面端から距離200以上
triggerall = Ceil(var(45)/10%1000)>=180			;□攻撃平均距離
triggerall = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)>=5.0)||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定

;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=160-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)


;●中間距離用ジャンプ
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = fvar(33)=0										;□起き上がった直後NG
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後NG
triggerall = helper(21000),var(1)>=80								;□画面端測定
triggerall = numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0				;□連続JC禁止
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓攻撃ヘルパー判断
triggerall = helper(25000),fvar(10)=0&&helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0
triggerall = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓10F後の予測座標（後ジャンプ連携開始）【後方ジャンプフラグON】（J2C＆空中前ダッシュJBで牽制）
trigger1 = helper(21000),var(1)>=80	;□画面後端以外
trigger1 = (var(47)&(Ceil(2.0**16)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)>=140-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=175
trigger1 = Ceil(helper(23000),fvar(10))>=-10
trigger1 = var(47):=Ceil(2.0**16)
;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】（低空低空ダッシュJA範囲）
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(23000),var(10)+const(size.ground.front)>=160-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(10)+const(size.ground.front)<=170
trigger2 = Ceil(helper(23000),fvar(10))>=-10
trigger2 = var(47):=Ceil(2.0**15)
;〓10F後の予測座標（対地連携開始用）（垂直ジャンプ）（垂直JBで牽制）
trigger3 = helper(23000),var(10)+const(size.ground.front)>=115-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(10)+const(size.ground.front)<=170
trigger3 = Ceil(helper(23000),fvar(10))>=-10


;●ダッシュで間合いを詰める（中間距離用）【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)))=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),anim=5300	;□個別反応速度（気絶中100％）
;〓Near距離測定
trigger1 = fvar(26)=[160,190]
;〓ダッシュ（通常時）
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-10)
trigger1 = var(47):=Ceil(2.0**10)
;〓ダッシュ（ロー・ブロッサム用）
trigger2 = numhelper(3205)
trigger2 = helper(3205),var(50)=[1,8]
trigger2 = enemynear(var(16)),statetype!=L
trigger2 = !enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger2 = var(47):=Ceil(2.0**10)


;●後ジャンプ【最速空中後ダッシュ予約フラグON】
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=12)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**16)))=0
triggerall = fvar(33)=0
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓画面端距離測定
triggerall = helper(21000),var(1)>=120||(numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)
;〓反応速度判定
triggerall = random<=Ifelse(Ceil(var(45)/10%1000)>=180,Ceil(helper(21000),var(59)/1000%100)*5,Ceil(helper(21000),var(59)/1000%100)*15)
;〓5F後の予測座標（地上限定）
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)-(vel x*(0.85-(0.85**6.0))/0.15)<=175
trigger1 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)


;==============================================================================
;■遠距離（Pos X=[150,350]）

;■3Cで牽制
[State -1]
Type = ChangeState
Value = 460
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**16)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)||((stateno=[100,102])&&time>=10)
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)||Ceil(Ceil(var(45)/10000)/(enemy(0),LifeMax*1.0)*100)>Ceil((enemy(0),LifeMax-enemy(0),Life)/(enemy(0),LifeMax*1.0)*50)	;□打撃無敵測定実験＆対アーマー
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = enemynear(var(16)),statetype!=L
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*20
;〓19F後の予測座標（対空）
trigger1 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-24)
trigger1 = enemynear(var(16)),statetype=A
trigger1 = Ceil(fvar(31))-(21)>=0||Ceil(fvar(31))=0				;□復帰判定
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(19)+const(size.ground.front)<=115)||helper(23000),var(19)+const(size.ground.front)>=110-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(19)+const(size.ground.front)<=115
trigger1 = Ceil(helper(23000),fvar(19))+Ceil(fvar(36))=[-95,-65]
;〓28F後の予測座標（対空）
trigger2 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-24)
trigger2 = enemynear(var(16)),statetype=A
trigger2 = Ceil(fvar(31))-(29)>=0||Ceil(fvar(31))=0				;□復帰判定
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(28)+const(size.ground.front)<=200)||helper(23000),var(28)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(28)+const(size.ground.front)<=200
trigger2 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-150,0]
;〓24F後の予測座標（対地）
trigger3 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-24)
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=175-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=190
trigger3 = Ceil(helper(23000),fvar(24))>=-10
;〓タッグ専用（P3○生、P2○生＆P4○生）
trigger4 = NumPartner>=1
trigger4 = partner,alive
trigger4 = numenemy>=2
trigger4 = enemy(0),alive&&enemy(1),alive
trigger4 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger4 = enemynear(0),movetype=H&&enemynear(0),statetype=A
trigger4 = (enemynear(1),movetype=I||(enemynear(var(16)),stateno=[120,153]))&&(enemynear(1),statetype=S||enemynear(1),statetype=C)
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(28)+const(size.ground.front)<=200)||helper(23000),var(28)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(28)+const(size.ground.front)<=200
trigger4 = Ceil(helper(23000),fvar(28))+Ceil(fvar(36))=[-150,0]
;〓24F後の予測座標（対地）（ロー・ブロッサム用）
trigger5 = numhelper(3205)
trigger5 = helper(3205),var(50)=[1,8]
trigger5 = !enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger5 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger5 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=175-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger5 = helper(23000),var(24)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=190
trigger5 = Ceil(helper(23000),fvar(24))>=-10

;■4Bで牽制
[State -1]
Type = ChangeState
Value = 220
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (var(50)&(Ceil(2.0**6)|Ceil(2.0**11)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (numhelper(662)=0&&numhelper(663)=0&&numhelper(664)=0)||((stateno=[100,102])&&time>=10)
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = (var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2		;□打撃無敵測定実験
;〓当て身投げ対策
triggerall = enemynear(var(16)),stateno=0||(enemynear(var(16)),stateno!=Ceil(var(37)/10000)&&enemynear(var(16)),stateno!=Ceil(var(38)/10000)&&enemynear(var(16)),stateno!=Ceil(var(39)/10000))
;〓Near状態
triggerall = enemynear(var(16)),statetype!=L
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*20
;〓20F後の予測座標（対地）（空振り対応）
triggerall = enemynear(var(16)),ID=enemy(0),ID&&(helper(21000),var(49)&(Ceil(2.0**14)|Ceil(2.0**15)))=0	;□空振り判定
triggerall = Ceil(enemynear(var(16)),Const(size.head.pos.y)*0.80)<=-70					;□座高判定
triggerall = helper(23000),var(20)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=160-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(20)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=170
;〓シングルタッグ汎用
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = ((enemynear(var(16)),movetype=I||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-20)
trigger1 = Ceil(helper(23000),fvar(20))>=0
;〓タッグ専用（P3○生、P2○生＆P4○生）
trigger2 = NumPartner>=1
trigger2 = partner,alive
trigger2 = numenemy>=2
trigger2 = enemy(0),alive&&enemy(1),alive
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = ((enemynear(var(16)),movetype=I||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-20)
trigger2 = Ceil(helper(23000),fvar(20))>=-90
;〓タッグ専用（P3○生、P2○生＆P4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = numenemy>=2
trigger3 = enemy(0),alive&&enemy(1),alive
trigger3 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger3 = enemynear(0),movetype=H&&enemynear(0),statetype=A
trigger3 = (enemynear(1),movetype=I||(enemynear(var(16)),stateno=[120,153]))&&(enemynear(1),statetype=S||enemynear(1),statetype=C)
trigger3 = Ceil(helper(23000),fvar(20))>=-90


;■瘴気結界
[State -1]
type = ChangeState
Value = 3300
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**25)))
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = alive=1&&Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3310)&!NumHelper(3205)		;□瘴気結界ヘルパー＆花弁本体ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=3			;□3冊消費
;〓発動条件
triggerall = (var(46)&(Ceil(2.0**17)))=0		;□ロー・ブロッサム使用判定NG
triggerall = helper(21000),var(0)>=100			;□画面端から距離100以上
triggerall = Ceil(var(45)/10%1000)<=180			;□攻撃平均距離
triggerall = ((var(46)&(Ceil(2.0**19)))||helper(24000),fvar(10)>=2)&&((var(46)&(Ceil(2.0**20)))||helper(24001),var(10)>=2);□打撃投げ無敵測定実験
triggerall = ((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)>=3.0))||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||(Life/(LifeMax/10.0)=[5.0,9.0])||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定

;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=160-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
trigger1 = Ceil(helper(23000),fvar(25))>=-100
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger2 = Ceil(helper(23000),fvar(25))>=-100
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)
trigger3 = Ceil(helper(23000),fvar(25))>=-100


;■アンリ地面散布
[State -1]
type = ChangeState
Value = 3100
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**24)))
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)&&numhelper(24000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = alive=1&&Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3105)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=2			;□2冊消費
;〓発動条件
triggerall = Ceil(var(45)/10%1000)<=120			;□攻撃平均距離
triggerall = (enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=3.0)&&(Life/(LifeMax/10.0)=[2.0,6.0])
triggerall = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||((var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=8)

;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)


;■CCC
[State -1]
Type = ChangeState
Value = 3400
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**27)))
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)	;□CCC攻撃＆地面＆触手ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=7			;□7冊消費
;〓発動条件
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))*2.0)<=Life/(LifeMax/10.0))
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=5.0)
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=9||((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓39F後の予測座標
triggerall = fvar(26)>=180
triggerall = helper(23000),var(39)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=250-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓地雷設置EXを盾
trigger1 = numhelper(1285)
trigger1 = (helper(1285),pos x*helper(1285),facing>=pos x*helper(1285),facing)&&(helper(1285),pos x*helper(1285),facing<=enemynear(var(16)),pos x*helper(1285),facing)				;□地雷EXを盾
;〓烈風拳＆地雷設置Aを盾
trigger2 = (numhelper(1020)+numhelper(1050)+numhelper(1210)+numhelper(1240)+numhelper(1270))>=2


;■地雷設置EX（タッグ対応）
[State -1]
type = ChangeState
Value = 1202
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1280)&&!NumHelper(1285)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = power>=1000
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(power/2500.0)*10	;□確率判定
;〓25F後の予測座標
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=185-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=240
;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=L&&Ceil(var(40)/10000)=0)&&enemynear(var(16)),vel x<=0)
trigger1 = Ceil(helper(23000),fvar(25))>=-60
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger2 = Ceil(helper(23000),fvar(25))>=-60
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)
trigger3 = Ceil(helper(23000),fvar(25))>=-100


;■地雷設置A（タッグ対応）
[State -1]
type = ChangeState
Value = 1200
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
triggerall = fvar(26)!=[-150,150]
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*(15-((NumHelper(1210)+NumHelper(1240)+NumHelper(1270))*5))	;□確率判定
;〓25F後の予測座標（シングル用）（P3×）
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)=[240-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),350]
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger1 = Ceil(helper(23000),fvar(25))>=-30
;〓25F後の予測座標（シングル用）（P3○死）
trigger2 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)=[240-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),350]
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger2 = Ceil(helper(23000),fvar(25))>=-30
;〓25F後の予測座標（タッグ用）（P3○生、P2○生orP4○生）
trigger3 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)=[240-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),350]
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)
trigger3 = Ceil(helper(23000),fvar(25))>=-100
;〓25F後の予測座標（遠近高々度用）
trigger4 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)=[0,350]
trigger4 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
trigger4 = Ceil(helper(23000),fvar(25))<=-180


;■地雷設置B
[State -1]
type = ChangeState
Value = 1201
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1260)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10			;□確率判定
;〓25F後の予測座標
trigger1 = fvar(26)!=[-150,150]
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=220-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=300
trigger1 = Ceil(helper(23000),fvar(25))>=-10
;〓25F後の予測座標（遠近高々度用）
trigger2 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=10-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=180
trigger2 = Ceil(helper(23000),fvar(25))<=-180


;■烈風拳A（タッグ対応）
[State -1]
type = ChangeState
Value = 1000
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*IfElse(fvar(26)>=250,25,15)
;〓21F後の予測座標
triggerall = fvar(26)!=[-150,150]
triggerall = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=190-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓シングル用（P3×）
trigger1 = NumPartner=0
trigger1 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)||fvar(26)>=280
trigger1 = Ceil(helper(23000),fvar(21))>=-20
;〓シングル用（P3○死）
trigger2 = NumPartner>=1
trigger2 = partner,alive=0
trigger2 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=L&&enemynear(var(16)),vel x<=0)||fvar(26)>=280
trigger2 = Ceil(helper(23000),fvar(21))>=-20
;〓タッグ用（P3○生、P2○生orP4○生）
trigger3 = NumPartner>=1
trigger3 = partner,alive
trigger3 = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),statetype=A||enemynear(var(16)),statetype=L)&&enemynear(var(16)),vel x<=0)||fvar(26)>=250
trigger3 = Ceil(helper(23000),fvar(21))>=-100


;■烈風拳B
[State -1]
type = ChangeState
Value = 1001
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0		;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*IfElse(fvar(26)>=250,30,20)
;〓21F後の予測座標（射撃相殺）
trigger1 = enemynear(var(16)),movetype=A
trigger1 = enemynear(var(16)),NumProj=1
trigger1 = numhelper(1020)=0&&numhelper(1050)=0
trigger1 = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=210-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = Ceil(helper(23000),fvar(21))>=-10
;〓21F後の予測座標（烈風拳A→烈風拳B）
trigger2 = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,153])
trigger2 = numhelper(1020)>=1||numhelper(1050)>=1
trigger2 = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=220-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = Ceil(helper(23000),fvar(21))>=-10


;●ハイジャンプ
[State -1]
type = ChangeState
Value = 43
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = enemynear(var(16)),statetype!=L
;〓攻撃ヘルパー判断
triggerall = helper(25000),fvar(10)=0&&helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0
triggerall = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
;〓20F後の予測座標（烈風拳A追随）【前方ハイジャンプフラグON】（烈風拳A→ハイジャンプ）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*IfElse(numhelper(1020)+numhelper(1050)>=2,25,15)	;□個別反応速度
trigger1 = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = numhelper(1020)>=1||numhelper(1050)>=1
trigger1 = helper(23000),var(20)+const(size.ground.front)>=250-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15F後の予測座標（連携開始）【前方ハイジャンプフラグON】（遠距離飛び込み）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*25||enemynear(var(16)),anim=5300	;□個別反応速度（気絶中100％）
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = InGuardDist=0||helper(23000),InGuardDist=0
trigger2 = helper(21000),var(0)>=230								;□画面前端から距離230以上
trigger2 = helper(23000),var(30)+const(size.ground.front)>=215-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(30)+const(size.ground.front)<=220
trigger2 = Ceil(helper(23000),fvar(30))>=-30
trigger2 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)


;●ジャンプ
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = fvar(33)=0										;□起き上がった直後NG
triggerall = (enemynear(var(16)),stateno!=fvar(35)||enemynear(var(16)),stateno=0)&&fvar(34)=0	;□ガード硬直直後NG
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0				;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype=I)||(enemynear(var(16)),stateno=[120,153])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓攻撃ヘルパー判断
triggerall = helper(25000),fvar(10)=0&&helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0
triggerall = helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】（遠距離低空ダッシュJB奇襲）
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)>=225-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=225
trigger1 = Ceil(helper(23000),fvar(10))>=-10
trigger1 = var(47):=Ceil(2.0**15)


;●ダッシュで間合いを詰める（遠距離用）（タッグ対応）【ダッシュ短距離接近フラグON】
[State -1]
Type = ChangeState
Value = 100
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&(stateno!=[100,102]))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**3)|Ceil(2.0**10)))=0
triggerall = (var(47)&(Ceil(2.0**11)|Ceil(2.0**12)|Ceil(2.0**13)))=0	;□特定攻撃後ダッシュ攻撃フラグNG
;〓Near状態
triggerall = enemynear(var(16)),statetype!=L
;〓Near距離測定（近距離）
trigger1 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger1 = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=A&&Ceil(fvar(31))>=10)
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*5	;□個別反応速度
trigger1 = fvar(26)=[190,250]
trigger1 = var(47):=Ceil(2.0**10)
;〓Near距離測定（中距離）
trigger2 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger2 = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=A&&Ceil(fvar(31))>=5)
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*10	;□個別反応速度
trigger2 = fvar(26)=[250,350]
trigger2 = var(47):=Ceil(2.0**10)
;〓Near距離測定（遠距離）
trigger3 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger3 = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)||(enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=A&&Ceil(fvar(31))>=1)
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*25	;□個別反応速度
trigger3 = fvar(26)>=350
trigger3 = var(47):=Ceil(2.0**10)
;〓Near距離測定（遠距離高々度）
trigger4 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger4 = (enemynear(var(16)),movetype=H&&enemynear(var(16)),statetype=A&&Ceil(fvar(31))>=1)
trigger4 = random<=Ceil(helper(21000),var(59)/1000%100)*100	;□個別反応速度
trigger4 = fvar(26)=[190,350]
trigger4 = Ceil(helper(23000),fvar(5))<=-180
trigger4 = var(47):=Ceil(2.0**10)
;〓Near距離測定（烈風拳A追随）
trigger5 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger5 = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)
trigger5 = random<=Ceil(helper(21000),var(59)/1000%100)*50	;□個別反応速度
trigger5 = numhelper(1020)>=1||numhelper(1050)>=1
trigger5 = fvar(26)=[190,280]
trigger5 = var(47):=Ceil(2.0**10)
;〓Near距離測定（中距離）タッグ用（P3○生、P2○生orP4○生）
trigger6 = NumPartner>=1
trigger6 = partner,alive
trigger6 = numenemy>=2
trigger6 = enemy(0),alive||enemy(1),alive
trigger6 = enemy(0),movetype=H&&enemy(1),movetype=H
trigger6 = InGuardDist=0&&helper(23000),InGuardDist=0
trigger6 = (enemy(0),statetype=A||enemy(0),statetype=L)||(enemy(1),statetype=A||enemy(1),statetype=L)
trigger6 = random<=Ceil(helper(21000),var(59)/1000%100)*25	;□個別反応速度
trigger6 = fvar(26)>=250
trigger6 = var(47):=Ceil(2.0**10)
;〓Near距離測定（ロー・ブロッサム用）
trigger7 = numhelper(3205)
trigger7 = helper(3205),var(50)=[1,8]
trigger7 = !enemynear(var(16)),HitDefAttr=SCA,AA,AT,HP
trigger7 = random<=Ceil(helper(21000),var(59)/1000%100)*25	;□個別反応速度
trigger7 = fvar(26)>=190
trigger7 = var(47):=Ceil(2.0**10)


;■ぱっちんEXで牽制（遠距離接近用）
[State -1]
Type = ChangeState
Value = 1402
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = power>=1000+(4000)
triggerall = statetype=S||statetype=C
triggerall = helper(21000),fvar(10)>=240	;□遠距離ガード時間
triggerall = NumHelper(1440)=0
triggerall = NumHelper(1442)=0
triggerall = NumHelper(1452)=0
triggerall = NumHelper(1460)=0
triggerall = NumHelper(1462)=0
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(power/1000.0)*5
;〓Near状態
triggerall = ((enemynear(var(16)),movetype!=A||(enemynear(var(16)),stateno=[120,153]))&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=fvar(35)&&fvar(34)&&enemynear(var(16)),animtime<=-19)
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = helper(21000),var(0)>=220						;□画面端から距離220以上
;〓18F後の予測座標【両用】
trigger1 = helper(23000),var(18)+const(size.ground.front)=[170,250]
trigger1 = Ceil(helper(23000),fvar(18))>=-150


;==============================================================================
;■特定状況キャンセル＆行動（牽制＆立ち回り系行動用）

;■地雷設置中→テレポAで後退
[State -1]
type = ChangeState
Value = 1100
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓近～中距離
trigger1 = helper(21000),var(1)>=80
trigger1 = fvar(26)<=160
trigger1 = var(47):=Ceil(2.0**8)


;■地雷設置中→テレポBで裏回り
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = ((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))||(stateno=1202&&time>50)
triggerall = statetype=S||statetype=C
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓近距離画面後端付近
trigger1 = helper(21000),var(1)<=100
trigger1 = fvar(26)<=120
trigger1 = var(47):=Ceil(2.0**8)


;■烈風拳A中→キャンセルテレポB（長距離テレポ）
[State -1]
type = ChangeState
Value = 1101
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
;〓遠距離
trigger1 = stateno=1000&&time=21
trigger1 = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,153])
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*(15+((NumHelper(1210)+NumHelper(1240)+NumHelper(1270))*25));□確率変動
trigger1 = enemynear(var(16)),NumProj=0
trigger1 = numhelper(1020)>=1||numhelper(1050)>=1
trigger1 = fvar(26)>=200
trigger1 = var(47):=Ceil(2.0**9)
;〓遠距離（6C→烈風拳A→テレポB）
trigger2 = stateno=1000&&time=32
trigger2 = enemynear(var(16)),movetype=H
trigger2 = enemynear(var(16)),statetype=A
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*75	;□確率判定
trigger2 = NumTarget(241)>0||NumTarget(242)>0			;□6Cヒット中
trigger2 = helper(21000),var(0)-fvar(26)>=125			;□P2画面端以外
trigger2 = fvar(26)>=200
trigger2 = var(47):=Ceil(2.0**9)


;■烈風拳AB中→キャンセルぱっちんA
[State -1]
Type = ChangeState
Value = 1400
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
;〓基本使用条件
triggerall = stateno=[1000,1001]
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)
triggerall = enemynear(var(16)),statetype!=A
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25||enemynear(var(16)),statetype=L||enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)<=2.0	;□確率判定
;〓38F後の予測座標
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=-30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=IfElse(enemynear(var(16)),statetype=L,100,125)
triggerall = Ceil(helper(23000),fvar(38))>=-40
;〓キャンセル条件
trigger1 = Ceil(var(52)/100%10)>=1&&(stateno=1000&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger2 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger2 = NumHelper(1020)
trigger2 = helper(1020),movecontact
trigger3 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger3 = NumHelper(1050)
trigger3 = helper(1050),movecontact
trigger4 = Ceil(var(52)/100%10)=0&&(stateno=1001&&time>37)
trigger4 = NumHelper(1021)
trigger4 = helper(1021),movecontact
trigger5 = Ceil(var(52)/100%10)>=1&&(stateno=1001&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger5 = NumHelper(1021)
trigger5 = helper(1021),movecontact


;■烈風拳AB中→キャンセルぱっちんB
[State -1]
Type = ChangeState
Value = 1401
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
;〓基本使用条件
triggerall = stateno=[1000,1001]
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)
triggerall = enemynear(var(16)),statetype!=A
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),statetype=L	;□確率判定
;〓38F後の予測座標
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=110-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=240
triggerall = Ceil(helper(23000),fvar(38))>=-40
;〓キャンセル条件
trigger1 = Ceil(var(52)/100%10)>=1&&(stateno=1000&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger2 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger2 = NumHelper(1020)
trigger2 = helper(1020),MoveContact
trigger3 = Ceil(var(52)/100%10)=0&&(stateno=1000&&time>30)
trigger3 = NumHelper(1050)
trigger3 = helper(1050),MoveContact
trigger4 = Ceil(var(52)/100%10)>=1&&(stateno=1001&&IfElse(Ceil(var(52)/100%10)>=2,time>18,time>30))
trigger4 = NumHelper(1021)
trigger4 = helper(1021),MoveContact
trigger5 = Ceil(var(52)/100%10)=0&&(stateno=1001&&time>37)
trigger5 = NumHelper(1021)
trigger5 = helper(1021),MoveContact


;■ぱっちんB追加入力
[State -1]
Type = ChangeState
Value = 1405
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**28)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1410)||!NumHelper(1422)||!NumHelper(1430)
;〓基本使用条件
triggerall = stateno=1401&&time=26
triggerall = statetype=S||statetype=C
triggerall = NumHelper(1020)||NumHelper(1050)							;□烈風拳追撃のみ
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = (enemynear(var(16)),movetype!=A)||(enemynear(var(16)),stateno=[120,153])||(enemynear(var(16)),movetype=A&&enemynear(var(16)),time<=4)
triggerall = enemynear(var(16)),statetype!=A&&enemynear(var(16)),stateno!=5120			;□起き上がり動作中以外
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),statetype=L	;□確率判定
;〓38F後の予測座標
trigger1 = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=180-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(38)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=230
trigger1 = Ceil(helper(23000),fvar(38))>=-40


;------------------------------------------------------------------------------




























;==============================================================================
;■■空中連携＆空中連続技■■

;■JA→JB（JA上昇中ガード→JB連携）（P2ガード＆P2ブロ専用）
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = stateno=630&&movecontact&&time>6+(5)				;□2HIT目以降
triggerall = statetype=A
triggerall = vel y<0&&pos y<=-35						;□JA上昇中
triggerall = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定
;〓Near状態（空中）
triggerall = enemynear(var(16)),statetype=A
;〓13F後の予測座標（空対空）
trigger1 = numenemy>=1								;□P2用
trigger1 = moveguarded>=1||((enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno)											;□ガードorP2ブロ中
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.air.front)<=90)-(vel x*13)||helper(23000),var(13)+const(size.air.front)-(vel x*13)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(13)+const(size.air.front)-(vel x*13)<=90
trigger1 = Ceil(Ceil(helper(23000),fvar(13))+Ceil(fvar(36))-Ceil(pos y+(vel y*13)+(const(movement.yaccel)*13*(13+1)/2.0)))=[-45,10]
;〓13F後の予測座標（空対空）
trigger2 = numenemy>=2								;□P4用
trigger2 = moveguarded>=1||((enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno)											;□ガードorP4ブロ中
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.air.front)<=90)-(vel x*13)||helper(23000),var(13)+const(size.air.front)-(vel x*13)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(13)+const(size.air.front)-(vel x*13)<=90
trigger2 = Ceil(Ceil(helper(23000),fvar(13))+Ceil(fvar(36))-Ceil(pos y+(vel y*13)+(const(movement.yaccel)*13*(13+1)/2.0)))=[-45,10]
;〓20F後の予測座標（空対空）
trigger3 = numenemy>=1								;□P2用
trigger3 = moveguarded>=1||((enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno)											;□ガードorP2ブロ中
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(20)+const(size.air.front)<=145)-(vel x*20)||helper(23000),var(20)+const(size.air.front)-(vel x*20)>=90-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=145
trigger3 = Ceil(Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0)))=[-45,10]
;〓20F後の予測座標（空対空）
trigger4 = numenemy>=2								;□P4用
trigger4 = moveguarded>=1||((enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno)											;□ガードorP4ブロ中
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(20)+const(size.air.front)<=145)-(vel x*20)||helper(23000),var(20)+const(size.air.front)-(vel x*20)>=90-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=145
trigger4 = Ceil(Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0)))=[-45,10]


;■JA先端ヒット→J2C（P2ガード）
[State -1]
type = ChangeState
Value = 670
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = !numhelper(681)&&!numhelper(682)
triggerall = (var(50)&(Ceil(2.0**26)))=0
;〓P1状態
triggerall = stateno=630
triggerall = statetype=A
triggerall = vel x>0					;□空中前ダッシュJA中
triggerall = pos y=[-90,-5]				;□中空
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定（停止中）
;trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（JA低空～地上ガード）（P2近距離）
trigger1 = moveguarded>=1
trigger1 = (time>6&&(Ceil(pos y+(vel y*4)+(const(movement.yaccel)*4*(4+1)/2.0))>0||helper(21000),var(0)>=90))||time>10	;□2HIT目の可否判定
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=75-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=85
trigger1 = Ceil(helper(23000),fvar(5))>=-10


;■J2C後空中前ダッシュ（P2状態問わず）
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-20)
triggerall = stateno=50&&((numhelper(681)||numhelper(682))||(prevstateno=[671,672]))	;□J2C後
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定（停止中）
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25
;〓5F後の予測座標（対地＆中距離）（JA狙い）
trigger1 = pos y=[-100,-15]								;□低空ダッシュ制限下
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=125
trigger1 = Ceil(helper(23000),fvar(5))>=-10
;〓10F後の予測座標（対地＆中距離）（JB狙い）
trigger2 = pos y=[-140,-15]								;□低空ダッシュ制限下
trigger2 = helper(23000),var(10)+const(size.air.front)-(vel x*10)>=160-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(10)+const(size.air.front)-(vel x*10)<=270
trigger2 = Ceil(helper(23000),fvar(10))>=-10


;■J2C後垂直二段ジャンプ（P2待機状態）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-20)
triggerall = stateno=50&&((numhelper(681)||numhelper(682))||(prevstateno=[671,672]))	;□J2C後
;〓Near状態
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓10F後の予測座標（垂直ジャンプ連携開始）
trigger1 = helper(23000),var(10)+const(size.ground.front)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=170
trigger1 = Ceil(helper(23000),fvar(10))>=-10
;〓10F後の予測座標（前ジャンプ連携開始）
trigger2 = helper(21000),var(0)>=80	;□画面前端以外
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = helper(23000),var(10)+const(size.ground.front)>=160-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(10)+const(size.ground.front)<=190
trigger2 = Ceil(helper(23000),fvar(10))>=-10
trigger2 = var(47):=Ceil(2.0**15)


;■特定攻撃ヒット＆ガード中→JC（P2ガード＆P2ヒット）
[State -1]
type = ChangeState
Value = 650
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**25)))=0
;〓P1状態
triggerall = statetype=A
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0			;□着地F判定
;〓5F後の予測座標（JA低空～地上ガード）（近距離）
trigger1 = stateno=630&&movecontact								;□JA中
trigger1 = (time>6&&Ceil(pos y+(vel y*4)+(const(movement.yaccel)*4*(4+1)/2.0))>0)||time>10	;□2HIT目の可否判定
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=120)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=10-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=120
trigger1 = Ceil(helper(23000),fvar(5))>=-60
;〓5F後の予測座標（4HIT目JB低空～地上ガード）（近距離＆5HIT目不発時）
trigger2 = stateno=640&&movecontact&&time=[17,19]						;□JB中
trigger2 = NumTarget(641)>0									;□4HIT目
trigger2 = Target(641),Time=[1,3]
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=65)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=10-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=65
trigger2 = Ceil(helper(23000),fvar(5))>=-60
;〓5F後の予測座標（J2B低空～地上ガード）（近距離）
trigger3 = stateno=645										;□J2B中
trigger3 = ((Ceil(var(52)/100%10)>=2&&movecontact)||movehit)&&time>11
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=100)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=10-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=100
trigger3 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=enemynear(var(16)),const(size.air.front)&&Ceil(enemynear(var(16)),facing=facing*-1)	;□正面着地判断（めくり時出さない）


;■JB先端ガード→空中前ダッシュ（P2ガード＆P2ヒット）
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = NumTarget(642)>0
triggerall = Target(642),Time>=0
triggerall = stateno=640&&movecontact>=1&&movecontact<=4
triggerall = AnimElemTime(9)>=1&&AnimElemTime(10)<0
triggerall = statetype=A
triggerall = (movehit&&enemynear(var(16)),movetype=H)||moveguarded>=1		;□ブロ以外
triggerall = Ceil(pos y+(vel y*2)+(const(movement.yaccel)*2*(2+1)/2.0))<0	;◆着地F判定（2Fに変更済み）
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*75
;〓5F後の予測座標（対地＆中距離）（JB先端ヒット→空中前ダッシュJA狙い）
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = pos y>=-80								;□低空ダッシュ制限下
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=180
trigger1 = Ceil(helper(23000),fvar(5))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = pos y=[-100,-2]
trigger2 = helper(23000),var(15)+const(size.ground.front)>=170-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(15)+const(size.ground.front)<=240
trigger2 = Ceil(helper(23000),fvar(15))>=-10
;〓5F後の予測座標（対地＆中距離）（JB先端ヒット→J2Bで着地狙い）
trigger3 = enemynear(var(16)),statetype=A
trigger3 = pos y=[-130,-25]							;□低空ダッシュ制限下
trigger3 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=180
trigger3 = Ceil(helper(23000),fvar(5))>=-100


;■JB先端ガード→空中後ダッシュ（P2ブロ＆稀にP2ガード時）
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = NumTarget(642)>0
triggerall = Target(642),Time>=0
triggerall = stateno=640&&movecontact>=1&&movecontact<=4
triggerall = AnimElemTime(9)>=1&&AnimElemTime(10)<0
triggerall = statetype=A
triggerall = Ceil(pos y+(vel y*1)+(const(movement.yaccel)*1*(1+1)/2.0))<0	;□着地F判定
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓5F後の予測座標（対地＆中距離）（回避）
triggerall = pos y=[-80,-15]							;□低空ダッシュ制限下
triggerall = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=0-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
triggerall = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=180
triggerall = Ceil(helper(23000),fvar(5))>=-10
;〓Nearガード時
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*15			;□個別反応速度判定
trigger1 = moveguarded>=1
;〓2Pブロ時
trigger2 = numenemy>=1								;□P2用
trigger2 = (enemy(0),stateno!=[5000,5299])&&enemy(0),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(0),stateno													;□ガードorP2ブロ中
;〓4Pブロ時
trigger3 = numenemy>=2								;□P4用
trigger3 = (enemy(1),stateno!=[5000,5299])&&enemy(1),movetype!=H&&movehit>=1&&enemynear(var(16)),stateno=enemy(1),stateno													;□ガードorP4ブロ中


;■JB先端ガード→J2C（P2ブロ＆稀にP2ガード時）
[State -1]
type = ChangeState
Value = 670
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = !numhelper(681)&&!numhelper(682)
triggerall = (var(50)&(Ceil(2.0**26)))=0
;〓P1状態
triggerall = NumTarget(642)>0
triggerall = Target(642),Time>=0
triggerall = stateno=640&&movecontact>=1&&movecontact<=4
triggerall = AnimElemTime(9)>=1&&AnimElemTime(10)<0
triggerall = statetype=A
triggerall = Ceil(pos y+(vel y*1)+(const(movement.yaccel)*1*(1+1)/2.0))<0	;□着地F判定
triggerall = moveguarded>=1							;□ガード時
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（対地＆中距離）
trigger1 = pos y=[-55,-5]							;□低空ダッシュ制限下
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=80-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=160
trigger1 = Ceil(helper(23000),fvar(5))>=-10


;■■JCガード→空中後ダッシュ（P2ガード＆P2ヒット）（ハイジャンプ中JC用）
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = stateno=650&&time>5
triggerall = statetype=A
triggerall = (vel y<0&&pos y<=-55)||vel y>0					;□高度制限
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
triggerall = numhelper(662)+numhelper(663)+numhelper(664)<=2
triggerall = (var(47)&(Ceil(2.0**17)))						;□ハイジャンプ中
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓1F後の予測座標（対地＆近距離）
triggerall = helper(23000),var(1)+const(size.air.front)-(vel x*1)>=-30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(1)+const(size.air.front)-(vel x*1)<=65
;〓Nearガード＆ヒット時
trigger1 = numhelper(662)=1
trigger1 = helper(662),movecontact
trigger2 = numhelper(663)=1
trigger2 = helper(663),movecontact
trigger3 = numhelper(664)=1
trigger3 = helper(664),movecontact


;■■JCガード→空中後ダッシュ（P2ガード＆P2ヒット）（高々度用）	
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = stateno=650&&time>5
triggerall = statetype=A
triggerall = pos y<=-100							;□一定高度
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
triggerall = numhelper(662)+numhelper(663)+numhelper(664)<=1			;◆JC連打しない
triggerall = (var(47)&(Ceil(2.0**17)))=0					;□ハイジャンプ中NG
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓1F後の予測座標（対地＆近距離）
triggerall = helper(23000),var(1)+const(size.air.front)-(vel x*1)>=-30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(1)+const(size.air.front)-(vel x*1)<=130
;〓Nearガード＆ヒット時
trigger1 = numhelper(662)=1
trigger1 = helper(662),movecontact
trigger2 = numhelper(663)=1
trigger2 = helper(663),movecontact
trigger3 = numhelper(664)=1
trigger3 = helper(664),movecontact


;==============================================================================


;防当
;○－JA（P2空）→JB先端（JA上昇ガード時安定してあたる）

;○○JA（P2空）→JC（近距離のとき）（ヒット時は十分ディレイをかけてからJC）

;○○JA（P2地）→JC
;○－JA（P2地）→J2C

;○○JB中間（P2両）→JC （先端HITしなかったとき）
;○○JB先端（P2地）→ダッシュJA
;○－JB先端（P2地）→J2C
;○○JB先端（P2空）→ダッシュJ2B

;○－JB先端→（P2地）ダッシュ垂直ジャンプ
;○－JB先端→（P2地）後ダッシュ

;○○J2B（P2両）→JC

;○○JC→（P2地）後ダッシュ（ハイジャンプ連携用）

;○－J2C→（P2地）ダッシュ
;○－J2C→（P2地）垂直ジャンプ


;==============================================================================
;■■空中後ダッシュ中行動■■

;■●空中後ダッシュ中→JB
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&stateno=[115,116]						;□後空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116			;□最速空中後ダッシュ可否
triggerall = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定
;〓13F後の予測座標（空対空）
trigger1 = enemynear(var(16)),statetype=A
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(13)+const(size.air.front)<=85)-(vel x*13)||helper(23000),var(13)+const(size.air.front)-(vel x*13)>=30-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(13)+const(size.air.front)-(vel x*13)<=85
trigger1 = Ceil(Ceil(helper(23000),fvar(13))+Ceil(fvar(36))-Ceil(pos y+(vel y*13)+(const(movement.yaccel)*13*(13+1)/2.0)))=[-30,5]
;〓20F後の予測座標（空対空）
trigger2 = enemynear(var(16)),statetype=A
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(20)+const(size.air.front)<=145)-(vel x*20)||helper(23000),var(20)+const(size.air.front)-(vel x*20)>=100-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=145
trigger2 = Ceil(Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0)))=[-30,5]
;〓20F後の予測座標（空対地）
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(20)+const(size.ground.front)<=135)-(vel x*20)||helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=135
trigger3 = Ceil(helper(23000),fvar(20))>=-10
trigger3 = IfElse(enemynear(var(16)),statetype=S,(Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),Const(size.head.pos.y)*0.80<=-70,-70,enemynear(var(16)),Const(size.head.pos.y)*0.80),-1]),1)
trigger3 = IfElse(enemynear(var(16)),statetype=C,(Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),Const(size.mid.pos.y)*0.90<=-70,-70,enemynear(var(16)),Const(size.mid.pos.y)*0.90),-1]),1)


;■●空中後ダッシュ中→JA
[State -1]
type = ChangeState
Value = 630
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**19)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&stateno=[115,116]						;□後空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116			;□最速空中後ダッシュ可否
;〓7F後の予測座標（空対地＆近距離）（ノーマルモード以上）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(7)+const(size.ground.front)<=70)-(vel x*7)||helper(23000),var(7)+const(size.ground.front)-(vel x*7)>=20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*7)<=70
trigger1 = Ceil(helper(23000),fvar(7))>=-10
trigger1 = Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.75,enemynear(var(16)),Const(size.mid.pos.y)*0.50),enemynear(var(16)),Const(size.mid.pos.y)*0.25]
;〓7F後の予測座標（空対空＆近距離）（ノーマルモード以上）
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = enemynear(var(16)),statetype=A
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(7)+const(size.air.front)<=70)-(vel x*7)||helper(23000),var(7)+const(size.air.front)-(vel x*7)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(7)+const(size.air.front)-(vel x*7)<=70
trigger2 = Ceil(Ceil(helper(23000),fvar(7))+Ceil(fvar(36))-Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0)))=[-65,-20]
trigger2 = Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0))<0
;〓11F後の予測座標（空対地＆近距離）（弱体化モード）
trigger3 = Ceil(var(52)/100%10)=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(11)+const(size.ground.front)<=70)-(vel x*11)||helper(23000),var(11)+const(size.ground.front)-(vel x*11)>=40-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(11)+const(size.ground.front)-(vel x*11)<=70
trigger3 = Ceil(helper(23000),fvar(11))>=-10
trigger3 = Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.75,enemynear(var(16)),Const(size.mid.pos.y)*0.50),enemynear(var(16)),Const(size.mid.pos.y)*0.25]
;〓11F後の予測座標（空対空＆近距離）（弱体化モード）
trigger4 = Ceil(var(52)/100%10)=0
trigger4 = enemynear(var(16)),statetype=A
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(11)+const(size.air.front)<=70)-(vel x*11)||helper(23000),var(11)+const(size.air.front)-(vel x*11)>=40-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(11)+const(size.air.front)-(vel x*11)<=70
trigger4 = Ceil(Ceil(helper(23000),fvar(11))+Ceil(fvar(36))-Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0)))=[-60,-25]
trigger4 = Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0))<0


;■空中後ダッシュ中→J2B
[State -1]
type = ChangeState
Value = 645
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**19)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&stateno=[115,116]						;□後空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116			;□最速空中後ダッシュ可否
;〓17F後の予測座標（空対地＆正面）
trigger1 = pos y=[-170,-80]							;□低空ダッシュ制限下
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C	;□空対地専用
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=110)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=110
trigger1 = Ceil(helper(23000),fvar(17))>=-10
trigger1 = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.75,enemynear(var(16)),Const(size.mid.pos.y)*0.50),enemynear(var(16)),Const(size.mid.pos.y)*0.25]


;■空中後ダッシュ中→JC
[State -1]
type = ChangeState
Value = 650
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**25)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&stateno=[115,116]							;□後空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116				;□最速空中後ダッシュ可否
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0		;□着地F判定
triggerall = prevstateno!=650								;◆JC連打しない
triggerall = numhelper(662)+numhelper(663)+numhelper(664)<=2
;〓反応速度判定（停止中）
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（低空）（近中距離）
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=75)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=-30-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=75
trigger1 = Ceil(helper(23000),fvar(5))>=-50
;〓5F後の予測座標（低空）（遠距離無限）
trigger2 = Ceil(random/10%100)<=IfElse(Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))>=-40,100,5)	;◆高度制限確率判定
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=200)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=200-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=200
trigger2 = Ceil(helper(23000),fvar(5))>=-50


;■空中後ダッシュ中→空中前ダッシュ（回避後追撃ダッシュ）
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl								;□後ダッシュ中
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = ((stateno=115&&time>=20)||stateno=116)&&vel x<0			;□ディレイ空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116			;□最速空中後ダッシュ可否
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓15F後の予測座標（対地＆中距離）
trigger1 = pos y=[-80,-60]		;□低空ダッシュ制限下
trigger1 = helper(23000),var(15)+const(size.ground.front)>=125-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(15)+const(size.ground.front)<=150
trigger1 = Ceil(helper(23000),fvar(15))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger2 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定（JB先端ヒット可否）
trigger2 = pos y=[-170,-50]		;□低空ダッシュ制限下
trigger2 = helper(23000),var(15)+const(size.ground.front)>=200-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(15)+const(size.ground.front)<=250
trigger2 = Ceil(helper(23000),fvar(15))>=-10


;■空中後ダッシュ中→前方二段ジャンプ	（前ジャンプで距離を詰める）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-40)					;□腰以上
triggerall = ((stateno=115&&time>=20)||stateno=116)&&vel x<0			;□ディレイ空中ダッシュ
triggerall = IfElse(var(59)>=5,time>=0,time>=3)||stateno=116			;□最速空中後ダッシュ可否
;〓Near状態
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25			;□確率判定
;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)>=135-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=280
trigger1 = Ceil(helper(23000),fvar(10))>=-10
trigger1 = var(47):=Ceil(2.0**15)


;==============================================================================
;■■空中前ダッシュ中行動■■

;■●空中前ダッシュ中→JB
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = ((stateno=110&&time>=2)||stateno=111)&&vel x>0	;□前ダッシュ中
;〓反応速度判定（停止中）
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓20F後の予測座標（空対地＆近距離）（2F加速）
trigger1 = stateno=110&&time=2
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=140
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),-1]
;〓20F後の予測座標（空対地＆遠距離）（3F以上加速）
trigger2 = (stateno=110&&time>=3)||stateno=111
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=140
trigger2 = Ceil(helper(23000),fvar(20))>=-10
trigger2 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),-1]
;〓20F後の予測座標（空対空＆遠距離）（3F以上加速）
trigger3 = (stateno=110&&time>=3)||stateno=111
trigger3 = enemynear(var(16)),statetype=A
trigger3 = helper(23000),var(20)+const(size.air.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger3 = helper(23000),var(20)+const(size.air.front)-(vel x*20)<=150
trigger3 = Ceil(Ceil(helper(23000),fvar(20))+Ceil(fvar(36))-Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0)))=[-50,-15]
trigger3 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0


;■●空中前ダッシュ中→JA
[State -1]
type = ChangeState
Value = 630
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**19)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = ((stateno=110&&time>=2)||stateno=111)&&vel x>0	;□前ダッシュ中
;〓7F後の予測座標（空対地＆近距離）（ノーマルモード以上）（持続3F目当て）
trigger1 = Ceil(var(52)/100%10)>=1
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(7)+const(size.ground.front)<=75)-(vel x*7)||helper(23000),var(7)+const(size.ground.front)-(vel x*7)>=20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(7)+const(size.ground.front)-(vel x*7)<=75
trigger1 = Ceil(helper(23000),fvar(7))>=-10
trigger1 = Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.25]
;〓7F後の予測座標（空対空＆近距離）（ノーマルモード以上）
trigger2 = Ceil(var(52)/100%10)>=1
trigger2 = enemynear(var(16)),statetype=A
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(7)+const(size.air.front)<=70)-(vel x*7)||helper(23000),var(7)+const(size.air.front)-(vel x*7)>=20-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(7)+const(size.air.front)-(vel x*7)<=70
trigger2 = Ceil(Ceil(helper(23000),fvar(7))+Ceil(fvar(36))-Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0)))=[-65,-20]
trigger2 = Ceil(pos y+(vel y*7)+(const(movement.yaccel)*7*(7+1)/2.0))<0
;〓11F後の予測座標（空対地＆近距離）（弱体化モード）（持続2F目当て）
trigger3 = Ceil(var(52)/100%10)=0
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(11)+const(size.ground.front)<=75)-(vel x*11)||helper(23000),var(11)+const(size.ground.front)-(vel x*11)>=40-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(11)+const(size.ground.front)-(vel x*11)<=75
trigger3 = Ceil(helper(23000),fvar(11))>=-10
trigger3 = Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.25]
;〓11F後の予測座標（空対空＆近距離）（弱体化モード）
trigger4 = Ceil(var(52)/100%10)=0
trigger4 = enemynear(var(16)),statetype=A
trigger4 = (helper(21000),var(1)<=30&&helper(23000),var(11)+const(size.air.front)<=70)-(vel x*11)||helper(23000),var(11)+const(size.air.front)-(vel x*11)>=40-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger4 = helper(23000),var(11)+const(size.air.front)-(vel x*11)<=70
trigger4 = Ceil(Ceil(helper(23000),fvar(11))+Ceil(fvar(36))-Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0)))=[-60,-25]
trigger4 = Ceil(pos y+(vel y*11)+(const(movement.yaccel)*11*(11+1)/2.0))<0


;■空中前ダッシュ中→空中後ダッシュ
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = ((stateno=110&&time>=2)||stateno=111)&&vel x>0	;□前ダッシュ中
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
triggerall = enemynear(var(16)),movetype=I||(enemynear(var(16)),movetype=H&&(enemynear(var(16)),stateno=[150,159]))

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（中距離）
trigger1 = helper(23000),var(5)+const(size.ground.front)>=50-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=90
trigger1 = Ceil(helper(23000),fvar(5))>=-10


;■空中前ダッシュ中→J2B（P2空中ガード＆JB空中ヒット後）
[State -1]
type = ChangeState
Value = 645
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0					;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**23)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x>0&&((stateno=110&&time>=2)||stateno=111)			;□空中前ダッシュ中
triggerall = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))<0	;□着地F判定
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓17F後の予測座標（空対空＆正面）
trigger1 = (stateno=110&&time>=3)||stateno=111					;□3F以上加速
trigger1 = enemynear(var(16)),statetype=A					;□空対空専用
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=115)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=115
trigger1 = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[-85,-15]
;〓17F後の予測座標（空対地＆正面）
trigger2 = (stateno=110&&time=2)||stateno=111					;□2F加速
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C	;□空対地専用
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=100)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=75
trigger2 = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=100
trigger2 = Ceil(helper(23000),fvar(17))>=-10
trigger2 = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.50]
;〓17F後の予測座標（空対地＆正面）
trigger3 = (stateno=110&&time>=3)||stateno=111					;□3F以上加速
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C	;□空対地専用
trigger3 = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=110)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=110
trigger3 = Ceil(helper(23000),fvar(17))>=-10
trigger3 = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.50]


;■空中前ダッシュ中→JC
[State -1]
type = ChangeState
Value = 650
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0					;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**25)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = ((stateno=110&&time>=2)||stateno=111)&&vel x>0			;□前ダッシュ中
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
;〓5F後の予測座標（低空＆近距離）
trigger1 = (stateno=110&&time=2)||stateno=111					;□2F加速
trigger1 = pos y>=-55								;□P1低空時のみ
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=90)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=-30-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=70
trigger1 = Ceil(helper(23000),fvar(10))>=-50
;〓5F後の予測座標（低空＆遠距離）
trigger2 = prevstateno!=670
trigger2 = (stateno=110&&time>=3)||stateno=111					;□3F以上加速
trigger2 = Ceil(random/10%100)<=IfElse(Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))>=-100,10,0)	;◆高度制限確率判定
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)>=220-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = Ceil(helper(23000),fvar(5))>=-50


;■空中前ダッシュ中→垂直二段ジャンプ	（JB先端狙い）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y=[-80,-25]				;□低空時
triggerall = ((stateno=110&&time>=2)||stateno=111)&&vel x>0		;□前ダッシュ中
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)	;□空中ダッシュ使用可能時
;〓Near状態
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25		;□確率判定
;〓1F後の予測座標（垂直ジャンプ連携開始）
trigger1 = helper(23000),var(1)+const(size.ground.front)>=115-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(1)+const(size.ground.front)<=140


;==============================================================================
;■■後ジャンプ中行動■■

;■後ジャンプ中→空中後ダッシュ（敵が近距離＆画面端々）（その後とりあえずJCで着地する）
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&stateno!=[115,116]	;□後ジャンプ中
triggerall = (!numhelper(681)&&!numhelper(682))||(prevstateno!=[671,672])	;□J2C後NG
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（近距離）
trigger1 = helper(23000),var(5)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=125			;◆暫定
trigger1 = Ceil(helper(23000),fvar(5))>=-10


;■後ジャンプ上昇中→J2C
[State -1]
type = ChangeState
Value = 670
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = !numhelper(681)&&!numhelper(682)
triggerall = (var(50)&(Ceil(2.0**26)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x<0&&vel y<0&&stateno!=[115,116]	;□後ジャンプ上昇中
triggerall = pos y=[-95,-65]				;□中空
triggerall = helper(21000),var(1)>=70			;□画面後端OFF
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓14F後の予測座標（対地）
trigger1 = helper(23000),var(14)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(14)+const(size.ground.front)<=250
trigger1 = Ceil(helper(23000),fvar(14))>=-10


;■後ジャンプ中→前方二段ジャンプ（極稀に昇竜対策）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-40)
triggerall = vel x<0&&stateno!=[115,116]			;□後ジャンプ中
;〓Near状態
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||(enemynear(var(16)),stateno=[120,140])
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*25	;□確率判定
;〓10F後の予測座標（前ジャンプ連携開始）【前方ジャンプフラグON】
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=135
trigger1 = Ceil(helper(23000),fvar(10))>=-10
trigger1 = var(47):=Ceil(2.0**15)


;■後ジャンプ中→空中前ダッシュ
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = vel x<0&&stateno!=[115,116]	;□後ジャンプ中
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定（停止中）
;triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓15F後の予測座標（対地＆中距離）
trigger1 = pos y=[-100,-85]			;□ジャンプ頂点付近
trigger1 = vel x<0&&vel y<0			;□後ジャンプ上昇中
trigger1 = helper(23000),var(15)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(15)+const(size.ground.front)<=180
trigger1 = Ceil(helper(23000),fvar(15))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger2 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定（JB先端ヒット可否）
trigger2 = pos y=[-70,-50]			;□低空ダッシュ制限下
trigger2 = vel x<0&&vel y<0			;□後ジャンプ上昇中
trigger2 = helper(23000),var(15)+const(size.ground.front)>=200-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(15)+const(size.ground.front)<=250
trigger2 = Ceil(helper(23000),fvar(15))>=-10
;〓15F後の予測座標（J2C後など）
trigger3 = pos y=[-120,-65]			;□低空ダッシュ制限下
trigger3 = vel x<0&&vel y>0			;□後ジャンプ下降中
trigger3 = helper(23000),var(15)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(15)+const(size.ground.front)<=250
trigger3 = Ceil(helper(23000),fvar(15))>=-10


;==============================================================================
;■■前ジャンプ中行動■■

;■●前ジャンプ中→J2B（空対地＆正面）
[State -1]
type = ChangeState
Value = 645
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0					;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**23)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x>0&&stateno!=[110,111]					;□前ジャンプ中
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),stateno=5120	;□対地＆起き上がり中
triggerall = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))>=-70	;□最高高度制限
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),stateno=5120

;〓17F後の予測座標（空対地＆正面）
triggerall = (helper(21000),var(1)<=30&&helper(23000),var(17)+const(size.ground.front)<=95)-(vel x*17)||helper(23000),var(17)+const(size.ground.front)-(vel x*17)>=15-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
triggerall = helper(23000),var(17)+const(size.ground.front)-(vel x*17)<=90
triggerall = Ceil(helper(23000),fvar(17))>=-10
triggerall = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))=[IfElse(enemynear(var(16)),statetype=C,enemynear(var(16)),Const(size.mid.pos.y)*0.90,enemynear(var(16)),Const(size.head.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.50]

;〓攻撃ヘルパー（0個）
trigger1 = helper(25000),fvar(10)=0
;〓攻撃ヘルパー（1個）
trigger2 = helper(25000),fvar(10)
trigger2 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger2 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger2 = helper(25000),fvar(11)=0&&helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger2 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)<=0

;〓攻撃ヘルパー（2個）
trigger3 = helper(25000),fvar(10)&&helper(25000),fvar(11)
trigger3 = helper(25000),fvar(12)=0&&helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger3 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger3 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger3 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger3 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)<=0
trigger3 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)<=0
;〓攻撃ヘルパー（3個）
trigger4 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)
trigger4 = helper(25000),fvar(13)=0&&helper(25000),fvar(14)=0&&helper(25000),fvar(15)=0&&helper(25000),fvar(16)=0&&helper(25000),fvar(17)=0&&helper(25000),fvar(18)=0&&helper(25000),fvar(19)=0
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger4 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger4 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger4 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger4 = PlayerID(Ceil(helper(25000),fvar(12))),vel x
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)<=0
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)<=0
trigger4 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(12))),vel x)<=0
;〓攻撃ヘルパー（4個以上）
trigger5 = helper(25000),fvar(10)&&helper(25000),fvar(11)&&helper(25000),fvar(12)&&helper(25000),fvar(13)
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(10)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(11)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(12)))
trigger5 = PlayerIDExist(Ceil(helper(25000),fvar(13)))
trigger5 = PlayerID(Ceil(helper(25000),fvar(10))),vel x
trigger5 = PlayerID(Ceil(helper(25000),fvar(11))),vel x
trigger5 = PlayerID(Ceil(helper(25000),fvar(12))),vel x
trigger5 = PlayerID(Ceil(helper(25000),fvar(13))),vel x
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(10))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(10))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(10))),vel x)<=0
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(11))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(11))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(11))),vel x)<=0
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(12))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(12))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(12))),vel x)<=0
trigger5 = Ceil(Ceil(PlayerID(Ceil(helper(25000),fvar(13))),pos y-pos y))>=70||Ceil(((PlayerID(Ceil(helper(25000),fvar(13))),pos x*facing)-(pos x*facing)-(50))/PlayerID(Ceil(helper(25000),fvar(13))),vel x)<=0

;■●前ジャンプ中→J2B（空対地＆めくり）
[State -1]
type = ChangeState
Value = 645
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0

;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0					;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**23)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = vel x>0&&stateno!=[110,111]					;□前ジャンプ中
;〓Near状態
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),stateno=5120	;□対地＆起き上がり中
triggerall = Ceil(pos y+(vel y*17)+(const(movement.yaccel)*17*(17+1)/2.0))>=-70	;□最高高度制限
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50||enemynear(var(16)),stateno=5120

;〓20F後の予測座標（空対地＆めくり）
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=-35-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=15
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=C,enemynear(var(16)),Const(size.mid.pos.y)*0.90,enemynear(var(16)),Const(size.head.pos.y)*0.90),enemynear(var(16)),Const(size.mid.pos.y)*0.50]


;■前ジャンプ中→空中前ダッシュ（ハイジャンプ中NG）
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = vel x>0&&stateno!=[110,111]			;□前ジャンプ中
triggerall = (var(47)&(Ceil(2.0**17)))=0			;□ハイジャンプ中NG
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓10F後の予測座標（対地＆近距離）
trigger1 = pos y=[-65,-50]
trigger1 = vel x>0&&vel y<0					;□前ジャンプ上昇中
trigger1 = helper(23000),var(10)+const(size.ground.front)>=130-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=140
trigger1 = Ceil(helper(23000),fvar(10))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger2 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定（JB先端ヒット可否）
trigger2 = pos y=[-100,-65]
trigger2 = vel x>0&&vel y<0					;□前ジャンプ上昇中
trigger2 = helper(23000),var(15)+const(size.ground.front)>=200-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(15)+const(size.ground.front)<=250
trigger2 = Ceil(helper(23000),fvar(15))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger3 = pos y=[-120,-65]
trigger3 = vel x>0&&vel y>0					;□前ジャンプ下降中
trigger3 = helper(23000),var(15)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(15)+const(size.ground.front)<=250
trigger3 = Ceil(helper(23000),fvar(15))>=-10


;■前ジャンプ中→空中後ダッシュ（空対地はハイジャンプ中NG）
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = vel x>0&&stateno!=[110,111]			;□前ジャンプ中
;〓Near状態
triggerall = enemynear(var(16)),movetype=A			;◆ハイジャンプコンボ阻害してしまうので試しで追加
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（空対空＆近距離）
trigger1 = enemynear(var(16)),statetype=A
trigger1 = helper(23000),var(5)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=45
trigger1 = Ceil(helper(23000),fvar(5))<=-10
;〓10F後の予測座標（空対地＆近距離）
trigger2 = (var(47)&(Ceil(2.0**17)))=0				;□ハイジャンプ中NG
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = vel x>0&&vel y>0
trigger2 = pos y<=-80
trigger2 = helper(23000),var(10)+const(size.ground.front)>=-30-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(10)+const(size.ground.front)<=80
trigger2 = Ceil(helper(23000),fvar(10))>=-10
;〓17F後の予測座標（空対地＆正面）
trigger3 = (var(47)&(Ceil(2.0**17)))=0				;□ハイジャンプ中NG
trigger3 = vel x>0&&vel y>0					;□前方ジャンプ落下中
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),stateno=5120
trigger3 = pos y<=-70
trigger3 = helper(23000),var(17)+const(size.ground.front)>=0-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger3 = helper(23000),var(17)+const(size.ground.front)<=40
trigger3 = Ceil(helper(23000),fvar(17))>=-10


;■前ジャンプ中（ハイジャンプ中）→JB
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
triggerall = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))>=-40	;◆最高高度制限　烈風拳後あたるか？
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C

;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50	;◆テスト確率
;〓20F後の予測座標（空対地）
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=140
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),-1]

;■前ジャンプ中（ハイジャンプ中）→JC
[State -1]
type = ChangeState
Value = 650
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**25)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
triggerall = Ceil(pos y+(vel y*5)+(const(movement.yaccel)*5*(5+1)/2.0))<0	;□着地F判定
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓5F後の予測座標（近距離）
trigger1 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=90)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=-50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger1 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=25-IfElse(pos y<-40,Ceil(abs((pos x+40)*0.20)),0)
trigger1 = Ceil(helper(23000),fvar(10))>=-10
;〓5F後の予測座標（近距離）
trigger2 = enemynear(var(16)),movetype=H&&(enemynear(var(16)),stateno!=[120,159])
trigger2 = (helper(21000),var(1)<=30&&helper(23000),var(5)+const(size.air.front)<=90)-(vel x*5)||helper(23000),var(5)+const(size.air.front)-(vel x*5)>=-50-(enemynear(var(16)),const(size.air.front)+enemynear(var(16)),const(size.air.back))
trigger2 = helper(23000),var(5)+const(size.air.front)-(vel x*5)<=40
trigger2 = Ceil(helper(23000),fvar(10))>=-10


;■前ジャンプ中（ハイジャンプ中）→前方二段ジャンプ（弾幕回避）（ヘルパー検索未実装）
[State -1]
type = ChangeState
Value = 45
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = var(15)=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-60)
triggerall = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
;〓Near状態
triggerall = (InGuardDist=1&&helper(23000),InGuardDist=0)&&enemynear(var(16)),numProj>=3
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓10F後の予測座標（弾幕回避）【前方ジャンプフラグON】
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = helper(23000),var(10)+const(size.ground.front)>=120-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(10)+const(size.ground.front)<=260
trigger1 = Ceil(helper(23000),fvar(10))>=-90
trigger1 = var(47):=Ceil(2.0**15)


;■前ジャンプ中（ハイジャンプ中）→J2C
[State -1]
type = ChangeState
Value = 670
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外

;〓EXゲイザー中除外（ノーマルモード以上）
triggerall = Ceil(var(52)/100%10)>=1&&(NumHelper(1360)=0&&NumHelper(1361)=0&&NumHelper(1362)=0&&NumHelper(1363)=0&&NumHelper(1364)=0&&NumHelper(1365)=0)
triggerall = Ceil(var(52)/100%10)>=1&&(NumHelper(1366)=0&&NumHelper(1367)=0&&NumHelper(1368)=0&&NumHelper(1369)=0&&NumHelper(1370)=0&&NumHelper(1371)=0)

;〓基本使用条件
triggerall = !numhelper(681)&&!numhelper(682)
triggerall = (var(50)&(Ceil(2.0**26)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=45&&pos y<=-35+(-40)
triggerall = (var(47)&(Ceil(2.0**17)))				;□ハイジャンプ中
triggerall = helper(21000),var(0)>=190				;□画面前端OFF
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓5F後の予測座標（対地）
trigger1 = helper(23000),var(5)+const(size.ground.front)>=175-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(5)+const(size.ground.front)<=180
trigger1 = Ceil(helper(23000),fvar(5))>=-10


;■前ジャンプ中→JB（低AIレベル）
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)=[1,2]
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓コンボルート除外
triggerall = (var(48)&(Ceil(2.0**18)))=0			;□6C始動空中コンボルート以外
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))>=-50	;◆最高高度制限
;〓Near状態（地上）
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*30	;◆テスト確率
;〓20F後の予測座標（空対地）
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=105-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=140
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.90,enemynear(var(16)),Const(size.mid.pos.y)*0.90),-1]


;==============================================================================
;■■垂直ジャンプ中行動■■

;■垂直ジャンプ中→JB（打点高目）
[State -1]
type = ChangeState
Value = 640
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (var(50)&(Ceil(2.0**22)))=0
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = (stateno!=[110,111])&&(stateno!=[115,116])&&vel x=0		;□垂直ジャンプ中
triggerall = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))>=-60	;□最高高度制限
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50			;◆テスト確率
;〓20F後の予測座標（空対地）
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),stateno=5120
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)>=90-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)-(vel x*20)<=140
trigger1 = Ceil(helper(23000),fvar(20))>=-10
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))=[IfElse(enemynear(var(16)),statetype=S,enemynear(var(16)),Const(size.head.pos.y)*0.95,enemynear(var(16)),Const(size.mid.pos.y)*0.95),-1]


;■垂直ジャンプ中→空中前ダッシュ
[State -1]
type = ChangeState
Value = 110
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = (stateno!=[110,111])&&(stateno!=[115,116])&&vel x=0		;□垂直ジャンプ中
;〓Near状態（地上、待機orガード）
triggerall = (enemynear(var(16)),movetype=I&&InGuardDist=0&&helper(23000),InGuardDist=0)||enemynear(var(16)),movetype=H
triggerall = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓15F後の予測座標（対地＆遠距離）
trigger1 = Ceil(pos y+(vel y*20)+(const(movement.yaccel)*20*(20+1)/2.0))<0	;□着地F判定（JB先端ヒット可否）
trigger1 = pos y=[-90,-50]
trigger1 = vel x=0&&vel y<0		;□垂直ジャンプ上昇中
trigger1 = helper(23000),var(15)+const(size.ground.front)>=200-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(15)+const(size.ground.front)<=250
trigger1 = Ceil(helper(23000),fvar(15))>=-10
;〓15F後の予測座標（対地＆遠距離）
trigger2 = pos y=[-120,-65]
trigger2 = vel x=0&&vel y>0		;□垂直ジャンプ下降中
trigger2 = helper(23000),var(15)+const(size.ground.front)>=150-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(15)+const(size.ground.front)<=250
trigger2 = Ceil(helper(23000),fvar(15))>=-10


;■垂直ジャンプ中→空中後ダッシュ（J2C後NG）
[State -1]
type = ChangeState
Value = 115
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**23)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = IfElse(Ceil(var(52)/100%10)>=1,var(14)<=2,var(14)<=1)
;〓P1状態
triggerall = Ctrl
triggerall = statetype=A
triggerall = stateno!=110&&pos y<=-20
triggerall = (stateno!=[110,111])&&(stateno!=[115,116])&&vel x=0		;□垂直ジャンプ中
triggerall = (!numhelper(681)&&!numhelper(682))||(prevstateno!=[671,672])	;□J2C後NG
;〓反応速度判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*50
;〓20F後の予測座標（空対空＆近距離）
trigger1 = helper(23000),var(20)+const(size.ground.front)>=-20-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(20)+const(size.ground.front)<=90


;------------------------------------------------------------------------------




























;==============================================================================
;■壁バウンド受身■

;□壁バウンド後空中受身
[State -1]
Type = null
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=8502||stateno=8504
triggerall = statetype=A
;〓前方空中受身（画面端脱出用）
trigger1 = helper(21000),var(1)<=30			;□画面後ろ端から距離125以内
trigger1 = fvar(26)<=50
trigger1 = helper(21000),fvar(11)=[1,10]		;□GuardDist成立時間
trigger1 = InGuardDist||helper(23000),InGuardDist
trigger1 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓前方空中受身（接近用）
trigger2 = helper(21000),var(0)>=300			;□画面前端から距離300以上
trigger2 = fvar(26)>=250
trigger2 = var(47):=Ceil(2.0**20)			;□前方受身フラグON
;〓垂直空中受身
trigger3 = helper(21000),fvar(11)=[1,10]		;□GuardDist成立時間
trigger3 = InGuardDist||helper(23000),InGuardDist
IgnoreHitPause = 1


;==============================================================================
;■移動起き上がりテレポ＆床バウンド受身テレポ【回避テレポ済みフラグON】

;□移動起き上がりテレポフラグセット
[State -1]
Type = null
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (stateno=5100||stateno=5110||stateno=8512)&&time=5
triggerall = fvar(20)>=200&&(alive=1&&Life>0)
triggerall = movetype=H&&statetype=L

;〓画面端＆P2近距離（テレポB中距離）
trigger1 = fvar(20)>=600||(stateno=8512&&fvar(20)>=200)
trigger1 = helper(21000),var(1)<=75
trigger1 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=70
trigger1 = var(4):=2
trigger1 = var(47):=Ceil(2.0**7)
;〓画面端＆P2中距離（テレポB中距離）
trigger2 = fvar(20)>=1200
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*75		;□反応判定
trigger2 = helper(21000),var(1)<=125
trigger2 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))<=125
trigger2 = var(4):=2
trigger2 = var(47):=Ceil(2.0**7)
;〓画面端＆P2遠距離（テレポB中距離）
trigger3 = fvar(20)>=800
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*50		;□反応判定
trigger3 = enemynear(var(16)),NumProj>=1||(InGuardDist||helper(23000),InGuardDist)
trigger3 = enemynear(var(16)),movetype=A
trigger3 = helper(21000),var(1)<=75
trigger3 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=200
trigger3 = var(4):=2
trigger3 = var(47):=Ceil(2.0**7)
;〓画面中央＆P2近距離（テレポA回避）
trigger4 = fvar(20)>=1200
trigger4 = random<=Ceil(helper(21000),var(59)/1000%100)*50		;□反応判定
trigger4 = helper(21000),var(1)>=150
trigger4 = InGuardDist||helper(23000),InGuardDist
trigger4 = enemynear(var(16)),movetype=A
trigger4 = Ceil(fvar(26)+IfElse(enemynear(var(16)),statetype=A,enemynear(var(16)),const(size.air.front),enemynear(var(16)),const(size.ground.front)))>=75
trigger4 = var(4):=1
trigger4 = var(47):=Ceil(2.0**7)
IgnoreHitPause = 1


;==============================================================================
;■フラグリセット02■

;□アドガ済みフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**4)))
trigger1 = stateno!=8000&&stateno!=0&&stateno!=120
trigger1 = var(47):=(var(47)|Ceil(2.0**4))-(Ceil(2.0**4))||1
trigger2 = fvar(26)>120
trigger2 = var(47):=(var(47)|Ceil(2.0**4))-(Ceil(2.0**4))||1
IgnoreHitPause = 1

;□投げ回避済みフラグリセット
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(47)&(Ceil(2.0**2)))
trigger1 = (Ctrl||(stateno=100&&time>=1))&&statetype!=A&&stateno!=[120,159]
trigger1 = var(47):=(var(47)|Ceil(2.0**2))-(Ceil(2.0**2))||1
trigger2 = (movetype=H&&stateno!=[120,139])||movetype=A
trigger2 = var(47):=(var(47)|Ceil(2.0**2))-(Ceil(2.0**2))||1
trigger3 = stateno=0||(stateno=[100,106])||stateno=[5000,5999]
trigger3 = var(47):=(var(47)|Ceil(2.0**2))-(Ceil(2.0**2))||1
IgnoreHitPause = 1


;==============================================================================
;■ガード系行動■


;1　P1攻撃ガード時に削り大ダメージ察知→　テレポで脱出【回避テレポ済みフラグON】
;		（AIレベル2以上、反応判定あり、テレポ方向や距離判定別途あり）

;2　P1攻撃ガード中→　P2ジャンプ打撃攻撃→　画面端のとき高確率でアドガ使用【アドガ済みフラグON】
;	　　　　└→　P2地上打撃攻撃　　→　近距離のとき低確率でアドガ使用【アドガ済みフラグON】
;		（AIレベル3以上、反応判定あり）

;3　P1攻撃ガード時に削りダメージ察知→　P2遠距離攻撃　　　　→　特殊ガード使用判定
;		　　　　　　　　　└→　P2削り大ダメージ攻撃→　削りダメージと残り体力により特殊ガード使用確率補正
;		（AIレベル2以上、反応判定あり）
; 　P1攻撃ガード時に投げ攻撃察知→　特殊ガード使用判定
;		（AIレベル3以上、反応判定あり）

;4　P2攻撃範囲察知→　通常ガード使用判定
;		（AIレベル1以上、ガード精度による判定あり）

;------------------------------------------------------------------------------
;■ガードキャンセルテレポ【回避テレポ済みフラグON】

[State -1]
Type = null
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = fvar(20)>=200&&Life>0
triggerall = stateno=[150,153]
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**4)))=0
;〓削り大ダメージ（テレポA）
trigger1 = helper(21000),var(1)>150
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*10
trigger1 = fvar(30)>=200
trigger1 = var(4):=1
trigger1 = var(47):=Ceil(2.0**7)
;〓削り大ダメージ（テレポB）
trigger2 = helper(21000),var(1)<=150
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*10
trigger2 = fvar(30)>=200
trigger2 = var(4):=2
trigger2 = var(47):=Ceil(2.0**7)
;〓長時間ガード（テレポB）（削りor体力負け）
trigger3 = helper(21000),var(1)<=150
trigger3 = helper(21000),fvar(9)>=240	;□連続ガード時間
trigger3 = LifeMax!=0&&enemynear(var(16)),LifeMax!=0
trigger3 = fvar(30)>=100||(Life/(LifeMax/10.0)<=enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*10
trigger3 = var(4):=2
trigger3 = var(47):=Ceil(2.0**7)
;〓挟撃回避（タッグ用）（テレポAB）
trigger4 = numenemy>=2
trigger4 = enemy(0),alive&&enemy(1),alive
trigger4 = (enemy(0),pos x-pos x>0&&enemy(1),pos x-pos x<0)||(enemy(0),pos x-pos x<0&&enemy(1),pos x-pos x>0)
trigger4 = abs(enemy(0),pos x-pos x)+abs(enemy(1),pos x-pos x)=[0,100]
trigger4 = random<=Ceil(helper(21000),var(59)/1000%100)*10
trigger4 = var(4):=IfElse(helper(21000),var(0)>=helper(21000),var(1),2,1)
trigger4 = var(47):=Ceil(2.0**7)
IgnoreHitPause = 1


;------------------------------------------------------------------------------
;■アドバンシングガード【アドガ済みフラグON】

[State -1]
Type = null
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = !NumHelper(8010)
triggerall = fvar(20)>=300&&Life>0
triggerall = stateno=[150,153]
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**4)))=0
;〓画面端ジャンプ攻撃
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
trigger1 = fvar(26)<=60
trigger1 = helper(21000),var(1)<=120
trigger1 = enemynear(var(16)),HitDefAttr=A,AA
trigger1 = enemynear(var(16)),statetype=A
trigger1 = var(4):=3
trigger1 = var(47):=Ceil(2.0**4)
;〓地上攻撃
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*10
trigger2 = fvar(26)<=40
trigger2 = fvar(20)>=1200
trigger2 = helper(21000),var(1)<=200
trigger2 = enemynear(var(16)),HitDefAttr=SC,AA
trigger2 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger2 = enemynear(var(16)),moveguarded=2
trigger2 = var(4):=3
trigger2 = var(47):=Ceil(2.0**4)
IgnoreHitPause = 1


;------------------------------------------------------------------------------
;■特殊ガード

[State -1]
Type = null
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = stateno=[150,153]
triggerall = statetype=S||statetype=C
triggerall = Life<=(LifeMax/10.0)*8
triggerall = (var(47)&(Ceil(2.0**4)))=0
triggerall = Ceil((var(51)/10%10)/3)!=0
;〓遠距離15点削り
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*25
trigger1 = fvar(26)>=150
trigger1 = GetHitVar(damage)>=15||fvar(30)>=45
trigger1 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(2000/Ceil((var(51)/10%10)/3)),2000)
trigger1 = var(24):=1
;〓遠距離7点削り
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*25
trigger2 = fvar(26)>=150
trigger2 = GetHitVar(damage)>=7||fvar(30)>=21
trigger2 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(2200/Ceil((var(51)/10%10)/3)),2200)
trigger2 = var(24):=1
;〓遠距離2点削り
trigger3 = random<=Ceil(helper(21000),var(59)/1000%100)*25
trigger3 = fvar(26)>=150
trigger3 = GetHitVar(damage)>=2||fvar(30)>=6
trigger3 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(2400/Ceil((var(51)/10%10)/3)),2400)
trigger3 = var(24):=1
;〓100点削り
trigger4 = random<=Ceil(helper(21000),var(59)/1000%100)*(10+GetHitVar(damage)+((LifeMax-Life)/20))
trigger4 = GetHitVar(damage)>=100||fvar(30)>=100
trigger4 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(100/Ceil((var(51)/10%10)/3)),100)
trigger4 = var(24):=1
;〓50点削り
trigger5 = random<=Ceil(helper(21000),var(59)/1000%100)*(10+GetHitVar(damage)+((LifeMax-Life)/20))
trigger5 = GetHitVar(damage)>=50||fvar(30)>=50
trigger5 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(1000/Ceil((var(51)/10%10)/3)),1000)
trigger5 = var(24):=1
;〓25点削り
trigger6 = random<=Ceil(helper(21000),var(59)/1000%100)*(10+GetHitVar(damage)+((LifeMax-Life)/20))
trigger6 = GetHitVar(damage)>=25||fvar(30)>=25
trigger6 = fvar(20)>=IfElse(Ceil(var(52)/10%10)%2,Ceil(2000/Ceil((var(51)/10%10)/3)),2000)
trigger6 = var(24):=1
IgnoreHitPause = 1


;■ガード中に特殊ガードで投げ無敵付与して投げ技を回避（投げ属性当て身投げ含まない）【投げ回避済みフラグON】
[State -1]
Type = ChangeState
Value = 120
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**25)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = fvar(20)>=60
triggerall = var(24)=0
triggerall = stateno=[150,153]
triggerall = numhelper(16230)=0&&numhelper(16231)=0
triggerall = statetype=S||statetype=C
triggerall = (var(47)&(Ceil(2.0**4)))=0
;〓投げ属性攻撃（当て身投げ以外）
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*50
trigger1 = enemynear(var(16)),HitDefAttr=SCA,AT
trigger1 = (enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno)&&(enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger1 = var(24):=1
;〓投げ属性攻撃（当て身投げ以外＆学習済み）
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*50
trigger2 = enemy(0),stateno!=0&&enemynear(var(16)),stateno=enemy(0),stateno
trigger2 = (enemy(0),stateno=Ceil(var(41)/10000)||enemy(0),stateno=Ceil(var(42)/10000)||enemy(0),stateno=Ceil(var(43)/10000)||enemy(0),stateno=Ceil(var(44)/10000))
trigger2 = (enemy(0),stateno!=Ceil(var(37)/10000)&&enemy(0),stateno!=Ceil(var(38)/10000)&&enemy(0),stateno!=Ceil(var(39)/10000))
trigger2 = var(24):=1
IgnoreHitPause = 1


;------------------------------------------------------------------------------
;■通常ガード

[State -1]
Type = ChangeState
Value = 120
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (Ctrl||(stateno=100&&time>=1))||stateno=52||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = numhelper(21000)&&numhelper(23000)
;〓P1ガード硬直後ダッシュ追撃時判定
triggerall = !(fvar(35)&&stateno=[100,102])
;〓P1空中バックダッシュ無敵時
triggerall = stateno!=115||(stateno=115&&time>=20)
;〓P1攻撃ヘルパー非ガード判定
triggerall = (var(47)&(Ceil(2.0**23)))=0
;〓正面ガード
trigger1 = InGuardDist
trigger1 = random<=Ceil(helper(21000),var(59)/10%100)*50||Ceil(helper(21000),var(59)/10%100)=10||(var(46)&(1|2))
trigger1 = var(46):=var(46)+(1*!(var(46)&(1)))
;〓めくりガード
trigger2 = InGuardDist=0&&helper(23000),InGuardDist
trigger2 = helper(23000),pos x*facing>pos x*facing
trigger2 = random<=Ceil(helper(21000),var(59)/10%100)*40||Ceil(helper(21000),var(59)/10%100)=10||(var(46)&(1|2))
trigger2 = var(46):=var(46)+(1*!(var(46)&(1)))
;〓裏当てガード
trigger3 = InGuardDist=0&&helper(23000),InGuardDist
trigger3 = helper(23000),pos x*facing*-1>pos x*facing*-1
trigger3 = random<=Ceil(helper(21000),var(59)/10%100)*50||Ceil(helper(21000),var(59)/10%100)=10||(var(46)&(1|2))
trigger3 = var(46):=var(46)+(1*!(var(46)&(1)))


;------------------------------------------------------------------------------










;==============================================================================
;■起き攻め系行動■

;遠距離		烈風A、ハイジャンプJ2Bめくり、地雷設置AEX、CCC、弓溜め
;		烈風A*2→弓、烈風拳A→遠距離テレポB

;中間距離	烈風A→ぱっちんB、地雷設置EX→テレポB、低空ダッシュJ2B詐欺飛び、

;近距離		垂直ジャンプJ2B、2C、ぱっちんA、低空バックダッシュJC

;密着		低空バックダッシュJA→JC、JB、めくりジャンプJ2B

;------------------------------------------------------------------------------
;■起き攻め

;●ジャンプ起き攻め
[State -1]
type = ChangeState
Value = 42
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = numhelper(662)=0||numhelper(663)=0||numhelper(664)=0
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
;〓5F後の予測座標（後ろジャンプ）
trigger1 = var(59)>=3
trigger1 = Ceil(var(40)/10000)=0				;□移動起き上がりNG
trigger1 = enemynear(var(16)),stateno=5120
trigger1 = enemynear(var(16)),animtime=[-7,-5]
trigger1 = fvar(26)<=70
trigger1 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)			;□最速空中後ダッシュ予約フラグON
;〓5F後の予測座標（後ろジャンプ）
trigger2 = Ceil(var(40)/10000)=0				;□移動起き上がりNG
trigger2 = enemynear(var(16)),stateno=5120
trigger2 = enemynear(var(16)),animtime=[-12,-5]
trigger2 = fvar(26)<=85
trigger2 = var(47):=Ceil(2.0**16)
;〓5F後の予測座標（垂直ジャンプ）
trigger3 = Ceil(var(40)/10000)=0				;□移動起き上がりNG
trigger3 = var(59)<=3
trigger3 = enemynear(var(16)),stateno=5120
trigger3 = Ceil(random/10%100)<=10				;□確率判定
trigger3 = enemynear(var(16)),animtime<=-20
trigger3 = fvar(26)=[50,120]
;〓5F後の予測座標（前ジャンプ）
trigger4 = Ceil(var(40)/10000)=0				;□移動起き上がりNG
trigger4 = enemynear(var(16)),stateno=5120
trigger4 = Ceil(random/10%100)<=20				;□確率判定
trigger4 = helper(21000),var(0)>=150				;□画面端から距離150以上
trigger4 = enemynear(var(16)),animtime<=-20||(enemynear(var(16)),time=1&&enemynear(var(16)),animtime<=-15)
trigger4 = fvar(26)<=35
trigger4 = var(47):=Ceil(2.0**15)
;〓5F後の予測座標（前ジャンプ）
trigger5 = Ceil(var(40)/10000)=0				;□移動起き上がりNG
trigger5 = enemynear(var(16)),stateno=5120
trigger5 = Ceil(random/10%100)<=30				;□確率判定
trigger5 = enemynear(var(16)),animtime<=-20||(enemynear(var(16)),time=1&&enemynear(var(16)),animtime<=-15)
trigger5 = fvar(26)=[140,195]
trigger5 = var(47):=Ceil(2.0**15)
;〓10F後の予測座標（後ろジャンプ）（移動起き上がり用）
trigger6 = var(59)>=3
trigger6 = enemynear(var(16)),stateno=Ceil(var(40)/10000)						;□移動起き上がり中
trigger6 = Ceil(var(40)/10%1000)-enemynear(var(16)),time<=10						;□終了10F以内
trigger6 = fvar(26)-((Ceil(var(40)/10%1000)-enemynear(var(16)),time)*enemynear(var(16)),vel x)=[-15,70]	;□終了時距離70以内
trigger6 = enemynear(var(16)),animtime=[-10,-5]
trigger6 = var(47):=Ceil(2.0**6)+Ceil(2.0**16)			;□最速空中後ダッシュ予約フラグON
;〓12F後の予測座標（後ろジャンプ）（移動起き上がり用）
trigger7 = enemynear(var(16)),stateno=Ceil(var(40)/10000)						;□移動起き上がり中
trigger7 = Ceil(var(40)/10%1000)-enemynear(var(16)),time=[5,12]						;□終了12F以内
trigger7 = fvar(26)-((Ceil(var(40)/10%1000)-enemynear(var(16)),time)*enemynear(var(16)),vel x)=[50,85]	;□終了時距離85以内
trigger7 = enemynear(var(16)),animtime=[-12,-5]
trigger7 = var(47):=Ceil(2.0**16)


;■CCC起き攻め
[State -1]
Type = ChangeState
Value = 3400
triggerall = var(59)>=3
triggerall = (var(57)&(Ceil(2.0**27)))
triggerall = (var(46)&(Ceil(2.0**27)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = Ceil(var(53)/1000%10)>=1
triggerall = !NumHelper(3401)&&!NumHelper(3405)&&!NumHelper(3450)	;□CCC攻撃＆地面＆触手ヘルパー
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=4)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = Ceil(var(54)%10)>=7			;□7冊消費
;〓発動条件
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(((enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))*2.0)<=Life/(LifeMax/10.0))
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||(enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0)>=5.0)
triggerall = (var(49)&(Ceil(2.0**17)))||(var(58)&(Ceil(2.0**20)))||Ceil(var(54)%10)>=9||((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
triggerall = Ceil(var(40)/10000)=0						;□移動起き上がりNG
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(Ceil(var(54)%10))*10	;□確率判定
;〓39F後の予測座標
triggerall = fvar(26)>=140
triggerall = helper(23000),var(39)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=250-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓地雷設置EXを盾
trigger1 = numhelper(1285)
trigger1 = (helper(1285),pos x*helper(1285),facing>=pos x*helper(1285),facing)&&(helper(1285),pos x*helper(1285),facing<=enemynear(var(16)),pos x*helper(1285),facing)				;□地雷EXを盾
;〓烈風拳を盾
trigger2 = (numhelper(1020)+numhelper(1050))>=2


;■弓攻撃起き攻め
[State -1]
type = ChangeState
Value = 1600
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = (stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0)
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
triggerall = Ceil(var(40)/10000)=0						;□移動起き上がりNG
;〓反応判定
triggerall = Ceil(random/10%100)<=100						;□確率判定
;〓39F後の予測座標
triggerall = fvar(26)!=[-150,150]
triggerall = helper(23000),var(39)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=250-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓地雷設置EXを盾
trigger1 = numhelper(1285)
trigger1 = (helper(1285),pos x*helper(1285),facing>=pos x*helper(1285),facing)&&(helper(1285),pos x*helper(1285),facing<=enemynear(var(16)),pos x*helper(1285),facing)				;□地雷EXを盾
;〓烈風拳を盾
trigger2 = (numhelper(1020)+numhelper(1050))>=2


;■烈風拳A起き攻め
[State -1]
type = ChangeState
Value = 1000
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*IfElse(fvar(26)>=250,25,15)
;〓21F後の予測座標
trigger1 = Ceil(var(40)/10000)=0						;□移動起き上がりNG
trigger1 = fvar(26)!=[-150,150]
trigger1 = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=190-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓21F後の予測座標
trigger2 = Ceil(var(40)/10000)=0						;□移動起き上がりNG
trigger2 = enemynear(var(16)),stateno=5120
trigger2 = Ceil(random/10%100)<=30						;□確率判定
trigger2 = enemynear(var(16)),animtime<=-21||(enemynear(var(16)),time=1&&enemynear(var(16)),animtime<=-15)
trigger2 = fvar(26)=[100,195]
trigger2 = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=100-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
;〓21F後の予測座標（移動起き上がり用）
trigger3 = enemynear(var(16)),stateno=Ceil(var(40)/10000)						;□移動起き上がり中
trigger3 = Ceil(var(40)/10%1000)-enemynear(var(16)),time>=21						;□終了21F以上
trigger3 = enemynear(var(16)),vel x>0||(Ceil(var(40)/10%1000)*0.30<=enemynear(var(16)),time)		;□加速有りor3割時間経過後
trigger3 = fvar(26)-((Ceil(var(40)/10%1000)-enemynear(var(16)),time)*enemynear(var(16)),vel x)>=80	;□終了時距離80以上
trigger3 = helper(23000),var(21)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=80-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))


;■地雷設置EX起き攻め
[State -1]
type = ChangeState
Value = 1202
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1280)&&!NumHelper(1285)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
triggerall = power>=1000
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*Ceil(power/2000.0)*10	;□確率判定
;〓25F後の予測座標
trigger1 = Ceil(var(40)/10000)=0						;□移動起き上がりNG
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=165-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=240


;■地雷設置A起き攻め
[State -1]
type = ChangeState
Value = 1200
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = !NumHelper(1210)||!NumHelper(1240)||!NumHelper(1270)
;〓基本使用条件
triggerall = (Ctrl&&stateno!=100)||(stateno=100&&time>=8)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = InGuardDist=0&&helper(23000),InGuardDist=0
triggerall = enemynear(var(16)),statetype=L
;〓反応判定
triggerall = random<=Ceil(helper(21000),var(59)/1000%100)*10			;□確率判定
;〓25F後の予測座標
trigger1 = Ceil(var(40)/10000)=0						;□移動起き上がりNG
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)>=165-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = helper(23000),var(25)+const(size.ground.front)-(vel x*(0.85-(0.85**12.0))/0.15)<=195


;●ハイジャンプ起き攻め
[State -1]
type = ChangeState
Value = 43
triggerall = var(59)>=2
triggerall = (var(46)&(Ceil(2.0**26)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
triggerall = (var(49)&(Ceil(2.0**29)))=0
;〓基本使用条件
triggerall = (Ctrl||(stateno=100&&time>=1))||(stateno=52&&time>=5)||(stateno=[120,140])||((stateno=20||stateno=40)&&time=0)
triggerall = statetype=S||statetype=C
;〓Near状態
triggerall = enemynear(var(16)),statetype=L
triggerall = enemynear(var(16)),stateno=5120
;〓20F後の予測座標（烈風拳A追随）【前方ハイジャンプフラグON】（烈風拳A→ハイジャンプ）
trigger1 = Ceil(var(40)/10000)=0										;□移動起き上がりNG
trigger1 = random<=Ceil(helper(21000),var(59)/1000%100)*IfElse(numhelper(1020)+numhelper(1050)>=2,25,15)	;□個別反応速度
trigger1 = (var(47)&(Ceil(2.0**15)))=0
trigger1 = numhelper(1020)>=1||numhelper(1050)>=1
trigger1 = helper(23000),var(20)+const(size.ground.front)>=250-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger1 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)
;〓15F後の予測座標（連携開始）【前方ハイジャンプフラグON】（遠距離飛び込み）
trigger2 = Ceil(var(40)/10000)=0										;□移動起き上がりNG
trigger2 = random<=Ceil(helper(21000),var(59)/1000%100)*25							;□個別反応速度
trigger2 = (var(47)&(Ceil(2.0**15)))=0
trigger2 = InGuardDist=0||helper(23000),InGuardDist=0
trigger2 = helper(21000),var(0)>=230										;□画面前端OFF
trigger2 = helper(23000),var(30)+const(size.ground.front)>=215-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back))
trigger2 = helper(23000),var(30)+const(size.ground.front)<=220
trigger2 = var(47):=Ceil(2.0**15)+Ceil(2.0**17)


;==============================================================================
;■食らい抜け■

;■バースト（ノーマルモード以下）
[State -1]
type = ChangeState
Value = 8200
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = Ctrl=0
triggerall = stateno!=8200
triggerall = (var(49)&(Ceil(2.0**29)))=0
triggerall = (stateno!=[800,810])&&(stateno!=1175)&&(stateno!=[1700,2899])&&stateno!=7000
triggerall = movetype=H&&stateno!=[120,159]
;〓ノーマルモード以下
triggerall = Ceil(var(52)/100%10)<=1
triggerall = fvar(20)>=1600+Ceil(var(18)/100000%10)*400||fvar(20)>=2800
triggerall = statetype!=A
triggerall = var(25):=var(25)+IfElse(movetype=H&&(stateno!=[150,159]),(2*!(var(25)&(2))),0)
;〓地上近距離通常技
trigger1 = fvar(20)>=2000
trigger1 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,3.5]								;□体力差35%以内
trigger1 = statetype=S||statetype=C
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),movetype=A
trigger1 = enemynear(var(16)),HitDefAttr=SC,NA
trigger1 = GetHitVar(hitshaketime)<=0&&GetHitVar(hittime)>=1
trigger1 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/400)**2.0)*2)		;□確率判定
trigger1 = fvar(26)=[0,50]
;〓地上近距離通常技
trigger2 = fvar(20)>=2000
trigger2 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,3.5]								;□体力差35%以内
trigger2 = statetype=S||statetype=C
trigger2 = enemynear(var(16)),statetype=A
trigger2 = enemynear(var(16)),vel x>0&&enemynear(var(16)),vel y>0		;□前方ジャンプ落下中
trigger2 = enemynear(var(16)),movetype=A
trigger2 = enemynear(var(16)),HitDefAttr=A,NA
trigger2 = GetHitVar(hitshaketime)<=0&&GetHitVar(hittime)>=1
trigger2 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/400)**2.0)*2)		;□確率判定
trigger2 = fvar(26)=[-50,70]
trigger2 = enemynear(var(16)),pos y>=-120
;〓ゲージ技初段
trigger3 = fvar(20)>=2000
trigger3 = statetype=S||statetype=C
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
trigger3 = enemynear(var(16)),movetype=A
trigger3 = enemynear(var(16)),HitDefAttr=SCA,HA,HP,HT
trigger3 = GetHitVar(damage)
trigger3 = RoundNo=3||Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/400)**2.0)*2)	;□確率判定
trigger3 = fvar(26)=[0,100]
;〓推定最終ラウンドに瀕死
trigger4 = fvar(20)>=1600
trigger4 = abs(Life/(LifeMax/10.0))<=1.5					;□体力15%以下
trigger4 = (TeamMode=turns)||RoundsExisted>=2
trigger4 = statetype=S||statetype=C
trigger4 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/400)**2.0)*2)		;□確率判定
trigger4 = fvar(26)=[-50,70]


;■バースト（ボスモード）
[State -1]
type = ChangeState
Value = 8200
triggerall = var(59)>=3
triggerall = (var(46)&(Ceil(2.0**29)))=0
triggerall = numhelper(21000)
triggerall = RoundState=2&&!IsHelper&&alive&&numenemy>0
;〓基本使用条件
triggerall = Ctrl=0
triggerall = stateno!=8200
triggerall = (stateno!=[800,810])&&(stateno!=1175)&&(stateno!=[1700,2899])&&stateno!=7000
triggerall = movetype=H&&stateno!=[120,159]
;〓ボスモード
triggerall = Ceil(var(52)/100%10)>=2
triggerall = fvar(20)>=3200+Ceil(var(18)/100000%10)*800||fvar(20)>=5600
;〓地上近距離通常技
trigger1 = fvar(20)>=4000
trigger1 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,3.5]								;□体力差35%以内
trigger1 = statetype=S||statetype=C
trigger1 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C
trigger1 = enemynear(var(16)),movetype=A
trigger1 = enemynear(var(16)),HitDefAttr=SC,NA
trigger1 = GetHitVar(hitshaketime)<=0&&GetHitVar(hittime)>=1
trigger1 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/800)**2.0)*2)		;□確率判定
trigger1 = fvar(26)=[0,50]
;〓地上近距離通常技
trigger2 = fvar(20)>=4000
trigger2 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,3.5]								;□体力差35%以内
trigger2 = statetype=S||statetype=C
trigger2 = enemynear(var(16)),statetype=A
trigger2 = enemynear(var(16)),vel x>0&&enemynear(var(16)),vel y>0		;□前方ジャンプ落下中
trigger2 = enemynear(var(16)),movetype=A
trigger2 = enemynear(var(16)),HitDefAttr=A,NA
trigger2 = GetHitVar(hitshaketime)<=0&&GetHitVar(hittime)>=1
trigger2 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/800)**2.0)*2)		;□確率判定
trigger2 = fvar(26)=[-50,70]
trigger2 = enemynear(var(16)),pos y>=-120
;〓ゲージ技初段
trigger3 = fvar(20)>=4000
trigger3 = statetype=S||statetype=C||statetype=A
trigger3 = enemynear(var(16)),statetype=S||enemynear(var(16)),statetype=C||enemynear(var(16)),statetype=A
trigger3 = enemynear(var(16)),movetype=A
trigger3 = enemynear(var(16)),HitDefAttr=SCA,HA,HP,HT
trigger3 = GetHitVar(damage)
trigger3 = RoundNo=3||Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/800)**2.0)*2)	;□確率判定
trigger3 = fvar(26)=[0,100]
;〓推定最終ラウンドに瀕死
trigger4 = fvar(20)>=3200
trigger4 = abs(Life/(LifeMax/10.0))<=1.5					;□体力15%以下
trigger4 = (TeamMode=turns)||RoundsExisted>=2
trigger4 = statetype=S||statetype=C||statetype=A
trigger4 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/800)**2.0)*2)		;□確率判定
trigger4 = fvar(26)=[-50,70]
;〓近距離通常技（空中食らい）
trigger5 = ((TeamMode=turns)&&RoundsExisted>=1)||RoundsExisted>=2||abs(Life/(LifeMax/10.0)-enemynear(var(16)),Life/(enemynear(var(16)),LifeMax/10.0))=[0,3.5]								;□体力差35%以内
trigger5 = statetype=A
trigger5 = GetHitVar(hitshaketime)<=0&&GetHitVar(hittime)>=1
trigger5 = Ceil(random/10%100)<=Ceil((Ceil(fvar(20)/800)**2.0)*2)		;□確率判定
trigger5 = fvar(26)=[-50,100]
trigger5 = enemynear(var(16)),pos y>=-120


;------------------------------------------------------------------------------


;==============================================================================
;■死体食い■

;■EXテレポ投げ
[State -1]
Type = ChangeState
Value = 1102
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=3&&!IsHelper&&alive&&numenemy>0
triggerall = (var(57)&(Ceil(2.0**18)))
;〓基本使用条件
triggerall = statetype=S||statetype=C
triggerall = power>=1000
triggerall = fvar(9)<=0.035||(stateno=235&&fvar(9)<=0.060)||(stateno=240&&fvar(9)<=0.060)	;□重力
;〓Near状態
triggerall = numenemy=1
triggerall = enemy(0),life<=0
triggerall = enemy(0),Alive=0
triggerall = enemy(0),movetype=H
triggerall = enemy(0),stateno!=[5080,5081]
triggerall = enemy(0),stateno!=[5100,5101]
triggerall = enemy(0),stateno!=5150
triggerall = enemy(0),stateno!=[1180,1181]
triggerall = enemy(0),stateno!=[1720,1721]
triggerall = enemy(0),stateno!=[1520,1521]
triggerall = enemy(0),stateno!=[1550,1551]
triggerall = enemy(0),stateno!=[2820,2821]
;〓距離判定
triggerall = helper(23000),var(38)+const(size.ground.front)=[0,400]
triggerall = Ceil(helper(23000),fvar(38))=[-75,-45]	;★調整予定
;〓P1状態
trigger1 = (Ctrl||(stateno=100&&time>=1))&&stateno!=101
trigger2 = (((stateno=[200,299])||(stateno=[400,499]))&&movecontact)
trigger3 = ((stateno=[1000,1001])&&time>20+IfElse(Ceil(var(52)/100%10)=0,8,0))||((stateno=[1200,1201])&&time>24+IfElse(Ceil(var(52)/100%10)=0,8,0))

;□EXテレポ投げ移動距離判定（死体食い用）
[State -1]
Type = null
triggerall = var(59)>=1
triggerall = (var(46)&(Ceil(2.0**24)))=0
triggerall = numhelper(21000)&&numhelper(23000)
triggerall = RoundState=3&&!IsHelper&&alive&&numenemy>0
triggerall = (var(57)&(Ceil(2.0**18)))
;〓基本使用条件
triggerall = stateno=1102
;〓Near状態
triggerall = numenemy=1
triggerall = enemy(0),life<=0
triggerall = enemy(0),alive=0
triggerall = enemy(0),movetype=H
;〓28F後の予測座標【対地】（EXテレポ近距離）
trigger1 = helper(23000),var(28)+const(size.ground.front)=[-52-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),52]
trigger1 = Ceil(helper(23000),fvar(28))>=-35
trigger1 = var(4):=0
;〓28F後の予測座標【対地】（EXテレポ中距離）
trigger2 = helper(23000),var(28)+const(size.ground.front)=[52,140]
trigger2 = Ceil(helper(23000),fvar(28))>=-35
trigger2 = var(4):=1
;〓28F後の予測座標【対地】（EXテレポ遠距離）
trigger3 = helper(23000),var(28)+const(size.ground.front)=[155-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),295]
trigger3 = Ceil(helper(23000),fvar(28))>=-75
trigger3 = var(4):=2
;〓28F後の予測座標【対地】（EXテレポ超遠距離）
trigger4 = helper(23000),var(28)+const(size.ground.front)=[320-(enemynear(var(16)),const(size.ground.front)+enemynear(var(16)),const(size.ground.back)),424]
trigger4 = Ceil(helper(23000),fvar(28))>=-75
trigger4 = var(4):=4
IgnoreHitPause = 1


;------------------------------------------------------------------------------

;==============================================================================
