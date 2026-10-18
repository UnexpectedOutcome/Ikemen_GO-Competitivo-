;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------

[Remap]
x = x      ;Ｘボタン
y = y      ;Ｙボタン
z = z      ;Ｚボタン
a = a      ;Ａボタン
b = b      ;Ｂボタン
c = c      ;Ｃボタン
s = s      ;スタートボタン

;------------------------------------------------------------------------------
;-| デフォルト設定 |-----------------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1

;-| AI判別 |-----------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------

[Command]
name= "fall"
command= ~D,F,D,F,c
time = 30

[Command]
name="max"
command = ~D,F,D,F,z
time = 30



[Command]
name="slash"
command=~D,F,D,F,a
time = 30
[Command]
name="slash"
command=~D,F,D,F,b
time = 30

[Command]
name="arondight"
command=~D,F,D,F,x
time = 30
[Command]
name="arondight"
command=~D,F,D,F,y
time = 30


;-| Special Motions |------------------------------------------------------

[Command]
name="spiral_x"
command=~F, D, DF, x
time = 30

[Command]
name="spiral_y"
command=~F, D, DF, y
time = 30

[Command]
name="calvary_x"
command=~B, DB, B, x
time = 30

[Command]
name="calvary_y"
command=~B, DB, B, y
time = 30

;[Command]
;name="calvary_xy"
;command=~B, D, F, x+y
;time = 30

[Command]
name="divene_x"
command=~D, DF, F, x
time = 30

[Command]
name="divene_y"
command=~D, DF, F, y
time = 30

;[Command]
;name="divene_xy"
;command=~D, DF, F, x+y
;time = 30

[Command]
name="maiden_a"
command=~D, DF, F, a
time = 30

[Command]
name="maiden_b"
command=~D, DF, F, b
time = 30

;[Command]
;name="maiden_ab"
;command=~D, DF, F, a+b
;time = 30

[Command]
name="blind_x"
command=~D, DB, B, x
time = 30

[Command]
name="blind_y"
command=~D, DB, B, y
time = 30

[Command]
name="blind_a"
command=~D, DB, B, a
time = 30

[Command]
name="blind_b"
command=~D, DB, B, b
time = 30



;[Command]
;name="spiral_xy"
;command=~F, D, DF, x+y
;time = 30

;-| Double Tap |-----------------------------------------------------------

[Command]
name="FF"
command=F, F
time=10

[Command]
name="BB"
command=B, B
time=10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name="x+a"
command=x+a
time=1



[Command]
name="recovery"
command=z
time=1

[Command]
name="recovery"
command=x+a
time=1

;-| Dir + Button |---------------------------------------------------------

[Command]
name="fwd_x"
command=/F,x

[Command]
name="fwd_y"
command=/F, y
time=1

[Command]
name="fwd_a"
command=/F,a
time=1

[Command]
name="fwd_b"
command=/F, b
time=1

[Command]
name="df_b"
command=/DF, b
time=1

;-| Single Button |---------------------------------------------------------

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
name="s"
command=s
time=1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name="hold_x"
command=/$x
time=1

[Command]
name="hold_y"
command=/$y
time=1

[Command]
name="hold_a"
command=/$a
time=1

[Command]
name="hold_b"
command=/$b
time=1

[Command]
name="hold_c"
command=/$c
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
name="holdupb"
command=/$UB
time=1

[Command]
name="holdupf"
command=/$UF
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
name="back"
command=B
time=1

[Command]
name="upback"
command=UB
time=1

[Command]
name="downback"
command=DB
time=1

[Command]
name="up"
command=U
time=1

[Command]
name="down"
command=D
time=1

[Command]
name="right"
command=F
time=1

[Command]
name="left"
command=B
time=1

[Command]
name="jump"
command=D, $U

;---------------------------------------------------------------------------

[Statedef -1]
;---------------------------------------------------------------------------
;超必殺
;---------------------------------------------------------------------------
; 次元廻廊
[State -1]
type=ChangeState
value=3300
triggerall=command="fall"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; マキシマムスラッシュ
[State -1]
type=ChangeState
value=3200
triggerall=command="max"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; アロンダイト
[State -1]
type=ChangeState
value=3000
triggerall=command="arondight"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


; ダムドスラッシュ
[State -1]
type=ChangeState
value=3100
triggerall=command="slash"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;---------------------------------------------------------------------------
;必殺
;---------------------------------------------------------------------------
; EXカルバリィブレード
;[State -1]
;type=ChangeState
;value=1420
;TriggerAll=Var(59)<=0&&Alive
;triggerall=power>=500
;triggerall=command="calvary_xy"
;triggerall=statetype!=A
;trigger1=ctrl

; 弱カルバリィブレード
[State -1]
type=ChangeState
value=1400
triggerall=command="calvary_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強カルバリィブレード
[State -1]
type=ChangeState
value=1410
triggerall=command="calvary_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; EXスパイラルブレード
;[State -1]
;type=ChangeState
;value=1320
;TriggerAll=Var(59)<=0&&Alive
;triggerall=power>=500
;triggerall=command="spiral_xy"
;triggerall=statetype!=A
;trigger1=ctrl
;trigger2=stateno=[1500,1590]
;trigger2=time>12
;trigger3=stateno=[1000,1026]
;trigger3=movecontact>=5
;trigger3=AnimElemtime(5)>=0
;trigger4=stateno=[1100,1126]
;trigger4=movecontact>=5
;trigger4=AnimElemtime(5)>=0
;trigger5=stateno=[200,230]
;trigger5=movecontact>=5

; 弱スパイラルブレード
[State -1]
type=ChangeState
value=1300
triggerall=command="spiral_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強スパイラルブレード
[State -1]
type=ChangeState
value=1310
triggerall=command="spiral_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 弱スパイラルブレード（ガード）
;[State -1]
;type=ChangeState
;value=1301
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="spiral_x"
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 強スパイラルブレード（ガード）
;[State -1]
;type=ChangeState
;value=1311
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="spiral_y"
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; EXディバインブレード
;[State -1]
;type=ChangeState
;value=1020
;TriggerAll=Var(59)<=0&&Alive
;triggerall=power>=500
;triggerall=command="divene_xy"
;triggerall=statetype!=A
;trigger1=ctrl
;trigger2=stateno=[1500,1590]
;trigger2=time>12
;trigger3=stateno=[1100,1126]
;trigger3=movecontact>=5
;trigger3=AnimElemtime(5)>=0
;trigger4=stateno=[200,430]
;trigger4=movecontact>=5

; 弱ディバインブレード
[State -1]
type=ChangeState
value=1000
triggerall=command="divene_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強ディバインブレード
[State -1]
type=ChangeState
value=1010
triggerall=command="divene_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; EXメイデンブレード
;[State -1]
;type=ChangeState
;value=1120
;TriggerAll=Var(59)<=0&&Alive
;triggerall=power>=500
;triggerall=command="maiden_ab"
;triggerall=statetype!=A
;trigger1=ctrl
;trigger2=stateno=[1500,1590]
;trigger2=time>12
;trigger3=stateno=[1000,1026]
;trigger3=movecontact>=5
;trigger3=AnimElemtime(5)>=0
;trigger4=stateno=[200,430]
;trigger4=movecontact>=5

; 弱メイデンブレード
[State -1]
type=ChangeState
value=1100
triggerall=command="maiden_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強メイデンブレード
[State -1]
type=ChangeState
value=1110
triggerall=command="maiden_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; EXエリアルブレード
;[State -1]
;type=ChangeState
;value=1220
;TriggerAll=Var(59)<=0&&Alive
;triggerall=power>=500
;triggerall=command="divene_xy"
;triggerall=statetype=A
;triggerall=Pos Y<-20
;trigger1=ctrl
;trigger2=stateno=[1500,1590]
;trigger3=stateno=[1300,1326]
;trigger3=AnimElemtime(5)>=0
;trigger4=stateno=[600,630]
;trigger4=movecontact>=5

; 弱エリアルブレード
[State -1]
type=ChangeState
value=1200
triggerall=command="divene_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 強エリアルブレード
[State -1]
type=ChangeState
value=1210
triggerall=command="divene_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 弱ブラインドアタック
[State -1]
type=ChangeState
value=1500
triggerall=command="blind_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強ブラインドアタック
[State -1]
type=ChangeState
value=1510
triggerall=command="blind_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 弱ブラインドアタック（上昇）
[State -1]
type=ChangeState
value=1520
triggerall=command="blind_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 強ブラインドアタック（上昇）
[State -1]
type=ChangeState
value=1530
triggerall=command="blind_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; 空中弱ブラインドアタック
[State -1]
type=ChangeState
value=1540
triggerall=command="blind_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 空中強ブラインドアタック
[State -1]
type=ChangeState
value=1550
triggerall=command="blind_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 空中弱ブラインドアタック（下降）
[State -1]
type=ChangeState
value=1560
triggerall=command="blind_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 空中強ブラインドアタック（下降）
[State -1]
type=ChangeState
value=1570
triggerall=command="blind_b"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 弱ブラインドアタック（ガード）
;[State -1]
;type=ChangeState
;value=1502
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_x"
;triggerall=statetype!=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 強ブラインドアタック（ガード）
;[State -1]
;type=ChangeState
;value=1512
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_y"
;triggerall=statetype!=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 弱ブラインドアタック（ガード・上昇）
;[State -1]
;type=ChangeState
;value=1522
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_a"
;triggerall=statetype!=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 強ブラインドアタック（ガード・上昇）
;[State -1]
;type=ChangeState
;value=1532
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_b"
;triggerall=statetype!=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 空中弱ブラインドアタック（ガード）
;[State -1]
;type=ChangeState
;value=1542
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_x"
;triggerall=statetype=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=154
;trigger1=time<15

; 空中強ブラインドアタック（ガード）
;[State -1]
;type=ChangeState
;value=1552
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_y"
;triggerall=statetype=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=154
;trigger1=time<15

; 空中弱ブラインドアタック（ガード・下降）
;[State -1]
;type=ChangeState
;value=1562
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_a"
;triggerall=statetype=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=154
;trigger1=time<15

; 空中強ブラインドアタック（ガード・下降）
;[State -1]
;type=ChangeState
;value=1572
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_b"
;triggerall=statetype=A
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=154
;trigger1=time<15

; 弱ブラインドアタック（キャンセル）
;[State -1]
;type=ChangeState
;value=1502
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_x"
;triggerall=statetype!=A
;triggerall=var(8)=1
;trigger1=power>=1000

; 強ブラインドアタック（キャンセル）
;[State -1]
;type=ChangeState
;value=1512
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_y"
;triggerall=statetype!=A
;triggerall=var(8)=1
;trigger1=power>=1000

; 弱ブラインドアタック（キャンセル・上昇）
;[State -1]
;type=ChangeState
;value=1522
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_a"
;triggerall=statetype!=A
;triggerall=var(8)=1
;trigger1=power>=1000

; 強ブラインドアタック（キャンセル・上昇）
;[State -1]
;type=ChangeState
;value=1532
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_b"
;triggerall=statetype!=A
;triggerall=var(8)=1
;trigger1=power>=1000

; 空中弱ブラインドアタック（キャンセル）
;[State -1]
;type=ChangeState
;value=1542
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_x"
;triggerall=statetype=A
;triggerall=var(8)=2
;trigger1=power>=1000

; 空中強ブラインドアタック（キャンセル）
;[State -1]
;type=ChangeState
;value=1552
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_y"
;triggerall=statetype=A
;triggerall=var(8)=2
;trigger1=power>=1000

; 空中弱ブラインドアタック（キャンセル・下降）
;[State -1]
;type=ChangeState
;value=1562
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_a"
;triggerall=statetype=A
;triggerall=var(8)=2
;trigger1=power>=1000

; 空中強ブラインドアタック（キャンセル・下降）
;[State -1]
;type=ChangeState
;value=1572
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="blind_b"
;triggerall=statetype=A
;triggerall=var(8)=2
;trigger1=power>=1000

;---------------------------------------------------------------------------
;移動
;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type=ChangeState
value=100
TriggerAll=Var(59)<=0&&Alive
trigger1=command="FF"
trigger1=statetype=S
trigger1=ctrl

; バックステップ
[State -1]
type=ChangeState
value=105
TriggerAll=Var(59)<=0&&Alive
trigger1=command="BB"
trigger1=statetype=S
trigger1=ctrl

;---------------------------------------------------------------------------
;特殊動作
;---------------------------------------------------------------------------
; パワー溜め 
[State -1]
type=ChangeState
value=950
TriggerAll=Var(59)<=0&&Alive
trigger1=command="hold_x"&&command="hold_y"&&command="hold_a"
trigger1=power<3000
trigger1=stateno!=950
trigger1=statetype=S
trigger1=ctrl=1

; 前回避
[State -1]
type=ChangeState
value=700
TriggerAll=Var(59)<=0&&Alive
triggerall=command="z"&&command!="holdback"
trigger1=statetype!=A
trigger1=ctrl=1
trigger2=stateno=100&&Time>8

; 前回避（ガード）
[State -1]
type=ChangeState
value=705
TriggerAll=Var(59)<=0&&Alive
triggerall=command="z"&&command!="holdback"
triggerall=power>=1000||var(7)>=6
trigger1=stateno=150||stateno=152
trigger1=time<15

; 後回避
[State -1]
type=ChangeState
value=710
TriggerAll=Var(59)<=0&&Alive
triggerall=command="z"&&command="holdback"
trigger1=statetype!=A
trigger1=ctrl=1
trigger2=stateno=100&&Time>8

; 後回避（ガード）
[State -1]
type=ChangeState
value=715
TriggerAll=Var(59)<=0&&Alive
triggerall=command="z"&&command="holdback"
triggerall=power>=1000||var(7)>=6
trigger1=stateno=150||stateno=152
trigger1=time<15

; ふっとばし攻撃
[State -1]
type=ChangeState
value=750
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

; ふっとばし攻撃（ガード）
;[State -1]
;type=ChangeState
;value=755
;TriggerAll=Var(59)<=0&&Alive
;triggerall=command="c"
;triggerall=power>=1000||var(7)>=6
;trigger1=stateno=150||stateno=152
;trigger1=time<15

; 空中ふっとばし攻撃
[State -1]
type=ChangeState
value=760
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

; 避け
[State -1]
type=ChangeState
value=900
TriggerAll=Var(59)<=0&&Alive
triggerall=command="x+a"
trigger1=statetype=S
trigger1=ctrl=1

; 前投げ
[State -1]
type=ChangeState
value=800
TriggerAll=Var(59)<=0&&Alive
triggerall=command="fwd_y"
triggerall=p2bodydist X<=5
triggerall=Enemy,movetype!=H
triggerall=Enemy,statetype!=A
triggerall=Enemy,statetype!=L
triggerall=statetype=S
triggerall=stateno!=100
trigger1=ctrl

; 後ろ投げ
[State -1]
type=ChangeState
value=820
TriggerAll=Var(59)<=0&&Alive
triggerall=command="fwd_b"
triggerall=p2bodydist X<=5
triggerall=Enemy,movetype!=H
triggerall=Enemy,statetype!=A
triggerall=Enemy,statetype!=L
triggerall=statetype=S
triggerall=stateno!=100
trigger1=ctrl

; 空中投げ
[State -1]
type=ChangeState
value=850
TriggerAll=Var(59)<=0&&Alive
triggerall=command="fwd_b"||command="fwd_y"
triggerall=p2BodyDist X=[-5, 20]
triggerall=Enemy,stateType=A
triggerall=Enemy,moveType!=H
trigger1=statetype=A
trigger1=ctrl

;剣切り替え
;[State -3]
;type = VarSet
;TriggerAll=Var(59)<=0&&Alive
;trigger1=command="change"
;trigger1=roundstate=[1,3]
;v = 6
;value = ifelse((var(6)=0), 1, 0)

;---------------------------------------------------------------------------
;通常攻撃
;---------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;---------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;---------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

; 空中弱パンチ
[State -1]
type=ChangeState
value=600
TriggerAll=Var(59)<=0&&Alive
trigger1=command="x"
trigger1=statetype=A
trigger1=ctrl

; 空中強パンチ
[State -1]
type=ChangeState
value=610
TriggerAll=Var(59)<=0&&Alive
triggerall=command="y"
triggerall=statetype=A
trigger1=ctrl

; 空中弱キック
[State -1]
type=ChangeState
value=620
TriggerAll=Var(59)<=0&&Alive
triggerall=command="a"
triggerall=statetype=A
trigger1=ctrl

; 空中強キック
[State -1]
type=ChangeState
value=630
TriggerAll=Var(59)<=0&&Alive
triggerall=statetype=A
triggerall=command="b"
trigger1=ctrl

;---------------------------------------------------------------------------


;===========================================================================
;	Hanma's var List
;===========================================================================
; Var(1)  ジャンプ用
; Var(2)  攻撃力補正用
; Var(3)  勝利メッセージ分岐、エフェクト表示用
; Var(4)  やられ用
; Var(5)  ヘブンズフォール制御用
; Var(6)  剣質スイッチ
; Var(7)  ガーキャンスイッチ
; Var(8)  喰らいキャンセルスイッチ
; Var(9)  勝利メッセージスイッチ
;===========================================================================
;	Silvan's var List
;===========================================================================
; var(29) = StateNo var

; var(34) = Blind Attack Minimum Counter
; var(35) = Enemy Helper & Projectile Checker
; var(36) = Airial Brade Checker
; var(37) = Blind Starting Checker
; var(38) = Juggle Checker 1
; var(39) = Juggle Checker 2
; var(40) = Teammode Checker
; var(41) = Guard Pause After
; var(42) = Meiden - Divine Roop Checker
; var(43) = AI Short Jump Switch
; var(44) = Turn Jump Switch
; var(45) = Jump Arts MoveContact
; var(47) = Throw Alart
; var(48) = Enemy Hitpause Checker
; var(49) = Guard Counter
; var(50) = Small Size Checker
; var(51) = Walking Checker
; var(52) = Guard State Memory 1
; var(53) = Guard State Memory 2
; var(54) = Guard State Memory 3
; var(55) = Guard State Memory 4
; var(56) = Guard State Memory 5
; var(57) = Guard State Memory 6
; var(58) = Tag Enemy Rock
; var(59) = Silvan AI Switch
;---------------------------------------------------------------------------
;fvar(9)  = Enemy Gravity Yaccel
;===========================================================================

