
;===========================================================================
; 常時監視ステート（－２）
;===========================================================================
;---------------------------------------------------------------------------
[Statedef -2]
;-----------------------------------------------------------------------------

[State -2,アルティメットゲージ]
type=helper
trigger1 = !Ishelper;自分がヘルパーではない時
trigger1 = Alive;自分が生きている時
trigger1 = RoundState < 3;イントロ～戦闘中
Trigger1 = !NumHelper(4700)
helpertype = normal
PosType  = back
name="ultimate"
stateno=4700
ID=4700
pos=9999,9999
keyctrl=0
pausemovetime=99999
supermovetime=99999
ignorehitpause = 1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State -2,アルティメットゲージ加算]
type=helper
trigger1 = !Ishelper;自分がヘルパーではない時
trigger1 = Alive;自分が生きている時
trigger1 = RoundState < 3;イントロ～戦闘中
Trigger1 = !NumHelper(4710)
helpertype = normal
PosType  = back
name="ultimate2"
stateno=4710
ID=4710
pos=9999,9999
keyctrl=0
pausemovetime=0
supermovetime=0
ignorehitpause = 1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

;念のため関係無いステートに行かないように↓も付けておく
[State -2, helper]
type = changestate
trigger1 = Ishelper(4700)
trigger1 = !(stateno = 4700)
value = 4700
ignorehitpause = 1
[State -2, helper]
type = changestate
trigger1 = Ishelper(4710)
trigger1 = !(stateno = 4710)
value = 4710
ignorehitpause = 1

;---------------------------------------------------------------------------

[State -2, 二人目のイントロ]
type = ChangeState
value = 190
triggerall = RoundsExisted = 0
triggerall = TeamMode = Turns
trigger1 = stateno = 5900
ignorehitpause = 1

;----------------------------------------------------------------------------

[State -2, 音を鳴らす]
type = PlaySnd
triggerall = numtarget
triggerall = target,alive = 0
trigger1 = movehit = 1
trigger2 = stateno = 810
trigger2 = AnimElem = 3,1
trigger3 = stateno = 1180
trigger3 = AnimElem = 4,1
trigger4 = stateno = 3060
trigger4 = var(7) = 0
trigger4 = AnimElem = 4,1
trigger5 = stateno = 3060
trigger5 = var(7) = 1
trigger5 = AnimElem = 16,1
trigger6 = stateno = 3110
trigger6 = AnimElem = 7,1
trigger7 = stateno = 3167
trigger7 = AnimElem = 3,1
value = 12, 3

;----------------------------------------------------------------------------
;ラムダ＆戦人用

[State -3, 対応決定・ラムバトP2]
type = Varset
triggerall = var(48) = 2
trigger1=numenemy
trigger1=enemy(0),var(57)=0
var(48) = 1
[State -3, 対応決定・ラムバトP2]
type = Varset
triggerall = var(48) = 1
trigger1=numenemy
trigger1=enemy(0),var(57)=10000
var(48) = 2

[State -3, 対応決定・ラムバトP4]
type = Varset
triggerall = var(49) = 2
trigger1=numenemy>=2
trigger1=enemy(1),var(57)=0
var(49) = 1
[State -3, 対応決定・ラムバトP4]
type = Varset
triggerall = var(49) = 1
trigger1=numenemy>=2
trigger1=enemy(1),var(57)=10000
var(49) = 2

;---------------------------------------------------------------------------
;気絶ボイス
[State -2, 気絶ボイス・ベルン]
type = PlaySnd
triggerall = Alive
trigger1 = anim = 5300
trigger1 = AnimElem = 1, 1
value = s20,250 + GameTime % 2
channel = 1
lowpriority = 1
ignorehitpause = 1
[State -2, 気絶ボイス・ラムダ]
type = PlaySnd
triggerall = Alive
trigger1 = anim = 5300
trigger1 = AnimElem = 1, 1
value = s30,250 + GameTime % 2
channel = 2
lowpriority = 1
ignorehitpause = 1

;----------------------------------------------------------------------------
;追い討ち管理

[State -2, 崩れ落ち中の追撃スイッチ]
type = varset
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(1160)
var(10) = 54

;オヤシロアタック・崩れ落ち
[State -2, 時間]
type = varAdd
trigger1 = var(10) > 0
var(10) = -1
[State -2, リセット]
type = varset
trigger1 = stateno != 750 && stateno != 1160
trigger1 = movehit = 1
trigger1 = var(10) > 0
var(10) = 0

;スリップダウン・汎用
[State -2, 時間]
type = varAdd
trigger1 = var(11) > 0
var(11) = -1

;スリップダウン・限定
[State -2, 時間]
type = varAdd
trigger1 = var(12) > 0
var(12) = -1

[State -3, ヒット]
type = varset
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(225)
var(11) = 70
ignorehitpause = 1

[State -9, ヒット]
type = varset
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(225)
var(12) = 30
ignorehitpause = 1

[State -2, ワイヤー]
type = varset
triggerall = NumEnemy
triggerall = movehit = 1
trigger1 = NumTarget(705)
trigger2 = NumTarget(1010)
var(13) = 1

[State -2, ワイヤーリセット]
type = varset
triggerall = NumEnemy
trigger1 = var(13) != 0
trigger1 = enemynear,ctrl = 1
var(13) = 0

[State -2, 打ち上げ]
type = varset
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(1150)
var(14) = 1

[State -2, 打ち上げリセット]
type = varset
triggerall = NumEnemy
trigger1 = var(14) != 0
trigger1 = enemynear,ctrl = 1
var(14) = 0

[State -2, ラムダコンビネーションリセット]
type = varset
triggerall = NumEnemy
trigger1 = var(15) != 0
trigger1 = enemynear,ctrl = 1
var(15) = 0

;----------------------------------------------------------------------------
;対応

;赤朱秋葉「略奪/獣を焦がす/獣を窮める」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Akiha_Vermilion"
trigger1 = enemy,var(47) = 1
value = -8
kill = 0

[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Akiha_Vermilion"
trigger1 = enemy,var(48) = 1 && enemy,numexplod(4005)
value = -8
kill = 0

[State -2]
Type = PowerAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Akiha_Vermilion"
trigger1 = enemy,var(47) = 1
value = -26

;---------------------------------------------------------------------------
;レン「パウダースノウ」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Len"
trigger1 = enemy,var(47) = 1 || enemy,var(48) = 1
value = -enemy,var(47)*4-enemy,var(48)*4
Kill = 0

;---------------------------------------------------------------------------
;翡翠「じょうろ」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Hisui"
trigger1 = enemy,var(47) = 1
value = -10
kill = 0

[State -2]
Type = PowerAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Hisui"
trigger1 = enemy,var(47) = 1
value = -150

;---------------------------------------------------------------------------
;翡翠「超がんばりました」対応ステート
[State -2]
Type = LifeAdd
TriggerAll = NumEnemy
TriggerAll = Enemy,AuthorName = "⑨" && Enemy,Name = "Hisui"
Trigger1 = Enemy,Var(48) = 1
Value = IfElse(GameTime%2=0,-3,-4)
Absolute = 1
Kill = 0

;---------------------------------------------------------------------------
;ワラキアの夜「ブラック・クラック」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorName = "⑨" && enemy,name = "Warachia"
trigger1 = enemy,var(47) = 1
value = -10
kill = 0

[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorName = "⑨" && enemy,name = "Warachia"
trigger1 = enemy,var(47) = 2 || enemy,var(47) = 4
value = -15
kill = 0

[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Warachia"
trigger1 = enemy,var(47) = 3
Value = -30
Kill = 0

[State -2]
Type = PowerAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Warachia"
trigger1 = enemy,var(47) = 1
Value = 6

[State -2]
Type = PowerAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Warachia"
trigger1 = enemy,var(47) = 2 || enemy,var(47) = 3 || enemy,var(47) = 4
Value = 15

;---------------------------------------------------------------------------
;琥珀「現代医学の犠牲者です。」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = enemy,authorname = "⑨" && enemy,name = "Kohaku"
trigger1 = enemy,var(47) = 1
Value = -5
Kill = 0

;---------------------------------------------------------------------------
;獣を焦がす(黒秋葉)　相手ステータス変化
[State -2]
Type = LifeAdd
TriggerAll = NumEnemy
TriggerAll = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
Trigger1 = Enemy,Var(56) = 1
Value = -8
Absolute = 1
Kill = 0

[State -2]
Type = PowerAdd
TriggerAll = NumEnemy
TriggerAll = Enemy,AuthorName = "tukemon&HAL" && Enemy,Name = "Akiha"
Trigger1 = Enemy,Var(51)%10 = 2
Trigger1 = Enemy,Var(56) = 1
Value = -33

;---------------------------------
;制服秋葉「獣を焦がす」「疾駆する獣を焦がす」対応ステート
[State -2]
type = LifeAdd
triggerall = !IsHelper
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = GameTime % 2 = 0
triggerall = NumEnemy
trigger1 = Enemy(0),AuthorName = "chikuchikugonzalez" && Enemy(0),Name = "Tohno Akiha"
trigger1 = Enemy(0),var(39) >= 0
trigger1 = PlayerIDExist(Enemy(0),var(39))
trigger1 = Abs(PlayerID(Enemy(0),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(0),var(39)),const(size.xscale))
trigger2 = NumEnemy > 1
trigger2 = Enemy(1),AuthorName = "chikuchikugonzalez" && Enemy(1),Name = "Tohno Akiha"
trigger2 = Enemy(1),var(39) >= 0
trigger2 = PlayerIDExist(Enemy(1),var(39))
trigger2 = Abs(PlayerID(Enemy(1),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(1),var(39)),const(size.xscale))
value = -1
kill = 0

[State -2]
type = PowerAdd
triggerall = !IsHelper
triggerall = RoundState = 2 && Alive
triggerall = StateType != A
triggerall = GameTime % 2 = 0
triggerall = NumEnemy
trigger1 = Enemy(0),AuthorName = "chikuchikugonzalez" && Enemy(0),Name = "Tohno Akiha"
trigger1 = Enemy(0),var(39) >= 0
trigger1 = PlayerIDExist(Enemy(0),var(39))
trigger1 = Abs(PlayerID(Enemy(0),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(0),var(39)),const(size.xscale))
trigger2 = NumEnemy > 1
trigger2 = Enemy(1),AuthorName = "chikuchikugonzalez" && Enemy(1),Name = "Tohno Akiha"
trigger2 = Enemy(1),var(39) >= 0
trigger2 = PlayerIDExist(Enemy(1),var(39))
trigger2 = Abs(PlayerID(Enemy(1),var(39)),Pos X - Pos X) < (85 * PlayerID(Enemy(1),var(39)),const(size.xscale))
value = Floor(-1 * (PowerMax * 0.001))

;---------------------------------------------
;永峰希美「ウィッシュプライヤー」対応ステート
[State -2]
Type = LifeAdd
Trigger1 = numpartner = 1
Trigger1 = partner,AuthorName = "IF" && partner,Name = "Nozomi Nagamine"
Trigger1 = partner,Var(44) = 1
Trigger1 = alive = 1
Value = ceil(lifemax*.9)

;---------------------------------------------------------------------------
;廿楽冴姫、朱鷺宮神依、フィオナ･メイフィールド「魔のアルカナ　アンプワゾネ」対応ステート
[State -2]
type = poweradd
triggerall = numenemy
triggerall = enemy,authorname = "Drowin arcana"
triggerall = enemy,fvar(20) > 0
trigger1 = power > 0
value = -1

[State -2]
type = lifeadd
triggerall = numenemy
triggerall = enemy,authorname = "Drowin arcana"
triggerall = enemy,fvar(20) > 0
trigger1 = gametime % 7 = 0
value = -1
kill = 0

[State -2]
type = palfx
triggerall = numenemy
triggerall = enemy,authorname = "Drowin arcana"
trigger1 = enemy,fvar(20) > 0
add = 100,0,110
mul = 220,220,220
time = 5
ignorehitpause = 1

;---------------------------------------------------------------------------
;■西行寺幽々子　霊符及び寿命相手ステート
[State -2]
type = lifeadd
triggerall = numenemy
triggerall = enemy,authorname = "Souki" && enemy,name = "Yuyuko Saigyouji"
triggerall = enemy,var(3) = 1 || enemy,var(3) = 2
trigger1 = gametime%6 = 0
value = ifelse(enemy,var(3) = 1, -2, -3)
kill = 0

[State -2, LifeAdd]
type = lifeadd
triggerall = numenemy > 1
triggerall = enemy(1),authorname = "Souki" && enemy(1),name = "Yuyuko Saigyouji"
triggerall = enemy(1),var(3) = 1 || enemy(1),var(3) = 2
trigger1 = gametime%6 = 0
value = ifelse(enemy(1),var(3) = 1, -2, -3)
kill = 0

;---------------------------------------------------------------------------
;小野塚小町「脱魂の儀」対応ステート
;振り向き抑制
[State pos moving]
type = AssertSpecial
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
flag = noautoturn

;移動
[State pos moving]
type = Posadd
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
x = -ceil(enemynear,fVar(36))*facing*enemynear,facing
y = -ceil(enemynear,fVar(37))*(statetype!=L)

;statetype!=A+statetype!=Lの場合強制落下stateへ
[State pos moving]
type = Changestate
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th")*(TeamMode = single)
Triggerall = (statetype != A)*(pos y!=0)*(statetype!=L)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
value = 50

;--------------------------------------------------------------
;振り向き抑制
[State pos moving]
type = AssertSpecial
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
flag = noautoturn

;移動
[State pos moving]
type = Posadd
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
x = -ceil(enemynear,fVar(24))*facing*enemynear,facing
y = -ceil(enemynear,fVar(25))*(statetype!=L)

;statetype!=A+statetype!=Lの場合強制落下stateへ
[State pos moving]
type = Changestate
TriggerAll = NumEnemy
Triggerall = (Enemynear,Name = "Komachi Onoduka")*(Enemynear,AuthorName = "mikage_th105")*(TeamMode = single)
Triggerall = (statetype != A)*(pos y!=0)*(statetype!=L)
trigger1 = (enemynear,stateno = 820)*(enemynear,anim = 823)*(enemynear,animelem = 6,13)
trigger2 = (enemynear,stateno = 821)*(enemynear,anim = 823)*(enemynear,animelem = 6,43)
value = 50

;---------------------------------
;鈴仙･優曇華院･イナバ「瓦斯織物の玉」対応ステート
[State lifeadd]
type = lifeadd
Trigger1 = numEnemy = 1
Trigger1 = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),fvar(21))
value = -floor(Enemy(0),fvar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State lifeadd]
type = lifeadd
Triggerall = numEnemy = 2
Triggerall = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th105")*(Enemy(0),fvar(21))
Trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th105")*(Enemy(1),fvar(21))
value = -floor(Enemy(0),fvar(21))*2-floor(Enemy(1),fvar(21))*2
ignorehitpause = 1
absolute = 1
kill = 0

;--------------------------------------------------------------
[State lifeadd]
type = lifeadd
Trigger1 = numEnemy = 1
Trigger1 = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),fvar(35))
value = -floor(Enemy(0),fvar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

[State lifeadd]
type = lifeadd
Triggerall = numEnemy = 2
Triggerall = Pos y > -240
Trigger1 = (Enemy(0),Name = "Reisen Udongein Inaba")*(Enemy(0),AuthorName = "mikage_th")*(Enemy(0),fvar(35))
Trigger2 = (Enemy(1),Name = "Reisen Udongein Inaba")*(Enemy(1),AuthorName = "mikage_th")*(Enemy(1),fvar(35))
value = -floor(Enemy(0),fvar(35))*2-floor(Enemy(1),fvar(35))*2
ignorehitpause = 1
absolute = 1
kill = 0

;------------------------------------------------------------------------------------------
;洩矢諏訪子「土着神の祟り & ミシャグジさまの祟り」対応ステート
;土着神の祟り
[State lifeadd]
type = lifeadd
Trigger1 = numEnemy
Trigger1 = (Enemynear,Name = "Suwako Moriya")*(Enemynear,AuthorName = "mikage_th")*(TeamMode = single)
Trigger1 = floor((Enemynear,Var(42)%100)*0.1) = [0,1]
Trigger1 = (floor(Enemynear,fvar(38)))%1000 > 0
Trigger1 = floor(Enemynear,fvar(38)*0.001) = 2
value = floor(Enemynear,fvar(36)*(LifeMax/10000.0))
ignorehitpause = 1
absolute = 1
kill = 0

[State ミシャグジさまの祟り]
type = lifeadd
Triggerall = numEnemy
Triggerall = (Enemynear,Name = "Suwako Moriya")*(Enemynear,AuthorName = "mikage_th")*(TeamMode = single)
Triggerall = Enemynear,palno < 7
trigger1 = floor(Enemynear,fvar(35)) = 1
Trigger1 = movetype = H
Trigger1 = stateno != [150,155]
trigger2 = floor(Enemynear,fvar(35)) = 2
Trigger2 = movetype = H
Trigger2 = stateno = [150,155]
value = floor(Enemynear,fvar(33))
ignorehitpause = 1
absolute = 1
kill = 0

;------------------------------------------------------------------------------------------
;神尾観鈴「不幸の塊」「観鈴ちんピンチ！」対応ステート
[State -2]
Type = LifeAdd
triggerall = numenemy
triggerall = (enemy,teammode = simul) = 0
triggerall = (teammode = simul) = 0
triggerall = enemy,authorname = "586"
triggerall = enemy,name = "Misuzu Kamio"
triggerall = enemy,fvar(11) > 0
trigger1 = enemy,var(13) = 1
trigger1 = gametime % 13 = 0
trigger2 = enemy,var(13) = 2
trigger2 = gametime % 11 = 0
trigger3 = enemy,var(13) = 3
trigger3 = gametime % 8 = 0
trigger4 = enemy,var(13) = 4
trigger4 = gametime % 6 = 0
trigger5 = enemy,var(13) = 5
trigger5 = gametime % 3 = 0
value = -1
kill = 0
ignorehitpause = 1

[State -2]
type = PalFX
triggerall = numenemy
triggerall = (enemy,teammode = simul) = 0
triggerall = (teammode = simul) = 0
triggerall = enemy,authorname = "586"
triggerall = enemy,name = "Misuzu Kamio"
trigger1 = enemy,fvar(11) > 0
add = -50,150,150
time = 1
ignorehitpause = 1

;---------------------------------
;ニトロワキャラ「挑発」対応ステート
[state -2]
Type=PowerAdd
triggerall=numenemy&&alive
trigger1=enemy,authorname="kayui uma"&&enemy,stateno=690&&((enemy,name="mora"&&enemy,time=40)||(enemy,name="ruili"&&enemy,time=23)||(enemy,name="saya"&&enemy,time=18)||(enemy,name="henri"&&enemy,time=60))
trigger2=enemy,authorname="Juke Kisaragi"&&((enemy,stateno=195&&enemy,time=50&&(enemy,name="Ein"||enemy,name="Nitro Ignis"))||(enemy,name="Saber"&&(enemy,stateno=[195,196])&&enemy,time=45))
trigger3=enemy,stateno=195&&((enemy,name="dragon"&&enemy,authorname="kayui uma"&&enemy,time=26)||(enemy,time=95&&enemy,name="Another Blood"&&(enemy,authorname="sakuraka"||enemy,authorname="AkagiK")))
trigger4=(enemy,name="anna"&&enemy,authorname="kayui uma"&&enemy,stateno=690&&enemy,time=50)||(enemy,name="Kaigen Ishima"&&((enemy,stateno=195&&enemy,time=60)||(enemy,stateno=199&&enemy,time=20)))
trigger5=enemy,name="Taoroh"&&enemy,authorname="Elecbyte"&&enemy,stateno=195&&enemy,time=23
trigger6=enemy,authorname="YU-TOHARU"&&((enemy,name="AIHARA NATSUMI"&&enemy,stateno=197&&enemy,time=70)||(enemy,name="AL AZIF"&&enemy,stateno=195&&enemy,time=30))
Value=-45
ignorehitpause=1

[state -2]
Type=PowerAdd
triggerall=numenemy>=2&&alive
trigger1=enemy(1),authorname="kayui uma"&&enemy(1),stateno=690&&((enemy(1),name="mora"&&enemy(1),time=40)||(enemy(1),name="ruili"&&enemy(1),time=23)||(enemy(1),name="saya"&&enemy(1),time=18)||(enemy(1),name="henri"&&enemy(1),time=60))
trigger2=enemy(1),authorname="Juke Kisaragi"&&((enemy(1),stateno=195&&enemy(1),time=50&&(enemy(1),name="Ein"||enemy(1),name="Nitro Ignis"))||(enemy(1),name="Saber"&&(enemy(1),stateno=[195,196])&&enemy(1),time=45))
trigger3=enemy(1),stateno=195&&((enemy(1),name="dragon"&&enemy(1),authorname="kayui uma"&&enemy(1),time=26)||(enemy(1),time=95&&enemy(1),name="Another Blood"&&(enemy(1),authorname="sakuraka"||enemy(1),authorname="AkagiK")))
trigger4=(enemy(1),name="anna"&&enemy(1),authorname="kayui uma"&&enemy(1),stateno=690&&enemy(1),time=50)||(enemy(1),name="Kaigen Ishima"&&((enemy(1),stateno=195&&enemy(1),time=60)||(enemy(1),stateno=199&&enemy(1),time=20)))
trigger5=enemy(1),name="Taoroh"&&enemy(1),authorname="Elecbyte"&&enemy(1),stateno=195&&enemy(1),time=23
trigger6=enemy(1),authorname="YU-TOHARU"&&((enemy(1),name="AIHARA NATSUMI"&&enemy(1),stateno=197&&enemy(1),time=70)||(enemy(1),name="AL AZIF"&&enemy(1),stateno=195&&enemy(1),time=30))
Value=-45
ignorehitpause=1

;---------------------------------
;北斗キャラ「挑発」対応ステート
[State -2]
Type = PowerAdd
triggerall=numenemy&&alive
trigger1=enemy,authorname="Drowin hokuto"&&((enemy,stateno=199&&((enemy,name="KENSHIRO"&&enemy,time=19)||(enemy,name="Toki"&&enemy,time=17)))||(enemy,name="amiba"&&enemy,stateno=19911&&enemy,time=1))
trigger2=enemy,authorname="Ahuron"&&enemy,stateno=199&&((enemy,name="JAGI"&&enemy,time=80)||(enemy,name="SHIN"&&enemy,time=30)||(enemy,name="Heart&Heart"&&enemy,time=24))
trigger3=enemy,authorname="Ahuron"&&enemy,stateno=199&&((enemy,name="REI"&&enemy,time=16)||(enemy,name="THOUTHER"&&enemy,time=50))
trigger4=enemy,authorname="NERICYA"&&((enemy,name="JUDA-(NERICYA)"&&enemy,stateno=195&&enemy,time=1)||(enemy,name="TOKI-(NERICYA)"&&enemy,stateno=333&&enemy,time=17))
trigger5=enemy,authorname="Ts"&&enemy,stateno=195&&((enemy,time=80&&(enemy,name="Jagi"||enemy,name="JagiMeirin"))||(enemy,time=17&&(enemy,name="Toki"||enemy,name="Amiba")))
trigger6=enemy,authorname="Tamago Kanten"&&enemy,stateno=195&&((enemy,time=40&&enemy,name="ikusan_juda")||(enemy,time=50&&(enemy,name="tenshi"||enemy,name="tenshi_rei")))
trigger7=enemy,authorname="Nachel_Arrange_By_RockMARISA"&&((enemy,name="HAKUREI"&&enemy,stateno=195&&enemy,time=35)||(enemy,name="TELETTE"&&enemy,stateno=10195&&enemy,time=15))
trigger8=enemy,authorname="shuu"&&enemy,stateno=333&&((enemy,name="TEOC REISEN"&&enemy,time=40)||(enemy,name="TOKI_S"&&enemy,time=17)||(enemy,name="Chiester410_S"&&enemy,time=1))
trigger9=(enemy,name="REIsen U Inaba"&&enemy,authorname="shuu"&&enemy,stateno=199&&enemy,time=16)||(enemy,name="Mr.HEART"&&enemy,authorname="rei"&&enemy,stateno=195&&enemy,time=24)
trigger10=enemy,authorname="KAZ"&&((enemy,name="Blue Eyes White Karin"&&enemy,time=10&&(enemy,stateno=[195,196]))||(enemy,name="Master Sakura"&&enemy,stateno=195&&enemy,time=15))
trigger11=enemy,authorname="SAIKEI"&&enemy,stateno=780&&((enemy,time=17&&(enemy,name="KENSHIRO-SAIKEI"||enemy,name="KENSHIRO"))||(enemy,name="THOUTHER"&&enemy,time=50)||(enemy,name="JUDA"&&enemy,time=1))
trigger12=enemy,authorname="simotsuki"&&enemy,stateno=195&&((enemy,name="A-Rei"&&enemy,time=16)||(enemy,name="saint-of-silver"&&enemy,time=17))
trigger13=enemy,stateno=195&&enemy,time=18&&((enemy,name="Mei"&&enemy,authorname="霊柩なき者")||(enemy,name="Hong Meirin"&&enemy,authorname="hato")||(enemy,name="RAOH"&&enemy,authorname="shikkoku"))
trigger14=enemy,stateno=195&&((enemy,time=18&&((enemy,name="RAOH ATL"&&enemy,authorname="Ataru")||(enemy,name="Raoh"&&enemy,authorname="Bat")))||(enemy,name="SHYU"&&enemy,authorname="Fixxxer"&&enemy,time=60))
trigger15=enemy,stateno=195&&enemy,time=5&&((enemy,name="zeroko"&&enemy,authorname="FenNes&5667&チユリ&エス")||(enemy,name="MegaMari"&&enemy,authorname="RockMARISA"))
trigger16=enemy,stateno=195&&((enemy,name="ikusan"&&enemy,authorname="ikusan"&&enemy,time=40)||(enemy,name="Shuh"&&enemy,authorname="Fixxxer+Ts"&&enemy,time=60))
trigger17=enemy,stateno=199&&((enemy,name="Buront"&&enemy,authorname="kunshomo"&&enemy,time=10)||(enemy,name="shin"&&enemy,authorname="konpeitou"&&enemy,time=30))
trigger18=enemy,stateno=199&&((enemy,name="KENSHIRO"&&enemy,authorname="Cameron"&&enemy,time=17)||(enemy,name="CHENSHIROU"&&enemy,authorname="seapon"&&enemy,time=19))
trigger19=enemy,time=10&&((enemy,name="KaLen"&&enemy,authorname="BluishCat"&&enemy,stateno=10195)||(enemy,name="shiki_tohno"&&enemy,authorname="チユリ&&エス"&&enemy,stateno=70195))
trigger20=(enemy,name="Hong Meilin"&&enemy,authorname="barai"&&enemy,stateno=185&&enemy,time=30)||(enemy,name="amiba"&&enemy,authorname="oki"&&enemy,stateno=19911&&enemy,time=1)
trigger21=enemy,name="Arima_Miyako"&&enemy,authorname="deretun"&&enemy,stateno=8190&&enemy,time=35
trigger22=enemy,stateno=195&&((enemy,name="MAMIYA"&&enemy,authorname="YU-TOHARU"&&enemy,time=30)||(enemy,name="Order_Sol_Fist_of_North_Star"&&enemy,authorname="flowrallia"&&enemy,time=10))
Value = 1000
ignorehitpause = 1

[State -2]
Type = PowerAdd
triggerall=numenemy>=2&&alive
trigger1=enemy(1),authorname="Drowin hokuto"&&((enemy(1),stateno=199&&((enemy(1),name="KENSHIRO"&&enemy(1),time=19)||(enemy(1),name="Toki"&&enemy(1),time=17)))||(enemy(1),name="amiba"&&enemy(1),stateno=19911&&enemy(1),time=1))
trigger2=enemy(1),authorname="Ahuron"&&enemy(1),stateno=199&&((enemy(1),name="JAGI"&&enemy(1),time=80)||(enemy(1),name="SHIN"&&enemy(1),time=30)||(enemy(1),name="Heart&Heart"&&enemy(1),time=24))
trigger3=enemy(1),authorname="Ahuron"&&enemy(1),stateno=199&&((enemy(1),name="REI"&&enemy(1),time=16)||(enemy(1),name="THOUTHER"&&enemy(1),time=50))
trigger4=enemy(1),authorname="NERICYA"&&((enemy(1),name="JUDA-(NERICYA)"&&enemy(1),stateno=195&&enemy(1),time=1)||(enemy(1),name="TOKI-(NERICYA)"&&enemy(1),stateno=333&&enemy(1),time=17))
trigger5=enemy(1),authorname="Ts"&&enemy(1),stateno=195&&((enemy(1),time=80&&(enemy(1),name="Jagi"||enemy(1),name="JagiMeirin"))||(enemy(1),time=17&&(enemy(1),name="Toki"||enemy(1),name="Amiba")))
trigger6=enemy(1),authorname="Tamago Kanten"&&enemy(1),stateno=195&&((enemy(1),time=40&&enemy(1),name="ikusan_juda")||(enemy(1),time=50&&(enemy(1),name="tenshi"||enemy(1),name="tenshi_rei")))
trigger7=enemy(1),authorname="Nachel_Arrange_By_RockMARISA"&&((enemy(1),name="HAKUREI"&&enemy(1),stateno=195&&enemy(1),time=35)||(enemy(1),name="TELETTE"&&enemy(1),stateno=10195&&enemy(1),time=15))
trigger8=enemy(1),authorname="shuu"&&enemy(1),stateno=333&&((enemy(1),name="TEOC REISEN"&&enemy(1),time=40)||(enemy(1),name="TOKI_S"&&enemy(1),time=17)||(enemy(1),name="Chiester410_S"&&enemy(1),time=1))
trigger9=(enemy(1),name="REIsen U Inaba"&&enemy(1),authorname="shuu"&&enemy(1),stateno=199&&enemy(1),time=16)||(enemy(1),name="Mr.HEART"&&enemy(1),authorname="rei"&&enemy(1),stateno=195&&enemy(1),time=24)
trigger10=enemy(1),authorname="KAZ"&&((enemy(1),name="Blue Eyes White Karin"&&enemy(1),time=10&&(enemy(1),stateno=[195,196]))||(enemy(1),name="Master Sakura"&&enemy(1),stateno=195&&enemy(1),time=15))
trigger11=enemy(1),authorname="SAIKEI"&&enemy(1),stateno=780&&((enemy(1),time=17&&(enemy(1),name="KENSHIRO-SAIKEI"||enemy(1),name="KENSHIRO"))||(enemy(1),name="THOUTHER"&&enemy(1),time=50)||(enemy(1),name="JUDA"&&enemy(1),time=1))
trigger12=enemy(1),authorname="simotsuki"&&enemy(1),stateno=195&&((enemy(1),name="A-Rei"&&enemy(1),time=16)||(enemy(1),name="saint-of-silver"&&enemy(1),time=17))
trigger13=enemy(1),stateno=195&&enemy(1),time=18&&((enemy(1),name="Mei"&&enemy(1),authorname="霊柩なき者")||(enemy(1),name="Hong Meirin"&&enemy(1),authorname="hato")||(enemy(1),name="RAOH"&&enemy(1),authorname="shikkoku"))
trigger14=enemy(1),stateno=195&&((enemy(1),time=18&&((enemy(1),name="RAOH ATL"&&enemy(1),authorname="Ataru")||(enemy(1),name="Raoh"&&enemy(1),authorname="Bat")))||(enemy(1),name="SHYU"&&enemy(1),authorname="Fixxxer"&&enemy(1),time=60))
trigger15=enemy(1),stateno=195&&enemy(1),time=5&&((enemy(1),name="zeroko"&&enemy(1),authorname="FenNes&5667&チユリ&エス")||(enemy(1),name="MegaMari"&&enemy(1),authorname="RockMARISA"))
trigger16=enemy(1),stateno=195&&((enemy(1),name="ikusan"&&enemy(1),authorname="ikusan"&&enemy(1),time=40)||(enemy(1),name="Shuh"&&enemy(1),authorname="Fixxxer+Ts"&&enemy(1),time=60))
trigger17=enemy(1),stateno=199&&((enemy(1),name="Buront"&&enemy(1),authorname="kunshomo"&&enemy(1),time=10)||(enemy(1),name="shin"&&enemy(1),authorname="konpeitou"&&enemy(1),time=30))
trigger18=enemy(1),stateno=199&&((enemy(1),name="KENSHIRO"&&enemy(1),authorname="Cameron"&&enemy(1),time=17)||(enemy(1),name="CHENSHIROU"&&enemy(1),authorname="seapon"&&enemy(1),time=19))
trigger19=enemy(1),time=10&&((enemy(1),name="KaLen"&&enemy(1),authorname="BluishCat"&&enemy(1),stateno=10195)||(enemy(1),name="shiki_tohno"&&enemy(1),authorname="チユリ&&エス"&&enemy(1),stateno=70195))
trigger20=(enemy(1),name="Hong Meilin"&&enemy(1),authorname="barai"&&enemy(1),stateno=185&&enemy(1),time=30)||(enemy(1),name="amiba"&&enemy(1),authorname="oki"&&enemy(1),stateno=19911&&enemy(1),time=1)
trigger21=enemy(1),name="Arima_Miyako"&&enemy(1),authorname="deretun"&&enemy(1),stateno=8190&&enemy(1),time=35
trigger22=enemy(1),stateno=195&&((enemy(1),name="MAMIYA"&&enemy(1),authorname="YU-TOHARU"&&enemy(1),time=30)||(enemy(1),name="Order_Sol_Fist_of_North_Star"&&enemy(1),authorname="flowrallia"&&enemy(1),time=10))
Value = 1000
ignorehitpause = 1

;---------------------------------
;龍虎の拳キャラ「挑発」対応ステート
[state -2]
Type=PowerAdd
triggerall=numenemy&&alive
triggerall=enemynear,time=1&&enemynear,stateno=ifelse(enemynear,authorname="Fred",ifelse(P2name="jack"||P2name="king"||P2name="Mr Big"||P2name="Robert Garcia"||P2name="Todo"||P2name="Takuma",310,6001),ifelse(enemynear,authorname="Lord Sinistro",910,195))
trigger1=(P2name="Temjin"&&enemynear,authorname="adamskie")||(enemynear,authorname="brown"&&(P2name="Eiji_MK"||P2name="aof3_ryo"))||(P2name="John Crawley"&&enemynear,authorname="Smogon+The_None")||(P2name="S.Sinclair"&&enemynear,authorname="hiramoto")
trigger2=(P2name="Jack Turner SvK"&&enemynear,authorname="Andre Lopes, Luigi-Master")||(enemynear,authorname="Andre Lopes"&&(P2name="Jack"||P2name="Yuri"))||(P2name="lenny"&&enemynear,authorname="keyu")||(P2name="Wang"&&enemynear,authorname="oscar12345")
trigger3=(enemynear,authorname="Elecbyte"&&(P2name="Lee"||P2name="Robert"||P2name="Ryo"))||(P2name="wyler"&&(enemynear,authorname="dxwho"||enemynear,authorname="Werewood"))||(P2name="AOFking by kain the supreme"&&enemynear,authorname="kain The Supreme")
trigger4=(enemynear,authorname="mass"&&(P2name="Karman"||P2name="Sinclair"))||(P2name="Micky"&&enemynear,authorname="Lord Sinistro")||(P2name="AOF3Robert"&&enemynear,authorname="DeSouza")||(P2name="Kasumi Todo"&&enemynear,authorname="nyo")
trigger5=enemynear,authorname="Fred"&&(P2name="Eiji"||P2name="geese"||P2name="jack"||P2name="John"||P2name="king"||P2name="lee"||P2name="Micky"||P2name="Mr Big"||P2name="Mr Karate"||P2name="Ryo"||P2name="Todo"||P2name="Takuma"||P2name="Robert Garcia")
trigger6=(P2name="FUWA JIN"&&enemynear,authorname="Tin")||(P2name="Mr.BIG"&&enemynear,authorname="dorusii")
Value=-200
ignorehitpause=1

[state -2]
Type=PowerAdd
triggerall=numenemy>=2&&alive
triggerall=enemynear(1),time=1
triggerall=enemynear(1),stateno=ifelse(enemynear(1),authorname="Fred",ifelse(P4name="jack"||P4name="king"||P4name="Mr Big"||P4name="Robert Garcia"||P4name="Todo"||P4name="Takuma",310,6001),ifelse(enemynear(1),authorname="Lord Sinistro",910,195))
trigger1=(P4name="AOFking by kain the supreme"&&enemynear(1),authorname="kain The Supreme")||(P4name="John Crawley"&&enemynear(1),authorname="Smogon+The_None")||(enemynear(1),authorname="brown"&&(P4name="Eiji_MK"||P4name="aof3_ryo"))
trigger2=(P4name="Jack Turner SvK"&&enemynear(1),authorname="Andre Lopes, Luigi-Master")||(P4name="lenny"&&enemynear(1),authorname="keyu")||(P4name="Wang"&&enemynear(1),authorname="oscar12345")||(P4name="S.Sinclair"&&enemynear(1),authorname="hiramoto")
trigger3=(enemynear(1),authorname="Elecbyte"&&(P4name="Lee"||P4name="Robert"||P4name="Ryo"))||(P4name="wyler"&&(enemynear(1),authorname="dxwho"||enemynear(1),authorname="Werewood"))||(enemynear(1),authorname="Andre Lopes"&&(P4name="Jack"||P4name="Yuri"))
trigger4=(enemynear(1),authorname="mass"&&(P4name="Karman"||P4name="Sinclair"))||(P4name="Micky"&&enemynear(1),authorname="Lord Sinistro")||(P4name="AOF3Robert"&&enemynear(1),authorname="DeSouza")||(P4name="Kasumi Todo"&&enemynear(1),authorname="nyo")
trigger5=enemynear(1),authorname="Fred"&&(P4name="Eiji"||P4name="geese"||P4name="jack"||P4name="John"||P4name="king"||P4name="lee"||P4name="Micky"||P4name="Mr Big"||P4name="Mr Karate"||P4name="Ryo"||P4name="Todo"||P4name="Takuma"||P4name="Robert Garcia")
trigger6=(P4name="FUWA JIN"&&enemynear(1),authorname="Tin")||(P4name="Temjin"&&enemynear(1),authorname="adamskie")||(P4name="Mr.BIG"&&enemynear(1),authorname="dorusii")
Value=-200
ignorehitpause=1

;---------------------------------

;---------------------------------
;GGキャラ「挑発」対応ステート
[State -2]
Type = PowerAdd
triggerall=numenemy
triggerall=enemy,time=1&&(alive||(lose&&MatchOver=0&&roundstate=3&&!(enemy,wintime)))
trigger1=enemy,authorname="muteki"&&enemy,stateno=195&&(enemy,name="sol"||enemy,name="ky"||enemy,name="may"||enemy,name="millia"||enemy,name="eddie"||enemy,name="potemkin"||enemy,name="chipp"||enemy,name="baiken")
trigger2=enemy,authorname="muteki"&&enemy,stateno=195&&(enemy,name="jam"||enemy,name="AXL"||enemy,name="johnny"||enemy,name="gg_venom"||enemy,name="testament"||enemy,name="dizzy"||enemy,name="SLAYER")
trigger3=enemy,authorname="muteki"&&enemy,stateno=195&&(enemy,name="I-NO"||enemy,name="bridget"||enemy,name="A.B.A"||enemy,name="justice"||enemy,name="kliff"||enemy,name="robo-ky"||enemy,name="zappa")
trigger4=enemy,authorname="muteki"&&((enemy,stateno=195&&(enemy,name="anji"||enemy,name="osol"||enemy,name="chipp_arrange"||enemy,name="Omni-Psych Chipp"))||(enemy,name="faust"&&(enemy,stateno=[195,196])))
trigger5=enemy,authorname="MEKA"&&enemy,stateno=195&&(enemy,name="Anji Mito"||enemy,name="Ky Kiske"||enemy,name="I-NO"||enemy,name="May"||enemy,name="Chipp Zanuff"||enemy,name="Axl Low")
trigger6=enemy,authorname="ukege"&&enemy,stateno=195&&(enemy,name="ROBO-KY1"||enemy,name="ROBO-KY2"||enemy,name="OLD_ROBO-KY"||enemy,name="ROBO-KY3"||enemy,name="ROBO-JAM"||enemy,name="ROBO-SOL")
trigger7=enemy,stateno=195&&((enemy,authorname="nana"&&(enemy,name="Millia_Rage"||enemy,name="Dizzy"))||(enemy,authorname="MIMI"&&(enemy,name="ROBO-Ky"||enemy,name="ROBO-KyⅡ")))
trigger8=enemy,stateno=195&&((enemy,authorname="the k.m.d."&&(enemy,name="Johnny"||enemy,name="Evil Johnny"))||(enemy,authorname="Daimonmau"&&(enemy,name="solengrenado"||enemy,name="darkordersol")))
trigger9=enemy,stateno=195&&(enemy,authorname="Akutagawa"&&(enemy,name="order-Sol=Badguy"||enemy,name="Ky=kiske"))||(enemy,name="Sol=Badguy"&&enemy,authorname="Amachi"&&(enemy,stateno=[195,196]))
trigger10=enemy,stateno=195&&((enemy,name="Sol Badguy"&&enemy,authorname="aoao")||(enemy,name="JAM KURADOBERI"&&enemy,authorname="AOAO")||(enemy,name="SLAYER"&&enemy,authorname="Lupanda76"))
trigger11=enemy,stateno=195&&((enemy,name="potemkin"&&enemy,authorname="Tin")||(enemy,name="Omni-Psych Jam"&&enemy,authorname="Seven")||(enemy,name="ShinEddie"&&enemy,authorname="Knightmare106"))
trigger12=enemy,stateno=195&&((enemy,name="judgment"&&enemy,authorname="kishio")||(enemy,name="Captain Falcon"&&enemy,authorname="Kamekaze")||(enemy,name="kyko"&&enemy,authorname="beppu&panda"))
trigger13=(enemy,stateno=900&&enemy,authorname="EL"&&(enemy,name="BRIDGET"||enemy,name="MAY"||enemy,name="DIZZY"||enemy,name="ZAPPA"))||(enemy,name="c-wind2"&&enemy,authorname="365"&&enemy,stateno=290)
trigger14=enemy,authorname="高崎　舟"&&((enemy,name="BAIKEN"&&(enemy,stateno=4010||enemy,stateno=4012))||(enemy,name="anji mito"&&enemy,stateno=4010))
trigger15=(enemy,name="Kanna"&&enemy,authorname="mikage"&&enemy,stateno=195&&enemy,var(33)=3)||(enemy,name="Destrudo Ryu"&&enemy,authorname="Sumi"&&enemy,stateno=340&&enemy,var(50)=4)
trigger16=enemy,stateno=195&&((enemy,name="Ky=kiske"&&enemy,authorname="N.I.J")||(enemy,authorname="flowrallia"&&(enemy,name="Order Sol XIII"||enemy,name="Weiss"||enemy,name="Elsa_GG")))
trigger17=enemy,stateno=195&&((enemy,name="Dizzy By Third"&&enemy,authorname="Third")||(enemy,name="Saki_GG"&&enemy,authorname="flowrallia"))
trigger18=enemy,stateno=10195&&((enemy,authorname="Rei"&&(enemy,name="EINS"||enemy,name="GGKY"||enemy,name="ROBO-KY_Type-P"||enemy,name="XECHS"||enemy,name="ZWEI"))||(enemy,authorname="Rei＆elm"&&enemy,name="MANUTE"))
Value = 80
ignorehitpause = 1

[State -2]
Type = PowerAdd
triggerall=numenemy>=2
triggerall=enemy(1),time=1&&(alive||(lose&&MatchOver=0&&roundstate=3&&!(enemy(1),wintime)))
trigger1=enemy(1),authorname="muteki"&&enemy(1),stateno=195&&(enemy(1),name="sol"||enemy(1),name="ky"||enemy(1),name="may"||enemy(1),name="millia"||enemy(1),name="eddie"||enemy(1),name="potemkin"||enemy(1),name="chipp"||enemy(1),name="baiken")
trigger2=enemy(1),authorname="muteki"&&enemy(1),stateno=195&&(enemy(1),name="jam"||enemy(1),name="AXL"||enemy(1),name="johnny"||enemy(1),name="gg_venom"||enemy(1),name="testament"||enemy(1),name="dizzy"||enemy(1),name="SLAYER")
trigger3=enemy(1),authorname="muteki"&&enemy(1),stateno=195&&(enemy(1),name="I-NO"||enemy(1),name="bridget"||enemy(1),name="A.B.A"||enemy(1),name="justice"||enemy(1),name="kliff"||enemy(1),name="robo-ky"||enemy(1),name="zappa")
trigger4=enemy(1),authorname="muteki"&&((enemy(1),stateno=195&&(enemy(1),name="anji"||enemy(1),name="osol"||enemy(1),name="chipp_arrange"||enemy(1),name="Omni-Psych Chipp"))||(enemy(1),name="faust"&&(enemy(1),stateno=[195,196])))
trigger5=enemy(1),authorname="MEKA"&&enemy(1),stateno=195&&(enemy(1),name="Anji Mito"||enemy(1),name="Ky Kiske"||enemy(1),name="I-NO"||enemy(1),name="May"||enemy(1),name="Chipp Zanuff"||enemy(1),name="Axl Low")
trigger6=enemy(1),authorname="ukege"&&enemy(1),stateno=195&&(enemy(1),name="ROBO-KY1"||enemy(1),name="ROBO-KY2"||enemy(1),name="OLD_ROBO-KY"||enemy(1),name="ROBO-KY3"||enemy(1),name="ROBO-JAM"||enemy(1),name="ROBO-SOL")
trigger7=enemy(1),stateno=195&&((enemy(1),authorname="nana"&&(enemy(1),name="Millia_Rage"||enemy(1),name="Dizzy"))||(enemy(1),authorname="MIMI"&&(enemy(1),name="ROBO-Ky"||enemy(1),name="ROBO-KyⅡ")))
trigger8=enemy(1),stateno=195&&((enemy(1),authorname="the k.m.d."&&(enemy(1),name="Johnny"||enemy(1),name="Evil Johnny"))||(enemy(1),authorname="Daimonmau"&&(enemy(1),name="solengrenado"||enemy(1),name="darkordersol")))
trigger9=enemy(1),stateno=195&&(enemy(1),authorname="Akutagawa"&&(enemy(1),name="order-Sol=Badguy"||enemy(1),name="Ky=kiske"))||(enemy(1),name="Sol=Badguy"&&enemy(1),authorname="Amachi"&&(enemy(1),stateno=[195,196]))
trigger10=enemy(1),stateno=195&&((enemy(1),name="Sol Badguy"&&enemy(1),authorname="aoao")||(enemy(1),name="JAM KURADOBERI"&&enemy(1),authorname="AOAO")||(enemy(1),name="SLAYER"&&enemy(1),authorname="Lupanda76"))
trigger11=enemy(1),stateno=195&&((enemy(1),name="potemkin"&&enemy(1),authorname="Tin")||(enemy(1),name="Omni-Psych Jam"&&enemy(1),authorname="Seven")||(enemy(1),name="ShinEddie"&&enemy(1),authorname="Knightmare106"))
trigger12=enemy(1),stateno=195&&((enemy(1),name="judgment"&&enemy(1),authorname="kishio")||(enemy(1),name="Captain Falcon"&&enemy(1),authorname="Kamekaze")||(enemy(1),name="kyko"&&enemy(1),authorname="beppu&panda"))
trigger13=(enemy(1),stateno=900&&enemy(1),authorname="EL"&&(enemy(1),name="BRIDGET"||enemy(1),name="MAY"||enemy(1),name="DIZZY"||enemy(1),name="ZAPPA"))||(enemy(1),name="c-wind2"&&enemy(1),authorname="365"&&enemy(1),stateno=290)
trigger14=enemy(1),authorname="高崎　舟"&&((enemy(1),name="BAIKEN"&&(enemy(1),stateno=4010||enemy(1),stateno=4012))||(enemy(1),name="anji mito"&&enemy(1),stateno=4010))
trigger15=(enemy(1),name="Kanna"&&enemy(1),authorname="mikage"&&enemy(1),stateno=195&&enemy(1),var(33)=3)||(enemy(1),name="Destrudo Ryu"&&enemy(1),authorname="Sumi"&&enemy(1),stateno=340&&enemy(1),var(50)=4)
trigger16=enemy(1),stateno=195&&((enemy(1),name="Ky=kiske"&&enemy(1),authorname="N.I.J")||(enemy(1),authorname="flowrallia"&&(enemy(1),name="Order Sol XIII"||enemy(1),name="Weiss"||enemy(1),name="Elsa_GG")))
trigger17=enemy(1),stateno=195&&((enemy(1),name="Dizzy By Third"&&enemy(1),authorname="Third")||(enemy(1),name="Saki_GG"&&enemy(1),authorname="flowrallia"))
trigger18=enemy(1),stateno=10195&&((enemy(1),authorname="Rei"&&(enemy(1),name="EINS"||enemy(1),name="GGKY"||enemy(1),name="ROBO-KY_Type-P"||enemy(1),name="XECHS"||enemy(1),name="ZWEI"))||(enemy(1),authorname="Rei＆elm"&&enemy(1),name="MANUTE"))
Value = 80
ignorehitpause = 1

;---------------------------------------------
;夢瑠、フレイ「オートアイテム エリクサー」対応ステート
[State -2,オートアイテム パートナー用①]
Type = LifeAdd
Value = Ceil(LifeMax*0.5)
TriggerAll = TeamMode = simul
TriggerAll = Partner,AuthorName = "霊柩なき者"
Trigger1 = Alive
Trigger1 = Partner,StateNo = 16001
Trigger1 = Partner,Time = 85

[State -2,オートアイテム パートナー用②]
Type = PalFX
TriggerAll = TeamMode = simul
TriggerAll = Partner,AuthorName = "霊柩なき者"
Trigger1 = Alive
Trigger1 = Partner,StateNo = 16001
Trigger1 = Partner,Time = 85
Color = 0
Add = -112,32,-112
Time = 20

[State -2,オートアイテム パートナー用③]
Type = AfterImage
TriggerAll = TeamMode = simul
TriggerAll = Partner,AuthorName = "霊柩なき者"
Trigger1 = Alive
Trigger1 = Partner,StateNo = 16001
Trigger1 = Partner,Time >= 85
PalColor = 0
PalBright = -112,32,-112
Time = 10

;---------------------------------------------------------------------------
;拘束

[State -2, ]
type = Explod
trigger1 = !numexplod(19861) && numenemy
trigger1 = enemynear,name = "Lucifer" && enemynear,authorname = "Boomer"
trigger1 = stateno = 7625 && movetype = H
trigger1 = time = 20
anim = 19860
pos = -20, 0
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = 1, 1
sprpriority = 0
;ownpal = 1
ID = 19861

[State -2, ]
type = AssertSpecial
trigger1 = numexplod(19861) = 1 && numenemy
trigger1 = enemynear,name = "Lucifer" && enemynear,authorname = "Boomer"
trigger1 = stateno = 7625 && movetype = H
trigger1 = time >= 20
flag = invisible

[State -2, ]
type = RemoveExplod
trigger1 = numexplod(19861) = 1
trigger1 = stateno != 7625
ID = 19861

;------------------------------------------------------------------
;「メタ返し＆メタ再反論」対応ステート
[State -2];メタ返し～カットイン（右向き）
type = Explod
triggerall = numenemy
triggerall = facing = 1
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
anim = 19864
ID = 19864
postype = left
pos = 0,240
facing = 1
scale = 1.2,1.2
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ返し～カットイン（左向き）
type = Explod
triggerall = numenemy
triggerall = facing = -1
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
anim = 19864
ID = 19864
postype = right
pos = 0,240
facing = -1
scale = 1.2,1.2
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ返し～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = s20,223
[State -2];メタ返し～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = s30,224

[State -2];メタ返し～パワーゲージ消費
type = Poweradd
triggerall = numenemy
triggerall = enemynear,stateno = 2910 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = -1000

[State -2];メタ再反論～カットイン（右向き）
type = Explod
triggerall = numenemy
triggerall = facing = 1
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
anim = 19865
ID = 19865
postype = left
pos = 0,240
facing = 1
scale = 1.2,1.2
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ再反論～カットイン（左向き）
type = Explod
triggerall = numenemy
triggerall = facing = -1
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
anim = 19865
ID = 19865
postype = right
pos = 0,240
facing = -1
scale = 1.2,1.2
ownpal = 1
sprpriority = 50
pausemovetime = 999999999
supermovetime = 999999999

[State -2];メタ再反論～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = s20,224
[State -2];メタ再反論～ボイス
type = PlaySnd
triggerall = numenemy
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = s30,225

[State -2];メタ再反論～パワーゲージ消費
type = Poweradd
triggerall = numenemy
triggerall = enemynear,stateno = 2930 && enemynear,time = 2
trigger1 = enemynear,name = "Rosa_Ushiromiya" && enemynear,Authorname = "barai"
trigger2 = enemynear,name = "oyashirorika" && enemynear,Authorname = "baggy"
trigger3 = enemynear,name = "trapsatoko" && enemynear,Authorname = "baggy"
trigger4 = enemynear,name = "Furudo_erika" && enemynear,Authorname = "baggy"
value = -1000

;右代宮縁寿 他「メタ返し＆メタ再反論」対応ステート
[state -2];メタ返し＆メタ再反論～パワーゲージ消費×2
type=Poweradd
triggerall=alive&&!numexplod(19864)&&!numexplod(19865)
trigger1=numenemy&&!numpartner
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2
trigger2=numenemy&&numpartner
trigger2=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&(enemy,stateno=2910||enemy,stateno=2930)&&enemy,time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
trigger3=numenemy>=2&&!numpartner
trigger3=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2
trigger4=numenemy>=2&&numpartner
trigger4=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&(enemy(1),stateno=2910||enemy(1),stateno=2930)&&enemy(1),time=2&&(ID<Partner,ID||(ID>Partner,ID&&partner,numexplod(19864)=0&&partner,numexplod(19865)=0))
value=-1000
ignorehitpause=1

[state -2];メタ返し～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s20,223
ignorehitpause=1
[state -2];メタ返し～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2
value=s30,224
ignorehitpause=1

[state -2];メタ返し～カットイン（右向き）
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=-1
anim=19864
ID=19864
postype=left
pos=0,240
scale = 1.2,1.2
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state -2];メタ返し～カットイン（左向き）
type=Explod
triggerall=alive&&!numexplod(19864)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2910&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2910&&enemy(1),time=2&&enemy(1),facing=1
anim=19864
ID=19864
postype=right
pos=0,240
facing=-1
scale = 1.2,1.2
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state -2];メタ再反論～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s20,224
ignorehitpause=1
[state -2];メタ再反論～ボイス
type=PlaySnd
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2
value=s30,225
ignorehitpause=1

[state -2];メタ再反論～カットイン（右向き）
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=-1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=-1
anim=19865
ID=19865
postype=left
pos=0,240
scale = 1.2,1.2
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

[state -2];メタ再反論～カットイン（左向き）
type=Explod
triggerall=alive&&!numexplod(19865)
trigger1=numenemy
trigger1=enemy,var(56)=19861004&&enemy,Authorname="YU-TOHARU"&&enemy,stateno=2930&&enemy,time=2&&enemy,facing=1
trigger2=numenemy>=2
trigger2=enemy(1),var(56)=19861004&&enemy(1),Authorname="YU-TOHARU"&&enemy(1),stateno=2930&&enemy(1),time=2&&enemy(1),facing=1
anim=19865
ID=19865
postype=right
pos=0,240
facing=-1
scale = 1.2,1.2
ownpal=1
bindtime=-1
sprpriority=50
pausemovetime=100
supermovetime=100
ignorehitpause=1

;---------------------------------
;黄金夢想曲キャラ 各種やられボイス対応ステート

[State -2];投げ弾き
type=PlaySnd
trigger1=numenemy&&stateno=2851&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value = s20,137
channel = 3
[State -2];投げ弾き
type=PlaySnd
trigger1=numenemy&&stateno=2851&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value = s30,145
channel = 4

[State -2];ガードタッチ＆ガードタッチフォワード
type=PlaySnd
trigger1=numenemy&&(stateno=[8101,8103])&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value = s20,215
channel = 3
[State -2];ガードタッチ＆ガードタッチフォワード
type=PlaySnd
trigger1=numenemy&&(stateno=[8101,8103])&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value = s30,212
channel = 4

[State -2];大吹っ飛び
type=PlaySnd
trigger1=numenemy&&movetype=H
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"&&enemynear,fvar(16)=1
value = s20,273
channel = 3
[State -2];大吹っ飛び
type=PlaySnd
trigger1=numenemy&&movetype=H
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"&&enemynear,fvar(16)=1
value = s30,272
channel = 4

[state ];ジャーマンスープレックスつかみ（パートナー"右代宮縁寿"）
type=PlaySnd
trigger1=numenemy&&stateno=11909&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value=s20,264
channel=3
[state ];ジャーマンスープレックスつかみ（パートナー"右代宮縁寿"）
type=PlaySnd
trigger1=numenemy&&stateno=11909&&movetype=H&&time=1
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value=s30,141
channel=4

[state ];ジャーマンスープレックス投げられ（パートナー"右代宮縁寿"）
type=PlaySnd
trigger1=numenemy&&stateno=11909&&movetype=H&&(anim=11910||anim=19868)&&animelem=8
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value=s20,265
channel=3
[state ];ジャーマンスープレックス投げられ（パートナー"右代宮縁寿"）
type=PlaySnd
trigger1=numenemy&&stateno=11909&&movetype=H&&(anim=11910||anim=19868)&&animelem=8
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"
value=s30,308
channel=4

;右代宮縁寿 各種やられボイス対応ステート
[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=21
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s20,300
channel=3
[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=21
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s30,310
channel=4

[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=37
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s20,310
channel=3
[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=37
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s30,300
channel=4

[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=58
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s20,273
channel=3
[State -2];投げ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=58
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU";&&enemynear,fvar(16)=1
value=s30,272
channel=4

[state -2];ジャーマンスープレックス＆ダブルジャーマンスープレックスつかみ
type=PlaySnd
trigger1=numenemy&&(stateno=2002||stateno=4002)&&movetype=H&&time=1
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,264
channel=3
[state -2];ジャーマンスープレックス＆ダブルジャーマンスープレックスつかみ
type=PlaySnd
trigger1=numenemy&&(stateno=2002||stateno=4002)&&movetype=H&&time=1
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,141
channel=4

[state -2];ジャーマンスープレックス投げられ
type=PlaySnd
trigger1=numenemy&&stateno=2002&&movetype=H&&(anim=2002||anim=19868)&&animelem=8
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,265
channel=3
[state -2];ジャーマンスープレックス投げられ
type=PlaySnd
trigger1=numenemy&&stateno=2002&&movetype=H&&(anim=2002||anim=19868)&&animelem=8
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,308
channel=4

[state -2];ダブルジャーマンスープレックス投げられ1回目
type=PlaySnd
trigger1=numenemy&&stateno=4002&&movetype=H&&(anim=4002||anim=19869)&&animelem=8
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,265
channel=3
[state -2];ダブルジャーマンスープレックス投げられ1回目
type=PlaySnd
trigger1=numenemy&&stateno=4002&&movetype=H&&(anim=4002||anim=19869)&&animelem=8
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,308
channel=4

[state -2];ダブルジャーマンスープレックス投げられ2回目
type=PlaySnd
trigger1=numenemy&&stateno=4002&&movetype=H&&(anim=4002||anim=19869)&&animelem=19
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,312
channel=3
[state -2];ダブルジャーマンスープレックス投げられ2回目
type=PlaySnd
trigger1=numenemy&&stateno=4002&&movetype=H&&(anim=4002||anim=19869)&&animelem=19
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,233
channel=4

[state ];王者の教え（パートナー"右代宮譲治"）
type=PlaySnd
trigger1=numenemy&&stateno=4501&&movetype=H&&time=30
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,318
channel=3
[state ];王者の教え（パートナー"右代宮譲治"）
type=PlaySnd
trigger1=numenemy&&stateno=4501&&movetype=H&&time=30
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,308
channel=4

[state ];縁寿の選択～拘束（パートナー"古戸ヱリカ"）
type=PlaySnd
trigger1=numenemy&&stateno=4502&&movetype=H&&time=70
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,313
channel=3
[state ];縁寿の選択～拘束（パートナー"古戸ヱリカ"）
type=PlaySnd
trigger1=numenemy&&stateno=4502&&movetype=H&&time=70
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,266
channel=4

[state ];縁寿の選択～崩れ落ちダウン（パートナー"古戸ヱリカ"）
type=PlaySnd
trigger1=numenemy&&stateno=4502&&movetype=H&&time=340
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,241
channel=3
[state ];縁寿の選択～崩れ落ちダウン（パートナー"古戸ヱリカ"）
type=PlaySnd
trigger1=numenemy&&stateno=4502&&movetype=H&&time=340
trigger1=enemynear,name="USHIROMIYA ANGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,318
channel=4

;右代宮譲治 各種やられボイス対応ステート
[State -2];投げつかみ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=12
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,264
channel=3
[State -2];投げつかみ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=12
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,265
channel=4

[State -2];投げられ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=36
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,307
channel=3
[State -2];投げられ
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=802&&time=36
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,306
channel=4

[State -2];涅槃蹴り
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=4403&&time=1
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s20,215
channel=3
[State -2];涅槃蹴り
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=4403&&time=1
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
value=s30,212
channel=4

[State -2];王者の教え
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=4705
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
trigger1=time=1
value=s20,318
channel=3
[State -2];王者の教え
type=PlaySnd
trigger1=numenemy&&movetype=H&&stateno=4705
trigger1=enemynear,name="USHIROMIYA GEORGE"&&enemynear,Authorname="YU-TOHARU"
trigger1=time=1
value=s30,308
channel=4

;---------------------------------------------

;右代宮縁寿 他「DETACHMENT」「涅槃蹴り」対応ステート
[State -2, アルティメットゲージをターミネイト]
type = Varset
trigger1=enemynear,var(56)=19861004&&enemynear,Authorname="YU-TOHARU"&&movetype=H&&(enemynear,fvar(19)=1||enemynear,fvar(19)=3)
var(5) = 0

;-----------------------------------------------------------------------
;アグリアスモーグリ恩恵
[State -2]
type = PalFX
triggerall = !ishelper
trigger1 = roundstate = 2
Trigger1 = numpartner = 1
Trigger1 = partner,AuthorName = "ouchi" && partner,Name = "Agrias_Oaks"
trigger1 = partner,var(25)%100 = 7
Trigger1 = alive = 1
trigger1 = partner,var(10) = 100
time = 50
add = 0,0,54
mul = 256,256,256
sinadd = 0,0,108,100

[State -2]
Type = LifeAdd
triggerall = !ishelper
trigger1 = roundstate = 2
Trigger1 = numpartner = 1
Trigger1 = partner,AuthorName = "ouchi" && partner,Name = "Agrias_Oaks"
trigger1 = partner,var(25)%100 = 7
trigger1 = partner,var(10) > 0
Trigger1 = alive = 1
Value = 1
ignorehitpause = 1

;-----------------------------------------------------------------------
;【サイア】「癒し」
[State -2,Heal];ライフ
type = Lifeadd
triggerall = RoundState=2&&alive&&TeamMode = simul
triggerall = Numpartner>0&&partner,name="s_sayia-f"&&partner,authorname="sekirei"
trigger1 = partner,var(3)=1
value = floor(5*(partner,fvar(20)))
ignorehitpause = 1

[State -2,Heal-2];点滅
type = Palfx
triggerall = RoundState=2&&alive&&TeamMode = simul
triggerall = Numpartner>0&&partner,name="s_sayia-f"&&partner,authorname="sekirei"
trigger1 = partner,var(3)=1
add = 150,130,120
sinadd = 40,40,50,5
time = 1
ignorehitpause = 1

;-----------------------------------------------------------------------
;イチコロ毒（SAIKEIユダ）
[state -2]
type=lifeadd
TriggerAll = NumEnemy
trigger1=enemy,name="JUDA"
trigger1=enemy,authorname="SAIKEI"
trigger1=enemy,fvar(23)>0
trigger1=floor(enemy,fvar(23))%4=0
trigger1=enemy,var(0)<=0
trigger1=enemy,movetype!=h||enemy,movetype=h&&enemy,hitshakeover
value=-1
kill=0

[state -2]
type=palfx
TriggerAll = NumEnemy
triggerall=gametime%20=0
trigger1=enemy,name="JUDA"
trigger1=enemy,authorname="SAIKEI"
trigger1=enemy,fvar(23)>0
time=8
add=255,0,0

;-----------------------------------------------------------------------
;アテナ「ライフフラワー」対応ステート
[State ]
Type=LifeAdd
trigger1=numenemy
Trigger1=Enemy,AuthorName="hilune"&&Enemy,Name="Princess_Athena"&&Enemy,Var(17)=0&&Enemy,Var(18)=2&&Enemy,NumHelper(1600)!=0
Value=150

[State ]
Type=PowerAdd
trigger1=numenemy
Trigger1=Enemy,AuthorName="hilune"&&Enemy,Name="Princess_Athena"&&Enemy,Var(17)=1&&Enemy,Var(18)=2&&Enemy,NumHelper(1600)!=0
Value=450

;-----------------------------------------------------------------------
;キュアブラック「ルミナス・ハーティエル・アンクション」対応ステート
[state -2]
type=lifeadd
trigger1=numpartner
trigger1=partner,name="CURE BLACK"&&partner,authorname="YU-TOHARU"&&partner,var(28)=1&&alive
Value=ifelse(partner,var(6)=3||partner,var(7)=3||partner,var(8)=3||partner,palno=12,150,100)
Absolute=1
ignorehitpause=1

[state -2]
type=varadd
trigger1=var(5) < 31
trigger1=numpartner
trigger1=partner,name="CURE BLACK"&&partner,authorname="YU-TOHARU"&&partner,var(28)=1&&alive
Value=ifelse(partner,var(6)=3||partner,var(7)=3||partner,var(8)=3||partner,palno=12,150,100)
var(5)=ifelse(var(5)<=28,3,31-var(5))
ignorehitpause=1

;---------------------------------------------------------------------------



;-----------------------------------------------------------------------
;LALキャライントロ対応ステート
;カーソル表示
[State -2, intro1]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19855)
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19855
ID = 19855
postype = p1
pos = 0,0
scale = 1.25,1.25
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = 50
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ_1P側)
[State -2, intro2]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19856)
triggerall = TeamMode = single || TeamMode = turns
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 2
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19856
ID = 19856
postype = left
pos = 0,45;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ_タッグ1P側)
[State -2, intro2]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19856)
triggerall = TeamMode = simul
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 2
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
triggerall = (numenemy = 2 && (enemy(0),P2dist X = P2dist X)) || (numenemy = 1 && (enemy,P2dist X = P2dist X))
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19856
ID = 19856
postype = left
pos = 0,45;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ_タッグ3P側)
[State -2, intro2]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19856)
triggerall = TeamMode = simul
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 2
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
triggerall = (numenemy = 2 && (enemy(0),P2dist X != P2dist X)) || (numenemy = 1 && (enemy,P2dist X != P2dist X))
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19856
ID = 19856
postype = left
pos = 0,71;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ2P側)
[State -2, intro3]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19857)
triggerall = TeamMode = single || TeamMode = turns
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 1
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19857
ID = 19857
postype = right
pos = 0,45;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ_タッグ2P側)
[State -2, intro3]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19857)
triggerall = TeamMode = simul
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 1
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
triggerall = (numenemy = 2 && (enemy(0),P2dist X = P2dist X)) || (numenemy = 1 && (enemy,P2dist X = P2dist X))
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19857
ID = 19857
postype = right
pos = 0,45;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;名前表示(LALキャラ_タッグ4P側)
[State -2, intro3]
type = Explod
triggerall = !ishelper
triggerall = !numexplod(19857)
triggerall = TeamMode = simul
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = TeamSide = 1
triggerall = enemy,Anim = 190
triggerall = roundstate < 2
triggerall = time = 1
triggerall = (numenemy = 2 && (enemy(0),P2dist X != P2dist X)) || (numenemy = 1 && (enemy,P2dist X != P2dist X))
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
anim = 19857
ID = 19857
postype = right
pos = 0,71;←ライフバーによってはy値を調節する必要有
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = -1
removetime = -1
ignorehitpause = 1

;カーソル消去
[State -2, intro4]
type = RemoveExplod
triggerall = !ishelper
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = enemy,Anim != 190
triggerall = roundstate >= 2
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
ID = 19855
ignorehitpause = 1

;名前表示(LALキャラ1P3P側)消去
[State -2, intro5]
type = RemoveExplod
triggerall = !ishelper
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = enemy,Anim != 190
triggerall = roundstate >= 2
triggerall = TeamSide = 2
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
ID = 19856
ignorehitpause = 1

;名前表示(LALキャラ2P4P側)消去
[State -2, intro6]
type = RemoveExplod
triggerall = !ishelper
triggerall = numenemy
triggerall = enemy,Authorname = "AnkokuNaitou"
triggerall = enemy,Anim != 190
triggerall = roundstate >= 2
triggerall = TeamSide = 1
trigger1 = enemy,name = "orsted"
trigger2 = enemy,name = "rei-kugo"
trigger3 = enemy,name = "akira_tadokoro"
trigger4 = enemy,name = "masaru_takahara"
trigger5 = enemy,name = "sundown-kid"
trigger6 = enemy,name = "cube"
trigger7 = enemy,name = "oboromaru"
trigger8 = enemy,name = "pogo"
trigger9 = enemy,name = "yuen-joe"
trigger10 = enemy,name = "sammo-hacka"
ID = 19857
ignorehitpause = 1

;----------------------------------------------------------------------------
;森部のじーさん用ポトレ
[State -2, moribe]
type = Explod
triggerall = !ishelper
triggerall = numenemy
triggerall = enemy,name = "seiji_moribe" && enemy,authorname = "Hanyu-maru"
trigger1 = Enemy,NumExplod(3006) || Enemy,NumExplod(3011)
anim = 19860
ID = 19860
pos = 0, -10
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 340
sprpriority = 50
ownpal = 0
removeongethit = 0
scale = 1.25, 1.25
ontop = 1
supermovetime = 99999999
pausemovetime = 99999999
ignorehitpause = 1

;===========================================================================
; 準常時監視ステート（－３）
;===========================================================================
[Statedef -3]
;---------------------------------------------------------------------------

[State -3, 音を鳴らす]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52  ;着地ステート
trigger2 = stateno = 106 ;バックステップ後の着地ステート
value = 40, 0

;---------------------------------------------------------------------------
;退屈

[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 0
value = s20,70
channel = 1
ignorehitpause = 1

[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 11
value = s20,71
channel = 1
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 0
value = s30,70
channel = 2
ignorehitpause = 1
[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 425
triggerall = Alive
trigger1 = stateno = 0
value = s30,71
channel = 2
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 11
value = s30,72
channel = 2
ignorehitpause = 1
[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 410
triggerall = Alive
trigger1 = stateno = 11
value = s30,73
channel = 2
ignorehitpause = 1

[State -3, アニメ変更]
type = ChangeAnim
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 0
value = 3

[State -3, アニメ変更]
type = ChangeAnim
triggerall = StateTime = 350
triggerall = Alive
trigger1 = stateno = 11
value = 13

[State -3, ステート変更]
type = ChangeState
triggerall = StateTime = 570
triggerall = Alive
trigger1 = stateno = 0
value = 0

[State -3, ステート変更]
type = ChangeState
triggerall = StateTime = 570
triggerall = Alive
trigger1 = stateno = 11
value = 11

;---------------------------------------------------------------------------
;ジャンプ
[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 42
value = s20,77
channel = 1
ignorehitpause = 1
[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 41
value = s20,78
channel = 1
ignorehitpause = 1
[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 43
value = s20,79
channel = 1
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 42
value = s30,80
channel = 2
ignorehitpause = 1
[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 41
value = s30,81
channel = 2
ignorehitpause = 1
[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 50
trigger1 = anim = 43
value = s30,82
channel = 2
ignorehitpause = 1

;ダッシュ
[State -3, ボイス分岐・ベルン]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 100
trigger2 = stateno = 105
v = 6
range = 0,1

[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 100
value = s20,73+var(6)
channel = 1
ignorehitpause = 1

[State -3, ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 105
value = s20,75+var(6)
channel = 1
ignorehitpause = 1

[State -3, ボイス分岐・ラムダ]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 100
trigger2 = stateno = 105
v = 7
range = 0,1

[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 100
value = s30,76+var(7)
channel = 2
ignorehitpause = 1

[State -3, ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 105
value = s30,78+var(7)
channel = 2
ignorehitpause = 1

;---------------------------------------------------------------------------
;ガードボイス

[State -3, ボイス分岐・ベルン]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 150
trigger1 = anim = 150
trigger2 = stateno = 154
trigger2 = anim = 152
v = 6
range = 230,236
ignorehitpause = 1

[State -3, ガードボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive; && GameTime % 4 = 0
trigger1 = stateno = 150
trigger1 = anim = 150
trigger2 = stateno = 154
trigger2 = anim = 152
value = s20,var(6)
channel = 1
ignorehitpause = 1

[State -3, ボイス分岐・ラムダ]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 152
trigger1 = anim = 151
trigger2 = stateno = 154
trigger2 = anim = 152
v = 7
range = 230,232
ignorehitpause = 1

[State -3, ガードボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive; && GameTime % 4 = 0
trigger1 = stateno = 152
trigger1 = anim = 151
trigger2 = stateno = 154
trigger2 = anim = 152
value = s30,var(7)
channel = 2
ignorehitpause = 1

[State -3, 受身ボイス・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5200 || stateno = 5201 || stateno = 5210
value = s20,254
channel = 1
lowpriority = 1
ignorehitpause = 1
[State -3, 受身ボイス・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5200 || stateno = 5201 || stateno = 5210
value = s30,254
channel = 2
lowpriority = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
;KOボイス

[State -3, ダメージボイス分岐・ベルン]
type = VarRandom
trigger1 = var(19) = 0
trigger1 = StateTime = 1
trigger1 = !Alive
v = 6
range = 272,273
ignorehitpause = 1

[State -3, ダメージボイス分岐・ラムダ]
type = VarRandom
trigger1 = var(19) = 0
trigger1 = StateTime = 1
trigger1 = !Alive
v = 7
range = 270,273
ignorehitpause = 1

[State -3, ダメージボイス弱・ベルン]
type = PlaySnd
trigger1 = var(19) = 0
trigger1 = StateTime = 1
trigger1 = !Alive
value = s20,var(6)
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス弱・ラムダ]
type = PlaySnd
trigger1 = var(19) = 0
trigger1 = StateTime = 1
trigger1 = Alive = 0
value = s30,var(7)
channel = 2
ignorehitpause = 1

[State -3, KO]
type = VarSet
trigger1 = var(19) = 0
trigger1 = StateTime = 1
trigger1 = !Alive
var(19) = 1

;---------------------------------------------------------------------------
;ダメージボイス

[State -3, ダメージボイス分岐・ベルン]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger2 = stateno = 5080
v = 6
range = 0,3
ignorehitpause = 1
[State -3, ダメージボイス分岐・ラムダ]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger2 = stateno = 5080
v = 7
range = 0,2
ignorehitpause = 1

[State -3, ダメージボイス分岐・ベルン]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5030
v = 6
range = 0,3
ignorehitpause = 1
[State -3, ダメージボイス分岐・ラムダ]
type = VarRandom
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5030
v = 7
range = 0,3
ignorehitpause = 1

[State -3, ダメージボイス弱・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5000 || anim = 5010 || anim = 5020
value = s20,260+var(6)
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス中・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5001 ||  anim = 5011 || anim = 5021
value = s20,263+var(6)
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス強・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5002 ||  anim = 5012 || anim = 5022
trigger2 = stateno = 5080
value = s20,266+var(6)
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス吹き飛び・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
;trigger1 = stateno = 5030
trigger1 = anim = 5030
value = s20,270+var(6)
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス垂直・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5051
value = s20,282
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス足払い・ベルン]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5070
value = s20,280
channel = 1
ignorehitpause = 1

[State -3, ダメージボイス弱・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5000 || anim = 5010 || anim = 5020
value = s30,260+var(7)
channel = 2
ignorehitpause = 1

[State -3, ダメージボイス中・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5001 ||  anim = 5011 || anim = 5021
value = s30,263+var(7)
channel = 2
ignorehitpause = 1

[State -3, ダメージボイス強・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5002 ||  anim = 5012 || anim = 5022
trigger2 = stateno = 5080
value = s30,266+var(7)
channel = 2
ignorehitpause = 1

[State -3, ダメージボイス吹き飛び・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5030
value = s30,270+var(7)
channel = 2
ignorehitpause = 1

[State -3, ダメージボイス垂直・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = anim = 5051
value = s30,282
channel = 2
ignorehitpause = 1

[State -3, ダメージボイス足払い・ラムダ]
type = PlaySnd
triggerall = StateTime = 1
triggerall = Alive
trigger1 = stateno = 5070
value = s30,280
channel = 2
ignorehitpause = 1

;---------------------------------------------------------------------------
;起き上がりボイス

[State -3, 起き上がり分岐・ベルン]
type = VarRandom
triggerall = Alive
triggerall = StateTime = 1
trigger1 = stateno = 5120
v = 6
range = 240,245

[State -3, 起き上がり・ベルン]
type       = PlaySnd
triggerAll = Alive
triggerall = StateTime = 1
trigger1 = stateno = 5120
value      = s20,var(6)
channel    = 1

[State -3, 起き上がり分岐・ラムダ]
type = VarRandom
triggerall = Alive
triggerall = StateTime = 1
trigger1 = stateno = 5120
v = 7
range = 240,245

[State -3, 起き上がり・ラムダ]
type       = PlaySnd
triggerAll = Alive
triggerall = StateTime = 1
trigger1 = stateno = 5120
value      = s30,var(7)
channel    = 2

;---------------------------------------------------------------------------
;KO後

[State 5150];はぁはぁ…
type       = PlaySnd
triggerall = !alive
triggerAll = StateTime%60 = 1
triggerAll = StateTime > 1
trigger1   = stateno=5150
trigger1   = anim = 5110
;trigger1   = anim = 5150
value      = s20, 255
channel    = 1

[State 5150];はぁはぁ…
type       = PlaySnd
triggerall = !alive
triggerAll = StateTime%60 = 1
triggerAll = StateTime > 1
trigger1   = stateno=5150
trigger1   = anim = 5110
;trigger1   = anim = 5150
value      = s30, 255
channel    = 2

;---------------------------------------------------------------------------

[State -3, 分身時間]
type = AfterImage
triggerall = stateno != [230,240]
triggerall = stateno != 630
triggerall = (prevstateno = [230,240]) || (prevstateno = 630)
trigger1 = movetype = H
trigger1 = Time = 1
trigger2 = stateno = [600,610]
trigger2 = AnimElemTime(3) = 0
trigger3 = stateno = 620
trigger3 = AnimElemTime(4) = 0
time = 1

;---------------------------------------------------------------------------

[State -3, ダッシュ～ステップジャンプ]
type = varAdd
trigger1 = var(3) != 0
var(3) = -1
ignorehitpause = 1
[State -3, バックダッシュ～ステップジャンプ]
type = varAdd
trigger1 = var(4) != 0
var(4) = -1
ignorehitpause = 1

[State -3, ダッシュ～ステップジャンプ]
type = varset
triggerall = prevstateno = 100
triggerall = time = 0
trigger1 = stateno = 10
var(3) = 7
[State -3, バックダッシュ～ステップジャンプ]
type = varset
triggerall = prevstateno = 105
triggerall = time = 0
trigger1 = stateno = 10
var(4) = 7

;---------------------------------------------------------------------------
;ヒットスパーク

[State 1170, ヒット・ガード]
type = Explod
trigger1 = movehit  = 1
trigger1 = NumTarget(1170)
trigger1 = NumExplod(1170) = 0
anim = 4220
ID = 1170
pos = ceil(110*Const(size.xscale)), ceil(-120*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3000, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3000)
trigger1 = NumExplod(3000) = 0
anim = 4220
ID = 3000
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3000, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3000)
trigger1 = NumExplod(3000) = 0
anim = 4230
ID = 3000
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3000, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3001)
trigger1 = NumExplod(3001) = 0
anim = 4220
ID = 3001
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3000, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3001)
trigger1 = NumExplod(3001) = 0
anim = 4230
ID = 3001
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3000, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3002)
trigger1 = NumExplod(3002) = 0
anim = 4220
ID = 3002
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3000, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3002)
trigger1 = NumExplod(3002) = 0
anim = 4230
ID = 3002
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3000, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3003)
trigger1 = NumExplod(3003) = 0
anim = 4220
ID = 3003
pos = ceil(120*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3000, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3003)
trigger1 = NumExplod(3003) = 0
anim = 4230
ID = 3003
pos = ceil(120*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3050, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3050)
trigger1 = NumExplod(3050) = 0
anim = 4220
ID = 3050
pos = ceil(110*Const(size.xscale)), ceil(-110*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3050, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3050)
trigger1 = NumExplod(3050) = 0
anim = 4230
ID = 3050
pos = ceil(110*Const(size.xscale)), ceil(-110*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

[State 3150, ヒット・ガード]
type = Explod
triggerall = NumEnemy
trigger1 = movehit = 1
trigger1 = NumTarget(3150)
trigger1 = NumExplod(3150) = 0
anim = 4220
ID = 3150
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1
[State 3150, ヒット・ガード]
type = Explod
trigger1 = moveguarded  = 1
trigger1 = NumTarget(3150)
trigger1 = NumExplod(3150) = 0
anim = 4230
ID = 3150
pos = ceil(110*Const(size.xscale)), ceil(-100*Const(size.yscale))
postype = P1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)
Persistent = 0
ignorehitpause = 1

;============================================================================
;/（ ﾟ )( ﾟ ）ヽ＜らーにんぐぅぅｗ
;============================================================================
;1P側(高原が1人の場合)
[State -3, 2]
type = Explod
triggerall = numexplod(19853) = 0
triggerall = lose
triggerall = TeamSide = 2
trigger1 = numenemy = 1
trigger1 = enemy,teammode = single || enemy,teammode = turns
trigger1 = enemy,alive
trigger1 = (enemy,name = "masaru_takahara" && enemy,authorname = "AnkokuNaitou")
trigger1 = (enemy,stateno = 182 && enemy,animelemtime(1) = 2)
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = (enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
trigger2 = (enemy(0),stateno = 182 && enemy(0),animelemtime(1) = 2)
trigger3 = numenemy = 2
trigger3 = enemy(1),alive
trigger3 = (enemy(1),name = "masaru_takahara" && enemy(1),authorname = "AnkokuNaitou")
trigger3 = !(enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
trigger3 = (enemy(1),stateno = 182 && enemy(1),animelemtime(1) = 2)
anim = 19853
ID = 19853
pos = 100,65
postype = left
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = 50
ignorehitpause = 1

;1P側(高原が2人の場合)
[State -3, 2]
type = Explod
triggerall = numexplod(19854) = 0
triggerall = lose
triggerall = TeamSide = 2
triggerall = numenemy = 2
triggerall = enemy(1),alive
triggerall = (enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
triggerall = (enemy(1),name = "masaru_takahara" && enemy(1),authorname = "AnkokuNaitou")
trigger1 = (enemy(1),stateno = 182 && enemy(1),animelemtime(1) = 2)
anim = 19854
ID = 19854
pos = 100,65
postype = left
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = 50
ignorehitpause = 1

;2P側(高原が1人の場合)
[State -3, 2]
type = Explod
triggerall = numexplod(19853) = 0
triggerall = lose
triggerall = TeamSide = 1
trigger1 = numenemy = 1
trigger1 = enemy,teammode = single || enemy,teammode = turns
trigger1 = enemy,alive
trigger1 = (enemy,name = "masaru_takahara" && enemy,authorname = "AnkokuNaitou")
trigger1 = (enemy,stateno = 182 && enemy,animelemtime(1) = 2)
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = (enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
trigger2 = (enemy(0),stateno = 182 && enemy(0),animelemtime(1) = 2)
trigger3 = numenemy = 2
trigger3 = enemy(1),alive
trigger3 = (enemy(1),name = "masaru_takahara" && enemy(1),authorname = "AnkokuNaitou")
trigger3 = !(enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
trigger3 = (enemy(1),stateno = 182 && enemy(1),animelemtime(1) = 2)
anim = 19853
ID = 19853
pos = -100,65
postype = right
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = 50
ignorehitpause = 1

;2P側(高原が2人の場合)
[State -3, 2]
type = Explod
triggerall = numexplod(19854) = 0
triggerall = lose
triggerall = TeamSide = 1
triggerall = numenemy = 2
triggerall = enemy(1),alive
triggerall = (enemy(0),name = "masaru_takahara" && enemy(0),authorname = "AnkokuNaitou")
triggerall = (enemy(1),name = "masaru_takahara" && enemy(1),authorname = "AnkokuNaitou")
trigger1 = (enemy(1),stateno = 182 && enemy(1),animelemtime(1) = 2)
anim = 19854
ID = 19854
pos = -100,65
postype = right
supermovetime = 99999999
pausemovetime = 99999999
bindtime = -1
ownpal = 1
sprpriority = 50
ignorehitpause = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
