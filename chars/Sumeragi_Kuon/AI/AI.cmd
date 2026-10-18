
[Command]
name="nage"
command=a+x

[Command]
name="a"
command=a
time=1

[Command]
name="b"
command=b
time=1

[Command]
name="c"
command=c
time=1

[Command]
name="x"
command=x
time=1

[Command]
name="y"
command=y
time=1

[Command]
name="z"
command=z
time=1

[Command]
name="start"
command=s
time=1

[command]
name="fwd"
command=F
time=1

[command]
name="back"
command=B
time=1

[command]
name="up"
command=U
time=1

[command]
name="down"
command=D
time=1

[Command]
name="holdfwd"
command=/$F
time=1

[Command]
name="holdback"
command=/$B
time=1

[Command]
name="holdup"
command=/$U
time=1

[Command]
name="holddown"
command=/$D
time=1

[Command]
name="holdx"
command=/$x
time=1

[Command]
name="holdy"
command=/$y
time=1

[Command]
name="holdz"
command=/$z
time=1

[Command]
name="holdc"
command=/$c
time=1

[Command]
name="holdb"
command=/$b
time=1

[Command]
name="holda"
command=/$a
time=1

[Command]
name="holds"
command=/$s
time=1

[Command]
name="recovery"
command=/$x

[Command]
name="recovery"
command=/$y

[Command]
name="recovery"
command=/$z

[Command]
name="recovery"
command=/$a

[Command]
name="recovery"
command=/$b

[Command]
name="recovery"
command=/$c

[Statedef -1]

[State -1, AIレベル訂正1]
Type = Varset
ignorehitpause = 1
Trigger1 = var(38)!=[0,5]
var(38)=5

[State -1, AIガードレベル訂正1]
Type = Varset
ignorehitpause = 1
Trigger1 = var(39)!=[0,5]
var(39)=5

[State -1, 相手判別1]
Type = Varset
ignorehitpause = 1
Trigger1 = 1
var(37)=0

[State -1, 相手判別2]
Type = Varset
ignorehitpause = 1
Triggerall = numenemy>=2
Trigger1 = enemynear(0),alive=0
Trigger2 = enemynear(0),ishelper
var(37)=1

[State -1, 相手判別3]
Type = Varset
ignorehitpause = 1
Triggerall = numenemy>=3
Triggerall = var(37)=1
Trigger1 = enemynear(1),alive=0
Trigger2 = enemynear(1),ishelper
var(37)=2

[State -1, AIのctrl管理1]
type = Varset
triggerall = roundstate=2
trigger1 = ctrl
var(59)=1
ignorehitpause = 1

[State -1, 強制振り向き1]
type = changeanim
triggerall = roundstate=2
triggerall = p2dist x <0
triggerall =(statetype=C)||(statetype=S)
triggerall =movetype=I
trigger1 = var(59)
trigger2 = prevstateno=5120
value=(statetype=C)+5
ignorehitpause = 1

[State -1, 強制振り向き2]
type = turn
triggerall = roundstate=2
triggerall = p2dist x <0
triggerall =(statetype=C)||(statetype=S)
triggerall =movetype=I
trigger1 = var(59)
trigger2 = prevstateno=5120
ignorehitpause = 1

[State -1, AIのctrl管理2]
type = ctrlset
triggerall = roundstate=2
trigger1 = var(59)
trigger1 = stateno!=0
trigger1 = stateno!=11
trigger1 = prevstateno!=140
value = 0
ignorehitpause = 1

[State -1, AIのctrl管理3]
type = varset
triggerall = roundstate=2
triggerall = var(59)
triggerall = ctrl=0
trigger1 = stateno!=0
trigger1 = (stateno!=[10,12])
trigger1 = (stateno!=[20,21])
;trigger1 = stateno!=40
trigger1 = (stateno!=[50,52])
trigger1 = (stateno!=[120,142])
trigger1 = stateno!=1280
trigger1 = stateno!=1500
trigger1 = stateno!=1510
var(59) = 0
ignorehitpause = 1

[State -1, AIのctrl管理4]
type = ctrlset
triggerall = roundstate>=3
trigger1 = var(59)
value=1
ignorehitpause = 1

[State -1, AIのctrl管理5]
type = varset
trigger1 = roundstate!=2
var(59)=0
ignorehitpause = 1

[State -1, デバッグ情報];-------------------==================================================================
type = DisplayToClipboard
triggerall = !ishelper
trigger1 = numhelper(60000)
text = "var(59)=%d,var(54)=%d,var(55)=%d,p2bodydist x=%d,fvar(10)=%f"
params = var(59),(helper(60000),var(54)),(helper(60000),var(55)),(p2bodydist x),(helper(60000),fvar(10))
ignorehitpause=1

[State -1, 空キャン用var1]
type = Varset
var(1)=0
trigger1 = 1
ignorehitpause = 1

[State -1, 空キャン用var1]
type = Varset
var(1)=1
triggerall = movetype!=H
triggerall = time <= 2
triggerall = movecontact = 0
trigger1 = stateno = [200,220]
trigger2 = stateno = 230
trigger3 = stateno = [400,420]
trigger4 = stateno = [600,620]
trigger5 = stateno = [623,624]
trigger6 = stateno = 630
trigger7 = stateno = 800
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10 = stateno = [900,920]
ignorehitpause = 1

[State -1, 空キャン用var2]
type = Varset
var(1)=2
triggerall = movetype!=H
triggerall = time <= 2
triggerall = movecontact = 0
trigger1 = stateno = [1000,1001]
trigger2 = stateno = [1010,1011]
trigger3 = stateno = [1020,1021]
trigger4 = stateno = [1030,1031]
trigger5 = stateno = 1400
trigger6 = stateno = 1410
trigger7 = stateno = 1420
ignorehitpause = 1

;-----------------------------------------------------------
;AIが参照する変数設定
;-----------------------------------------------------------
[State -1, AI乱数1]
Type = Varrandom
ignorehitpause = 1
Trigger1 = 1
v = 40
range = 0,10000

[State -1, AI乱数2]
Type = Varrandom
ignorehitpause = 1
Trigger1 = Var(59)
Trigger1 = time=1
v = 41
range = 0,10000

;-----------------------------------------------------------
;攻撃技(地上)
;-----------------------------------------------------------

[State -1, セイクリッドジャッジメント N]
type  = ChangeState
value = 3100
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=!numhelper(1400)
triggerall=var(59)||var(0)||(stateno=[100,101])||var(1)
triggerall=power>=3000||var(46)=1
;trigger1 … 危険なぶっぱ
trigger1 = var(38)<=2
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)=[-10,270]
trigger1 = (var(40)%400) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)=2
trigger2 = (stateno=1000&&animelemtime(8)=1)||(stateno=1001&&animelemtime(12)=1)||(stateno=2000&&animelemtime(36)=1)
;trigger3 … 中～遠距離に対してカウンター狙い
trigger3 = var(38)>=3
trigger3 = !var(0)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = (enemynear(var(37)),time < 5)||(helper(60000),Var(53) >= 17)
trigger3 = (enemynear(var(37)),time >= 16)||((Var(38) >= 4)&&(enemynear(var(37)),time >= 6)) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(41)%40) <= (var(38)**2)||var(38)>=5
trigger3 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)=[120,290])||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)=[120,290])||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger3 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger3 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger3 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
trigger3 = ((p2bodydist x)=[120,290])||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger4 … 欲望まみれの擦り
trigger4 = var(38)>=3
trigger4 = !var(0)
trigger4 = helper(60000),Var(54) <= 4
trigger4 = helper(60000),Var(55) = 0
trigger4 = (enemynear(var(37)),time < 5)||(helper(60000),Var(53) >= 17)||(helper(60000),Var(46) >= 500&&(prevstateno=[150,155]))
trigger4 = helper(60000),var(45)>=50
trigger4 = helper(60000),var(46)>=10
trigger4 = (enemynear(var(37)),time)<helper(60000),var(45)-10||(helper(60000),Var(46) >= 500&&(prevstateno=[150,155]))
trigger4 = enemynear(var(37)),movetype=A
trigger4 = var(38)=5||(var(41)%10) <= 6
trigger4 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger4 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger4 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger4 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger4 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)||(helper(60000),Var(46) >= 500&&(prevstateno=[150,155]))
trigger4 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger5 … 暴れ潰し
trigger5 = (enemynear(var(37)),time < 2)||(helper(60000),Var(53) >= 17)
trigger5 = helper(60000),var(54)!=7
trigger5 = var(0)||var(1)
trigger5 = (var(0)&&((stateno=[200,420])||(stateno=[1000,1001])||(stateno=2000)))||var(1)
trigger5 = Var(38) >= 4
trigger5 = (enemynear(var(37)),movetype=A)
trigger5 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger5 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger5 = (enemynear(var(37)),time < 10)||(helper(60000),Var(53) >= 17)
trigger5 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger5 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger5 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger5 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger5 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
trigger5 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger6 … 超反応
trigger6 = var(38)>=3&&(prevstateno=3400||var(38)=5)
trigger6 = !var(0)
trigger6 = helper(60000),var(54)!=7
trigger6 = (enemynear(var(37)),time < 5)||(helper(60000),Var(53) >= 17)
trigger6 = enemynear(var(37)),movetype=A
trigger6 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger6 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger6 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger6 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger6 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
trigger6 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
; trigger7 … 超反応返し空かしキャンセル
trigger7 = helper(60000),var(54)!=7
trigger7 = Var(38)>=5
trigger7 = (enemynear(var(37)),movetype=A)
trigger7 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger7 = var(1)
trigger7 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger7 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger7 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger7 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger7 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
trigger7 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger8 … 対投げ超反応(エンゲージクライマックスから即ぶっぱ)
trigger8 = (var(0)&&((stateno=[200,420])||(stateno=[1000,1001])||(stateno=2000)))||var(1)||var(59)||(stateno=[100,101])
trigger8 = Var(38) >= 3
trigger8 = (enemynear(var(37)),movetype=A)
trigger8 = (enemynear(var(37)),hitdefattr=SCA,AT)||(prevstateno=3400)
trigger8 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))||(prevstateno=3400)
trigger8 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)||(prevstateno=3400)
trigger8 = (enemynear(var(37)),movecontact=0)
trigger8 = (enemynear(var(37)),time < 5)||(helper(60000),Var(53) >= 17)
trigger8 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
trigger8 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger8 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
trigger8 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger8 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
trigger8 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger9 … ヘブンスラストEXから
trigger9 = helper(60000),Var(54) = 6
trigger9 = var(0)
trigger9 = movehit=1
trigger9 = animelemtime(28)>1||(var(50)<620&&var(46))
trigger9 = stateno=2000
;trigger10 … 同技で追撃
trigger10 = helper(60000),Var(54) = 6
trigger10 = var(38)>=3
trigger10 = var(59)
trigger10 = numtarget(3000)
trigger10 = prevstateno=3101||prevstateno=3400
trigger10 = !((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))&&enemynear(var(37)),statetype=A
;trigger11 … 殺し切り、クライマックス版即当て
trigger11 = helper(60000),Var(54) = 6
trigger11 = var(0)
trigger11 = movehit=1
trigger11 = stateno=[1000,1001]
trigger11 = animelemtime(8)>=0
trigger11 = var(50)=900||stateno=1000
trigger11 = ((enemynear(var(37)),life*24000.0/enemynear(var(37)),lifemax)<4500||stateno=1000)
trigger11 = (fvar(7)<0.2||stateno!=1000||var(46))
trigger11 = !((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||stateno=1000
;trigger12 … ヘブンスラストA&Bから
trigger12 = helper(60000),Var(54) = 6
trigger12 = var(0)
trigger12 = movehit=1
trigger12 = (stateno=1000&&animelemtime(4)>=0)||(stateno=1001&&animelemtime(12)>=0)
trigger12 = (stateno=1000&&animelemtime(8)>=0)||(stateno!=1000)||((enemynear(var(37)),statetype!=A)&&(fvar(7)<0.3))
trigger12 = var(46)||(enemynear(var(37)),statetype!=A)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger13 … 空中ガード不可能狙い
trigger13 = var(38)>=4
trigger13 =var(59)||(var(0)&&(stateno=420||stateno=2000||(stateno=[1000,1001])))||(stateno=[100,101])||var(1)
trigger13 = helper(60000),Var(54) < 7
trigger13 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))||(prevstateno=3400)
trigger13 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)||(prevstateno=3400)
trigger13 = enemynear(var(37)),statetype=A
trigger13 = (enemynear(var(37)),stateno=[120,159])||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno<120)
trigger13 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger13 = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger13 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger13 = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)
trigger13 = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))

[State -1, セイクリッドジャッジメント 対飛び道具専門]
type  = ChangeState
value = 3100
triggerall=var(38)>=4
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=!numhelper(1400)
triggerall=var(59)||(stateno=[100,101])
triggerall=power>=3000||var(46)=1
triggerall = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype=A)
triggerall = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)<=290)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
triggerall = ((p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*16)>=190)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))||(enemynear(var(37)),statetype!=A)
triggerall = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)>-140)||(enemynear(var(37)),statetype!=A)||!((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
triggerall = (p2dist y+(enemynear(var(37)),vel y*16+enemynear(var(37)),const(movement.yaccel)*128)<=0)||(enemynear(var(37)),statetype!=A)||(enemynear(var(37)),vel y=0)
triggerall = ((p2bodydist x)<=290)||((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
;trigger1～5…飛び道具感知時に使用1
trigger1 = helper(60000),var(3)
trigger1 = helper(60000),var(8)
trigger1 = (enemynear(var(37)),movetype=A)&&((PlayerID(helper(60000),var(3)),time<40)||(helper(60000),Var(53) >= 17))
trigger1 = ((enemynear(var(37)),time)>PlayerID(helper(60000),var(3)),time)||(helper(60000),Var(53) >= 17)
trigger2 = helper(60000),var(4)
trigger2 = helper(60000),var(9)
trigger2 = (enemynear(var(37)),movetype=A)&&((PlayerID(helper(60000),var(4)),time<40)||(helper(60000),Var(53) >= 17))
trigger2 = ((enemynear(var(37)),time)>PlayerID(helper(60000),var(4)),time)||(helper(60000),Var(53) >= 17)
trigger3 = helper(60000),var(5)
trigger3 = helper(60000),var(10)
trigger3 = (enemynear(var(37)),movetype=A)&&((PlayerID(helper(60000),var(5)),time<40)||(helper(60000),Var(53) >= 17))
trigger3 = ((enemynear(var(37)),time)>PlayerID(helper(60000),var(5)),time)||(helper(60000),Var(53) >= 17)
trigger4 = helper(60000),var(6)
trigger4 = helper(60000),var(11)
trigger4 = (enemynear(var(37)),movetype=A)&&((PlayerID(helper(60000),var(6)),time<40)||(helper(60000),Var(53) >= 17))
trigger4 = ((enemynear(var(37)),time)>PlayerID(helper(60000),var(6)),time)||(helper(60000),Var(53) >= 17)
trigger5 = helper(60000),var(3)
trigger5 = helper(60000),var(8)
trigger5 = (enemynear(var(37)),movetype=A)&&((PlayerID(helper(60000),var(7)),time<40)||(helper(60000),Var(53) >= 17))
trigger5 = ((enemynear(var(37)),time)>PlayerID(helper(60000),var(7)),time)||(helper(60000),Var(53) >= 17)

[State -1, エンゲージクライマックス N]
type  = ChangeState
value = 3400
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||var(1)||(stateno=[100,101])||(stateno=[40,43])||(stateno=[47,49])
triggerall=var(50)>=900&&var(46)=0
triggerall=!numhelper(1400)
;trigger1 … 即使用
trigger1=var(38)<3
trigger1=var(59)||var(1)||(stateno=[100,101])||(stateno=[40,43])||(stateno=[47,49])
;trigger2 … リバーサル&くらい抜け対策
trigger2=var(38)>=3
trigger2=(helper(60000),var(54)=[3,4])||(helper(60000),var(54)=7)
trigger2=var(59)
trigger2=var(38)=3||(helper(60000),var(54)=7)||(life*1000.0/lifemax)<200
;trigger3 … 暴れ潰し
trigger3 = var(0)||var(1)
trigger3 = (stateno=[200,420])||var(1)
trigger3 = Var(38) >= 4
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger3 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger3 = helper(60000),Var(53) >= 17
;trigger4 … 超反応
trigger4 = var(38)>=5
trigger4 = power<1000||(enemynear(var(37)),life*1000.0/enemynear(var(37)),lifemax)<500
trigger4 = !var(0)
trigger4 = enemynear(var(37)),movetype=A||helper(60000),var(57)
; trigger5 … 超反応返し空かしキャンセル
trigger5 = Var(38)>=5
trigger5 = (enemynear(var(37)),stateno>=200)
trigger5 = (enemynear(var(37)),movetype!=H)
trigger5 = helper(60000),var(55)<5000
trigger5 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger5 = var(1)
;trigger6 … 対投げ超反応
trigger6 = helper(60000),var(54)!=7
trigger6 = (stateno=[200,630])||(stateno=900)||var(1)
trigger6 = Var(38) >= 4
trigger6 = (enemynear(var(37)),movetype=A)
trigger6 = (enemynear(var(37)),hitdefattr=SCA,AT)
trigger6 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger6 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
;trigger7 … ヘブンスラストEXから
trigger7 = helper(60000),Var(54) = 6
trigger7 = var(59)
trigger7 = numtarget(2000)
trigger7 = prevstateno=2000
trigger7 = power>=1000||p2bodydist x <=130
;trigger8 … セイクリッドジャッジメント使用後に即発動
trigger8 = var(38)>=3
trigger8 = var(59)
trigger8 = power<3000
trigger8 = prevstateno=3101
;trigger9 … ゲージが枯渇したら即使用
trigger9 = var(59)||(stateno=[100,101])||(stateno=[40,43])||(stateno=[47,49])
trigger9 = var(7)=3
;trigger10 … 即死狙い
trigger10 = prevstateno=2032||prevstateno=3101
trigger10 = (helper(60000),var(55)=[5100,5150])
trigger10 = var(59)
trigger10 = prevstateno!=3101||power<3000

[State -1, クレストバッシュEX(超反応専用) N]
type  = ChangeState
value = 2030
triggerall=var(38)>=4
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])||(var(1)&&var(38)>=4)
triggerall=power>=1000
triggerall=enemynear(var(37)),statetype!=A
triggerall=enemynear(var(37)),statetype!=L
triggerall=!(enemynear(var(37)),hitdefattr=SCA,AT)
triggerall=!(enemynear(var(37)),hitdefattr=A,AA)
triggerall=!(enemynear(var(37)),movecontact)
triggerall= (enemynear(var(37)),hitdefattr=SC,AA)||((enemynear(var(37)),stateno=[200,499])&&(var(0)))
triggerall= helper(60000),Var(53) > 10
triggerall= helper(60000),Var(53) > enemynear(var(37)),time
triggerall= inguarddist
triggerall= helper(60000),var(54)<5
;trigger1 = 超反応1
trigger1 = (stateno = [120,159])||(stateno=[100,101])
trigger1 = var(59)||(stateno=[100,101])
trigger1 = var(38)>=4
trigger1 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger1 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger1 = (enemynear(var(37)),movetype=A)
trigger1 = !(enemynear(var(37)),movecontact)
;trigger2 … 超反応2
trigger2 = var(0)||var(1)
trigger2 = (stateno=[200,630])||(stateno=900)||var(1)
trigger2 = Var(38) >= 4
trigger2 = (enemynear(var(37)),movetype=A)
; trigger3 … 超反応返し空かしキャンセル
trigger3 = helper(60000),var(54)!=7
trigger3 = Var(38)>=5
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger3 = var(1)
trigger3 = stateno<2000

[State -1, エリアルジャッジEX N]
type  = ChangeState
value = ifelse(statetype=A,2020,2010)
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(var(1)&&var(38)>=5)||(stateno=[100,101])
triggerall=power>=1000
triggerall=(p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*4) = [-80,50]
triggerall=(enemynear(var(37)),stateno!=[5200,5250])
triggerall=((p2dist y = [-180,-5+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
triggerall=((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -180 ,-5+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger1 … 危険なぶっぱ
trigger1 = var(38)<=2
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 3000 , 5000]
trigger1 = (var(40)%200) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2 … 暴れ(擦り)1
trigger2 = helper(60000),var(45)>=10
trigger2 = helper(60000),var(54)!=7
trigger2 = var(38)=3
trigger2 = (stateno=[120,149])||(helper(60000),var(52)>=1)
trigger2 = !var(0)
trigger2 = var(41) = [8000 , 10000]
trigger2 = (var(40)%200) <= var(38)**2
;trigger3 … 暴れ(擦り)2
trigger3 = (stateno = [120,159])
trigger3 = var(59)
trigger3 = var(38)>=4
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = !(enemynear(var(37)),movecontact)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) >= 7
trigger3 = (helper(60000),Var(53) = [7,9])||helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2
trigger3 = helper(60000),var(46)<helper(60000),var(45)-20
trigger3 = (enemynear(var(37)),time)<helper(60000),var(46)-10
;trigger4 … 暴れ潰し1
trigger4 = helper(60000),var(54)!=7
trigger4 = var(0)||var(1)
trigger4 = (stateno=[200,630])||(stateno=900)||var(1)
trigger4 = Var(38) >= 4
trigger4 = (enemynear(var(37)),movetype=A)
trigger4 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger4 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger4 = helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2
;trigger5 … 暴れ潰し2
trigger5 = helper(60000),var(54)!=7
trigger5 = var(0)||var(1)
trigger5 = (stateno=[200,630])||(stateno=900)||var(1)
trigger5 = Var(38) >= 4
trigger5 = (enemynear(var(37)),movetype=A)
trigger5 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger5 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger5 = (enemynear(var(37)),statetype=C)||(p2dist y < -200)||statetype=A
; trigger6 … 超反応返し空かしキャンセル
trigger6 = helper(60000),var(54)!=7
trigger6 = Var(38)>=5
trigger6 = (enemynear(var(37)),movetype=A)
trigger6 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger6 = var(1)
trigger6 = stateno<3000
;trigger7 … 対投げ超反応
trigger7 = (stateno=[200,630])||(stateno=900)||var(1)||!var(0)
trigger7 = Var(38) >= 4
trigger7 = (enemynear(var(37)),movetype=A)
trigger7 = (enemynear(var(37)),hitdefattr=SCA,AT)
trigger7 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger7 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger7 = (statetype=A)||(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger8 … 対空超反応
trigger8 = helper(60000),var(54)!=7
trigger8 = (stateno=[200,630])||(stateno=900)||var(1)||!var(0)
trigger8 = Var(38) >= 4
trigger8 = (enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&statetype!=A)
trigger8 = (enemynear(var(37)),statetype=A)
trigger8 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))||(enemynear(var(37)),movetype=I)
trigger8 = helper(60000),var(53)>=10||(enemynear(var(37)),movetype=I)
trigger8 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger8 = ((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)<0)&&(enemynear(var(37)),statetype=A))
;trigger9 … リバーサル
trigger9=var(38)>=3
trigger9=var(59)
trigger9=prevstateno=1500
trigger9=(enemynear(var(37)),movetype=A)
;trigger10 … 超反応暴れ
trigger10 = helper(60000),var(54)!=7
trigger10 = var(59)||(stateno=[100,101])
trigger10 = enemynear(var(37)),hitdefattr=SCA,AA,AP,AT
trigger10 = statetype=A||var(40)%3=1||(enemynear(var(37)),statetype=C)||(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
trigger10 = Var(38) >= 4
trigger10 = helper(60000), var(53)<enemynear(var(37)),time
trigger10 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger10 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)

[State -1, エリアルジャッジEX(コンボ用) N]
type  = ChangeState
value = ifelse(statetype=A,2010,2020)
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(var(1)&&var(38)>=5)||(stateno=[100,101])
triggerall=power>=1000
;trigger1 … 簡易コンボ
trigger1 = var(38)=2
trigger1 = helper(60000),Var(54) = 6
trigger1 = var(0)=2
trigger1 = (stateno=616)
;trigger2 … ダッシュA、Cから
trigger2 = var(38)>=3
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (anim=901&&animelemtime(5)>=0)||(anim=921&&animelemtime(9)>=0)

[State -1, エリアルジャッジB N]
type  = ChangeState
value = ifelse(statetype=A,1021,1011)
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(var(1)=1&&var(38)>=5)||(stateno=[100,101])
triggerall=(enemynear(var(37)),stateno!=[5200,5250])
triggerall=(p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [-90,50]
triggerall=((p2dist y = [ -240 ,-5+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
triggerall=((p2dist y+(enemynear(var(37)),vel y*12+enemynear(var(37)),const(movement.yaccel)*72)=[ -240 ,-5+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger1 … 危険なぶっぱ
trigger1 = var(38)<3
trigger1 = statetype!=A
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 4000 , 5000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2～6…飛び道具感知時に使用1
trigger2 = var(38)>=3
trigger2 = helper(60000),var(3)
trigger2 = helper(60000),var(8)=2
trigger2 = (enemynear(var(37)),movetype=A||p2dist y < -160)&&((helper(60000),var(54)=[3,4])||PlayerID(helper(60000),var(3)),time<=40)
trigger3 = var(38)>=3
trigger3 = helper(60000),var(4)
trigger3 = helper(60000),var(9)=2
trigger3 = (enemynear(var(37)),movetype=A||p2dist y < -160)&&((helper(60000),var(54)=[3,4])||PlayerID(helper(60000),var(4)),time<=40)
trigger4 = var(38)>=3
trigger4 = helper(60000),var(5)
trigger4 = helper(60000),var(10)=2
trigger4 = (enemynear(var(37)),movetype=A||p2dist y < -160)&&((helper(60000),var(54)=[3,4])||PlayerID(helper(60000),var(5)),time<=40)
trigger5 = var(38)>=3
trigger5 = helper(60000),var(6)
trigger5 = helper(60000),var(11)=2
trigger5 = (enemynear(var(37)),movetype=A||p2dist y < -160)&&((helper(60000),var(54)=[3,4])||PlayerID(helper(60000),var(6)),time<=40)
trigger6 = var(38)>=3
trigger6 = helper(60000),var(3)
trigger6 = helper(60000),var(8)=2
trigger6 = (enemynear(var(37)),movetype=A||p2dist y < -160)&&((helper(60000),var(54)=[3,4])||PlayerID(helper(60000),var(3)),time<=40)
;trigger7 … 対投げ超反応
trigger7 = (stateno=[200,630])||(stateno=900)||var(1)||!var(0)
trigger7 = Var(38) >= 4
trigger7 = (enemynear(var(37)),movetype=A)
trigger7 = (enemynear(var(37)),hitdefattr=SCA,AT)
trigger7 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger7 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger7 = (statetype=A)||(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger8 … 対空超反応
trigger8 = helper(60000),var(54)!=7
trigger8 = (stateno=[200,630])||(stateno=900)||var(1)||!var(0)
trigger8 = Var(38) = 4
trigger8 = (enemynear(var(37)),stateno>=100)
trigger8 = (enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&statetype!=A)
trigger8 = (enemynear(var(37)),statetype=A)
trigger8 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))||(enemynear(var(37)),movetype=I)
trigger8 = helper(60000),var(53)>=10||(enemynear(var(37)),movetype=I)
trigger8 = (var(40) = [0,3000]) || (Var(38) >= 5)
trigger8 = ((p2dist y+(enemynear(var(37)),vel y*12+enemynear(var(37)),const(movement.yaccel)*72)=[-240,-150])&&(enemynear(var(37)),statetype=A))
;trigger9 … 超反応暴れ
trigger9 = helper(60000),var(54)!=7
trigger9 = var(59)||(stateno=[100,101])
trigger9 = enemynear(var(37)),hitdefattr=SCA,AP,AT
trigger9 = Var(38) >= 4
trigger9 = helper(60000),var(53)>enemynear(var(37)),time
trigger9 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger9 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger9 = (enemynear(var(37)),hitdefattr=SCA,AP)||(statetype=A)||(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger10 … ダッシュA、Cから
trigger10 = var(38)>=3
trigger10 = helper(60000),Var(54) = 6
trigger10 = var(0)
trigger10 = (anim=901&&animelemtime(5)>=0)||(anim=921&&animelemtime(9)>=0)

[State -1, エリアルジャッジA N]
type  = ChangeState
value = ifelse(statetype=A,1020,1010)
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(var(1)=1&&var(38)>=5)||(stateno=[100,101])
triggerall=(enemynear(var(37)),stateno!=[5200,5250])
triggerall=(p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [-110,80]
triggerall=((p2dist y = [ -190 ,-40+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
triggerall=((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -200 ,-60+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
triggerall=enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=61)
triggerall=statetype!=A||(enemynear(var(37)),statetype=A)||(enemynear(var(37)),const(size.height)>=61)
;trigger1 … 危険なぶっぱ
trigger1 =var(38)<3
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 3000 , 4000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2 … 暴れ(擦り)1
trigger2 = helper(60000),var(45)>=10
trigger2 = helper(60000),var(54)!=7
trigger2 = var(38)=3
trigger2 = (stateno=[120,149])||(helper(60000),var(52)>=1)
trigger2 = !var(0)
trigger2 = var(41) = [8000 , 10000]
trigger2 = (var(40)%200) <= var(38)**2
;trigger3 … 暴れ(擦り)2
trigger3 = (stateno = [120,159])
trigger3 = var(59)
trigger3 = var(38)>=4
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = !(enemynear(var(37)),movecontact)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) >= 10
trigger3 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
trigger3 = helper(60000),var(46)<helper(60000),var(45)-20
trigger3 = (enemynear(var(37)),time)<helper(60000),var(46)-10
;trigger4 … 暴れ潰し1
trigger4 = helper(60000),var(54)!=7
trigger4 = var(0)||var(1)
trigger4 = (stateno=[200,630])||(stateno=900)||var(1)
trigger4 = Var(38) >= 4
trigger4 = (enemynear(var(37)),movetype=A)
trigger4 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger4 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger4 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger5 … 超反応返し空かしキャンセル
trigger5 = helper(60000),var(54)!=7
trigger5 = Var(38)>=5
trigger5 = (enemynear(var(37)),movetype=A)
trigger5 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger5 = var(1)=1
;trigger6 … 対投げ超反応
trigger6 = var(0)||var(1)||var(59)
trigger6 = (stateno=[200,630])||(stateno=900)||var(1)
trigger6 = Var(38) >= 4
trigger6 = (enemynear(var(37)),movetype=A)
trigger6 = (enemynear(var(37)),hitdefattr=SCA,AT)
trigger6 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger6 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
;trigger7 … 対空超反応
trigger7 = helper(60000),var(54)!=7
trigger7 = (stateno=[200,630])||(stateno=900)||var(1)||!var(0)
trigger7 = Var(38) >= 4
trigger7 = (enemynear(var(37)),movetype=A)
trigger7 = (enemynear(var(37)),statetype=A)
trigger7 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger7 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger7 = ((p2dist y+(enemynear(var(37)),vel y*9+enemynear(var(37)),const(movement.yaccel)*41)<0)&&(enemynear(var(37)),statetype=A))
trigger7 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger8 … リバーサル
trigger8=var(38)=[3,4]
trigger8=(helper(60000),var(54)=[3,4])
trigger8=var(59)
trigger8=(enemynear(var(37)),movetype=A)
trigger8=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger9 … リバーサル2
trigger9=var(38)>=3
trigger9=var(59)
trigger9=prevstateno=1500
trigger9=(enemynear(var(37)),movetype=A)
trigger9=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger10 … 超反応暴れ
trigger10 = helper(60000),var(54)!=7
trigger10 = var(59)||(stateno=[100,101])
trigger10 = enemynear(var(37)),hitdefattr=SCA,AA,AT
trigger10 = Var(38) >= 4
trigger10 = helper(60000),var(53)>enemynear(var(37)),time
trigger10 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger10 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger10 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)

[State -1 jump HJ3];空キャンエンゲージクライマックスからハイジャンプ
Type = ChangeState
Value = 47
TriggerAll=var(38) >= 4
TriggerAll=helper(60000),var(57) = 0
TriggerAll=roundstate=2
TriggerAll=statetype!=A
Trigger1 = var(59)
trigger1 = prevstateno=3400
trigger1 = enemynear(var(37)),stateno>=200
trigger1 = enemynear(var(37)),movetype=I
trigger1 = helper(60000),Var(54) = 0

[State -1, ヘブンスラストEX N]
type  = ChangeState
value = 2000
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=power>=1000
;trigger1 … 危険なぶっぱ
trigger1 = var(38)<4
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*5) = [120,210]
trigger1 = var(40) = [ 0 , 3000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=90)
trigger1 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 反撃確定狙い
trigger2 = var(38)>=3
trigger2 = var(59)||(stateno=[100,101])
trigger2 = helper(60000),Var(54) <= 4
trigger2 = helper(60000),Var(55) = 0
trigger2 = helper(60000),Var(53) = [7,12]
trigger2 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger2 = enemynear(var(37)),movetype=A
trigger2 = (var(40)%50) <= (var(38)**2)
trigger2 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [120,210]
trigger2 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger3 … 超反応
trigger3 = var(38)>=5
trigger3 = var(59)||(stateno=[100,101])
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(54) != 2
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) >= 35
trigger3 = enemynear(var(37)),stateno>=200
trigger3 = enemynear(var(37)),time<=2
trigger3 = (var(40)%50) <= (var(38)**2)
trigger3 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [160,210]
trigger3 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger4 … コンボ連携1
trigger4 = helper(60000),Var(55) = 5000
trigger4 = var(0)&&(stateno=410)
Trigger4 = helper(60000),Var(54)=6
trigger4 = movehit=1
;trigger5 … コンボ連携2
trigger5 = helper(60000),Var(55) = 5000
trigger5 = var(0)
trigger5 = (stateno=[200,206])||(stateno=210&&AnimElemtime(10)>2&&(enemynear(var(37)),stateno=[104006,104008]))
trigger5 = p2dist y < -(enemynear(var(37)),vel y*9+0.48*41)||(enemynear(var(37)),stateno=[104006,104008])||(enemynear(var(37)),statetype!=A)
trigger5 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger5 = ((p2dist y+(enemynear(var(37)),vel y*6+0.48*18)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
trigger5 = var(7)=3||(var(5)<=floor(200*ifelse(var(46)=1,0.5,1)))||(power>=3000&&((enemynear(var(37)),statetype!=A)||var(50)>=860))
Trigger5 = helper(60000),Var(54)=6
trigger5 = movehit=[1,2]
;trigger6 … 超連打!
trigger6 = helper(60000),Var(54) = 6
trigger6 = var(59)
trigger6 = numtarget(2000)
trigger6 = prevstateno=2000||prevstateno=3400
trigger6 = (enemynear(var(37)),statetype!=A)||(prevstateno=3400)||var(38)<3
trigger6 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
;trigger7 … コンボ連携3
trigger7 = var(0)
trigger7 = (stateno=210&&AnimElemtime(10)>2&&(enemynear(var(37)),stateno!=[104006,104008]))
trigger7 = p2dist y < -100
Trigger7 = helper(60000),Var(54)=6
trigger7 = movehit=[1,2]
;trigger8 … コンボ連携4
Trigger8 = helper(60000),Var(54)=6
Trigger8 = numtarget(2012)
trigger8 = var(59)
trigger8 = p2dist y+(enemynear(var(37)),vel y*6+0.48*18)<20
trigger8 = (p2bodydist x) = [-30,180]
;trigger9 … コンボ連携5
trigger9 = 0;var(0)
trigger9 = movehit>1
Trigger9 = helper(60000),Var(54)=6
Trigger9 = stateno=210
trigger9 = animelemno(0)=8
trigger9 = p2dist y+(enemynear(var(37)),vel y*6+0.48*18)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))]
;trigger10 … コンボ中拾い 空中特殊
trigger10 = helper(60000),Var(55) >= 5000
Trigger10 = helper(60000),Var(54)=6
trigger10 = var(59)||(stateno=[100,101])
trigger10 = (enemynear(var(37)),time>=18)||(var(46))
trigger10 = (enemynear(var(37)),stateno=104003)
trigger10 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger10 = p2dist y=[ -110 ,-70+((enemynear(var(37)),const(size.height)))]
trigger10 = p2bodydist x = [-10,210]
;trigger11 … コンボ中拾い 空中特殊2
trigger11 = helper(60000),Var(55) >= 5000
Trigger11 = helper(60000),Var(54)=6
trigger11 = var(59)||(stateno=[100,101])
trigger11 = (enemynear(var(37)),time>=18)||(var(46))
trigger11 = (enemynear(var(37)),stateno=104003)
trigger11 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger11 = p2dist y=[ -110 ,-70+((enemynear(var(37)),const(size.height)))]
trigger11 = p2bodydist x = [-10,210]
;trigger12 … コンボ中拾い 空中特殊3
trigger12 = helper(60000),Var(55) >= 5000
Trigger12 = helper(60000),Var(54)=6
trigger12 = var(59)||(stateno=[100,101])
trigger12 = (enemynear(var(37)),stateno=104004)
trigger12 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger12 = p2dist y+(enemynear(var(37)),vel x*6+0.48*18)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))]
trigger12 = p2bodydist x = [120,210]


[State -1, ヘブンスラストB N]
type  = ChangeState
value = 1001
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*13) = [120,210]
trigger1 = var(40) = [ 2000 , 3000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=90)
trigger1 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … ガード連携
trigger2 = var(38)>=3
trigger2 = var(0)
trigger2 = enemynear(var(37)),statetype!=A
trigger2 = (stateno=206)||(stateno=210&&AnimElemtime(10)>2)||(stateno=410)
trigger2 = p2bodydist x>=95
Trigger2 = helper(60000),Var(54)=5&&moveguarded=1
trigger2 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))
trigger2 = (var(41)=[4000,7000])||(var(5)<floor(200*ifelse(var(46)=1,0.5,1)))||var(7)=3
trigger2 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=90)
trigger2 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger3 … コンボ連携1
trigger3 = helper(60000),Var(55) = 5000
trigger3 = var(0)
trigger3 = (stateno=[200,206])||(stateno=210&&AnimElemtime(10)>2&&(enemynear(var(37)),stateno=[104006,104008]))
trigger3 = enemynear(var(37)),statetype=A
trigger3 = p2dist y < -(enemynear(var(37)),vel y*20+0.48*200)||(enemynear(var(37)),stateno=[104006,104008])
trigger3 = var(7)=3||(var(5)<=floor(200*ifelse(var(46)=1,0.5,1)))
Trigger3 = helper(60000),Var(54)=6
trigger3 = movehit<=2
;trigger4 … ヘブンスラストループ
trigger4 = helper(60000),Var(55) = [5050,5150]
Trigger4 = helper(60000),Var(54)=6
trigger4 = movehit=1
trigger4 = stateno=206
trigger4 = (enemynear(var(37)),statetype=A)

[State -1, ヘブンスラストA N]
type  = ChangeState
value = 1000
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [120,210]
trigger1 = var(40) = [ 0 , 2000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=90)
trigger1 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)=2
trigger2 = (stateno=210&&var(7)=3)||(stateno=410)
;trigger3 … 反撃確定狙い
trigger3 = var(38)>=3
trigger3 = var(59)||(stateno=[100,101])
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) = [10,12]
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(40)%50) <= (var(38)**2)
trigger3 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [120,210]
trigger3 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger4 … 超反応
trigger4 = var(38)>=5
trigger4 = var(59)||(stateno=[100,101])
trigger4 = helper(60000),Var(54) <= 4
trigger4 = helper(60000),Var(54) != 2
trigger4 = helper(60000),Var(55) = 0
trigger4 = helper(60000),Var(53) >= 40
trigger4 = enemynear(var(37)),stateno>=200
trigger4 = enemynear(var(37)),time<=2
trigger4 = (var(40)%50) <= (var(38)**2)
trigger4 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*7) = [160,210]
trigger4 = ((p2dist y = [ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger4 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -110 ,-70+((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger5 … コンボ連携1
trigger5 = helper(60000),Var(55) = 5000
trigger5 = var(0)&&(stateno=410)
Trigger5 = helper(60000),Var(54)=6
trigger5 = movehit=1
;trigger6 … コンボ連携2
trigger6 = helper(60000),Var(55) = 5000
trigger6 = var(0)
trigger6 = (stateno=[200,206])||(stateno=210&&AnimElemtime(10)>2&&(enemynear(var(37)),stateno=[104006,104008]))
trigger6 = enemynear(var(37)),statetype=A
trigger6 = p2dist y < -(enemynear(var(37)),vel y*9+0.48*41)||(enemynear(var(37)),stateno=[104006,104008])
trigger6 = var(7)=3||(var(5)<=floor(200*ifelse(var(46)=1,0.5,1)))
Trigger6 = helper(60000),Var(54)=6
trigger6 = movehit<=2
;trigger7 … ヘブンスラストループ〆
trigger7 = helper(60000),Var(55) = [5000,5150]
Trigger7 = helper(60000),Var(54)=6
trigger7 = var(59)
trigger7 = prevstateno=1001||prevstateno=2000
trigger7 = (enemynear(var(37)),statetype=A)
trigger7 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
;trigger7 = !((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger7 = p2bodydist x > 130

[State -1, クレストバッシュEX N]
type  = ChangeState
value = 2030
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])||(var(1)&&var(38)>=4)
triggerall=power>=1000
triggerall=enemynear(var(37)),statetype!=A
triggerall=enemynear(var(37)),statetype!=L
triggerall=!(enemynear(var(37)),hitdefattr=SCA,AT)
triggerall=!(enemynear(var(37)),hitdefattr=A,AA)
triggerall=!(enemynear(var(37)),movecontact)
;trigger1 … ぶっぱ
trigger1 = var(38)<3
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = var(40) = [ 6000 , 7000]
trigger1 = (var(40)%200) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2 … 擦り1
trigger2 = inguarddist
trigger2 = helper(60000),var(45)>=10
trigger2 = helper(60000),var(54)!=7
trigger2 = var(38)=3
trigger2 = (stateno=[120,149])||(helper(60000),var(52)>=1)
trigger2 = !var(0)
trigger2 = var(41) = [7000 , 10000]
trigger2 = (var(40)%50) <= var(38)**2
trigger2 = !(enemynear(var(37)),movecontact)
;trigger3 … 超反応1
trigger3 = inguarddist
trigger3 = (stateno = [120,159])||(stateno=[100,101])
trigger3 = var(59)||(stateno=[100,101])
trigger3 = var(38)=5
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = !(enemynear(var(37)),movecontact)
trigger3 = (enemynear(var(37)),hitdefattr=SC,AA)
trigger3 = helper(60000),Var(57)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) > 10
trigger3 = helper(60000),Var(53) > enemynear(var(37)),time
;trigger4 … 暴れ潰し1
trigger4 = inguarddist
trigger4 = helper(60000),var(54)!=7
trigger4 = var(0)||var(1)
trigger4 = (stateno=[200,630])||(stateno=900)||var(1)
trigger4 = Var(38) >= 4
trigger4 = (enemynear(var(37)),movetype=A)
trigger4 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger4 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger4 = helper(60000),Var(53) > 10
trigger4 = helper(60000),Var(53) > enemynear(var(37)),time
trigger4 = helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2

[State -1, クレストバッシュA&B N]
type  = ChangeState
value = 1030+((!(enemynear(var(37)),hitdefattr=S,AA)||(enemynear(var(37)),time<6))&&P2bodydist x>=85&&!((helper(60000),var(54)=[3,4])||(helper(60000),var(54)=7)))
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])||(var(1)=1&&var(38)>=4)
triggerall=enemynear(var(37)),statetype!=A
triggerall=!(enemynear(var(37)),hitdefattr=CA,AA,AT)
triggerall=!(enemynear(var(37)),hitdefattr=S,AT)
triggerall=!(enemynear(var(37)),movecontact)
;trigger1 … ブレーキ
trigger1 = var(38)=3
trigger1 = helper(60000),Var(55) = 0
trigger1 = (stateno=[100,101])
trigger1 = inguarddist
Trigger1 = helper(60000),Var(54)<=1
trigger1 = var(41)%3 != 1
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype=S
;trigger2 … 擦り1
trigger2 = helper(60000),var(45)>=10
trigger2 = helper(60000),var(54)!=7
trigger2 = var(38)=3
trigger2 = (stateno=[120,149])||(helper(60000),var(52)>=1)
trigger2 = !var(0)
trigger2 = var(41) = [7000 , 10000]
trigger2 = (var(40)%50) <= var(38)**2
trigger2 = enemynear(var(37)),statetype!=C
;trigger3 … 暴れ潰し1
trigger3 = inguarddist
trigger3 = helper(60000),var(54)!=7
trigger3 = var(0)||var(1)
trigger3 = (stateno=[200,630])||(stateno=900)
trigger3 = Var(38) >= 4
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = enemynear(var(37)),statetype!=C
trigger3 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger3 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time>=10)
trigger3 = helper(60000),Var(53) > 10
trigger3 = helper(60000),Var(53) > enemynear(var(37)),time
trigger3 = helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2
; trigger4 … 超反応返し空かしキャンセル
trigger4 = inguarddist
trigger4 = helper(60000),var(54)!=7
trigger4 = Var(38)>=5
trigger4 = (enemynear(var(37)),movetype=A)
trigger4 = (enemynear(var(37)),time)<=time+1||helper(60000),var(48)>=10
trigger4 = var(1)
trigger4 = enemynear(var(37)),statetype!=C
trigger4 = helper(60000),Var(53) > 10
trigger4 = helper(60000),Var(53) > enemynear(var(37)),time
trigger4 = stateno<2000
;trigge5 … リバーサル
trigger5 = inguarddist
trigger5=var(38)=[3,4]
trigger5=(helper(60000),var(54)=[3,4])
trigger5=var(59)
trigger5=(enemynear(var(37)),statetype=S)
trigger5=helper(60000),var(8)||helper(60000),var(9)||helper(60000),var(10)||helper(60000),var(11)||helper(60000),var(12)
;trigger6 … 牽制…のつもり
trigger6 = var(38)=3
trigger6 = helper(60000),Var(55) = 0
trigger6 = !var(0)
trigger6 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger6 = helper(60000),Var(54)<=1||helper(60000),Var(54)=[3,4]
Trigger6 = enemynear(var(37)),statetype!=A
trigger6 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*4) >= 100
trigger6 = var(40) = [ 6000 , 7000]
trigger6 = (var(40)%50) <= 10
trigger6 = enemynear(var(37)),statetype!=C
trigger6 = enemynear(var(37)),statetype!=L

[State -1, クレストバッシュA&B レベル2以下適当ぶっぱ用 N]
type  = ChangeState
value = 1030+(random%2)
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = var(38)<3
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=[3,4]
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*4) >= 60
trigger1 = var(40) = [ 6000 , 7000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype!=A
trigger1 = enemynear(var(37)),statetype!=L

[State -1, ブライドダッシュ 対飛び道具専門 N]
type=ChangeState
value=ifelse(statetype=A,1261,1260)
triggerall=stateno!=[1260,1261]
triggerall=var(38)>=2
triggerall=numhelper(3000)&&var(28)<=1&&var(7)!=3
triggerall=helper(3000),var(35)=0
triggerall=var(59)||var(0)||(stateno=[40,43])||(stateno=[47,49])
triggerall=!var(0)||(stateno<802||stateno=[1400,1410])
triggerall=enemynear(var(37)),hitdefattr!=SCA,AA
triggerall=enemynear(var(37)),hitdefattr!=A,AT
triggerall=helper(60000),Var(51)<=0
triggerall=(var(5)>floor(260*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 地対地ぶっぱ
trigger1 = var(38)<4
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) >= 120
trigger1 = var(40)%1000 = [400,410]
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))
trigger1 = enemynear(var(37)),statetype!=A&&statetype!=A
;trigger2～6…飛び道具感知時に使用1
trigger2 = helper(60000),var(3)
trigger2 = helper(60000),var(8)=2
trigger2 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(3)),time<=40
trigger2 = (PlayerID(helper(60000),var(3)),pos x - pos x)*PlayerID(helper(60000),var(3)),facing*facing>=-10
trigger3 = helper(60000),var(4)
trigger3 = helper(60000),var(9)=2
trigger3 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(4)),time<=40
trigger3 = (PlayerID(helper(60000),var(4)),pos x - pos x)*PlayerID(helper(60000),var(4)),facing*facing>=-10
trigger4 = helper(60000),var(5)
trigger4 = helper(60000),var(10)=2
trigger4 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(5)),time<=40
trigger4 = (PlayerID(helper(60000),var(5)),pos x - pos x)*PlayerID(helper(60000),var(5)),facing*facing>=-10
trigger5 = helper(60000),var(6)
trigger5 = helper(60000),var(11)=2
trigger5 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(6)),time<=40
trigger5 = (PlayerID(helper(60000),var(6)),pos x - pos x)*PlayerID(helper(60000),var(6)),facing*facing>=-10
trigger6 = helper(60000),var(7)
trigger6 = helper(60000),var(12)=2
trigger6 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(7)),time<=40
trigger6 = (PlayerID(helper(60000),var(7)),pos x - pos x)*PlayerID(helper(60000),var(7)),facing*facing>=-10
;trigger7～11…設置技を飛び越す
trigger7 = helper(60000),var(3)
trigger7 = helper(60000),var(8)=1
trigger7 = PlayerID(helper(60000),var(3)),time>=20
trigger7 = PlayerID(helper(60000),var(3)),hitdefattr!=SCA,AA,AT
trigger7 = (PlayerID(helper(60000),var(3)),pos x - pos x)*PlayerID(helper(60000),var(3)),facing*facing>=-10
trigger7 = helper(60000),var(57)
trigger7 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(3)),time<=60
trigger8 = helper(60000),var(4)
trigger8 = helper(60000),var(9)=1
trigger8 = PlayerID(helper(60000),var(4)),time>=20
trigger8 = PlayerID(helper(60000),var(4)),hitdefattr!=SCA,AA,AT
trigger8 = (PlayerID(helper(60000),var(4)),pos x - pos x)*PlayerID(helper(60000),var(4)),facing*facing>=-10
trigger8 = helper(60000),var(57)
trigger8 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(4)),time<=60
trigger9 = helper(60000),var(5)
trigger9 = helper(60000),var(10)=1
trigger9 = PlayerID(helper(60000),var(5)),time>=20
trigger9 = PlayerID(helper(60000),var(5)),hitdefattr!=SCA,AA,AT
trigger9 = (PlayerID(helper(60000),var(5)),pos x - pos x)*PlayerID(helper(60000),var(5)),facing*facing>=-10
trigger9 = helper(60000),var(57)
trigger9 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(5)),time<=60
trigger10 = helper(60000),var(6)
trigger10 = helper(60000),var(11)=1
trigger10 = PlayerID(helper(60000),var(6)),time>=20
trigger10 = PlayerID(helper(60000),var(6)),hitdefattr!=SCA,AA,AT
trigger10 = (PlayerID(helper(60000),var(6)),pos x - pos x)*PlayerID(helper(60000),var(6)),facing*facing>=10
trigger10 = helper(60000),var(57)
trigger10 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(6)),time<=60
trigger11 = helper(60000),var(7)
trigger11 = helper(60000),var(12)=1
trigger11 = PlayerID(helper(60000),var(7)),time>=20
trigger11 = PlayerID(helper(60000),var(7)),hitdefattr!=SCA,AA,AT
trigger11 = (PlayerID(helper(60000),var(7)),pos x - pos x)*PlayerID(helper(60000),var(7)),facing*facing>=10
trigger11 = helper(60000),var(57)
trigger11 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(7)),time<=60

[State -1, ブライドダッシュ 連携専門 N]
type=ChangeState
value=ifelse(statetype=A,1261,1260)
triggerall=stateno!=[1260,1261]
triggerall=var(38)>=3
triggerall=numhelper(3000)&&var(28)<=1&&var(7)!=3
triggerall=helper(3000),var(35)=0
triggerall=var(59)||var(0)||(stateno=[40,43])||(stateno=[47,49])
triggerall=!var(0)||(stateno<802||stateno=821||stateno=[1400,1410])
triggerall=(var(5)>floor(260*ifelse(var(46)=1,0.5,1)))
;trigger1 … 遠距離戦法連携
trigger1 = var(0)
trigger1 = stateno=1410
Trigger1 = helper(60000),Var(54)=1
Trigger1 = helper(60000),Var(55)=1000
;trigger2 … ガード択ゲー連携開始
trigger2 = var(38)>=4
trigger2 = var(0)
trigger2 = enemynear(var(37)),statetype!=A
trigger2 = (stateno=206&&p2bodydist x>=95)||(stateno=210&&AnimElemtime(10)>2)||(stateno=[410,420])||(stateno=221)
Trigger2 = helper(60000),Var(54)=5
trigger2 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))
trigger2 = var(41)=[0,4000]
Trigger2 = stateno!=410||var(38)<5
;trigger3 … ガード連携
trigger3 = var(38)>=4
trigger3 = var(0)
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (stateno=622)
Trigger3 = helper(60000),Var(57)=0||var(39)<3
trigger3 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))
trigger3 = var(41)=[0,4000]
;trigger4 … コンボ連携1 真横
trigger4 = var(38)>=3
trigger4 = var(0)
trigger4 = movehit=1
trigger4 = (stateno=200&&(enemynear(var(37)),statetype=A))||(stateno=206&&(p2bodydist x>=95||(enemynear(var(37)),statetype=A)))
Trigger4 = helper(60000),Var(54)=6
Trigger4 = helper(60000),Var(55)=5000
trigger4 = (enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>71))||(enemynear(var(37)),statetype=A)
;trigger5 … コンボ連携2 エリアルコンボ補助
trigger5 = var(38)>=3
trigger5 = var(0)
trigger5 = (stateno=621&&var(4))||(stateno=625)
Trigger5 = helper(60000),Var(54)=6
Trigger5 = helper(60000),Var(55)>=5000
;trigger6 … コンボ連携3 空中投げから
trigger6 = var(38)>=3
trigger6 = var(0)
trigger6 = (stateno=821)
Trigger6 = helper(60000),Var(54)=6
Trigger6 = (helper(60000),Var(55)=5820)||animelemtime(10)>=2
;trigger7 … コンボ連携4 J6Bから
trigger7 = var(38)>=3
trigger7 = movehit=1
trigger7 = (stateno=616)
trigger7 = pos y < -110
Trigger7 = helper(60000),Var(54)=6
Trigger7 = helper(60000),Var(55)=5200
Trigger7 = p2dist y < -45+(enemynear(var(37)),const(size.height))/2
Trigger7 = p2bodydist x = [-40,40]
;trigger8 … コンボ連携5 N投げから
trigger8 = var(38)>=3
trigger8 = var(0)
trigger8 = (stateno=801)
Trigger8 = helper(60000),Var(54)=6
Trigger8 = helper(60000),Var(55)>=5000
;trigger9 … ヘルパー引っ掛けから拾いに行く
trigger9 = var(38)>=3
trigger9 = var(59)
Trigger9 = helper(60000),Var(54)=6
Trigger9 = helper(60000),Var(55)=10000
;trigger10 … コンボ連携6 2Cから
Trigger10 =var(38) >= 3
trigger10 =helper(60000),var(54) = 6
trigger10 =stateno=420
trigger10 =var(0)
trigger10 =(p2dist y*1.0/abs(p2bodydist x)>=-0.8)
trigger10 =(var(5)>floor(460*ifelse(var(46)=1,0.5,1)))
trigger10 =p2dist y*1.0/abs(p2dist x)<-0.5
;trigger11 … コンボ連携7 更に上へ
Trigger11 =var(38) >= 3
trigger11 =helper(60000),var(54) = 6
trigger11 =stateno=616
trigger11 =movehit=1
trigger11 =animelemtime(6)<0
trigger11 =p2dist y < -40-(!var(4))*40

[State -1, 投げ N]
type  = ChangeState
value = ifelse(var(7)=3||var(38)=2,810,800)
triggerall=var(38)>=2
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=(p2bodydist x) = [ -10 ,(30+(helper(60000),fvar(10))*3)]
triggerall=enemynear(var(37)),statetype=S||enemynear(var(37)),statetype=C
triggerall=(enemynear(var(37)),prevstateno!=[5100,5220])
triggerall=(helper(60000),Var(55) = 2000)||enemynear(var(37)),movetype!=H
;trigger1 … ぶっぱ
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))
;trigger2 … リバーサル投げ
trigger2=var(38)=[3,4]
trigger2=(helper(60000),var(54)=[3,4])
trigger2=var(59)
trigger2=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger3 … 反撃確定狙い
trigger3 = var(38)>=3
trigger3 = var(59)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) = [5,7]
trigger3 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(40)%50) <= (var(38)**2)
;trigger4 … ガード時択ゲーセットプレイ
trigger4 = enemynear(var(37)),statetype!=A
trigger4 = (helper(60000),Var(55) = 2000)&&(helper(60000),Var(54)=5)
trigger4 = var(59)
trigger4 = (var(40)=[0,3000])

[State -1, 5B N]
type  = ChangeState
value = 210
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = enemynear(var(37)),statetype!=A||(helper(60000),Var(54)!=[5,6])
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger1 = ((p2bodydist x) = [ -10 ,(50+(helper(60000),fvar(10))*4)])||(var(41)%4=1&&(enemynear(var(37)),statetype!=A))
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))||(helper(60000),Var(54)=[5,6])
trigger1 = ((p2dist y = [ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (enemynear(var(37)),statetype!=A)
trigger2 = ((p2bodydist x) = [ -10 ,40])
trigger2 = var(40) = [ 5000 , 10000]
trigger2 = ((p2dist y = [ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(enemynear(var(37)),vel y*7+0.48*25)=[ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
trigger2 = (stateno=400)||(stateno=206&&enemynear(var(37)),statetype!=A)
;trigger3 … 空中の相手をひろう
trigger3 = var(38)=2
trigger3 = helper(60000),Var(54) = 6
trigger3 = !var(0)
trigger3 = (enemynear(var(37)),statetype=A)
trigger3 = ((p2bodydist x) = [ -10 ,40])
trigger3 = var(40) = [ 5000 , 10000]
trigger3 = (p2dist y+(enemynear(var(37)),vel y*7+0.48*25)=[ -170 ,((enemynear(var(37)),const(size.height)))])
;trigger4 … 反撃確定狙い
trigger4 = var(38)>=3
trigger4 = var(59)||(stateno=[100,101])
trigger4 = helper(60000),Var(54) <= 4
trigger4 = helper(60000),Var(55) = 0
trigger4 = helper(60000),Var(53) = [11,13]
trigger4 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger4 = enemynear(var(37)),movetype=A
trigger4 = (var(40)%50) <= (var(38)**2)
trigger4 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
trigger4 = ((p2bodydist x) = [ -10 ,(50+(helper(60000),fvar(10))*4)])
trigger4 = ((p2dist y = [ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger4 = ((p2dist y+(enemynear(var(37)),vel y*7+enemynear(var(37)),const(movement.yaccel)*25)=[ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger5 … ガード連携
trigger5 = enemynear(var(37)),statetype!=A
trigger5 = helper(60000),Var(54) = 5
trigger5 = p2dist y = [-10,20]
trigger5 = var(0)
trigger5 = (stateno=[200,206])||(stateno=400)
trigger5 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger5 = var(41)%5=1
;trigger6 … コンボ中拾い 地上
trigger6 = helper(60000),Var(55) = [5000,5150]
trigger6 = !var(0)
trigger6 = (enemynear(var(37)),statetype!=A)
Trigger6 = helper(60000),Var(54)=6
trigger6 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger6 = p2bodydist x = [ -10 ,(50+(helper(60000),fvar(10))*4)]
trigger6 = p2dist y = [ -170 ,((enemynear(var(37)),const(size.height)))]
;trigger7 … コンボ中拾い 空中
trigger7 = helper(60000),Var(55) = 5000
Trigger7 = !numhelper(1412)
Trigger7 = helper(60000),Var(54)=6
trigger7 = !var(0)
trigger7 = (enemynear(var(37)),statetype=A)
trigger7 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger7 = p2bodydist x = [ -30 ,(50+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*7))]
trigger7 = p2dist y+(enemynear(var(37)),vel y*10+0.48*50)=[-120,(enemynear(var(37)),const(size.height))]
;trigger8 … コンボ連携 
trigger8 = helper(60000),Var(55) = 5000
trigger8 = var(0)&&((stateno=[200,206])||stateno=400)
Trigger8 = helper(60000),Var(54)=6
trigger8 = (p2bodydist x) = [ -10 ,(35+(helper(60000),fvar(10))*3)]
trigger8 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger8 = ((p2dist y = [ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger8 = ((p2dist y+(enemynear(var(37)),vel y*10+0.48*50)=[ -170 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger9 … コンボ中拾い 空中特殊
trigger9 = helper(60000),Var(55) = [5050,5150]
Trigger9 = helper(60000),Var(54)=6
trigger9 = var(59)||(stateno=[100,101])
trigger9 = !(fvar(7)<0.2||var(7)=3)||prevstateno=1013
trigger9 = (enemynear(var(37)),statetype=A)
trigger9 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger9 = p2bodydist x = [ -30 ,(50-(helper(60000),var(55)=5150)*10*(2-var(46))+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*7))]
trigger9 = p2dist y+(enemynear(var(37)),vel y*10+0.48*50)=[-80,(enemynear(var(37)),const(size.height))]
;trigger10 … コンボ中拾い 空中特殊2
trigger10 = helper(60000),Var(55) >= 5000
Trigger10 = helper(60000),Var(54)=6
trigger10 = var(59)||(stateno=[100,101])
trigger10 = !(fvar(7)<0.2||var(7)=3)
trigger10 = (enemynear(var(37)),stateno=104003)
trigger10 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger10 = p2bodydist x = [ -30 ,(50-(helper(60000),var(55)=5150)*20+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*7))]
trigger10 = p2dist y=[-160,(enemynear(var(37)),const(size.height))]

[State -1, 2A N]
type  = ChangeState
value = 400
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = enemynear(var(37)),statetype!=A
trigger1 = p2dist y = [-10,10]
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(55) = 0||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(45+(helper(60000),fvar(10))*3)]
trigger1 = (var(40) = [ 0 , 5000])||(helper(60000),Var(54)=[5,6])
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))||(helper(60000),Var(54)=[5,6])
;trigger2 … 反撃確定狙い
trigger2 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
trigger2 = var(38)>=3
trigger2 = var(59)||(stateno=[100,101])
trigger2 = helper(60000),Var(54) <= 4
trigger2 = helper(60000),Var(55) = 0
trigger2 = helper(60000),Var(53) = [8,10]
trigger2 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger2 = enemynear(var(37)),movetype=A
trigger2 = (var(40)%50) <= (var(38)**2)
trigger2 = (p2bodydist x) = [ -10 ,(45+(helper(60000),fvar(10))*3)]
trigger2 = enemynear(var(37)),statetype!=A
;trigger3 … ガード時択ゲーセットプレイ
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = p2dist y = [-10,10]
trigger3 = (helper(60000),Var(55) = 2000)&&(helper(60000),Var(54)=5)
trigger3 = var(59)
trigger3 = (var(40)=[3000,5000])
;trigger4 … ガード連携
trigger4 = enemynear(var(37)),statetype!=A
trigger4 = helper(60000),Var(54) = 5
trigger4 = p2dist y = [-10,20]
trigger4 = var(0)
trigger4 = (stateno=400)
trigger4 = (p2bodydist x) = [ -10 ,(30+(helper(60000),fvar(10))*5)]
;trigger5 … ダウン追い討ち
trigger5 = helper(60000),Var(54) = 2
trigger5 = enemynear(var(37)),stateno=[5100,5101]
trigger5 = p2dist y = [-20,20]
trigger5 = (p2bodydist x) = [ -10 ,(45+(helper(60000),fvar(10))*3)]
trigger5 = var(59)||(stateno=[100,101])

[State -1, 5A N]
type  = ChangeState
value = 200
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = enemynear(var(37)),statetype=A
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(55) = 0||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(85+(helper(60000),fvar(10))*5)]
trigger1 = (var(40) = [ 5000 , 10000])||(helper(60000),Var(54)=[5,6])
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))||(helper(60000),Var(54)=[5,6])
trigger1 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger1 = ((p2dist y = [ -110 ,(-70+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -110 ,(-70+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (enemynear(var(37)),statetype!=A)
trigger2 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger2 = (stateno=400)
;trigger3 … 反撃確定狙い
trigger3 = var(38)>=3
trigger3 = var(59)||(stateno=[100,101])
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) = [10,11]
trigger3 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(40)%50) <= (var(38)**2)
trigger3 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger3 = ((p2dist y = [ -110 ,(-70+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -110 ,(-70+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
trigger3 = (p2bodydist x) = [ -10 ,(85+(helper(60000),fvar(10))*5)]
trigger3 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger4 … コンボ中拾い 地上
trigger4 = helper(60000),Var(55) = 5000
trigger4 = !var(0)
trigger4 = (enemynear(var(37)),statetype!=A)
Trigger4 = helper(60000),Var(54)=6
trigger4 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger4 = (p2bodydist x) = [ -10 ,(85+(helper(60000),fvar(10))*5)]
trigger4 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger4 = p2dist y = [ -110 ,(-70+(enemynear(var(37)),const(size.height)))]
;trigger5 … コンボ中拾い 空中
trigger5 = helper(60000),Var(55) = 5000
Trigger5 = helper(60000),Var(54)=6
Trigger5 = !numhelper(1412)
trigger5 = !var(0)
trigger5 = (enemynear(var(37)),statetype=A)
trigger5 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger5 = p2bodydist x = [ -30 ,(85+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*6))]
trigger5 = p2dist y+(enemynear(var(37)),vel y*9+0.48*41)=[-110,-70+(enemynear(var(37)),const(size.height))]

[State -1, 6A N]
type  = ChangeState
value = 206
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(55) = 0||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))||(helper(60000),Var(54)=[5,6])
trigger1 = ((p2dist y = [ -95 ,(-55+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -100 ,(-70+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (enemynear(var(37)),statetype!=A)
trigger2 = (stateno=200)
;trigger3 … 空中の相手をひろう
trigger3 = var(38)=2
trigger3 = helper(60000),Var(54) = 6
trigger3 = !var(0)
trigger3 = (enemynear(var(37)),statetype=A)
trigger3 = ((p2bodydist x) = [ -10 ,120])
trigger3 = var(40) = [ 5000 , 10000]
trigger3 = (p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -100 ,(-65+(enemynear(var(37)),const(size.height)))])
;trigger4 … 反撃確定狙い
trigger4 = var(38)>=3
trigger4 = var(59)||(stateno=[100,101])
trigger4 = helper(60000),Var(54) <= 4
trigger4 = helper(60000),Var(55) = 0
trigger4 = helper(60000),Var(53) = [12,13]
trigger4 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger4 = enemynear(var(37)),movetype=A
trigger4 = (var(40)%50) <= (var(38)**2)
trigger4 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger4 = ((p2dist y = [ -95 ,(-55+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger4 = ((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -110 ,(-65+(enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
trigger4 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger4 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger5 … コンボ中拾い 地上
trigger5 = helper(60000),Var(55) = 5000
trigger5 = !var(0)
trigger5 = (enemynear(var(37)),statetype!=A)
Trigger5 = helper(60000),Var(54)=6
trigger5 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger5 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger5 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger5 = p2dist y = [ -100 ,(-65+(enemynear(var(37)),const(size.height)))]
;trigger6 … コンボ中拾い 空中
Trigger6 = !numhelper(1412)
trigger6 = helper(60000),Var(55) = 5000
Trigger6 = helper(60000),Var(54)=6
trigger6 = !var(0)
trigger6 = (enemynear(var(37)),statetype=A)
trigger6 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger6 = p2bodydist x = [ -30 ,(120+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*8))]
trigger6 = p2dist y+(enemynear(var(37)),vel y*9+0.48*41)=[-100,-65+(enemynear(var(37)),const(size.height))]
;trigger7 … コンボ連携 
trigger7 = helper(60000),Var(55) = 5000
trigger7 = var(0)&&stateno=400
trigger7 = (enemynear(var(37)),statetype!=A)
Trigger7 = helper(60000),Var(54)=6
trigger7 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*5)]
trigger7 = enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>61)
trigger7 = p2dist y = [ -100 ,(-65+(enemynear(var(37)),const(size.height)))]
;trigger8 … コンボ中拾い 空中特殊1
trigger8 = helper(60000),Var(55) = [5050,5150]
Trigger8 = helper(60000),Var(54)=6
trigger8 = var(59)||(stateno=[100,101])
trigger8 = (fvar(7)<0.2||var(7)=3)
trigger8 = (enemynear(var(37)),statetype=A)
trigger8 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger8 = p2bodydist x = [ -30 ,(120+(helper(60000),fvar(10))*3-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*7))]
trigger8 = p2dist y+(enemynear(var(37)),vel y*9+0.48*41)=[-100,-65+(enemynear(var(37)),const(size.height))]
;trigger9 … コンボ中拾い 空中特殊
trigger9 = helper(60000),Var(55) >= 5000
Trigger9 = helper(60000),Var(54)=6
trigger9 = var(59)||(stateno=[100,101])
trigger9 = (fvar(7)<0.2||var(7)=3)||(enemynear(var(37)),time=14)
trigger9 = (enemynear(var(37)),stateno=104003)
trigger9 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger9 = p2bodydist x = [ -30 ,(120+(helper(60000),fvar(10))*3)]
trigger9 = p2dist y=[-100,-65+(enemynear(var(37)),const(size.height))]
;trigger9 … コンボ中拾い 空中特殊3
trigger10 = helper(60000),Var(55) = [5000,5150]
Trigger10 = helper(60000),Var(54)=6
trigger10 = var(59)||(stateno=[100,101])
trigger10 = (fvar(7)<0.2||var(7)=3||prevstateno=1001||prevstateno=2000)
trigger10 = (enemynear(var(37)),statetype=A)
trigger10 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger10 = !((enemynear(var(37)),backedgebodydist>=2)&&(enemynear(var(37)),frontedgebodydist>=2))
trigger10 = p2bodydist x = [ -30 ,130]
trigger10 = (p2dist y+(enemynear(var(37)),vel y*9+0.48*41)=[-100,-65+(enemynear(var(37)),const(size.height))])||prevstateno=1001

[State -1, 2B N]
type  = ChangeState
value = 410
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
;trigger1 … ぶっぱ
trigger1 = enemynear(var(37)),statetype!=A
trigger1 = helper(60000),Var(55) = 0
trigger1 = p2dist y = [-10,20]
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(55) = 0||(helper(60000),Var(54)=[5,6])
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*4)]
trigger1 = (var(40) = [ 0 , 5000])||(helper(60000),Var(54)=[5,6])
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))||(helper(60000),Var(54)=[5,6])
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (enemynear(var(37)),statetype!=A)
trigger2 = (stateno=206&&p2bodydist x>=40)||(stateno=400&&p2bodydist x>=35)
;trigger3 … 反撃確定狙い
trigger3 = var(38)>=3
trigger3 = var(59)||(stateno=[100,101])
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) = [10,13]
trigger3 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(40)%50) <= (var(38)**2)
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*4)]
trigger3 = !(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger4 … ガード連携
trigger4 = enemynear(var(37)),statetype!=A
trigger4 = helper(60000),Var(54) = 5
trigger4 = p2dist y = [-10,20]
trigger4 = var(0)
trigger4 = (stateno=[200,206])||(stateno=400)
trigger4 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*4)]
;trigger5 … コンボ中拾い 地上
trigger5 = helper(60000),Var(55) = 5000
trigger5 = !var(0)
trigger5 = (enemynear(var(37)),statetype!=A)
Trigger5 = helper(60000),Var(54)=6
trigger5 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger5 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*4)]
;trigger6 … コンボ連携 
trigger6 = helper(60000),Var(55) = 5000
trigger6 = var(0)&&(stateno=400||(stateno=[200,206]))
trigger6 = (enemynear(var(37)),statetype!=A)
Trigger6 = helper(60000),Var(54)=6
trigger6 = (p2bodydist x) = [ -10 ,(120+(helper(60000),fvar(10))*4)]
trigger6 = p2dist y = [ -10 ,((enemynear(var(37)),const(size.height)))]
;trigger7 … ダウン追い討ち
trigger7 = helper(60000),Var(54) = 2
trigger7 = (enemynear(var(37)),stateno=[5100,5101])||(prevstateno=1040)||(prevstateno=811)
trigger7 = p2dist y = [-20,20]
trigger7 = (p2bodydist x) = [ -10 ,(95+(helper(60000),fvar(10))*3)]
trigger7 = var(59)||(stateno=[100,101])

[State -1, 2C N]
type  = ChangeState
value = 420
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(200*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(115+(helper(60000),fvar(10))*7)]
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = ((p2dist y = [ -220 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*14+enemynear(var(37)),const(movement.yaccel)*85)=[ -220 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)
trigger2 = (stateno=[200,210])&&(enemynear(var(37)),statetype=A)
;trigger3 … 対空超反応
trigger3 = helper(60000),var(54)!=7
trigger3 = helper(60000),var(54)!=2
trigger3 = !var(0)
trigger3 = Var(38) >= 4
trigger3 = (enemynear(var(37)),movetype!=H)
trigger3 = (enemynear(var(37)),statetype=A)
trigger3 = (enemynear(var(37)),time<=5) || (enemynear(var(37)),movetype=I)
trigger3 = (var(40) = [0,3000]) || (Var(38) >= 5)
trigger3 = (p2dist y+(enemynear(var(37)),vel y*14+enemynear(var(37)),const(movement.yaccel)*72)=[-240,-80])
trigger3 = (p2bodydist x)-(helper(60000),fvar(10))*14 = [50,115]
;trigger4 … ガード連携
trigger4 = var(38)>=3
trigger4 = var(0)
trigger4 = enemynear(var(37)),statetype!=A
trigger4 = (stateno=206)||(stateno=210&&AnimElemtime(10)>2)||(stateno=410)
trigger4 = p2bodydist x<95
Trigger4 = helper(60000),Var(54)=5&&moveguarded=1
Trigger4 = (var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(46)||var(38)<4
Trigger4 = stateno!=410||var(38)<5
;trigger5 … コンボ連携 
trigger5 = helper(60000),Var(55) = [5000,5150]
trigger5 = var(0)
trigger5 = (stateno=[200,206])||(stateno=210&&(animelemtime(6)<=0||(enemynear(var(37)),stateno=[104006,104008])))
Trigger5 = helper(60000),Var(54)=6
;trigger6 … コンボ中拾い 空中特殊
trigger6 = helper(60000),Var(55) = 5050
Trigger6 = helper(60000),Var(54)=6
trigger6 = var(59)||(stateno=[100,101])
trigger6 = (enemynear(var(37)),statetype=A)
trigger6 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger6 = p2bodydist x = [ 0 ,(90+(helper(60000),fvar(10))*7-(enemynear(var(37)),vel x*ifelse(enemynear(var(37)),facing=facing,-1,1)*7))]
trigger6 = (p2dist y+(enemynear(var(37)),vel y*14+0.48*72)=[-240,0])
trigger6 = !(p2dist y+(enemynear(var(37)),vel y*10+0.48*50)=[-80,(enemynear(var(37)),const(size.height))])
;trigger7 … 起き攻め連携2
Trigger7 = helper(60000),Var(54)=2
trigger7 = var(0)
trigger7 = (stateno=[200,210])||(stateno=[400,410])
trigger7 = helper(60000),Var(57) = 0||var(39)<3
trigger7 = movehit=1
trigger7 = frontedgebodydist<50

[State -1, ラヴ・セイバー N]
type  = ChangeState
value = 1400
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=!numhelper(1400)
triggerall=(var(5)>floor(300*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 危険なぶっぱ
trigger1 = Var(38)<4
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) >= 160
trigger1 = var(40) = [ 9000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = p2dist y = [-150,((enemynear(var(37)),const(size.height)))]
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)&&moveguarded
trigger2 = (stateno=210&&animelemtime(10)>=1)||(stateno=410)
trigger2 = (var(41)%3) = 1
;trigger3 … ガード連携
trigger3 = var(38)>=3
trigger3 = var(0)
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (stateno=206)||(stateno=210&&AnimElemtime(10)>2)||(stateno=410)
trigger3 = p2bodydist x>=95
trigger3= (var(5)>floor(500*ifelse(var(46)=1,0.5,1)))
Trigger3 = helper(60000),Var(54)=5&&moveguarded=1
trigger3 = (var(41)=[5000,7500])

[State -1, ラヴ・ライトニング N]
type  = ChangeState
value = 1410
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=stateno!=[820,821]
triggerall=var(7)!=3
triggerall=!numhelper(1400)
triggerall=(var(5)>floor(250*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … ぶっぱ
trigger1 = Var(38)<4
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = helper(60000),fvar(15)>=200
trigger1 = var(40) = [ 9000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
;trigger2 … 遠距離戦法連携1
trigger2 = helper(60000),Var(54) = 1
trigger2 = helper(60000),Var(55) = 1000
trigger2 = !var(0)
trigger2 = pos y< -180
trigger2 = helper(60000),Var(57) = 0 || (enemynear(var(37)),pos y-pos y > 120)
trigger2 = ((enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)!=[-0.5,2])||p2bodydist x < 50
;trigger3 … 遠距離戦法連携2
trigger3 = helper(60000),Var(54) = 1
trigger3 = helper(60000),Var(55) = 1000
trigger3 = var(0)
trigger3 = pos y< -160
trigger3 = helper(60000),Var(57) = 0 || (enemynear(var(37)),pos y-pos y > 120)
trigger3 = (stateno=[625,626])||(stateno=[621,622])
;trigger4 … コンボ連携1
trigger4 = movehit=1
trigger4 = (stateno=210&&AnimElemtime(10)>2&&!(enemynear(var(37)),stateno=[104006,104008]))
trigger4 = var(41)%3=1
trigger4 = enemynear(var(37)),statetype=A
Trigger4 = helper(60000),Var(54)=6
;trigger5 … 起き攻め連携1
Trigger5 = helper(60000),Var(54)=2
trigger5 = var(59)||(stateno=[100,101])
trigger5 = helper(60000),Var(57) = 0||var(39)<3
trigger5 = enemynear(var(37)),stateno=[5100,5119]
trigger5 = helper(60000),fvar(15)>=150
trigger5 = var(38)>3
trigger5 = statetype=A
;trigger6 … 起き攻め連携2
Trigger6 = helper(60000),Var(54)=2
trigger6 = var(0)
trigger6 = (stateno=[200,210])||(stateno=[400,420])
trigger6 = helper(60000),Var(57) = 0||var(39)<3
trigger6 = movehit=1
trigger6 = var(41)%3=1
trigger6 = frontedgebodydist>=50

[State -1, 5C(溜め) N]
type  = ChangeState
value = 219
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 危険なぶっぱ
trigger1 = Var(38)<4
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) >= 210
trigger1 = var(40) = [ 7500 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = p2dist y = [-150,((enemynear(var(37)),const(size.height)))]

[State -1, 5C N]
type  = ChangeState
value = 220
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 危険なぶっぱ
trigger1 = Var(38)<4
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) >= 210
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = p2dist y = [-100,(-75+(enemynear(var(37)),const(size.height)))]
;trigger2 … 遠距離戦法ぶっぱ
trigger2 = Var(38)>=3
trigger2 = helper(60000),Var(54)=1
trigger2 = !var(0)
trigger2 = (var(5)>floor(500*ifelse(var(46)=1,0.5,1)))
trigger2 = helper(60000),Var(57) = 0 || Var(39) < 3
trigger2 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) >= 160
trigger2 = var(40) = [ 5000 , 10000]
trigger2 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger2 = p2dist y > -100
;trigger3 … ガード連携
trigger3 = var(38)>=3
trigger3 = var(0)
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (stateno=206)||(stateno=210&&AnimElemtime(10)>2)||(stateno=410)
trigger3 = p2bodydist x>=95
Trigger3 = helper(60000),Var(54)=5&&moveguarded=1
trigger3 = (var(41)=[0,5000])

[State -1, 6C N]
type  = ChangeState
value = 230
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype!=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(160*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 危険なぶっぱ
trigger1 = Var(38)<4
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) = [130 ,215]
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = enemynear(var(37)),statetype!=A
trigger1 = enemynear(var(37)),statetype!=L
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = var(0)&&moveguarded
trigger2 = (stateno=210&&animelemtime(10)>=1)||(stateno=410)
;trigger3 … ガード連携
trigger3 = var(38)>=3
trigger3 = var(0)
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (stateno=206)||(stateno=210&&AnimElemtime(10)>2)||(stateno=410)
trigger3 = p2bodydist x>=95
Trigger3 = helper(60000),Var(54)=5&&moveguarded=1
trigger3 = (var(41)=[5000,10000])
Trigger3 = (var(5)>floor(300*ifelse(var(46)=1,0.5,1)))||var(46)||var(38)<4
;trigger4 … コンボ連携1
trigger4 = helper(60000),Var(55) = 5000
trigger4 = movehit=1
trigger4 = (stateno=210&&AnimElemtime(10)>2&&!(enemynear(var(37)),stateno=[104006,104008]))
trigger4 = enemynear(var(37)),statetype=A
Trigger4 = helper(60000),Var(54)=6
;trigger5 … 起き攻め連携2
Trigger5 = helper(60000),Var(54)=2
trigger5 = var(0)
trigger5 = (stateno=[200,210])||(stateno=[400,410])
trigger5 = helper(60000),Var(57) = 0||var(39)<3
trigger5 = movehit=1
trigger5 = frontedgebodydist>=50


;-----------------------------------------------------------
;攻撃技(空中)
;-----------------------------------------------------------

[State -1, 空中投げ N]
type  = ChangeState
value = 820
triggerall=var(38)>=3
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
triggerall=(p2bodydist x) = [ -10 ,(32+(helper(60000),fvar(10))*3)]
triggerall=(p2dist y+(-vel y*3-0.53*4.5+enemynear(var(37)),vel y*3+enemynear(var(37)),const(movement.yaccel)*4.5)=[-105,-20+(enemynear(var(37)),const(size.height))])
triggerall=(enemynear(var(37)),pos y+(enemynear(var(37)),vel y*3+enemynear(var(37)),const(movement.yaccel)*4.5)<0)
triggerall=enemynear(var(37)),statetype=A&&enemynear(var(37)),movetype!=H
;trigger1 … ぶっぱ
trigger1 = !var(0)
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=1
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))||(enemynear(var(37)),time<2)
trigger1 = ((var(40)%50) <= (var(38)**2)*(1+(var(38)>=3)))
;trigger2 … リバーサル投げ
trigger2=var(59)
trigger2=prevstateno=1500
trigger2=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
;trigger3 … 反撃確定狙い
trigger3 = var(38)>=3
trigger3 = var(59)
trigger3 = helper(60000),Var(54) <= 4
trigger3 = helper(60000),Var(55) = 0
trigger3 = helper(60000),Var(53) = [5,7]
trigger3 = (enemynear(var(37)),time>=20)||!(enemynear(var(37)),hitdefattr=SCA,AA,AP)
trigger3 = enemynear(var(37)),movetype=A
trigger3 = (var(40)%50) <= (var(38)**2)

[State -1, JA N]
type  = ChangeState
value = 600
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])||(enemynear(var(37)),time>=20)
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5||helper(60000),Var(54)=1
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (enemynear(var(37)),statetype=A)
trigger1 = (p2bodydist x) = [ -10 ,(65+(helper(60000),fvar(10))*8)]
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%40) <= (var(38)**2)*(1+(var(38)>=3))||(helper(60000),Var(54)=5)
trigger1 = ((p2dist y+(-vel y*8-0.53*32)=[-75,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(-vel y*8-0.53*32)+(enemynear(var(37)),vel y*8+enemynear(var(37)),const(movement.yaccel)*32)=[-75,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ用
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = !var(0)
trigger2 = !var(4)
trigger2 = (p2bodydist x) = [ -10 ,(65+(helper(60000),fvar(10))*8)]
trigger2 = ((p2dist y+(-vel y*8-0.53*32)=[-85,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(-vel y*8-0.53*32)+(enemynear(var(37)),vel y*8+0.48*32)=[-95,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger3 … エリアルコンボ連携
trigger3 = var(38)>=3
trigger3 = time>=2||!var(4)
trigger3 = helper(60000),Var(54) = 6
trigger3 = helper(60000),Var(55) = 5000
trigger3 = var(59)
trigger3 = (p2bodydist x) = [ -10 ,(70+(helper(60000),fvar(10))*8+30*(enemynear(var(37)),facing=facing))]
trigger3 = ((p2dist y+(-vel y*8-0.53*32)=[-85,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(-vel y*8-0.53*32)+(enemynear(var(37)),vel y*8+0.48*32)=[-75,-45+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)

[State -1, JB N]
type  = ChangeState
value = 610
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
;trigger1 … ぶっぱ
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])||(enemynear(var(37)),time>=20)
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5||helper(60000),Var(54)=1
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = vel y > -1||(enemynear(var(37)),statetype=A)
trigger1 = (p2bodydist x) = [ (-100+(helper(60000),fvar(10))*10) ,(50+(helper(60000),fvar(10))*10)]
trigger1 = (var(40) = [ 0 , 5000])||(helper(60000),Var(54)!=0)
trigger1 = (var(40)%40) <= (var(38)**2)*(1+(var(38)>=3))||(helper(60000),Var(54)!=0)
trigger1 = ((p2dist y+(-vel y*10-0.53*50)=[-140,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(-vel y*10-0.53*50+enemynear(var(37)),vel y*10+enemynear(var(37)),const(movement.yaccel)*0.48)=[-140,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ用1
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6||(helper(60000),Var(54) = 5&&(enemynear(var(37)),statetype!=A))
trigger2 = !var(0)||stateno=600&&var(0)
trigger2 = (p2bodydist x) = [ (-100+(helper(60000),fvar(10))*10) ,(50+(helper(60000),fvar(10))*10)]
trigger2 = ((p2dist y+(-vel y*10-0.53*50)=[-140,20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(-vel y*10-0.53*50+enemynear(var(37)),vel y*10+0.48*50)=[-160,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger3 … エリアルコンボ連携1
trigger3 = var(38)>=3
trigger3 = helper(60000),Var(54) = 6
trigger3 = helper(60000),Var(55) = 5000
trigger3 = !var(0)||(stateno=600&&var(0)&&(vel y<3||(vel y>=3&enemynear(var(37)),statetype!=A)))
trigger3 = (p2bodydist x) = [ (-100+(helper(60000),fvar(10))*10) ,(50+(helper(60000),fvar(10))*10+30*(enemynear(var(37)),facing=facing))]
trigger3 = ((p2dist y+(-vel y*10-0.53*50)=[-140,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(-vel y*10-0.53*50+enemynear(var(37)),vel y*10+0.48*50*(movecontact!=1))=[-160,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger4 … 当たればラッキー
trigger4 = var(38)>=3
trigger4 = helper(60000),Var(54) = 6
trigger4 = (helper(60000),Var(55) = [5820,5821])
trigger4 = var(59)
trigger4 = helper(60000),Var(57) = 0 || Var(39) < 3
;trigger5 … 反撃確定狙い?
trigger5 = var(38)>=4
trigger5 = var(59)
trigger5 = helper(60000),Var(54) <= 4
trigger5 = helper(60000),Var(55) = 0
trigger5 = helper(60000),Var(53) >= 13
trigger5 = helper(60000),Var(53) >= enemynear(var(37)),time
trigger5 = facing != enemynear(var(37)),facing
trigger5 = vel x > 0
trigger5 = (p2bodydist x) = [ (-100+(helper(60000),fvar(10))*10) ,(-30+(helper(60000),fvar(10))*10)]
trigger5 = ((p2dist y+(-vel y*10-0.53*50)=[-140,20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger5 = enemynear(var(37)),movetype=A

[State -1, J6C(コンボ専門) N]
type  = ChangeState
value = 630
triggerall=var(38)>=3
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(0)
triggerall=var(7)!=3
triggerall=(var(5)>floor(160*ifelse(var(46)=1,0.5,1)))
;trigger1 … エリアルコンボ連携1
trigger1 = var(38)>=3
trigger1 = !var(4)
trigger1 = helper(60000),Var(54) = 6
trigger1 = helper(60000),Var(55) = 5000
trigger1 = (enemynear(var(37)),statetype=A)
trigger1 = (stateno=[610,616])&&var(0)
trigger1 = movehit=1
trigger1 = stateno!=616||animelemtime(6)<0
trigger1 = (p2bodydist x) = [-12 ,(40+(stateno=616)*20+20*(enemynear(var(37)),facing=facing))]
trigger1 = p2dist y-(p2bodydist x/10)+(stateno=616)*20 = [-90,(-60+(enemynear(var(37)),const(size.height)))]

[State -1, J6B N]
type  = ChangeState
value = 616
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = var(38)<3||(enemynear(var(37)),statetype=A)
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = (p2bodydist x) = [ -10 ,(55+(helper(60000),fvar(10))*10)]
trigger1 = (enemynear(var(37)),statetype=A)
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%40) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = ((p2dist y=[-200,-70+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger1 = ((p2dist y+(enemynear(var(37)),vel y*10+enemynear(var(37)),const(movement.yaccel)*50)=[-200,-100+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = stateno=610&&var(0)&&(var(4)&&enemynear(var(37)),statetype=A)
trigger2 = (p2bodydist x) = [ -30 ,(55+(helper(60000),fvar(10))*10)]
trigger2 = ((p2dist y=[-200,-70+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger2 = ((p2dist y+(enemynear(var(37)),vel y*10+0.48*50)=[-200,-70+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger3 … 簡易コンボ用2
trigger3 = var(38)=2
trigger3 = helper(60000),Var(54) = 6
trigger3 = stateno=600&&var(0)
trigger3 = (p2bodydist x) = [ (-100+(helper(60000),fvar(10))*10) ,(50+(helper(60000),fvar(10))*10)]
trigger3 = ((p2dist y+(vel y*10-0.53*50)=[-140,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger3 = ((p2dist y+(vel y*10-0.53*50+enemynear(var(37)),vel y*10+enemynear(var(37)),const(movement.yaccel)*0.48)=[-140,-20+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;trigger4 … エリアルコンボ連携1
trigger4 = var(38)>=3
trigger4 = helper(60000),Var(54) = 6
trigger4 = helper(60000),Var(55) = 5000
trigger4 = (stateno=[600,610])&&var(0)&&movehit=1
trigger4 = (p2bodydist x) = [ -30 ,40+30*(enemynear(var(37)),facing=facing)]
trigger4 = ((p2dist y=[-200,-70+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
trigger4 = ((p2dist y+(-5*10+0.48*50)=[-200,-40+(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)

[State -1, JC(溜め) N]
type  = ChangeState
value = 619
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 7500 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = (p2bodydist x-enemynear(var(37)),vel x*10*ifelse(enemynear(var(37)),facing=facing,1,-1)>100)
trigger1 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.8,0.2]
trigger1 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(38)<3
trigger1 =(var(4)=0)||(p2dist y < -120)
trigger1 =(vel y > 0)
;trigger2 … 遠距離戦法連携
trigger2 = helper(60000),Var(54) = 1
trigger2 = helper(60000),Var(55) = 1000
trigger2 = !var(0)
trigger2 = prevstateno=43
trigger2 = helper(60000),Var(57) = 0 || Var(39) < 3
trigger2 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) >= 210
trigger2 =  (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.8,0.2]
;trigger3 … 遠距離戦法連携
trigger3 = helper(60000),Var(54) = 1
trigger3 = helper(60000),Var(55) = 1000
trigger3 = !var(0)
trigger3 = pos y< -180
trigger3 = helper(60000),Var(57) = 0 || (enemynear(var(37)),pos y-pos y > 120)
trigger3 = p2bodydist x >=50
trigger3 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.6,0.4]

[State -1, J2C(溜め) N]
type  = ChangeState
value = 623
triggerall=var(38)>=3
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 遠距離戦法連携
trigger1 = helper(60000),Var(54) = 1
trigger1 = helper(60000),Var(55) = 1000
trigger1 = !var(0)
trigger1 = pos y< -180
trigger1 = helper(60000),Var(57) = 0 || (enemynear(var(37)),pos y-pos y > 120)
trigger1 = p2bodydist x >=50
trigger1 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[0.2,2]
;trigger2 … ぶっぱ
trigger2 = helper(60000),Var(55) = 0
trigger2 = !var(0)
trigger2 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger2 = helper(60000),Var(54)<=1
trigger2 = helper(60000),Var(55) = 0
trigger2 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger2 = var(40) = [ 7500 , 10000]
trigger2 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger2 = (p2bodydist x-enemynear(var(37)),vel x*10*ifelse(enemynear(var(37)),facing=facing,1,-1)>50)
trigger2 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[0.2,2]
trigger2 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(38)<3
trigger2 =(var(4)=0)||(p2dist y < -120)

[State -1, J2C N]
type  = ChangeState
value = 624
triggerall=var(38)>=3
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))
;trigger1 … エリアルコンボ連携1
trigger1 = helper(60000),Var(54) = 6
trigger1 = helper(60000),Var(55) = 5000
trigger1 = movehit=1
trigger1 = (enemynear(var(37)),statetype=A)
trigger1 = (stateno=[600,610])&&var(0)
trigger1 = p2bodydist x > -20
trigger1 = p2dist y > 10-(p2bodydist x/10)

[State -1, JC N]
type  = ChangeState
value = 620
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(100*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(55) = 0||helper(60000),Var(54)=5
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = (p2bodydist x-enemynear(var(37)),vel x*10*ifelse(enemynear(var(37)),facing=facing,1,-1)>100)
trigger1 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.4,0]
trigger1 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(38)<3
trigger1 =(var(4)=0)||(p2dist y < -120)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = stateno=610&&var(0)&&(!var(4)&&enemynear(var(37)),statetype=A)
trigger2 = p2bodydist x >= -10
;trigger3 … エリアルコンボ連携1
trigger3 = var(38)>=3
trigger3 = movehit=1
trigger3 = helper(60000),Var(54) = 6
trigger3 = helper(60000),Var(55) = 5000
trigger3 = (enemynear(var(37)),statetype=A)
trigger3 = (stateno=[600,610])&&var(0)
trigger3 = p2bodydist x > -20

[State -1, J6C N]
type  = ChangeState
value = 630
triggerall=var(38)>=1
triggerall=roundstate = 2
triggerall=statetype=A
triggerall=var(59)||var(0)||(stateno=[100,101])
triggerall=var(7)!=3
triggerall=(var(5)>floor(160*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … ぶっぱ
trigger1 = helper(60000),Var(55) = 0
trigger1 = !var(0)
trigger1 = (enemynear(var(37)),stateno!=[5200,5211])
Trigger1 = helper(60000),Var(54)<=1
trigger1 = helper(60000),Var(55) = 0
trigger1 = helper(60000),Var(57) = 0 || Var(39) < 3||(!var(59))
trigger1 = var(40) = [ 5000 , 10000]
trigger1 = (var(40)%50) <= (var(38)**2)*(1+(var(38)>=3))
trigger1 = (p2bodydist x-enemynear(var(37)),vel x*10*ifelse(enemynear(var(37)),facing=facing,1,-1)>120)
trigger1 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.2,0.3]
trigger1 =(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(38)<3
trigger1 =(var(4)=0)||(p2dist y < -120)
;trigger2 … 簡易コンボ
trigger2 = var(38)=2
trigger2 = helper(60000),Var(54) = 6
trigger2 = stateno=616&&var(0)&&(!var(4)&&enemynear(var(37)),statetype=A)
;trigger3 … 遠距離戦法連携
trigger3 = helper(60000),Var(54) = 1
trigger3 = helper(60000),Var(55) = 1000
trigger3 = !var(0)
trigger3 = prevstateno=43
trigger3 = helper(60000),Var(57) = 0 || Var(39) < 3
trigger3 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*10) < 210
trigger3 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.2,0.3]
;trigger4 … 遠距離戦法連携
trigger4 = helper(60000),Var(54) = 5
trigger4 = helper(60000),Var(55) = 0
trigger4 = !var(0)
trigger4 = prevstateno=43
trigger4 = var(41)=[0,3000]
trigger4 = (enemynear(var(37)),pos y+enemynear(var(37)),vel y*6.0-pos y)/(p2bodydist x-enemynear(var(37)),vel x*6.0)=[-0.2,0.3]

[State -1, ダッシュC N]
type=ChangeState
value=920
triggerall=var(38)>=2&&var(7)!=3&&!numhelper(1400)
triggerall=stateno=1270||(stateno=900&&var(0))
triggerall=(var(5)>floor(200*ifelse(var(46)=1,0.5,1)))||var(38)<3
;trigger1 … 簡易連携
trigger1 =moveguarded||var(38)<3
trigger1 =(helper(60000),var(57)=0||((helper(60000),var(8)!=2)&&(helper(60000),var(9)!=2)&&(helper(60000),var(10)!=2)&&(helper(60000),var(11)!=2)&&(helper(60000),var(12)!=2)))
trigger1 =(stateno=900&&var(0))
;trigger2 … 隙消し
trigger2 =(helper(60000),var(57)=0||((helper(60000),var(8)!=2)&&(helper(60000),var(9)!=2)&&(helper(60000),var(10)!=2)&&(helper(60000),var(11)!=2)&&(helper(60000),var(12)!=2)))
trigger2 = anim=[1224,1226]
trigger2 = vel y * 11 > -pos y
;trigger3 … ガード択ゲー連携用
trigger3 = anim=1223||anim=1227
trigger3 = helper(60000),var(55)=2000
trigger3 = !(enemynear(var(37)),statetype!=C||(enemynear(var(37)),const(size.height)>=90))
;trigger4 … コンボ連携1
trigger4 = anim=901
trigger4 = (stateno=900&&var(0)&&movehit)
trigger4 = helper(60000),var(55)>=5000
trigger4 = helper(60000),var(54)=6
trigger4 = !var(4)

[State -1, ダッシュA N]
type=ChangeState
value=900
triggerall=var(38)>=2
triggerall=stateno=1270
triggerall=helper(60000),var(57)=0||((helper(60000),var(8)!=2)&&(helper(60000),var(9)!=2)&&(helper(60000),var(10)!=2)&&(helper(60000),var(11)!=2)&&(helper(60000),var(12)!=2))
;trigger1 … 上
trigger1 = anim=1221
trigger1 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-35 ,33]
trigger1 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*4.5)*9*(enemynear(var(37)),statetype=A)=[-260 ,(-180+(enemynear(var(37)),const(size.height)))]
;trigger2 … 上横
trigger2 = anim=1222||anim=1228
trigger2 = (p2bodydist x)-(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-80 ,120]
trigger2 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*4.5)*9*(enemynear(var(37)),statetype=A)=[-193 ,(-80+(enemynear(var(37)),const(size.height)))]
;trigger3 … 横
trigger3 = anim=1223||anim=1227
trigger3 = (enemynear(var(37)),statetype!=A)||(helper(60000),var(55)<5000)
trigger3 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-80 ,148]
trigger3 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*4.5)*9*(enemynear(var(37)),statetype=A)= [-108 ,(-55+(enemynear(var(37)),const(size.height)))]
;trigger4 … 下横
trigger4 = (helper(60000),var(55)<5000)
trigger4 = anim=1224||anim=1226
trigger4 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-80 ,120]
trigger4 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*4.5)*9*(enemynear(var(37)),statetype=A)=[-30 ,(42+(enemynear(var(37)),const(size.height)))]
;trigger5 … 下
trigger5 = (helper(60000),var(55)<5200)
trigger5 = anim=1225
trigger5 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-35 ,33]
trigger5 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*4.5)*9*(enemynear(var(37)),statetype=A)=[-9 ,(110+(enemynear(var(37)),const(size.height)))]
;trigger6 … ガード択ゲー連携用
trigger6 = anim=1223||anim=1227
trigger6 = helper(60000),var(55)=2000
trigger6 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-160 ,160]
;trigger7 … コンボ連携1
trigger7 = anim=1223||anim=1227
trigger7 = helper(60000),var(55)=5000
trigger7 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-160 ,160]
trigger7 = enemynear(var(37)),statetype!=A

[State -1, ダッシュB N]
type=ChangeState
value=910
triggerall=var(38)>=2
triggerall=stateno=1270||(stateno=900&&var(0))
triggerall=time>=5||helper(60000),var(55)>=5000
;trigger1 … 上
trigger1 = anim=1221
trigger1 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*8) = [-35 ,50]
trigger1 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*6)*12*(enemynear(var(37)),statetype=A)=[-248 ,(-118+(enemynear(var(37)),const(size.height)))]
;trigger2 … 上横
trigger2 = anim=1222||anim=1228
trigger2 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*8) = [-80 ,150]
trigger2 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*6)*12*(enemynear(var(37)),statetype=A)=[-210 ,(-50+(enemynear(var(37)),const(size.height)))]
;trigger3 … 横
trigger3 = anim=1223||anim=1227
trigger3 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*8)= [-80 ,180]
trigger3 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*6)*12*(enemynear(var(37)),statetype=A)= [-120,(-50+(enemynear(var(37)),const(size.height)))]
;trigger4 … 下横
trigger4 = anim=1224||anim=1226
trigger4 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*8) = [-80 ,150]
trigger4 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*6)*12*(enemynear(var(37)),statetype=A)=[-25 ,(55+(enemynear(var(37)),const(size.height)))]
;trigger5 … 下
trigger5 = anim=1225
trigger5 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*8) = [-35 ,50]
trigger5 = p2dist y+(enemynear(var(37)),vel y+ifelse(enemynear(var(37)),movetype=H,0.48,enemynear(var(37)),const(movement.yaccel))*6)*12*(enemynear(var(37)),statetype=A)=[-20 ,(90+(enemynear(var(37)),const(size.height)))]
;trigger6 … 連携
trigger6 =!(helper(60000),var(57)=0||((helper(60000),var(8)!=2)&&(helper(60000),var(9)!=2)&&(helper(60000),var(10)!=2)&&(helper(60000),var(11)!=2)&&(helper(60000),var(12)!=2)))
trigger6 = (stateno=900&&var(0))
;trigger7 … 隙消し
trigger7 =!(helper(60000),var(57)=0||((helper(60000),var(8)!=2)&&(helper(60000),var(9)!=2)&&(helper(60000),var(10)!=2)&&(helper(60000),var(11)!=2)&&(helper(60000),var(12)!=2)))
trigger7 = anim=[1224,1226]
trigger7 = vel y * 11 > -pos y
;trigger8 … コンボ連携1
trigger8 = anim=1223||anim=1227
trigger8 = helper(60000),var(55)=5000
trigger8 = (p2bodydist x)+(ifelse(enemynear(var(37)),facing=facing,-1,1)*(enemynear(var(37)),vel x)*6) = [-160 ,160]
trigger8 = enemynear(var(37)),statetype=A
;trigger9 … コンボ連携2
trigger9 = anim=902
trigger9 = (stateno=900&&var(0)&&movehit)
trigger9 = helper(60000),var(55)=5000
trigger9 = helper(60000),var(54)=6
;trigger10 … コンボ連携3
trigger10 = helper(60000),var(55)=[5820,5821]
trigger10 = helper(60000),var(54)=6
;trigger11 … コンボ連携4
trigger11 = anim=1225
trigger11 = helper(60000),var(54)=6
trigger11 = helper(60000),var(55)=5200

;-----------------------------------------------------------
; その他の行動
;-----------------------------------------------------------

[State -1 step];前ステップ
Type = ChangeState
Value = 100
TriggerAll=var(38) >= 2
TriggerAll=StateNo!=[120,155]
TriggerAll=StateNo!=[100,101]
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll =var(59)
Trigger1=helper(60000),var(54)=0
Trigger1=helper(60000),var(57) = 0 || Var(39) < 3
Trigger1 = var(40) = [0,400]
trigger1 = abs(p2bodydist x) >= 150
Trigger2=helper(60000),var(54)=0
Trigger2=helper(60000),var(57) = 0 || Var(39) < 3
trigger2 = var(40) = [0,(150+(var(38)**2)*50)]
trigger2 = abs(p2bodydist x) = [(80-(var(38)<5)*40),150]
trigger2 = var(40) = [150,(150+var(38)*50)]
trigger2 = var(38)<4||(abs(p2bodydist x) = [120,150])
;trigger3 = セットプレイの為に接近
trigger3 = helper(60000),var(54) = 2
trigger3 = (p2bodydist x) = [20 ,120]
trigger3 = (enemynear(var(37)),animtime >= -20) || (enemynear(var(37)),stateno=[5101,5119])
trigger3 = (var(38)<4)||(enemynear(var(37)),stateno=[5100,5101])
;trigger4 = コンボ中は接近
Trigger4 = helper(60000),var(57) = 0 || Var(39) < 3
trigger4 = helper(60000),var(54) = [5,6]
trigger4 = (p2bodydist x) != [-20 ,20]

[State -1 jump HF];前ハイジャンプ
Type = ChangeState
Value = 49
TriggerAll=var(38) >= 2
TriggerAll=helper(60000),var(57) = 0 || Var(39) < 3||(enemynear(var(37)),hitdefattr=SC,AT)
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll= var(59)||(var(0)&&((stateno=[221,222])||(stateno=230)||(stateno=420)||(stateno=[1400,1410])))||(stateno=[100,101])
;コンボ連携簡易
Trigger1 = var(38) = 2
trigger1 = helper(60000),var(54) = 6
trigger1 = stateno=420
;コンボ連携1
Trigger2 = var(38) >= 3
trigger2 = helper(60000),var(54) = 6
trigger2 = stateno=420
trigger2 = (p2dist y*1.0/abs(p2bodydist x)<-0.8)
;直接エリアル狙い
Trigger3 = var(38) >= 3
trigger3 = helper(60000),var(54) = 6
trigger3 = helper(60000),var(55) < 5100 ||(numhelper(1412))
trigger3 = (enemynear(var(37)),movetype=H)
trigger3 = (enemynear(var(37)),statetype=A)
trigger3 = (enemynear(var(37)),pos y < -100)||(numhelper(1412))
trigger3 = (p2bodydist x = [30,100])
trigger3 = (enemynear(var(37)),vel y <= 0)||(numhelper(1412))

[State -1 jump HN];Nハイジャンプ
Type = ChangeState
Value = 48
TriggerAll=var(38) >= 3
TriggerAll=helper(60000),var(57) = 0 || Var(39) < 3||(enemynear(var(37)),hitdefattr=SC,AT)
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll= var(59)||(stateno=[100,101])
;直接エリアル狙い
Trigger1 = var(38) >= 3
trigger1 = helper(60000),var(54) = 6
trigger1 = helper(60000),var(55) < 5100||(numhelper(1412))
trigger1 = (enemynear(var(37)),movetype=H)
trigger1 = (enemynear(var(37)),statetype=A)
trigger1 = (enemynear(var(37)),pos y < -100)||(numhelper(1412))
trigger1 = (p2bodydist x = [30,-60])
trigger1 = (enemynear(var(37)),vel y < -1)||(numhelper(1412))

[State -1 jump N];前ジャンプ
Type = ChangeState
Value = 43
TriggerAll=var(38) >= 2
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll= var(59)||(var(0)&&((stateno=[221,222])||(stateno=230)||(stateno=420)||(stateno=[1400,1410])))||(stateno=[100,101])
;trigger1 = とりあえずキャンセル
Trigger1 =var(38) = 2
Trigger1 =(var(0))
Trigger1 =time>=2
Trigger1 =(stateno=[221,222])||(stateno=230)||(stateno=420)
;trigger2 = 連携のつもり
Trigger2 =var(38) >= 3
Trigger2 =(var(0))
Trigger2 =time>=2
Trigger2 =(stateno=[221,222])||(stateno=230)||(stateno=420)
Trigger2 =(var(41)%5>=2)||(stateno=230)||(helper(60000),var(54)=6)
Trigger2 =(frontedgebodydist>=50)||helper(60000),Var(54) != 2
;trigger3 … ガード連携
trigger3 = enemynear(var(37)),statetype!=A
trigger3 = (helper(60000),Var(55) = 2000)&&(helper(60000),Var(54)=5)
trigger3 = var(59)
trigger3 = (var(40)=[5000,8000])
;trigger4 … 起き攻め?
trigger4 = helper(60000),Var(54) = 2
trigger4 = enemynear(var(37)),stateno=5120
trigger4 = var(59)||var(0)||(stateno=[100,101])
trigger4 = var(41)%3=0&&(frontedgebodydist>=50)

[State -1 jump HJ3];遠距離思考ハイジャンプ
Type = ChangeState
Value = 47+((p2bodydist x>=150)+(p2bodydist x>=230))*(var(7)!=3)
TriggerAll=var(38) >= 2
TriggerAll=helper(60000),var(57) = 0 || Var(39) < 3||(enemynear(var(37)),hitdefattr=SC,AT)
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll= var(59)||(var(0)&&((stateno=[221,222])||(stateno=230)||(stateno=420)||(stateno=[1400,1410])))||(stateno=[100,101])
;trigger1 … とりあえず飛ぶ
Trigger1 = helper(60000),var(57) = 0||Var(39) < 3||(enemynear(var(37)),time<=2)||(stateno=[100,101])||(enemynear(var(37)),hitdefattr=SC,AT)
trigger1 = helper(60000),Var(54) <= 1
trigger1 = var(38)>=3
trigger1 = var(7)!=3||(enemynear(var(37)),hitdefattr=SC,AT&&var(38)>=4)
trigger1 = var(59)||(stateno=[100,101])
trigger1 = helper(60000),Var(54) = 1||(enemynear(var(37)),hitdefattr=SC,AT&&var(38)>=4)||(var(5)>floor(500*ifelse(var(46)=1,0.5,1)))||var(46)||var(38)<4
trigger1 = (var(40) = [0,((var(38)**2)*100)])||(enemynear(var(37)),hitdefattr=SC,AT&&var(38)>=4)
;trigger2 … キャンセル
trigger2 = helper(60000),Var(54) = 1||(helper(60000),Var(54) = [5,6])
trigger2 = var(38)>=3
trigger2 = var(0)
;trigger3 … 超反応
trigger3 = Var(38) >= 4
trigger3 = (enemynear(var(37)),movetype=A)
trigger3 = (var(0)&&helper(60000),var(57))
trigger3 = (var(40) = [0,3000]) || (Var(38) >= 5)
trigger3 = (enemynear(var(37)),time<=10)||stateno>=1400
trigger3 = stateno>=1400||p2dist x<0
;trigger4～8…飛び道具感知時に使用1
trigger4 = helper(60000),var(3)
trigger4 = helper(60000),var(8)=2
trigger4 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(3)),time<=40
trigger4 = (PlayerID(helper(60000),var(3)),pos x - pos x)*PlayerID(helper(60000),var(3)),facing*facing>=10
trigger5 = helper(60000),var(4)
trigger5 = helper(60000),var(9)=2
trigger5 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(4)),time<=40
trigger5 = (PlayerID(helper(60000),var(4)),pos x - pos x)*PlayerID(helper(60000),var(4)),facing*facing>=10
trigger6 = helper(60000),var(5)
trigger6 = helper(60000),var(10)=2
trigger6 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(5)),time<=40
trigger6 = (PlayerID(helper(60000),var(5)),pos x - pos x)*PlayerID(helper(60000),var(5)),facing*facing>=10
trigger7 = helper(60000),var(6)
trigger7 = helper(60000),var(11)=2
trigger7 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(6)),time<=40
trigger7 = (PlayerID(helper(60000),var(6)),pos x - pos x)*PlayerID(helper(60000),var(6)),facing*facing>=10
trigger8 = helper(60000),var(7)
trigger8 = helper(60000),var(12)=2
trigger8 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(7)),time<=40
trigger8 = (PlayerID(helper(60000),var(7)),pos x - pos x)*PlayerID(helper(60000),var(7)),facing*facing>=10
;trigger9～13…設置技を飛び越す
trigger9 = helper(60000),var(3)
trigger9 = helper(60000),var(8)=1
trigger9 = PlayerID(helper(60000),var(3)),time>=20
trigger9 = PlayerID(helper(60000),var(3)),hitdefattr!=SCA,AA,AT
trigger9 = (PlayerID(helper(60000),var(3)),pos x - pos x)*PlayerID(helper(60000),var(3)),facing*facing>=10
trigger9 = helper(60000),var(57)
trigger9 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(3)),time<=60
trigger10 = helper(60000),var(4)
trigger10 = helper(60000),var(9)=1
trigger10 = PlayerID(helper(60000),var(4)),time>=20
trigger10 = PlayerID(helper(60000),var(4)),hitdefattr!=SCA,AA,AT
trigger10 = (PlayerID(helper(60000),var(4)),pos x - pos x)*PlayerID(helper(60000),var(4)),facing*facing>=10
trigger10 = helper(60000),var(57)
trigger10 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(4)),time<=60
trigger11 = helper(60000),var(5)
trigger11 = helper(60000),var(10)=1
trigger11 = PlayerID(helper(60000),var(5)),time>=20
trigger11 = PlayerID(helper(60000),var(5)),hitdefattr!=SCA,AA,AT
trigger11 = (PlayerID(helper(60000),var(5)),pos x - pos x)*PlayerID(helper(60000),var(5)),facing*facing>=10
trigger11 = helper(60000),var(57)
trigger11 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(5)),time<=60
trigger12 = helper(60000),var(6)
trigger12 = helper(60000),var(11)=1
trigger12 = PlayerID(helper(60000),var(6)),time>=20
trigger12 = PlayerID(helper(60000),var(6)),hitdefattr!=SCA,AA,AT
trigger12 = (PlayerID(helper(60000),var(6)),pos x - pos x)*PlayerID(helper(60000),var(6)),facing*facing>=10
trigger12 = helper(60000),var(57)
trigger12 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(6)),time<=60
trigger13 = helper(60000),var(7)
trigger13 = helper(60000),var(12)=1
trigger13 = PlayerID(helper(60000),var(7)),time>=20
trigger13 = PlayerID(helper(60000),var(7)),hitdefattr!=SCA,AA,AT
trigger13 = (PlayerID(helper(60000),var(7)),pos x - pos x)*PlayerID(helper(60000),var(7)),facing*facing>=10
trigger13 = helper(60000),var(57)
trigger13 = enemynear(var(37)),movetype!=A||PlayerID(helper(60000),var(7)),time<=60
;trigger14 … ガード時択ゲーセットプレイ
trigger14 = enemynear(var(37)),statetype!=A
trigger14 = (helper(60000),Var(55) = 2000)&&(helper(60000),Var(54)=5)
trigger14 = var(59)
trigger14 = (var(40)=[8000,10000])
;trigger15 … 起き攻め放棄!
trigger15 = helper(60000),Var(54) = 2
trigger15 = enemynear(var(37)),stateno=5120
trigger15 = var(59)||var(0)||(stateno=[100,101])
trigger15 = var(41)%3=1||(frontedgebodydist<50)
trigger15 =( p2bodydist x !=[40,120])||(frontedgebodydist<50)


[State -1 stepB];後ステップ
Type = ChangeState
Value = 105
TriggerAll=var(38) >= 1
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll=var(59)
triggerAll = backedgebodydist >= 20
;trigger1 … ぶっぱ
Trigger1 =helper(60000),var(57) = 0 || Var(39) < 3
trigger1 = helper(60000),Var(54) <= 1
trigger1 = var(38)<3
trigger1 = abs(p2bodydist x) <= 70
trigger1 = var(40) = [(10000-(var(38)**2)*100),10000]
;trigger2 … リバーサル
trigger2=(var(38)=[3,4])
trigger2=(helper(60000),var(54)=[3,4])
trigger2=var(59)
trigger2=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
trigger2=backedgebodydist >= 20
;trigger3 … 逃げ逃げっ
Trigger3 =helper(60000),var(57) = 0||Var(39) < 3||(enemynear(var(37)),time<=2)
trigger3 = helper(60000),Var(54) = 1
trigger3 = var(38)>=3
trigger3 = abs(p2bodydist x) <= 100
trigger3 = var(40) = [(10000-(var(38)**2)*100),10000]
;trigger4 … ガード時択ゲーセットプレイ
trigger4 = enemynear(var(37)),statetype!=A
trigger4 = (helper(60000),Var(55) = 2000)&&(helper(60000),Var(54)=5)
trigger4 = var(59)
trigger4 = (var(40)=[8000,10000])
;trigger5 … 近すぎたら退く
trigger5 = helper(60000),Var(54) = 2
trigger5 = enemynear(var(37)),stateno=5120
trigger5 = var(59)||(stateno=[100,101])
trigger5 = p2bodydist x =[-20,40]

[State -1 jump N];適当ジャンプ
Type = ChangeState
Value = (41+random%3)
TriggerAll=var(38) >= 1
TriggerAll=roundstate=2
TriggerAll=statetype!=A
TriggerAll= var(59)||(var(0)&&((stateno=[221,222])||(stateno=230)||(stateno=420)||(stateno=[1400,1410])))||(stateno=[100,101])
;trigger1 = ぶっぱ
Trigger1 =!(var(0))
trigger1 =helper(60000),Var(54) <= 1
trigger1 =helper(60000),var(57) = 0 || Var(39) < 3
trigger1 =var(40) = [900,1000]
trigger1 =var(38)<3

[State -1 Airjump N];空中前ジャンプ
Type = ChangeState
Value = 46
TriggerAll=var(38) >= 1
TriggerAll=roundstate=2
triggerall=var(4)<1
triggerall=statetype=A
TriggerAll=var(59)||var(0)
;trigger1 = とりあえずキャンセル
Trigger1 =var(38) >= 2
Trigger1 =(var(0))
Trigger1 =time>=2
Trigger1 =(stateno=[621,622])||(stateno=[625,626])||(stateno=630)||(stateno=920)
;trigger2 = 小ジャンプっぽくする
Trigger2 =var(38) >= 1
Trigger2 =prevstateno=43
Trigger2 =var(59)
Trigger2 =time<2
Trigger2 =stateno=50
Trigger2 =helper(60000),var(54)=5
Trigger2 =var(41)%5<=3||(enemynear(var(37)),backedgebodydist < 2)
;trigger3 … 超反応対空ずらし
trigger3 = Var(38) >= 4
trigger3 = (enemynear(var(37)),movetype=A)&&(enemynear(var(37)),statetype!=A)
trigger3 = (enemynear(var(37)),time >= 6) || ((Var(38) >= 5)&&(enemynear(var(37)),time<=5))
trigger3 = (var(40) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time=10)
trigger3 = (p2dist y)< 80
trigger3 = vel y > -2
Trigger3  =var(59)
;trigger4 … 逃げ逃げ
trigger4 = Var(38) >= 3
Trigger4  =var(59)
Trigger4 =helper(60000),var(54)=1
trigger4 = p2dist x = [-50,50]
trigger4 = abs(p2dist y) > 100
trigger4 = pos y < -180
trigger4 = backedgebodydist < 2

[State -1,Guard switch];AIガード中下段切り返えスイッチ
Type = varset
triggerall = numhelper(60000)
Trigger1 = var(39)>=3
Trigger1 = ((var(41)%80) = [0,(var(39)**3)])
Trigger2 = var(39)>=2
Trigger2 = ((var(40)) = [0,(var(39)**4)])
Trigger3 = var(39)>=2
Trigger3 = (stateno=120)
Trigger3 = (random%4)<=(var(39)-1)
Trigger4 = var(39)>=5
var(42) = ifelse((enemynear(var(37)),statetype = C),1,0)

[State -1];ガード
Type = ChangeState
Value = 120
triggerAll=numhelper(60000)
TriggerAll=helper(60000),var(57)=1
TriggerAll=StateNo!=[120,155]
TriggerAll=roundstate=2
Trigger1  =var(59)

[State -1 Walk1];歩き 通常
Type = ChangeState
Value = 21
TriggerAll=var(38)
TriggerAll=StateNo!=21
TriggerAll=StateNo!=[120,140]
TriggerAll=roundstate=2
TriggerAll=statetype!=A
Triggerall=var(59)
trigger1=(var(38)<3)
Trigger1=helper(60000),var(54) = 0
Trigger1=abs(p2bodydist x)>=10
Trigger1=((var(40)%100)<=var(38)**3)||(var(38)>=3)
trigger2=(var(38)>=3)
Trigger2=helper(60000),var(54) = [1,4]
;trigger3 = コンボ中は接近
trigger3=helper(60000),var(54) = [5,6]

[State ];カウンター
type=ChangeState
value=1300
Triggerall=var(38)>=2
triggerall=!numhelper(11305)
triggerall=movetype=H&&power>=1000&&statetype!=A&&(stateno=[150,153])
triggerall=!numhelper(1400)
triggerall=(p2bodydist x) = [-10 ,90]
triggerall=((p2dist y = [ -110 ,(enemynear(var(37)),const(size.height))])&&(enemynear(var(37)),statetype!=A))||(enemynear(var(37)),statetype=A)
triggerall=((p2dist y+(enemynear(var(37)),vel y*6+enemynear(var(37)),const(movement.yaccel)*18)=[ -110 ,((enemynear(var(37)),const(size.height)))])&&(enemynear(var(37)),statetype=A))||(enemynear(var(37)),statetype!=A)
;Trigger1…気分でぶっぱ
Trigger1=var(38)=2
Trigger1= var(41)%20=1
;Trigger2…固めが長すぎると判断した場合
trigger2=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
Trigger2=var(38)>=3
Trigger2=helper(60000),var(45) >= 100
Trigger2=(enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno>=200)
trigger2=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 5)&&(enemynear(var(37)),time=[2,5]))
trigger2=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time=10)
trigger2=enemynear(var(37)),movecontact=0
;Trigger3…対投げ超反応
trigger3=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
Trigger3=var(38)>=3
Trigger3=(enemynear(var(37)),hitdefattr=SCA,AT)
trigger3=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 5)&&(enemynear(var(37)),time=[2,5]))
trigger3=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time=10)
;Trigger4…溜め技対策
Trigger4=var(38)>=3
Trigger4=helper(60000),var(45) >= 30
Trigger4=(enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno>=200)
trigger4=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 5)&&(enemynear(var(37)),time=[2,5]))
trigger4=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 5) || (enemynear(var(37)),time=10)
trigger4=enemynear(var(37)),movecontact=0
trigger4= helper(60000),var(46)<helper(60000),var(45)-20
trigger4= (enemynear(var(37)),time)<helper(60000),var(46)-30

[State ];ブライドパージ1
type=PalFX
triggerall=!numhelper(1350)&&!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
triggerall=var(38)>=4
triggerall=gethitvar(hitcount) >=2
;Trigger1…通常のタイミング
trigger1=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
Trigger1=(helper(60000),var(45)!=[100,800])||(var(35)&4)
Trigger1=(enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno>=200)
trigger1=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))
trigger1=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 4) || (enemynear(var(37)),time=10)
trigger1=enemynear(var(37)),movecontact=0
trigger1=!var(46)||(var(35)&4)
trigger1=(var(50)=[600,880])
trigger1=(power>=3000)||(var(35)&4)
trigger1=p2dist y = [ -140 ,-14+(enemynear(var(37)),const(size.height))]
trigger1=p2bodydist x=[ -80 ,60]
trigger1=((life*1000.0/lifemax>400)&&((enemynear(var(37)),life*1000/enemynear(var(37)),lifemax)-(life*1000/lifemax)>-200))||(var(35)&4)
;Trigger2…超やかましい
trigger2=((var(35)&2)&&(var(35)&4))||(fvar(37)=1)
trigger2=hitshakeover||(enemynear(var(37)),movecontact=0&&((enemynear(var(37)),time = [6,10])||((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))))
time=0

[State ];ブライドパージ2
type=Helper
triggerall=!numhelper(1350)&&!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
triggerall=var(38)>=4
triggerall=gethitvar(hitcount) >=2
;Trigger1…通常のタイミング
trigger1=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
Trigger1=(helper(60000),var(45)!=[100,800])||(var(35)&4)
Trigger1=(enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno>=200)
trigger1=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))
trigger1=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 4) || (enemynear(var(37)),time=10)
trigger1=enemynear(var(37)),movecontact=0
trigger1=!var(46)||(var(35)&4)
trigger1=(var(50)>=600)
trigger1=(power>=3000)||(var(35)&4)
trigger1=p2dist y = [ -140 ,-14+(enemynear(var(37)),const(size.height))]
trigger1=p2bodydist x=[ -80 ,60]
trigger1=((life*1000.0/lifemax>400)&&((enemynear(var(37)),life*1000/enemynear(var(37)),lifemax)-(life*1000/lifemax)>-200))||(var(35)&4)
;Trigger2…超やかましい
trigger2=((var(35)&2)&&(var(35)&4))||(fvar(37)=1)
trigger2=hitshakeover||(enemynear(var(37)),movecontact=0&&((enemynear(var(37)),time = [6,10])||((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))))
helpertype=normal
helpertype=normal
name="bride purge"
ID=1350
postype=p1
pos=0,floor(-70*fvar(33))
stateno=1350
supermovetime=1000
pausemovetime=1000

[State ];ブライドパージ3
type=Helper
triggerall=!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
triggerall=var(38)>=4
triggerall=gethitvar(hitcount) >=2
;Trigger1…通常のタイミング
trigger1=!(helper(60000),var(8)=2||helper(60000),var(9)=2||helper(60000),var(10)=2||helper(60000),var(11)=2||helper(60000),var(12)=2)
Trigger1=(helper(60000),var(45)!=[100,800])||(var(35)&4)
Trigger1=(enemynear(var(37)),movetype=A)||(enemynear(var(37)),movetype=I&&enemynear(var(37)),stateno>=200)
trigger1=(enemynear(var(37)),time = [6,10]) || ((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))
trigger1=(helper(60000),var(41) = [0,3000]) || (Var(38) >= 4) || (enemynear(var(37)),time=10)
trigger1=enemynear(var(37)),movecontact=0
trigger1=!var(46)||(var(35)&4)
trigger1=(var(50)>=600)
trigger1=(power>=3000)||(var(35)&4)
trigger1=p2dist y = [ -140 ,-14+(enemynear(var(37)),const(size.height))]
trigger1=p2bodydist x=[ -80 ,60]
trigger1=((life*1000.0/lifemax>400)&&((enemynear(var(37)),life*1000/enemynear(var(37)),lifemax)-(life*1000/lifemax)>-200))||(var(35)&4)
;Trigger2…超やかましい
trigger2=((var(35)&2)&&(var(35)&4))||(fvar(37)=1)
trigger2=hitshakeover||(enemynear(var(37)),movecontact=0&&((enemynear(var(37)),time = [6,10])||((Var(38) >= 4)&&(enemynear(var(37)),time=[2,5]))))
helpertype=normal
name="bride purge effect"
ID=1351
postype=p1
pos=0,floor(-70*fvar(33))
stateno=1351
supermovetime=1000
pausemovetime=1000

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI補助ヘルパー
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 60000]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 1860

[state いつもの]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 一応]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 65535
ignorehitpause = 1

[state 合わせる]
type = turn
trigger1 = facing!=root,facing
ignorehitpause = 1

[state くっつく]
type = bindtoroot
trigger1 = 1
pos = 0,0
time = 65535
ignorehitpause = 1

[State -1, 相手の飛び道具(ヘルパー)感知用1]
Type = VarSet
ignorehitpause = 1
Trigger1 = time
var(0) = (enemynear(root,var(37)),ID=playerid(var(59)),ID)

[State -1, 相手判別]
Type = VarSet
ignorehitpause = 1
Trigger1 = 1
var(59) = enemynear(root,var(37)),ID

[State -1, 保険]
Type = VarSet
ignorehitpause = 1
Trigger1 = var(59)=0
var(59) = enemynear,ID

[state くっつく]
type = bindtoroot
trigger1 = 1
pos = 100,0
time = 65535
ignorehitpause = 1

[state 合わせる]
type = turn
trigger1 = facing=root,facing
ignorehitpause = 1

;---------------------------------------------------------------------------
; ガードさせる命令
;---------------------------------------------------------------------------

[State -1, AIガードフラグリセット]
Type = VarSet
ignorehitpause = 1
Trigger1 = RoundState != 2
Trigger2 = !(inguarddist)||!(root,inguarddist)
var(57) = 0

[State -1, AIGuardflag1];AIがガードする命令 通常
Type = VarSet
ignorehitpause = 1
TriggerAll = RoundState = 2
TriggerAll = (inguarddist&&(root,var(40)%20<=root,var(39)**2))||(root,inguarddist)
;-----[レベル1]
Trigger1 = root,var(39) >= 1
trigger1 = (playerid(var(59)),statetype!=A)||Random = [899,999]
trigger1 = var(51)%100=[0,10]
;-----[レベル2]
Trigger2 = root,var(39) >= 2
trigger2 = Random = [699,999]
trigger2 = playerid(var(59)),time>=15-(var(51)%9)
;-----[レベル3]
Trigger3 = root,var(39) >= 3
trigger3 = Random = [499,999]
trigger3 = playerid(var(59)),time>=13-(var(51)%9)
;-----[レベル4]
Trigger4 = root,var(39) >= 4
trigger4 = (playerid(var(59)),time>=3-(var(51)%4))||(playerid(var(59)),statetype!=A)
;-----[護身モード]
Trigger5 = root,var(39) >= 5
Trigger6 = var(52)
var(57) = 1

;---------------------------------------------------------------------------
; 距離&速度
;---------------------------------------------------------------------------
[State AIトリガー用 相手と自分との相対X速度参照]
type = varset
trigger1 = 1
fvar(10) = (ifelse((root,facing=playerid(var(59)),facing),-1,1)*(playerid(var(59)),vel x)) + (root,vel x)
[State AIトリガー用 相手と自分との相対Y速度参照]
type = varset
trigger1 = 1
fvar(11) = 1.0*((playerid(var(59)),vel Y) - (root,vel Y))
[State AIトリガー用 自分と相手との距離X参照]
type = varset
trigger1 = 1
fvar(13) = 1.0*abs((playerid(var(59)),pos x) - (root,pos x))
[State AIトリガー用 自分と相手との距離Y参照]
type = varset
trigger1 = 1
fvar(14) = 1.0*((playerid(var(59)),pos y) - (root,pos y))

[State AIトリガー用 相対速度(スカラーの方)参照]
type = varset
trigger1 = 1
fvar(12) = 1.0*abs(fvar(10)**2+fvar(11)**2)**0.5
[State AIトリガー用 自分と相手との距離(最短距離で測定)参照]
type = varset
trigger1 = 1
fvar(15) = 1.0*abs(fvar(13)**2+fvar(14)**2)**0.5

;---------------------------------------------------------------------------
; 行動パターン制御
;---------------------------------------------------------------------------

[State ];暗転判別用1
type=Varadd
trigger1=(root,time=var(47))
var(48)=1

[State ];暗転判別用2
type=Varset
trigger1=!(root,time=var(47))
var(48)=0

[State 60000, counter switch];相手の動作時間参照
Type = varset
Trigger1 = 1
var(53) = 0

[State 60000, counter switch];相手の動作時間参照
Type = varset
Triggerall = 1
Trigger1 = playerid(var(59)),movetype = A
var(53) = playerid(var(59)),animtime

[State 60000, AI護身モードフラグ1 ダウン後]
Type = Varset
ignorehitpause = 1
Trigger1 = root,Var(38)>=3
Trigger1 = root,Var(39)>=3
Trigger1 = var(54)=3
Trigger1 = root,stateno=5120||(movetype=H&&statetype=L)
Trigger1 = var(52) = 0
var(52) = 10+random%10

[State -1, AI護身モードフラグ2 通常]
Type = Varset
ignorehitpause = 1
Trigger1 = root,Var(38)>=3
Trigger1 = root,Var(39)>=3
Trigger1 = var(54)=4
Trigger1 = movetype=H
Trigger1 = var(52) = 0
var(52) = 3+random%3

[State -1, AI護身モード 時間経過]
Type = Varadd
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = root,Var(39)>=3
Triggerall = var(52)>=0
Triggerall = !var(48)
Trigger1 = movetype!=H
Trigger1 = root,stateno!=[120,159]
Trigger2 = random%10=1
Trigger2 = gametime%20=1
var(52) = -1

[State -1, AI護身モード 強制終了]
Type = Varset
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = root,Var(39)>=3
Trigger1 = movetype=A
trigger1 = movetype!=H
var(52) = 0

[State -1, AIブライドダッシュ使用制限1]
Type = Varset
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = root,stateno=[1260,1270]
Trigger1 = var(54)<=4
var(51) = 100

[State -1, AIブライドダッシュ使用制限2]
Type = Varset
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)<=4
Trigger1 = root,stateno=5120
Trigger2 = root,stateno=1510
var(51) = 100


[State -1, AIブライドダッシュ使用制限2]
Type = Varadd
ignorehitpause = 1
Trigger1 = var(51)>0
var(51) = -1

[State -1, 擦りモード始動]
Type = Varset
ignorehitpause = 0
var(45)=1
Trigger1 = var(45)=0
Trigger1 = (root,stateno=[120,159])||(root,movetype=H)
Trigger1 = playerid(var(59)),movetype=A
Trigger1 = (playerid(var(59)),time<=1)||(root,stateno=120)

[State -1, 擦りレベル上昇]
Type = Varadd
ignorehitpause = 0
var(45)=1
Trigger1 = var(45)
Trigger1 = !var(48)

[State -1, 擦り判定2]
Type = Varadd
ignorehitpause = 0
var(46)=1
Trigger1 = var(45)
Trigger1 = !var(48)

[State -1, 擦り思考リセット]
Type = Varset
ignorehitpause = 1
var(45)=0
Trigger1 = !((root,stateno=[120,159])||(root,movetype=H))
Trigger1 = time

[State -1, 擦り思考リセット2]
Type = Varset
ignorehitpause = 1
var(46)=0
Trigger1 = var(45)=0
Trigger2 = playerid(var(59)),movecontact

;-----------------------[var(54)]

[State -1 reset54];行動パターンくらい抜け対策1
Type = varset
ignorehitpause = 1
Trigger1 = var(54) = 7
Trigger1 = (PlayerID(var(59)),movetype!=A)||(root,movetype=H)||(PlayerID(var(59)),time<=1)
var(54) = 0

[State -1 reset54];行動パターンくらい抜け対策2
Type = varset
ignorehitpause = 1
Trigger1 = var(54)=6
Trigger1 = (root,Var(38)>=3)
Trigger1 = playerid(var(59)),movetype!=H
Trigger1 = playerid(var(59)),stateno!=[5000,5219]
var(54) = 7

[State -1 reset54];行動パターン振り出し
Type = varset
ignorehitpause = 1
Triggerall = var(54)
Trigger1 = var(54) = 1
Trigger1 = (root,stateno=46)||(root,stateno=[1280,1290])||(root,stateno=[900,920])||(abs(root,p2bodydist x)<=120&&root,var(59)&&random%10=1&&(root,statetype!=A))
Trigger1 = root,var(7)!=3
Trigger2 = var(54) = 2
Trigger2 = root,var(19)=0
Trigger2 = (playerid(var(59)),statetype!=L)
Trigger3 = var(54) = 3
Trigger3 = (root,movetype=A)||(var(52)=0)||(((root,var(59)=0)||(root,time>=10))&&root,movetype=I)
Trigger3 = (root,stateno!=[1500,1510])
Trigger4 = var(54) = 4
Trigger4 = (root,movetype=A)||(var(52)=0)||(((root,var(59)=0)||(root,time>=10))&&root,movetype=I)
Trigger4 = (root,stateno!=[1500,1510])
Trigger5 = var(54) = 1
Trigger5 = (root,stateno=46)
Trigger6 = var(54) = [5,6]
Trigger6 = (PlayerID(var(59)),movetype!=H&&(root,var(38)>=4||(root,var(0)=0)))||(root,movetype = H)||(PlayerID(var(59)),stateno = [5200,5250])||(PlayerID(var(59)),alive=0)
var(54) = 0

[State -1 54 1];行動パターン
Type = null
ignorehitpause = 1
Triggerall = root,Var(38) >= 2
;1 … 遠距離戦思考フラグ
Trigger1 = var(54)=0||var(54)=5||var(54)=2
Trigger1 = root,var(38)>=3
Trigger1 = (abs(root,p2bodydist x)>170)||((abs(root,p2bodydist x)>80)&&(root,var(40)**3<(root,p2bodydist x)*2))||(root,var(7)=3)||(root,stateno=[47,49])
Trigger1 = var(54)=0||(root,stateno=[47,49])
Trigger1 = (root,var(7)!=3)
Trigger1 = var(54):=1
;2 … 起き攻めフラグ
Trigger2 = playerid(var(59)),movetype = H
Trigger2 = (playerid(var(59)),statetype = L)||(playerid(var(59)),alive=0)||(root,var(19)=1)
Trigger2 = root,Var(38)>=3
Trigger2 = var(54):=2
;3 … 切り返しフラグ1 ダウン後
Trigger3 = root,Var(38)>=3
Trigger3 = root,stateno=5120||(root,movetype=H&&root,statetype=L)||(root,stateno=1510)
Trigger3 = root,p2bodydist x = [-100,100]
Trigger3 = var(54):=3
;4 … 切り返しフラグ2 ダウン以外のやられ状態時
Trigger4 = root,Var(38)>=3
Trigger4 = root,movetype = H
Trigger4 = (root,statetype=S)||(root,statetype=C)
Trigger4 = (var(54)!=3)||(stateno=[150,159])
Trigger4 = var(54):=4
;5 … 連携フラグ ガード編
Trigger5 = playerid(var(59)),alive=1
Trigger5 = var(54)<=4
Trigger5 = root,Var(38)>=3
Trigger5 = (root,moveguarded&&(root,numtarget||root,var(38)<4))||(root,statetype!=A&&(playerid(var(59)),stateno=[150,155]))
Trigger5 = var(54)!=2
Trigger5 =!(root,stateno=[47,49])
Trigger5 = var(54):=5
;6 … 連携フラグ ヒット編
Trigger6 = playerid(var(59)),alive=1
Trigger6 = var(54)<=5
Trigger6 = root,Var(38)>=2
Trigger6 = (root,movehit&&(root,numtarget||root,var(38)<4))||(root,statetype!=A&&(playerid(var(59)),stateno=[5000,5099]))||(root,stateno=801)||(root,stateno=811)||(root,stateno=821)||(playerid(var(59)),stateno=[104000,104008])
Trigger6 = root,movetype!=H
Trigger6 = var(54)!=2
Trigger6 = root,var(19)=0
Trigger6 = var(54):=6
;7 … くらい抜け対策
Trigger7 = var(54)=6
Trigger7 = (root,Var(38)>=3)
Trigger7 = playerid(var(59)),movetype!=H
Trigger7 = playerid(var(59)),stateno!=[5000,5219]
Trigger7 = var(54):=7
;8 … 連携フラグ ヒット編 ダッシュC命中
Trigger8 = playerid(var(59)),alive=1
Trigger8 = var(54)<=5
Trigger8 = root,Var(38)>=2
Trigger8 = numhelper(1400)
Trigger8 = helper(1400),stateno=930
Trigger8 = helper(1400),movehit
Trigger8 = (helper(1400),numtarget(930))||(helper(1400),numtarget(931))||(helper(1400),numtarget(932))
Trigger8 = var(54)!=2
Trigger8 = root,var(19)=0
Trigger8 = var(54):=6
;9 … 連携フラグ ヒット編 ラヴ・ライトニング命中
Trigger9 = playerid(var(59)),alive=1
Trigger9 = var(54)<=5
Trigger9 = root,Var(38)>=2
Trigger9 = numhelper(1412)
Trigger9 = helper(1412),movehit
Trigger9 = (helper(1412),numtarget)
Trigger9 = root,var(19)=0
Trigger9 = var(54):=6
;10 … 連携フラグ ヒット編 ラヴ・ライトニング命中
Trigger10 = playerid(var(59)),alive=1
Trigger10 = var(54)<=5
Trigger10 = root,Var(38)>=2
Trigger10 = numhelper(230)
Trigger10 = helper(230),movehit
Trigger10 = (helper(230),numtarget)
Trigger10 = root,var(19)=0
Trigger10 = var(54):=6
;11 … 連携フラグ ヒット編 ラヴ・ライトニング命中
Trigger11 = playerid(var(59)),alive=1
Trigger11 = var(54)<=5
Trigger11 = root,Var(38)>=2
Trigger11 = numhelper(420)
Trigger11 = helper(420),movehit
Trigger11 = (helper(420),numtarget)
Trigger11 = root,var(19)=0
Trigger11 = var(54):=6

;---------------------------------------------------------------------------
; AIさんの連携決定変数(レベル3から適応される)
;---------------------------------------------------------------------------

[State -1, AI連携フラグ解除]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=1
Triggerall = var(55)>=1
Trigger1 = var(55)=1000&&var(54)!=1
Trigger2 = (var(54) != [5,6])&&(var(54)!=1)
Trigger3 = var(55)=2000&&var(54)!=5
Trigger4 = var(54)=5&&(root,stateno!=1260&&((root,movetype=A&&root,statetype!=A)||(root,stateno=43||root,stateno=46||root,stateno=105)))
Trigger5 = var(55)>=5000&&var(54)!=6
var(55)=0

[State -1, AIコンボ連携フラグ ヘルパー経由]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Triggerall = var(55)<5000
Triggerall = root,statetype=A
Trigger1 = numhelper(1412)
Trigger1 = (helper(1412),numtarget)
Trigger1 = helper(1412),movehit
Trigger2 = numhelper(1400)
Trigger2 = helper(1400),movehit
Trigger2 = (helper(1400),numtarget(930))||(helper(1400),numtarget(931))||(helper(1400),numtarget(932))
Trigger3 = numhelper(230)
Trigger3 = helper(230),movehit
Trigger3 = (helper(230),numtarget)
var(55)=10000

[State -1, AIコンボ連携フラグ 通常]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = var(55)<5000
Trigger2 = var(55)=[5050,5150]
Trigger2 = (root,stateno=[41,43])||(root,stateno=[47,49])
Trigger3 = var(55)>=5820
Trigger3 = root,movehit=1||(root,statetype!=A)||(root,var(59)&&var(55)<10000)
var(55)=5000

[State -1, AIコンボ連携フラグ 拾い直し1]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = root,movehit=1
Trigger1 = root,stateno=[600,610]
Trigger1 = root,pos y+(root,vel y*15-0.53*15*7.5)>0
Trigger1 = root,pos y>-100
Trigger2 = root,movehit=1
Trigger2 = root,stateno!=210
Trigger2 = playerid(var(59)),stateno=[104000,104008]
Trigger3 = root,movehit
Trigger3 = root,stateno=2000||root,stateno=1001
Trigger3 = playerid(var(59)),statetype=A
var(55)=5050

[State -1, AIコンボ連携フラグ 拾い直し2]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = root,stateno=3101
var(55)=5100

[State -1, AIコンボ連携フラグ 拾い直し2]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = root,stateno=2032
var(55)=5150

[State -1, AIコンボ連携フラグ J2B2段目ヒット]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = root,stateno=616
Trigger1 = root,movehit=1
Trigger1 = root,animelemtime(11)>=0
var(55)=5200

[State -1, AIコンボ連携フラグ 空投げ]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(54)=6
Trigger1 = root,stateno=821
Trigger1 = root,time<=2
var(55)=ifelse((root,pos y > -70),5820,5821)

[State -1, AI連携 遠距離弾幕セットプレイフラグ]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(55)=0
Triggerall = var(54)=1
Trigger1 = root,stateno=221
Trigger2 = root,stateno=420
Trigger3 = root,stateno=230
Trigger4 = root,stateno=[47,49]
var(55)=1000

[State -1, AI連携 ガード時セットプレイフラグ]
Type = VarSet
ignorehitpause = 1
Triggerall = root,Var(38)>=3
Triggerall = var(55)<2000
Triggerall = var(54)=5
Triggerall = playerid(var(59)),statetype!=A
Trigger1 = root,stateno=1260
Trigger2 = root,stateno=900
Trigger2 = root,anim=902
var(55)=2000

;---------------------------------------------------------------------------
; 反撃用データ
;---------------------------------------------------------------------------

[State -1 counter switch];相手の動作時間参照
Type = varset
Trigger1 = 1;Var(59)
var(53) = 0

[State -1 counter switch];相手の動作時間参照
Type = varset
Triggerall = 1;Var(59)>=3
Trigger1 = playerid(var(59)),movetype = A
var(53) = abs(playerid(var(59)),animtime)

[State 相手の飛び道具(ヘルパー)感知用2]
type = varset
trigger1 = time
var(2) = playerid(var(59)),numhelper-var(0)

[State 相手の飛び道具(ヘルパー)感知用3]
type = Helper
trigger1 = time
trigger1 = var(1)=0
trigger1 = var(2)>=1
trigger1 = var(3)=0||var(4)=0||var(5)=0||var(6)=0||var(7)=0
helpertype = normal
name = "AI"
postype = back
pos = 0,0
stateno = 60001
id = 60001
keyctrl = 0
pausemovetime=2147483647
supermovetime=2147483647

[State -1, 相手の飛び道具(ヘルパー)感知用4]
Type = VarSet
ignorehitpause = 1
Trigger1 = 1
var(0) = playerid(var(59)),numhelper

[State 保険]
Type = null
ignorehitpause = 1
Triggerall = !numhelper(60001)
Trigger1 = 1
Trigger1 = var(3):=0
Trigger2 = 1
Trigger2 = var(4):=0
Trigger3 = 1
Trigger3 = var(5):=0
Trigger4 = 1
Trigger4 = var(6):=0
Trigger5 = 1
Trigger5 = var(7):=0
Trigger6 = 1
Trigger6 = var(8):=0
Trigger7 = 1
Trigger7 = var(9):=0
Trigger8 = 1
Trigger8 = var(10):=0
Trigger9 = 1
Trigger9 = var(11):=0
Trigger10 = 1
Trigger10 = var(12):=0

[State ];暗転判別用3
type=Varset
trigger1=1
var(47)=root,time

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI補助ヘルパー 飛び道具探索開始
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 60001]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 1860

[state いつもの]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 一応]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 65535
ignorehitpause = 1

[state ID確認]
type = varset
trigger1 = 1
var(1)=ID
ignorehitpause = 1

[state ループ回数確認]
type = varset
trigger1 = 1
var(0)=parent,var(2)
ignorehitpause = 1

[state 検証開始!]
type = changestate
trigger1 = 1
value=60002
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI補助ヘルパー 飛び道具探索中…
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 60002]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 1860

[state いつもの]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[state 一応]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 65535
ignorehitpause = 1

[state 残り回数]
type = varadd
trigger1 = 1
var(0)=-1
ignorehitpause = 1

[state 容疑者]
type = varadd
trigger1 = 1
var(1)=-1
ignorehitpause = 1

[State やり直し]
type       = ChangeState
triggerall = var(0) > 0
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger4   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
trigger5   = teamside = PlayerID(var(1)),teamside
value      = 60002

[State 何でもなかったらしい]
type     = destroyself
triggerall = var(0) <= 0
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger4   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
trigger5   = teamside = PlayerID(var(1)),teamside

[state 粘着開始!]
type = changestate
trigger1 = 1
value=60003
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI補助ヘルパー 飛び道具容疑者調査中(攻撃ヘルパーまでは判明)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 60003]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 1860

[state いつもの]
type = assertspecial
trigger1 = 1
flag = noshadow
;flag2 = invisible
ignorehitpause = 1

[state 一応]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 65535
ignorehitpause = 1

[state 向きをまねる]
type = turn
trigger1 = PlayerIDExist(var(1))
trigger1 = facing!=PlayerID(var(1)),facing
ignorehitpause = 1

[state くっつく]
type = posset
trigger1 = PlayerIDExist(var(1))
x = (PlayerID(var(1)),pos x)
y = (PlayerID(var(1)),pos y)
ignorehitpause = 1

[state 速度もまねる]
type = velset
trigger1 = PlayerIDExist(var(1))
x = (PlayerID(var(1)),vel x)
y = (PlayerID(var(1)),vel y)
ignorehitpause = 1

[state 動かず]
type = posfreeze
trigger1 = 1
ignorehitpause = 1

[state スロット確認1]
type = varset
trigger1 = !time
var(2)=3
persistent=0
ignorehitpause = 1
[state スロット確認2]
type = varadd
trigger1 = !time
trigger1 = var(2)=3
trigger1 = parent,var(3)!=0
var(2)=1
persistent=0
ignorehitpause = 1
[state スロット確認3]
type = varadd
trigger1 = !time
trigger1 = var(2)=4
trigger1 = parent,var(4)!=0
var(2)=1
persistent=0
ignorehitpause = 1
[state スロット確認4]
type = varadd
trigger1 = !time
trigger1 = var(2)=5
trigger1 = parent,var(5)!=0
var(2)=1
persistent=0
ignorehitpause = 1
[state スロット確認5]
type = varadd
trigger1 = !time
trigger1 = var(2)=6
trigger1 = parent,var(6)!=0
var(2)=1
persistent=0
ignorehitpause = 1

[state お知らせ1]
type = parentvarset
trigger1 = PlayerIDExist(var(1))
trigger1 = !time
var(var(2))=var(1)
ignorehitpause = 1

[state お知らせ2]
type = parentvarset
trigger1 = PlayerIDExist(var(1))
trigger1 = !time
var(var(2)+5)=1
ignorehitpause = 1

[state お知らせ1取り消し]
type = parentvarset
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger4   = helper(60000),var(57)=0
trigger5   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
var(var(2))=0
ignorehitpause = 1

[state お知らせ2取り消し]
type = parentvarset
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger4   = helper(60000),var(57)=0
trigger5   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
var(var(2)+5)=0
ignorehitpause = 1

[State 終わり…]
type     = destroyself
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger4   = helper(60000),var(57)=0
trigger5   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2

[state 飛び道具感知完了!]
type = changestate
trigger1 = PlayerID(var(1)),hitdefattr=SCA,AP
value=60004
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI補助ヘルパー 飛び道具感知! 情報を持って待つ!
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Statedef 60004]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 1860

[state いつもの]
type = assertspecial
trigger1 = 1
flag = noshadow
;flag2 = invisible
ignorehitpause = 1

[state 一応]
type = nothitby
trigger1 = 1
value = SCA,AA,AP,AT
time = 65535
ignorehitpause = 1

[state 向きをまねる]
type = turn
trigger1 = PlayerIDExist(var(1))
trigger1 = facing!=PlayerID(var(1)),facing
ignorehitpause = 1

[state くっつく]
type = posset
trigger1 = PlayerIDExist(var(1))
x = (PlayerID(var(1)),pos x)
y = (PlayerID(var(1)),pos y)
ignorehitpause = 1

[state 速度もまねる]
type = velset
trigger1 = PlayerIDExist(var(1))
x = (PlayerID(var(1)),vel x)
y = (PlayerID(var(1)),vel y)
ignorehitpause = 1

[state 動かず]
type = posfreeze
trigger1 = 1
ignorehitpause = 1

[state お知らせ2]
type = parentvarset
trigger1 = PlayerIDExist(var(1))
trigger1 = !time
var(var(2)+5)=2
ignorehitpause = 1

[state お知らせ1取り消し]
type = parentvarset
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4 = PlayerID(var(1)),hitdefattr!=SCA,AP
trigger5   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger5   = helper(60000),var(57)=0
trigger6   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
var(var(2))=0
ignorehitpause = 1

[state お知らせ2取り消し]
type = parentvarset
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4 = PlayerID(var(1)),hitdefattr!=SCA,AP
trigger5   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger5   = helper(60000),var(57)=0
trigger6   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2
var(var(2)+5)=0
ignorehitpause = 1

[State 終わり…]
type     = destroyself
trigger1   = !PlayerIDExist(var(1))
trigger2   = PlayerID(var(1)),movetype != A
trigger3   = teamside = PlayerID(var(1)),teamside
trigger4 = PlayerID(var(1)),hitdefattr!=SCA,AP
trigger5   = PlayerID(var(1)),ScreenPos X < 0 || PlayerID(var(1)),ScreenPos X > root,var(52)*2
trigger5   = helper(60000),var(57)=0
trigger6   = PlayerID(var(1)),ScreenPos Y < 0 || PlayerID(var(1)),ScreenPos Y > root,var(53)*2

