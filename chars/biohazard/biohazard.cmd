
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time=15
command.buffer.time=1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1

;-| Dir |---------------------------------------------------------
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;-| Release Dir |--------------------------------------------------
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1

;-| Release Button |------------------------------------------------
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1

;-| Double Tap |-----------------------------------------------------------
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;===========================================================================

;ゾンビ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "x"
triggerall = ctrl = 1 && Life > 0
triggerall = NumHelper(1000) <= 5;		同類6体まで
triggerall = NumHelper <= 5;			全種6体まで
trigger1 = Var(1) = 0;				1ラウンド目
trigger2 = Var(1) = 1 && NumHelper(1300) = 0;	2ラウンド目

;燃え燃えゾンビ
[State -1]
type = ChangeState
value = 1500
triggerall = command = "a"
triggerall = ctrl = 1 && Life > 0
triggerall = NumHelper(1500) <= 1;		同類2体まで
triggerall = NumHelper <= 5;			全種6体まで
trigger1 = Var(1) = 0 && life <= 500;		1ラウンド目
trigger2 = Var(1) = 1 && NumHelper(1300) = 0;	2ラウンド目

;鳥
[State -1]
type = ChangeState
value = 1200
triggerall = command = "y"
triggerall = ctrl = 1 && Life > 0
triggerall = NumHelper(1200) <= 1;		同類2体まで
triggerall = NumHelper <= 5;			全種6体まで
trigger1 = Var(1) = 0 && life <= 500;		1ラウンド目
trigger2 = Var(1) = 1 && NumHelper(1300) = 0;	2ラウンド目

;犬
[State -1]
type = ChangeState
value = 1100
triggerall = command = "b"
triggerall = ctrl = 1 && Life > 0
triggerall = NumHelper(1100) <= 0;		同類1体まで
triggerall = NumHelper <= 5;			全種6体まで
trigger1 = Var(1) = 0 && life <= 500;		1ラウンド目
trigger2 = Var(1) = 1 && NumHelper(1300) = 0;	2ラウンド目

