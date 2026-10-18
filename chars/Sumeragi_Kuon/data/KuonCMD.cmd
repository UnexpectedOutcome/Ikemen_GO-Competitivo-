
[Command]
name="Super"
command=F,D,B,F,x+y
time=40

[Command]
name="Super"
command=F,DB,F,x+y
time=20

[Command]
name="623xy"
command=F,D,DF,x+y

[Command]
name="623z"
command=F,D,DF,z

[Command]
name="623y"
command=F,D,DF,y

[Command]
name="623x"
command=F,D,DF,x

[Command]
name="236xy"
command=D,DF,F,x+y

[Command]
name="236z"
command=D,DF,F,z

[Command]
name="236y"
command=D,DF,F,y

[Command]
name="236x"
command=D,DF,F,x

[Command]
name="214xy"
command=D,DB,B,x+y

[Command]
name="214z"
command=D,DB,B,z

[Command]
name="214y"
command=D,DB,B,y

[Command]
name="214x"
command=D,DB,B,x

[Command]
name="bp"
command=x+y+z

[Command]
name="bc"
command=x+y

[Command]
name="br"
command=y+z

[Command]
name="nage"
command=a+x

[Command]
name="b+c"
command=b+c

[Command]
name="HJump"
command=~$D,$U
time=4

[Command]
name="FF"     
command=F,F

[Command]
name="BB"     
command=B,B

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
command=a+b+c

[Command]
name="recovery"
command=z

[Statedef -1]

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
trigger5 = stateno = 624
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

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 特殊システム動作
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State ]
type=PalFX
trigger1=(command="bp")&&!numhelper(1350)&&!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
time=0

[State ]
type=Helper
trigger1=(command="bp")&&!numhelper(1350)&&!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
helpertype=normal
name="bride purge"
ID=1350
postype=p1
pos=0,floor(-70*fvar(33))
stateno=1350
supermovetime=1000
pausemovetime=1000

[State ]
type=Helper
trigger1=(command="bp")&&!numhelper(1351)&&var(7)!=3&&var(50)>=300&&movetype=H&&(stateno=[5000,5099])&&alive&&fvar(16)=0
helpertype=normal
name="bride purge effect"
ID=1351
postype=p1
pos=0,floor(-70*fvar(33))
stateno=1351
supermovetime=1000
pausemovetime=1000

[State ];エンゲージクライマックス
type=ChangeState
value=3400
triggerall=var(50)>=900&&var(46)=0&&statetype!=A&&movetype!=H&&roundstate=2
triggerall=!numhelper(1400)
triggerall=helper(3000),var(35)=0
triggerall=(command="bp")||(helper(3000),var(47)=3400)
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])||(stateno=40)||(stateno=48)
trigger1=ctrl||(stateno=[100,101])||(stateno=40)||(stateno=48)
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])&&var(1)
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)

[State ];カウンター
type=ChangeState
value=1300
trigger1=movetype=H&&power>=1000&&statetype!=A&&command="holdfwd"&&command="bc"&&(stateno=[150,153])
trigger1=!numhelper(1400)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 必殺技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, 3100];セイクリッドジャッジメント
type=ChangeState
value=3100
triggerall=!numhelper(1400)
triggerall=power>=3000||var(46)=1
triggerall=(command="Super")||(helper(3000),var(45)=3100)
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)
trigger12=(stateno=2000)

[State -1, 3100];セイクリッドジャッジメントシンプル
type=ChangeState
value=3100
triggerall=!numhelper(1400)
triggerall=power>=3000||var(46)=1
triggerall=(helper(3000),var(45)=1)||(helper(3000),var(45)=3)
triggerall=((stateno=[1000,1001])&&var(0)=2&&(animelemtime(8)>=1))||((helper(3000),var(45)=3)&&(command="holdfwd"))
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)
trigger12=(stateno=2000)

[State -1, 2010];エリアルジャッジEX
type=ChangeState
value=ifelse(statetype=A,2020,2010)
triggerall=power>=1000
triggerall=(command="623xy")||(helper(3000),var(45)=2010)
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)
trigger11=(stateno=[1000,1001])&&var(1)
trigger12=(stateno=[1010,1011])&&var(1)
trigger13=(stateno=[1020,1021])&&var(1)
trigger14=(stateno=[1030,1031])&&var(1)
trigger15=(stateno=1400)&&var(1)
trigger16=(stateno=1410)&&var(1)
trigger17=(stateno=1420)&&var(1)

[State -1, 2010];エリアルジャッジEXシンプル
type=ChangeState
value=ifelse(statetype=A,2020,2010)
triggerall=power>=1000
triggerall=(helper(3000),var(45)=3)||(helper(3000),var(45)=1)
triggerall=(helper(3000),var(45)=3)||(stateno=616)
triggerall=(helper(3000),var(45)=3)||(!var(1))
triggerall=(command="holddown")||(stateno=616)
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)
trigger11=(stateno=[1000,1001])&&var(1)
trigger12=(stateno=[1010,1011])&&var(1)
trigger13=(stateno=[1020,1021])&&var(1)
trigger14=(stateno=[1030,1031])&&var(1)
trigger15=(stateno=1400)&&var(1)
trigger16=(stateno=1410)&&var(1)
trigger17=(stateno=1420)&&var(1)

[State -1, 2000];ヘブンスラストEX
type=ChangeState
value=2000
triggerall=power>=1000
triggerall=(command="236xy")||(helper(3000),var(45)=2000)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])&&var(1)
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)

[State -1, 2000];ヘブンスラストEXシンプル
type=ChangeState
value=2000
triggerall=power>=1000
triggerall=(helper(3000),var(45)=3)
triggerall=command!="holdback"
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])&&var(1)
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)

[State -1, 2030];クレストバッシュEX
type=ChangeState
value=2030
triggerall=power>=1000
triggerall=(command="214xy")||(helper(3000),var(45)=2030)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])&&var(1)
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)

[State -1, 2030];クレストバッシュEXシンプル
type=ChangeState
value=2030
triggerall=power>=1000
triggerall=(helper(3000),var(45)=3)
triggerall=command="holdback"
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)
trigger6=(stateno=[1000,1001])&&var(1)
trigger7=(stateno=[1010,1011])&&var(1)
trigger8=(stateno=[1030,1031])&&var(1)
trigger9=(stateno=1400)&&var(1)
trigger10=(stateno=1410)&&var(1)
trigger11=(stateno=1420)&&var(1)

[State -1, 1410];ラヴ・ライトニング
type=ChangeState
value=1410
triggerall=(command="623z")||(helper(3000),var(45)=1410)
triggerall=var(7)!=3&&!numhelper(1400)
triggerall=ctrl||var(0)||(stateno=[100,101])||var(1)=1
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)

[State -1, 1400];ラヴ・セイバー
type=ChangeState
value=1400
triggerall=(command="236z")||(helper(3000),var(45)=1400)
triggerall=var(7)!=3&&!numhelper(1400)
triggerall=ctrl||var(0)||(stateno=[100,101])||var(1)=1
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)

[State -1, 1400];ラヴ・フラッシュ
type=ChangeState
value=1420
triggerall=(command="214z")||(helper(3000),var(45)=1420)
triggerall=statetype!=A&&var(7)!=3&&!numhelper(1400)
triggerall=ctrl||var(0)||(stateno=[100,101])||var(1)=1
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

[State -1, 1011];エリアルジャッジB
type=ChangeState
value=ifelse(statetype=A,1021,1011)
triggerall=(command="623y")||(helper(3000),var(45)=1011)
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)

[State -1, 1011];エリアルジャッジBシンプル
type=ChangeState
value=ifelse(statetype=A,1021,1011)
triggerall=(helper(3000),var(45)=2)
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(command="holdfwd")
triggerall=(command!="holdback")||(statetype=A)
triggerall=(command="holddown")
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=900)
trigger6=(stateno=920)

[State -1, 1010];エリアルジャッジA
type=ChangeState
value=ifelse(statetype=A,1020,1010)
triggerall=(command="623x")||(helper(3000),var(45)=1010)
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=800)&&var(1)
trigger6=(stateno=810)&&var(1)
trigger7=(stateno=820)&&var(1)
trigger8=(stateno=900)
trigger9=(stateno=910)&&var(1)
trigger10=(stateno=920)

[State -1, 1010];エリアルジャッジAシンプル
type=ChangeState
value=ifelse(statetype=A,1020,1010)
triggerall=(helper(3000),var(45)=2)
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(command!="holdback")||(statetype=A)
triggerall=(command="holddown")
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=[600,640])
trigger5=(stateno=900)
trigger6=(stateno=920)

[State -1, 1001];ヘブンスラストB
type=ChangeState
value=1001
triggerall=(command="236y")||(helper(3000),var(45)=1001)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)

[State -1, 1001];ヘブンスラストBシンプル
type=ChangeState
value=1001
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(helper(3000),var(45)=[1,2])
triggerall=(command="holdfwd"&&(helper(3000),var(45)=2))||(stateno=210&&animelemno(0)<8&&((var(7)=3)))
triggerall=((command!="holdback")&&(command!="holddown"))||(helper(3000),var(45)=1)
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

[State -1, 1000];ヘブンスラストA
type=ChangeState
value=1000
triggerall=(command="236x")||(helper(3000),var(45)=1000)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)

[State -1, 1000];ヘブンスラストAシンプル
type=ChangeState
value=1000
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(helper(3000),var(45)=[1,2])
triggerall=((command!="holdback")&&(command!="holddown"))||(helper(3000),var(45)=1)
triggerall=(helper(3000),var(45)=2)||(stateno=410&&var(0)=2)
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

[State -1, 1031];クレストバッシュB
type=ChangeState
value=1031
triggerall=(command="214y")||(helper(3000),var(45)=1031)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

[State -1, 1031];クレストバッシュBシンプル
type=ChangeState
value=1031
triggerall=(helper(3000),var(45)=2)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(command="holdback")&&(command="holddown")
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

[State -1, 1030];クレストバッシュA
type=ChangeState
value=1030
triggerall=(command="214x")||(helper(3000),var(45)=1030)
triggerall=statetype!=A
triggerall=ctrl||var(0)||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])
trigger4=(stateno=800)&&var(1)
trigger5=(stateno=810)&&var(1)

[State -1, 1030];クレストバッシュAシンプル
type=ChangeState
value=1030
triggerall=(helper(3000),var(45)=2)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=(command="holdback")
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,230])
trigger3=(stateno=[400,420])

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 通常技
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, ];空中投げ
type=ChangeState
value=820
triggerall=(command="nage")||(helper(3000),var(45)=[800,810])
triggerall=statetype=A
triggerall=ctrl||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])&&var(1)
trigger3=(stateno=[400,410])&&var(1)

[State -1, ];後ろ投げ
type=ChangeState
value=810
triggerall=(command="nage"&&command="holdback")||(helper(3000),var(45)=810)
triggerall=statetype=S
triggerall=ctrl||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])&&var(1)
trigger3=(stateno=[400,410])&&var(1)

[State -1, ];ニュートラル投げ
type=ChangeState
value=800
triggerall=(command="nage")||(helper(3000),var(45)=800)
triggerall=statetype=S
triggerall=ctrl||var(1)=1||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])&&var(1)
trigger3=(stateno=[400,410])&&var(1)

[State -1, 230];6C
type=ChangeState
value=230
triggerall=(command="z"&&command!="holddown"&&command="holdfwd")||(helper(3000),var(45)=230)
triggerall=statetype!=A&&var(7)!=3
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])
trigger3=(stateno=[400,410])

[State -1, 230];6Cシンプル
type=ChangeState
value=230
triggerall=(helper(3000),var(45)=1)
triggerall=statetype!=A&&var(7)!=3
triggerall=var(0)
triggerall=command!="holddown"
trigger1=(stateno=210||stateno=410)
trigger1=var(0)=1

[State -1, 220];5C
type=ChangeState
value=220
triggerall=(command="z"&&command!="holddown"&&command!="holdfwd")||(helper(3000),var(45)=220)
triggerall=statetype!=A&&var(7)!=3
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])
trigger3=(stateno=[400,410])

[State -1, 420];2C
type=ChangeState
value=420
triggerall=(command="z"&&command="holddown")||(helper(3000),var(45)=420)
triggerall=statetype!=A&&var(7)!=3
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,210])
trigger3=(stateno=[400,410])

[State -1, 420];2Cシンプル
type=ChangeState
value=420
triggerall=(helper(3000),var(45)=1)
triggerall=statetype!=A&&var(7)!=3
triggerall=var(0)
trigger1=(stateno=210)
trigger2=(stateno=[200,206])
trigger2=enemynear,statetype=A
trigger3=(stateno=210||stateno=410)
trigger3=var(0)=1

[State -1, 630];J6C
type=ChangeState
value=630
triggerall=(command="z"&&command="holdfwd"&&command!="holddown")||(helper(3000),var(45)=230)
triggerall=statetype=A&&var(7)!=3
triggerall=ctrl||var(0)
trigger1=ctrl
trigger2=(stateno=[600,616])

[State -1, 624];J2C
type=ChangeState
value=624
triggerall=(command="z"&&command="holddown")||(helper(3000),var(45)=420)
triggerall=statetype=A&&var(7)!=3
triggerall=ctrl||var(0)
trigger1=ctrl
trigger2=(stateno=[600,616])

[State -1, 620];JC
type=ChangeState
value=620
triggerall=(command="z"&&command!="holdfwd"&&command!="holddown")||(helper(3000),var(45)=220)
triggerall=statetype=A&&var(7)!=3
triggerall=ctrl||var(0)
trigger1=ctrl
trigger2=(stateno=[600,616])

[State -1, 620];JCシンプル
type=ChangeState
value=620
triggerall=(helper(3000),var(45)=1)
triggerall=statetype=A&&var(7)!=3
triggerall=var(0)
trigger1=(stateno=610)
trigger1=!var(4)&&(enemynear,statetype=A)

[State -1, 210];5B
type=ChangeState
value=210
triggerall=(command="y"&&command!="holddown")||(helper(3000),var(45)=210)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,206])
trigger3=stateno=400

[State -1, 210];5Bシンプル
type=ChangeState
value=210
triggerall=(helper(3000),var(45)=1)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger1=command="holddown"&&command="holdfwd"
trigger2=stateno=206&&p2bodydist x<40
trigger3=command="holddown"&&command="holdfwd"
trigger3=stateno=200||stateno=400

[State -1, 410];2B
type=ChangeState
value=410
triggerall=(command="y"&&command="holddown")||(helper(3000),var(45)=410)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=(stateno=[200,206])
trigger3=stateno=400

[State -1, 410];2Bシンプル
type=ChangeState
value=410
triggerall=(helper(3000),var(45)=1)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=command="holddown"
trigger1=(ctrl||(stateno=[100,101]))&&p2bodydist x>=45
trigger2=command="holddown"
trigger2=stateno=400&&p2bodydist x>=35
trigger3=(stateno=206)&&p2bodydist x>=40

[State -1, 616];J6B
type=ChangeState
value=616
triggerall=(command="y"&&command="holdfwd")||(helper(3000),var(45)=616)
triggerall=statetype=A
triggerall=ctrl||var(0)
trigger1=ctrl
trigger2=stateno=600
trigger3=stateno=610

[State -1, 616];J6Bシンプル
type=ChangeState
value=616
triggerall=(helper(3000),var(45)=1)
triggerall=statetype=A
triggerall=ctrl||var(0)
trigger1=ctrl
trigger1=command="holdup"
trigger2=stateno=610
trigger2=(var(4)&&enemynear,statetype=A)||command="holdup"

[State -1, 610];JB
type=ChangeState
value=610
triggerall=(command="y"&&command!="holdfwd")||(helper(3000),var(45)=210)||(helper(3000),var(45)=410)
triggerall=statetype=A
triggerall=ctrl||var(0)
trigger1=ctrl
trigger2=stateno=600

[State -1, 610];JBシンプル
type=ChangeState
value=610
triggerall=(helper(3000),var(45)=1)
triggerall=statetype=A
triggerall=ctrl||var(0)
trigger1=ctrl
trigger1=(command="holddown")||(var(4)=1&&enemynear,stateno=[5000,5099])
trigger2=stateno=600

[State -1, 206];6A
type=ChangeState
value=206
triggerall=(command="x"&&command="holdfwd"&&command!="holddown")||(helper(3000),var(45)=206)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=stateno=200
trigger3=stateno=400

[State -1, 206];6Aシンプル
type=ChangeState
value=206
triggerall=(helper(3000),var(45)=1)
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])
trigger1=command="holdfwd"
trigger2=stateno=200

[State -1, 200];5A
type=ChangeState
value=200
triggerall=(command="x"&&command!="holdfwd"&&command!="holddown")||(helper(3000),var(45)=200)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=stateno=400

[State -1, 200];5Aシンプル
type=ChangeState
value=200
triggerall=(helper(3000),var(45)=1)
triggerall=command!="holddown"
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=stateno=400

[State -1, 400];2A
type=ChangeState
value=400
triggerall=(command="x"&&command="holddown")||(helper(3000),var(45)=400)
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
trigger1=ctrl||(stateno=[100,101])
trigger2=stateno=400

[State -1, 400];2Aシンプル
type=ChangeState
value=400
triggerall=(helper(3000),var(45)=1)
triggerall=command="holddown"
triggerall=statetype!=A
triggerall=ctrl||var(0)||(stateno=[100,101])
triggerall=p2bodydist y < 45
trigger1=ctrl||(stateno=[100,101])
trigger2=stateno=400

[State -1, 600];JA
type=ChangeState
value=600
triggerall=(command="x")||(helper(3000),var(45)=[200,206])||(helper(3000),var(45)=400)
triggerall=statetype=A
triggerall=ctrl||var(0)
trigger1=ctrl

[State -1, 600];JAシンプル
type=ChangeState
value=600
triggerall=(helper(3000),var(45)=1)
triggerall=statetype=A
trigger1=ctrl

[State -1, 920];DC
type=ChangeState
value=920
triggerall=(command="z")||(helper(3000),var(45)=[220,230])||(helper(3000),var(45)=420)
triggerall=stateno=1270||(var(0))
triggerall=var(7)!=3&&!numhelper(1400)
trigger1=stateno=1270
trigger2=stateno=900&&animelemtime(6)<0

[State -1, 920];DCシンプル
type=ChangeState
value=920
triggerall=(helper(3000),var(45)=[1,2])
triggerall=stateno=1270||(var(0))
triggerall=var(7)!=3&&!numhelper(1400)
trigger1=(helper(3000),var(45)=2)
trigger1=stateno=1270
trigger2=(helper(3000),var(45)=1)
trigger2=stateno=900&&animelemtime(6)<0

[State -1, 910];DB
type=ChangeState
value=910
triggerall=(command="y")||(helper(3000),var(45)=210)||(helper(3000),var(45)=410)||(helper(3000),var(45)=616)
triggerall=stateno=1270||(var(0))
trigger1=stateno=1270
trigger2=stateno=900&&animelemtime(6)<0

[State -1, 910];DBシンプル
type=ChangeState
value=910
trigger1=stateno=900&&animelemtime(6)<0&&(var(0))
trigger1=(helper(3000),var(45)=1)

[State -1, 900];DA
type=ChangeState
value=900
triggerall=(command="x")||(helper(3000),var(45)=[200,206])||(helper(3000),var(45)=400)
trigger1=stateno=1270

[State -1, 900];DAシンプル
type=ChangeState
value=900
triggerall=(helper(3000),var(45)=1)
trigger1=stateno=1270

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; その他の動作
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, 1260];ブライドダッシュ
type=ChangeState
value=ifelse(statetype=A,1261,1260)
triggerall=numhelper(3000)&&var(28)<=1&&var(7)!=3
triggerall=command="a"||(helper(3000),var(47)=1260)
triggerall=helper(3000),var(35)=0
triggerall=ctrl||var(0)||stateno=40
trigger1=ctrl||stateno=40
trigger2=stateno=[200,230]
trigger3=stateno=[400,420]
trigger4=stateno=[600,640]
trigger5=stateno=801
trigger6=stateno=821
trigger7=stateno=920
trigger8=stateno=1400
trigger9=stateno=1410
trigger10=stateno=1420


[State -1, 100];フロントステップ
type=ChangeState
value=100
triggerall=numhelper(3000)
triggerall=command="FF"||(helper(3000),var(47)=100)
triggerall=helper(3000),var(35)=0&&statetype=S
trigger1=ctrl

[State -1, 105];バックステップ
type=ChangeState
value=105
triggerall=numhelper(3000)
triggerall=command="BB"||(helper(3000),var(47)=105)
triggerall=helper(3000),var(35)=0&&statetype=S
trigger1=ctrl

[State -1, 48];ハイジャンプ
type=ChangeState
value=48
triggerall=numhelper(3000)
triggerall=command="HJump"||(helper(3000),var(47)=48)
triggerall=statetype!=A
triggerall=ctrl||var(0)||stateno=100
trigger1=ctrl||stateno=100
trigger2=stateno=[220,230]
trigger3=stateno=420
trigger4=stateno=1400
trigger5=stateno=1410
trigger6=stateno=1420

[State -1, 48];ハイジャンプシンプル
type=ChangeState
value=48
triggerall=numhelper(3000)
triggerall=(helper(3000),var(45)=1)
triggerall=statetype!=A
triggerall=var(0)
trigger1=stateno=420

[State -1, 40];地上ジャンプ
type=ChangeState
value=40
triggerall=numhelper(3000)
triggerall=command="holdup"||(helper(3000),var(47)=40)
triggerall=statetype!=A
triggerall=ctrl||var(0)||stateno=100
trigger1=ctrl||stateno=100
trigger2=stateno=[220,230]
trigger3=stateno=420
trigger4=stateno=1400
trigger5=stateno=1410
trigger6=stateno=1420

[State -1, 45];空中ジャンプ(キャンセル)
type=ChangeState
value=45
triggerall=numhelper(3000)
triggerall=(command="holdup")||(command="up")||(helper(3000),var(47)=40)
triggerall=var(4)<1
triggerall=statetype=A
triggerall=var(0)
trigger1=stateno=[620,640]
trigger2=stateno=920
trigger3=stateno=1400
trigger4=stateno=1410
trigger5=stateno=1420

[State -1, 45];空中ジャンプシンプル
type=ChangeState
value=45
triggerall=numhelper(3000)
triggerall=(helper(3000),var(45)=1)
triggerall=var(4)<1
triggerall=statetype=A
triggerall=var(0)
trigger1=(stateno=[621,622])
trigger2=stateno=920

[State -1, 45];空中ジャンプ
type=ChangeState
value=45
triggerall=numhelper(3000)
triggerall=(command="holdup")||(command="up")
triggerall=var(12)=0
triggerall=var(4)<1
triggerall=statetype=A
trigger1=ctrl

