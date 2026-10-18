
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;-| CPUアルゴリズム用コマンド |------------------------------
[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "昇蛇招嵐"
command = ~B, F, D, B, y
time = 20

[Command]
name = "獣神アタック"
command = F, x+y+a
time = 20

[Command]
name = "獣神アタック"
command = F, z
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;四連斬「牙顎」
[Command]
name = "63214_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "63214_y"
command = ~F, DF, D, DB, B, y

;疾風斬「蛇喝」
[Command]
name = "41236_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "41236_y"
command = ~B, DB, D, DF, F, y

;破砕陣「蛟鱗」
[Command]
name = "623_x"
command = ~F, D, DF, x

[Command]
name = "623_y"
command = ~F, D, DF, y

;堕天掌「鎌首」
[Command]
name = "421_x"
command = ~B, D, DB, x

[Command]
name = "421_y"
command = ~B, D, DB, y

;反撃技
[Command]
name = "123_x"
command = DB, DF, x

[Command]
name = "123_a"
command = DB, DF, a

;最終連続
[Command]
name = "FF+y"
command = F, F, y

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "beast"
command = x+y+a
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 1

[Command]
name = "x+y"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[command]
name = "fwd"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name  ="down"
command = D
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

;獣神セレクト
[Command]
name = "獣神セレクト"
command = c
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
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
;==============================================================================
;------------------------------------------------------------------------------


[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y






 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, タッグ用生死判別];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)<=-1
trigger1=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=701)||(root,stateno=711)
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = Varset
triggerall=fvar(34)>0 && fvar(34)-fvar(5) !=[-999,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(35)<0 
fv =  35
value =-fvar(35)
[State -2 , 1]
type = Varset
triggerall=fvar(34)=0||fvar(34)-fvar(5) =[-999,999]
triggerall=fvar(33)>0 && fvar(33)-fvar(5) !=[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(34)<0 
fv =  34
value =-fvar(34)
[State -2 , 1]
type = Varset
triggerall=fvar(33)=0||fvar(33)-fvar(5) =[-999,999]
triggerall=fvar(32)>0 && fvar(32)-fvar(5) !=[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(33)<0 
fv =  33
value =-fvar(33)
[State -2 , 1]
type = Varset
triggerall=fvar(32)=0||fvar(32)-fvar(5) =[-999,999]
triggerall=fvar(31)>0 && fvar(31)-fvar(5) !=[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(32)<0 
fv =  32
value =-fvar(32)
[State -2 , 1]
type = Varset
triggerall=fvar(31)=0||fvar(31)-fvar(5) =[-999,999]
triggerall=fvar(30)>0 && fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(31)<0 
fv =  31
value =-fvar(31)
[State -2 , 1]
type = Varset
triggerall=fvar(30)=0||fvar(30)-fvar(5) =[-999,999]
triggerall=root,fvar(30)>0 && root,fvar(30)-fvar(5) !=[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = varset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=fvar(30)<0 
fv =  30
value =-fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(30)=0||root,fvar(30)-fvar(5) =[-999,999]
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(30)<0 
fv =  30
value =-root,fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)=0||root,fvar(33)-fvar(5) =[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(33)<0 
fv =  33
value =-root,fvar(33)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(32)=0||root,fvar(32)-fvar(5) =[-999,999]
triggerall=root,fvar(29)>0 && root,fvar(29)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(32)<0 
fv =  32
value =-root,fvar(32)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=0||root,fvar(29)-fvar(5) =[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(29)>=0
trigger1=fvar(5) >0
fv = 29
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(29)<0 
fv =  29
value =-root,fvar(29)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(38)=0||root,fvar(38)-fvar(5) =[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(38)>=0
trigger1=fvar(5) >0
fv = 38
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(38)<0 
fv =  38
value =-root,fvar(38)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(37)=0||root,fvar(37)-fvar(5) =[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(37)>=0
trigger1=fvar(5) >0
fv = 37
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(37)<0 
fv =  37
value =-root,fvar(37)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(36)=0||root,fvar(36)-fvar(5) =[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(36)>=0
trigger1=fvar(5) >0
fv = 36
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(36)<0 
fv =  36
value =-root,fvar(36)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(35)=0||root,fvar(35)-fvar(5) =[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(35)<0 
fv =  35
value =-root,fvar(35)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(34)=0||root,fvar(34)-fvar(5) =[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(34)<0 
fv =  34
value =-root,fvar(34)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(31)=0||root,fvar(31)-fvar(5) =[-999,999]
;triggerall=enemynear(Var(36)),HitDefAttr =SCA,AA,AT
trigger1=root,fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(31)<0 
fv =  31
value =-root,fvar(31)





[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(24)>1 && root,fvar(24)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(25)=0 && var(14)<2
fv = 25
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 25
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 25
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(24)=0 && var(14)<2
fv = 24
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 24
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 24
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset 
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(29)=0 && var(14)<2
fv = 29
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 29
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 29
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(26)=0 && var(14)<2
fv = 26
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 26
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 26
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(27)=0 && var(14)<2
fv = 27
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 27
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 27
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=root,fvar(28)=0 && var(14)<2
fv = 28
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 28
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 28
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))











[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A||(root,stateno=[4000,4099])
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14)+ifelse((root,teamside=1),1,0)+ifelse((root,stateno=[700,711]),-1,0))
Ignorehitpause=1












[State -2:         VarSet] 
type     = VarSet 
triggerall=var(50)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=(root,stateno=[200,499])||(root,stateno=[800,899]);;||(stateno=[1100,1199]))
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999] 
trigger1=(root,stateno=[1000,1029]);;||(root,stateno=[1200,1299]))&&(root,stateno!=[206,209])(root,stateno!=[206,209])
trigger1=(var(13)=0);;||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=[1000,1029])
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=[1000,1029])
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&var(35)!=[1,8])
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200 && enemynear(Var(36)),statetype=A)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=[1000,1029])
trigger1=(var(13)=0);||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=[1000,1029])
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=[1000,1029])
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200 && enemynear(Var(36)),statetype=A)||(root,ctrl&&var(35)!=[1,8])
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;;&& var(5)=[999,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[2000,3999])
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(((root,Ctrl)||(root,StateNo =[120,149]))&&root,statetype!=A)||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,ctrl&&(helper(218),var(35)!=[1,9])&&(root,statetype!=A))||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
triggerall=(root,stateno=[42,43])||(root,stateno=1100)
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,ctrl&&(helper(218),var(35)!=[1,9])&&(root,statetype!=A))||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200)
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150]);||(root,ctrl&&helper(218),var(35)!=[1,9])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-root,var(43)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 43
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 43
value =-root,var(43)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 43
value =root,var(43)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(43)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(43)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(43)-(ceil(root,Var(43)/1000)-ifelse(root,Var(43)-(ceil(root,Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 43
value =root,var(43)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-root,var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=0 && root,var(43)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-root,var(44)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =root,var(44)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(44)-(ceil(root,Var(44)/1000)-ifelse(root,Var(44)-(ceil(root,Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 44
value =root,var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=700)||(root,stateno=710)
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,ctrl&&var(35)!=[1,9])||(enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>=200)||(enemynear(Var(36)),stateno=[720,729])
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||root,ctrl
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 45
value =var(45)+2000000





 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,0]
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 46
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet 
triggerall=root,var(46)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 46
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-199999,-100000]
trigger1=1
v = 46
value =-root,var(46)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 46
value =root,var(46)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,0]
triggerall=root,var(46)>0&&root,var(46)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 45
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,var(46)<=0||root,var(46)=-root,var(45)
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 45
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-199999,-100000]
trigger1=1
v = 45
value =-root,var(45)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(45)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 45
value =root,var(45)-100000

















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L||root,stateno=[18300,18399]
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A||root,stateno=[18300,18399]
trigger2=var(14)<=10||root,stateno=[18300,18399]
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
trigger5=(var(35)=[100,101])||(var(35)=[200,201])
trigger6=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger6=(enemynear(Var(36)),pos x<=root,pos x)
trigger6=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger7=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger7=(enemynear(Var(36)),pos x>=root,pos x)
trigger7=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=A && root,inguarddist=0
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,fvar(30)>999 && root,fvar(30)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,fvar(30)>999 && root,fvar(30)-((ceil(root,fvar(30)/1000)-ifelse(root,fvar(30)-(ceil(root,fvar(30)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,fvar(33)>999 && root,fvar(33)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,fvar(33)>999 && root,fvar(33)-((ceil(root,fvar(33)/1000)-ifelse(root,fvar(33)-(ceil(root,fvar(33)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,fvar(32)>999 && root,fvar(32)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,fvar(32)>999 && root,fvar(32)-((ceil(root,fvar(32)/1000)-ifelse(root,fvar(32)-(ceil(root,fvar(32)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,fvar(29)>999 && root,fvar(29)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,fvar(29)>999 && root,fvar(29)-((ceil(root,fvar(29)/1000)-ifelse(root,fvar(29)-(ceil(root,fvar(29)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,fvar(38)>999 && root,fvar(38)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,fvar(38)>999 && root,fvar(38)-((ceil(root,fvar(38)/1000)-ifelse(root,fvar(38)-(ceil(root,fvar(38)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,fvar(37)>999 && root,fvar(37)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,fvar(37)>999 && root,fvar(37)-((ceil(root,fvar(37)/1000)-ifelse(root,fvar(37)-(ceil(root,fvar(37)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=root,fvar(36)>999 && root,fvar(36)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=root,fvar(36)>999 && root,fvar(36)-((ceil(root,fvar(36)/1000)-ifelse(root,fvar(36)-(ceil(root,fvar(36)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(35)>999 && root,fvar(35)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(35)>999 && root,fvar(35)-((ceil(root,fvar(35)/1000)-ifelse(root,fvar(35)-(ceil(root,fvar(35)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(34)>999 && root,fvar(34)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(34)>999 && root,fvar(34)-((ceil(root,fvar(34)/1000)-ifelse(root,fvar(34)-(ceil(root,fvar(34)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(31)>999 && root,fvar(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(31)>999 && root,fvar(31)-((ceil(root,fvar(31)/1000)-ifelse(root,fvar(31)-(ceil(root,fvar(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
trigger1=root,stateno !=[8300,8305]
trigger1=root,stateno !=[18300,18305]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
;trigger5=inguarddist
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)





[State -2 , 1]
type = Varset
triggerall=var(21)=[1,2]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 21
value =ifelse(var(21)=2,3,0)
[State -2 , 1]
type = Varset
trigger1=var(21)<3
trigger1=enemynear(Var(36)),stateno =5120
v = 21
value =1
[State -2 , 1]
type = Varset
trigger1=var(21)=1 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno !=[5100,5110])&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =3
[State -2 , 1]
type = Varset
trigger1=var(21)=0 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno =5120)&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 21
value =2
[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=(root,stateno=1200&&enemynear(Var(36)),stateno!=[5100,5159])||enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(21)=3 && var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000+var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)=[1000,1999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000














[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=root,stateno=305
v = 19
value =2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||(root,stateno=[700,719])||(root,stateno=3020)
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-150,150]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno -var(13)!=[-9,9]
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,10000)
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=7||var(35)=[4,5]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =3
[State -2 , 1]
type = Varset
;;trigger1=var(35)!=[10,39]
trigger1=(root,stateno=10047)
v = 35
value =99
[State -2 , 1]
type = Varset
trigger1=var(35)!=13
trigger1=(root,stateno=[700,710])
v = 35
value =98
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[5121,5122]) && var(13)>0
v = 35
value =ifelse(var(13)>0,7,2)
[State -2 , 1]
type = Varset
trigger1=var(35)=[7,8]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =2
[State -2 , 1] 
type = Varset
trigger1=var(35)!=5
trigger1=var(35)!=[7,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||root,var(46)>=2000000||root,var(47)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[98,300]));||var(35)=8
trigger1=(root,stateno=108)||(root,stateno=105)||(root,stateno=[41,49]);;||(root,stateno=250)||(root,stateno=261)
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[800,899]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=28||root,stateno=43) && var(35)=17 ;;;&& enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[600,699]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),statetype!=A
v = 35
value =12
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[700,729]) && enemynear(Var(36)),stateno=[700,799]
v = 35
value =13
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[1000,1299]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=[3000,3999]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger3=(root,stateno=440) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger4=(root,stateno=[640,660]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger4=var(35)=15 && root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<2
trigger5=(root,stateno=740) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger6=var(35)=17 && root,prevstateno=240
trigger7=var(35)=15 && root,stateno=750
v = 35
value =14
[State -2 , 1]
type = Varset
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=(root,stateno=[3000,3009]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =15
[State -2 , 1]
type = Varset
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=((root,stateno=[1000,1199])||(root,stateno=[800,899])||(root,stateno=[3040,3049])) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =17
[State -2 , 1]
type = Varset
trigger1=var(35)=15 && root,stateno=[610,660]
v = 35
value =18
[State -2 , 1]
type = Varset
trigger1=(root,stateno=45||root,stateno=110) && root,prevstateno=[600,660]
v = 35
value =19
[State -2 , 1]
type = Varset
trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=2
trigger1=(root,stateno=210) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200 && enemynear(Var(36)),statetype!=A
v = 35
value =20
[State -2 , 1]
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=9)||(var(35)=98)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A
trigger2=(var(35)=[10,39]);||(var(35)=[100,199])
trigger2=(var(35)!=13)||enemynear(Var(36)),stateno!=[700,799]
trigger2=(var(35)!=17)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl||enemynear(Var(36)),movetype!=H
trigger2=(var(35)!=10)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(var(35)!=11)||root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
trigger3=(var(35)=99)
trigger3=(root,movetype=A)||(root,movetype=H)||(root,stateno<200&&root,statetype!=A);;&&(root,stateno!=410)
trigger4=(var(35)=[12,15])
trigger4=0;(root,stateno=[1000,1199])||(root,stateno=[3200,3999]);;&&(root,stateno!=410)
trigger5=(var(35)=96)
trigger5=root,movetype=H||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger6=(var(35)=17)
trigger6=root,stateno<200&&root,prevstateno=400
v = 35
value =0
[State -2 , 1]
type = Varset
trigger1=(root,stateno=[10042,10049])||(root,stateno=[42,49])
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])
v = 35
value =96







[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 20 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 20 
value =-fvar(20)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)<=0 && enemynear(Var(36)),statetype!=A
fv = 20 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(20)>0 && enemynear(Var(36)),stateno=fvar(20) && (root,stateno=240||root,stateno=1150)
fv = 20 
value =fvar(20)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(20)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 20 
value =ifelse((root,movetype=H),fvar(20)+100000,fvar(20)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
fv = 21 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 21 
value =-fvar(21)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && fvar(20)>0 && enemynear(Var(36)),statetype!=A
fv = 21
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)>0 && enemynear(Var(36)),stateno=fvar(21) && (root,stateno=240||root,stateno=1150)
fv = 21
value =fvar(21)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(21)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 21 
value =ifelse((root,movetype=H),fvar(21)+100000,fvar(21)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(21)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
fv = 21 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
trigger3=fvar(21)=enemynear(Var(36)),stateno||fvar(21)-100000=enemynear(Var(36)),stateno||fvar(21)-200000=enemynear(Var(36)),stateno
fv = 22 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 22
value =-fvar(22)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && fvar(20)>0 && fvar(21)>0 && enemynear(Var(36)),statetype!=A
fv = 22
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)>0 && enemynear(Var(36)),stateno=fvar(22) && (root,stateno=240||root,stateno=1150)
fv = 22
value =fvar(22)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(22)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 22
value =ifelse((root,movetype=H),fvar(22)+100000,fvar(22)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(22)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(20)=enemynear(Var(36)),stateno||fvar(20)-100000=enemynear(Var(36)),stateno||fvar(20)-200000=enemynear(Var(36)),stateno
trigger3=fvar(21)=enemynear(Var(36)),stateno||fvar(21)-100000=enemynear(Var(36)),stateno||fvar(21)-200000=enemynear(Var(36)),stateno
fv = 22
value =0




[State -2 , 1]
type = Varadd
triggerall=var(3)=[0,999]
trigger1=1
v = 3
value =1
[State -2 , 1]
type = Varset
triggerall=var(3)>0
trigger1=enemynear(Var(36)),movetype=H&&enemynear(Var(36)),stateno>200
v = 3
value =ifelse(var(3)>600,-300,0)
[State -2 , 1]
type = Varset
triggerall=var(3)<0
trigger1=enemynear(Var(36)),movetype!=H;;&&enemynear(Var(36)),stateno>200
v = 3
value =-var(3)
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 5
value =0
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 5
value =ifelse((-var(5)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(5)=0 && enemynear(Var(36)),movetype=A
trigger1=root,stateno=[120,159]
v = 5
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 7
value =0
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 7
value =ifelse((-var(7)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(7)=0 && enemynear(Var(36)),movetype=A
trigger1=var(6)>0&&enemynear(Var(36)),stateno-var(6)!=[-99,99]
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 7
value =-root,life
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=(root,stateno=200||root,stateno=400) && enemynear(Var(36)),movetype=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=enemynear(Var(36)),movetype!=H
value =-10
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=(var(13)-enemynear(Var(36)),stateno!=[-99,99])
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,SA,SP,HA,HP
v = 12
value =1000
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=-2) && p2movetype=A 
trigger1=enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=-2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && p2movetype=A 
v = 11
value =-2
[State -2 , 1] 
type = Varset
triggerall= root,stateno<200 && enemynear(helper(218),Var(36)),movetype!=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)>0
v = 10
value =((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)
[State -2 , 1] 
type = Varadd
;triggerall=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
triggerall= (root,stateno=10049) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=0
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=2
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=4
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=6
trigger5=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=8
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=10049)
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
trigger2=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=3
trigger3=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=5
trigger4=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=7
v = 10
value =1
[State -2 , 1] 
type = Varset
triggerall= ((root,statetype!=A)&&(root,stateno!=[200,499])&&enemynear(helper(218),Var(36)),movetype!=H)||(root,movehit&&root,stateno=[1300,1399])
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)>=10
v = 10
value =var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)+((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[1250,1259]) && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[20,29]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[40,49]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[60,69]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=[1000,1099])
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[10,19]
trigger2=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[30,39]
trigger3=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[50,59]
trigger4=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[70,79]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=3000);;;; && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/1000)-ifelse(var(10)-(ceil(var(10)/1000)*1000)<0,1,0))*1000)=[0,99]
v = 10
value =100
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno=1011);;;; && enemynear(helper(218),Var(36)),stateno>200 && enemynear(helper(218),Var(36)),movetype=H
trigger1=var(10)-((ceil(var(10)/10000)-ifelse(var(10)-(ceil(var(10)/10000)*10000)<0,1,0))*10000)=[0,999]
v = 10
value =1000
[State -2 , 1] 
type = Varadd
;;triggerall=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
triggerall= (root,stateno=[1000,1059])||(root,stateno=760)
;;triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)<=0&&(enemynear(Var(36)),stateno!=[5000,5550])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)<10000
v = 10
value =10000
[State -2 , 1] 
type = Varadd
triggerall= (root,stateno!=[700,1999])
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[10000,19999]
v = 10
value =ifelse((root,movetype=H)&&(root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=20),20000,10000)
[State -2 , 1] 
type = Varadd
triggerall= random<=8
trigger1=var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 10
value =-20000
[State -2 , 1] 
type = Varadd
triggerall= var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)=[30000,39999]
triggerall=(root,stateno<200||root,movetype!=H)
trigger1=random<=4 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=6 && root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
v = 10
value =-30000
[State -2 , 1] 
type = Varadd
triggerall=enemynear(Var(36)),statetype=A 
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)<100000
v = 10
value =ifelse((root,facing>0),100000,200000)
[State -2 , 1] 
type = Varset
triggerall=root,movetype=H||root,movetype=A||enemynear(helper(218),Var(36)),statetype!=A
trigger1=var(10)-((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
v = 10
value =var(10)-((ceil(var(10)/100000)-ifelse(var(10)-(ceil(var(10)/100000)*100000)<0,1,0))*100000)+((ceil(var(10)/1000000)-ifelse(var(10)-(ceil(var(10)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1] 
type = Varadd
triggerall=var(10)<1000000
trigger1=root,stateno=195
v = 10
value =1000000





[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1





[Statedef 20219]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = velset
trigger1=1
x=120

[State -2 , 1]
type = Varadd
trigger1=frontedgebodydist>0
v = 59
value =1

[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2= NoAutoTurn 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=[230,239]
trigger1 = enemynear(helper(218),Var(36)),movetype!=H































































; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, Combo Condition Reset] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo Condition Check] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H        ;ここに使っても無駄！
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 270
trigger2 = stateno != 280
trigger2 = movecontact || time > 2
var(1) = 1
ignorehitpause = 1




;-------------------------■AI設定■--------------------------------------------------------










[State -2:         VarSet];■AI+コンボ設定(combo)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=0 ;;&& palno=1
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =                    1                        ;(ここを1以上にするとＡＩが入ります+コンボ設定。0~4)


[State -2:         VarSet];■立ち回り設定(movement)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,9]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =10*                  1                        ;(立ち回り設定。0~3)


[State -2:         VarSet];■獣神召喚設定(beast)■
type     = Varadd
triggerall=!ishelper
triggerall = var(59)=[1,99]
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =100*                  1                        ;(獣神召喚の利用度。0~3)


[State -2:         VarSet];■払い強化設定(parry)■
type     = Varset
triggerall=!ishelper
triggerall = var(58)=0
trigger1 = 1
v        = 58
value    =                      0                        ;(ここを1にすると払いが微妙に強化されます)


[State -2:         VarSet];■超反応設定(counter)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(54)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =                   8             ;(0~10、超反応設定。数字が高いほど攻撃に対する反撃が厳しくなる)



[State -2:         VarSet];■ガード設定(guard)■
type     = VarSet
triggerall=!ishelper
trigger1=var(54) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =var(54)+1000*       8             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)


[State -2:         VarSet];■払い設定(parry counter2)■
type     = VarSet
triggerall=!ishelper
trigger1=var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(55)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 55
value    =                   2             ;(0~10、相手の攻撃を払う頻度。)






































[State -1, Stand]
type = ChangeState 
value =195
triggerall = !IsHelper
triggerall = roundstate!=4;;helper(218),var(35)!=16
triggerall = helper(218),var(10)<1000000
triggerall = var(59)!=0 
triggerall = win && Alive && statetype!=A
triggerall=p2bodydist x>=-20
trigger1=0;ctrl||stateno=[0,39]
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(55) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 55
value    =var(55)+1000*       11             ;(0~11、数字を上げるほど硬く。11で超反応で投げに対応)
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 55
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(55)<100000
triggerall=random>((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 55
value    =100000 
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall=var(54)<100000
triggerall=random>((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 54
value    =100000 









[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(43) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(44) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(45) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(46) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(39) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(38) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(37) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(36) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(35) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(34) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(33) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(32) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(31) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(30) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(28) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(27) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(26) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(25) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(24) =0
[State -3:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0





[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(57)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(57) = 0;var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)+((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=10049) && ((p2movetype=H && p2stateno>200)||helper(218),var(35)=13)
triggerall=(var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)<100)
trigger1=1
var(57) = 100
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)=[100,199])
trigger1=(movehit&&stateno=[600,699])||p2life<=0||((p2movetype!=H)&&p2stateno!=[700,799])
var(57) = ifelse((movehit&&stateno=[600,699])||p2life<=0||p2movetype=A,-100,100)
[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
;triggerall = var(57)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(57) = var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)+((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=1100) && movecontact
triggerall=(var(57)-((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)<1000)
trigger1=1
var(57) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno!=[1100,1109]) ;;&& movecontact
triggerall=(var(57)-((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger1=1
var(57) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=((prevstateno!=200)&&(prevstateno!=230)&&(prevstateno!=400)&&(prevstateno!=430))||((prevstateno!=200)&&stateno=210)
triggerall=(stateno=210||stateno=[1000,1050]) && time<=1 && p2movetype=H && p2stateno>200 && (prevstateno=[200,499]) && p2statetype=S
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<30000)
trigger1=1
var(57) = 50000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=((prevstateno!=200)&&(prevstateno!=230)&&(prevstateno!=400)&&(prevstateno!=430))||((prevstateno!=200)&&stateno=210)
triggerall=(stateno=210||stateno=[1000,1050]) && time<=1 && p2movetype=H && p2stateno>200 && (prevstateno=[200,499]) && p2statetype=C
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<10000)
trigger1=1
var(57) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2 
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)=[10000,19999])
trigger1=(stateno!=[200,1099])||p2life<=0||movehit||p2movetype!=H
var(57) = ifelse(p2life<=0||movehit||p2movetype=A,-10000,10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2 
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)=[50000,79999])
trigger1=(stateno!=[200,1099])||p2life<=0||movehit||p2movetype!=H
var(57) = ifelse(p2life<=0||movehit||p2movetype=A,-50000,ifelse(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)>=70000,10000,30000))
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=400) && helper(218),var(35)=[17,18];;; && p2statetype=A
triggerall=(var(57)-((ceil(var(57)/1000000)-ifelse(var(57)-(ceil(var(57)/1000000)*1000000)<0,1,0))*1000000)<100000)
trigger1=1
var(57) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2 
triggerall=(var(57)-((ceil(var(57)/1000000)-ifelse(var(57)-(ceil(var(57)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
trigger1=stateno=3040&&prevstateno=240&&time<=1&&p2movetype=H&&p2stateno>200&&p2statetype=A
var(57) = 200000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2 
triggerall=(var(57)-((ceil(var(57)/1000000)-ifelse(var(57)-(ceil(var(57)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999])
trigger1=(stateno!=[3000,3999])||(movehit&&p2stateno>200&&p2movetype=H)||p2life<=0
var(57) = ifelse((movehit&&p2stateno>200&&p2movetype=H)||p2life<=0,-300000,100000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
;triggerall = var(57)>0
triggerall = RoundState = 2 
triggerall=(var(57)-((ceil(var(57)/1000000)-ifelse(var(57)-(ceil(var(57)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
trigger1=(stateno!=[200,3999])||p2life<=0
var(57) = ifelse(movetype=H,100000,-100000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
triggerall =var(57)-((ceil(var(57)/100)-ifelse(var(57)-(ceil(var(57)/100)*100)<0,1,0))*100)>=20
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 = var(57)<1000000 && (stateno=1000||stateno=250)
var(57) = var(57)+1000000
[State -3:         VarSet] 
type     = Varadd
triggerall=!ishelper
triggerall = var(57)>0 && (stateno<200||movetype=H||p2life<=0)
trigger1 = var(57)=[1000000,1999999]
var(57) = ifelse(stateno<200||p2life<=0,-1000000,1000000)

[State -3:         VarSet]
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)+((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[1000,1059])||stateno=760
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(59) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno!=[200,1299])
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(59) = ifelse(movetype=H,1000,-1000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall =(stateno=[10040,10049])||(stateno=[42,49])
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[0,9999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[20000,29999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[40000,49999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[60000,69999])
var(59) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2
triggerall =(stateno<40)||(movetype=H&&stateno>200)||(movehit&&p2movetype=H)
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[10000,19999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[30000,39999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[50000,59999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[70000,79999])
var(59) = ifelse(movetype=H,10000,-10000)
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=(stateno=[1000,1100]) && (prevstateno=[200,499]);;; && p2statetype=A
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<100000)
trigger1=1
var(59) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0
triggerall = RoundState = 2 
triggerall=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
trigger1=(stateno!=[700,3999])||p2life<=0
var(59) = ifelse(movetype=H,100000,-100000)
[State -3:         VarSet] 
type     = VarSet 
triggerall=!ishelper
trigger1 = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)
[State -3:         VarSet] 
type     = VarSet
triggerall=!ishelper
triggerall = var(59)>0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall = RoundState = 2  && numenemy=1 && numpartner=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 = var(59)<1000000 && (stateno=760||stateno=3070)
var(59) = var(59)+1000000
[State -3:         VarSet] 
type     = Varadd
triggerall=!ishelper
triggerall = var(59)>0 && (stateno<200||movetype=H||p2life<=0)
trigger1 = var(59)=[1000000,1999999]
var(59) = ifelse(stateno<200||p2life<=0,-1000000,1000000)
[State -3:         VarSet] 
type     = Varset
triggerall=!ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<233
trigger1=RoundState !=2
var(59) = var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)>0
trigger1=RoundState !=2
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=!ishelper
trigger1=var(59)<0
trigger1=RoundState=2 && ctrl
v        = 59
value    =-var(59)

[State -2]
Type = Helper
triggerall=!ishelper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1

[State -2:         VarSet]
type     = Varadd
triggerall=!ishelper
trigger1=var(55)>=0
trigger1=0;numprojid(20219)
v        = 55
value    =1
[State -2:         VarSet]
type     = Varset
triggerall=!ishelper
trigger1=var(55)>0
trigger1=(stateno!=[200,399])
trigger1=0;p2movetype!=H
v        = 55
value    =0

[State -2, 1]
type = Projectile
triggerall=!ishelper
triggerall=var(59)
triggerall=var(55)=0 && !ishelper
trigger1=0;(stateno=[2300,2399])
projanim = 20218 
projid= 20219
projhitanim = 1112
velocity=50,0;120, 0
projpriority=4
projsprpriority=2
projstagebound=0
projedgebound=99999
offset=0, 0
;;postype=right
supermovetime=99999
pausemovetime=99999
projremovetime=20;;-1

;獣神セレクト
[State -1]
type = VarSet
triggerall = !ishelper
triggerall = var(59)>0 && var(11)=0
triggerall = var(12) = 0
triggerall = RoundState = 2
trigger1 = (stateno=3070&&var(12)!=1)||(stateno=3060&&var(12)!=2)||(stateno=3050&&var(12)!=3)||(stateno=3040&&var(12)!=4)||(stateno=3030&&var(12)!=5)||(stateno=3020&&var(12)!=6)||(stateno=3010&&var(12)!=0)
trigger2 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2 = (stateno!=[3000,3099])&&var(12)!=1
trigger3 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger3 = statetype=A
trigger3 = (stateno!=[3000,3099])&&var(12)!=2
trigger4 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger4 = helper(218),var(35)=13 && frontedgebodydist>=70 && statetype!=A
trigger4 = (stateno!=[3000,3099])&&var(12)!=3
trigger5 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger5 = p2movetype=H && p2stateno>200 && statetype!=A
trigger5 = (stateno!=[3000,3099])&&var(12)!=4
trigger6 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger6 = ((p2movetype!=H)||p2stateno<200) && (helper(218),var(35)!=13) && statetype!=A
trigger6 = (stateno!=[3000,3099])&&var(12)!=5
trigger7 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger7 = helper(218),var(35)=13 && frontedgebodydist<70 && statetype!=A
trigger7 = (stateno!=[3000,3099])&&var(12)!=0
var(12) = 7
[State -1]
type = varadd
triggerall = !ishelper
triggerall = var(59)>0 && var(11)=0
triggerall = var(12) != 0
triggerall = RoundState = 2
trigger1 = (stateno=3070&&var(12)!=1)||(stateno=3060&&var(12)!=2)||(stateno=3050&&var(12)!=3)||(stateno=3040&&var(12)!=4)||(stateno=3030&&var(12)!=5)||(stateno=3020&&var(12)!=6)||(stateno=3010&&var(12)!=0)
trigger2 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2 = (stateno!=[3000,3099])&&var(12)!=1
trigger3 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger3 = statetype=A
trigger3 = (stateno!=[3000,3099])&&var(12)!=2
trigger4 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger4 = helper(218),var(35)=13 && frontedgebodydist>=70 && statetype!=A
trigger4 = (stateno!=[3000,3099])&&var(12)!=3
trigger5 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger5 = p2movetype=H && p2stateno>200 && statetype!=A
trigger5 = (stateno!=[3000,3099])&&var(12)!=4
trigger6 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger6 = ((p2movetype!=H)||p2stateno<200) && (helper(218),var(35)!=13) && statetype!=A
trigger6 = (stateno!=[3000,3099])&&var(12)!=5
trigger7 = helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
trigger7 = helper(218),var(35)=13 && frontedgebodydist<70 && statetype!=A
trigger7 = (stateno!=[3000,3099])&&var(12)!=0
var(12) = -1













[State -1, 地上]
type       = ChangeState
value      =600
triggerall = !ishelper
triggerall = var(59)>0
triggerall=((helper(218),var(35)!=19)&&(stateno!=[110,119]))||stateno=650
triggerall=helper(218),var(35)=12 && (prevstateno=600||stateno=600)
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-60 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 = ctrl||(stateno=[0,40])||(stateno=[120,149])
trigger1=p2bodydist x<=50
[State -1]
type = ChangeState 
value = 750
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = var(11) = 0
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10051) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= ifelse(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200,1000,2000)
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=15&&var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = ifelse(stateno=400,240,ifelse(stateno=240,3040,400))
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000
triggerall=stateno>=200||prevstateno!=400
triggerall=(var(57)-((ceil(var(57)/1000000)-ifelse(var(57)-(ceil(var(57)/1000000)*1000000)<0,1,0))*1000000)<200000) 
;triggerall = stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=17)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
triggerall =statetype != A
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=(p2stateno=[5100,5110])||(p2stateno=[800,899])||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;;&&p2statetype=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=stateno=400&&movehit
trigger2 = NumHelper(10000) = 0
trigger2 = NumHelper(10141) = 0
trigger2 = NumHelper(10161) = 0
trigger2 = NumProjID(3000) = 0
trigger2 = var(11) = 0
;trigger2 = var(12) = 4;;||var(12) = 4
trigger2 = power >= 1000
trigger2 = stateno=240&&movehit&&frontedgebodydist<80
trigger3 = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
trigger3=p2bodydist x>-30 && (p2bodydist x<=40||frontedgebodydist<70);; && p2bodydist y>=0;50
[State -1]
type = ChangeState 
value = 10049
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall=(var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)<200)
;triggerall = stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=12)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30 && p2bodydist x<=30;50
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200&&p2statetype!=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2
trigger2=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<8
trigger2 =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=300 && power<2000;; && var(11)!=1
trigger3 =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
[State -1]
type = ChangeState
value =600
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && prevstateno!=47
triggerall=(helper(218),var(35)!=19)&&(stateno!=[110,119])
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=40+ifelse(vel x=0&&(prevstateno!=49),0,40)
triggerall=p2bodydist x>-80
triggerall=p2statetype!=A
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=prevstateno=10049||((helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=13)&&p2bodydist x<=30&&vel y<0)
[State -1]
type = ChangeState 
value = ifelse((helper(218),var(35)=18),47,ifelse(p2bodydist x<30&&random<=500,1150,42))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=15)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30 && p2bodydist x<=120
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200&&p2bodydist y>-220;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = ifelse(p2bodydist x<=50,10049,ifelse(p2bodydist x<=80,42,47))
triggerall = !ishelper
triggerall = var(59)>0;;&&var(11)=0 ;;;&& helper(3000),stateno=3000 
triggerall=(var(57)-((ceil(var(57)/1000)-ifelse(var(57)-(ceil(var(57)/1000)*1000)<0,1,0))*1000)<200)
triggerall = time<10||stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13)&&p2statetype!=A
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30 && p2bodydist x<=20;50
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=1;p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = 3050
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = (var(12)=3&&p2life<200)
triggerall = power >= 1000
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13&&p2statetype!=A);;||(p2bodydist x<20&&helper(218),var(35)=12&&(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||random<=333))
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30 && p2life<200
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=1;p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = 440
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive
triggerall = partner,life<=0
triggerall = NumHelper(10000) = 1
triggerall = NumHelper(10050) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = var(11) = 1
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13&&p2statetype!=A)||(p2bodydist x<20&&helper(218),var(35)=12)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30 && (p2bodydist x<20)
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=1;p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = 3010
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 0
triggerall = power >= 1000
triggerall = stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
triggerall=frontedgebodydist<70
triggerall=(helper(218),var(35)=13)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=1;p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = ifelse(stateno=100,430,100)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = time>=5||stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=20)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200&&p2statetype!=A;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = ifelse(var(11)=1&&p2bodydist x>=75,760,100)
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = stateno!=[100,109]
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=13)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=1;p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState 
value = 750
triggerall = !ishelper
triggerall = var(59)>0 ;;;&& helper(3000),stateno=3000 
triggerall = var(11) = 0
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10051) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= ifelse(random<=500||(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200),1000,2000)
triggerall = RoundState = 2 && Alive 
;triggerall=(p2bodydist x<=40&&p2bodydist y-enemynear(helper(218),Var(36)),vel y*13>-100)||(p2bodydist x>40&&stateno!=[100,101])
triggerall=(helper(218),var(35)=11||helper(218),var(35)=14||helper(218),var(35)=17||helper(218),var(35)=18)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2;||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall =statetype != A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall=p2bodydist x>ifelse(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200,100,150)||(helper(218),var(35)=18&&frontedgebodydist>100);;<=100
triggerall=p2bodydist x>-30
;triggerall=(p2statetype=A && p2bodydist y=[-70,150])||((vel y>0||(stateno=[110,119])||(prevstateno=[110,119])) && pos y>=-300 && p2statetype!=A)||stateno=855
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=p2movetype=H&&p2stateno>200;||p2stateno<=200||p2stateno=[5100,5110] 
trigger1=1;;var(18)>=3000
[State -1]
type = ChangeState
value =640
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A && ((vel x>0&&p2bodydist x<20)||p2bodydist x<-20)&&pos y<-90
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=40+ifelse(vel x=0&&(prevstateno!=49),0,40)
triggerall=p2bodydist x>-70
triggerall=0;(pos y>=-110 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=((vel x>0&&p2bodydist x<20)||p2bodydist x<-20)&&pos y<-100
trigger3=(p2statetype!=A)&&(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
[State -1]
type = ChangeState
value =ifelse(p2statetype=A&&p2bodydist y<0,610,640)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)&&(stateno!=[110,119])
triggerall = RoundState = 2 && Alive
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2stateno!=7012
;triggerall=(helper(218),var(35)!=14);;||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A 
;triggerall = p2statetype = A
triggerall =  Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=p2bodydist x<=ifelse(p2bodydist y<0,80,40)+ifelse(vel x=0&&(prevstateno!=49),0,40)||frontedgebodydist<50
triggerall=p2bodydist x>-50||frontedgebodydist<50
triggerall=(p2statetype=A && p2bodydist y=[-40,40])||(pos y>=-80 && (vel y>0||stateno=105||prevstateno=105) && p2statetype!=A)
;triggerall=(stateno!=105)||(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),var(35)=8||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;;;||p2statetype!=A
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=0;(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=40-ifelse((helper(218),var(35)=12),20,0),430,ifelse(p2bodydist x<=60-ifelse((helper(218),var(35)=12),20,0),400,240))
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)
triggerall=(helper(218),var(35)!=[16,17])
triggerall=(helper(218),var(35)!=13)||p2statetype!=A
triggerall=(helper(218),var(35)!=20)||time>=5||(stateno!=[100,109])||p2statetype=A
triggerall=(helper(218),var(35)!=13)||time>=10||(stateno!=[100,109])
triggerall=(helper(218),var(35)!=13)||time>=15||(stateno!=[100,109])||p2bodydist x<10||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=ifelse(p2statetype=S,75,60)-ifelse((helper(218),var(35)=12),20,0)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=40,5,7)||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200)||helper(218),var(35)=13
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=40,6,8)||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-8)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=130,260,250)
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)
triggerall=(helper(218),var(35)!=[16,17])
triggerall=(helper(218),var(35)!=13)||p2statetype!=A
triggerall=(helper(218),var(35)!=20)||time>=5||(stateno!=[100,109])||p2statetype=A
triggerall=(helper(218),var(35)!=13)||time>=10||(stateno!=[100,109])
triggerall=(helper(218),var(35)!=13)||time>=15||(stateno!=[100,109])||p2bodydist x<10||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype!=A);;;||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-40,20])
triggerall=p2bodydist x>=ifelse(p2statetype=S,75,60)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x=ifelse(p2statetype=S,170,130)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=130,13,15)||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200)||helper(218),var(35)=13
trigger3=helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=130,14,16)||(enemynear(helper(218),Var(36)),facing*facing>0&&enemynear(helper(218),Var(36)),animtime<-15)
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=75,240,ifelse(p2bodydist x<=100,210,250))
triggerall = !IsHelper
triggerall =var(59)>0
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<20
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)
triggerall=(helper(218),var(35)!=[16,17])
triggerall=(helper(218),var(35)!=13)||p2statetype!=A
triggerall=(helper(218),var(35)!=20)||time>=5||(stateno!=[100,109])||p2statetype=A
triggerall=(helper(218),var(35)!=13)||time>=10||(stateno!=[100,109])
triggerall=(helper(218),var(35)!=13)||time>=15||(stateno!=[100,109])||p2bodydist x<10||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive 
triggerall = statetype != A
triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(P2BodyDist X<=75,7,ifelse(p2bodydist x<=100,12,15))=[-20,20])
triggerall=p2bodydist x>=-30
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x<=170
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
trigger1=enemynear(helper(218),Var(36)),animtime<=-ifelse(P2BodyDist X<=35,6,ifelse(p2bodydist x<=70,7,13))||p2statetype=A
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
trigger2=helper(218),var(35)=13||helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2movetype=H&&p2stateno>200)||helper(218),var(35)=13
trigger3=0;helper(218),var(35)=7
trigger3=enemynear(helper(218),Var(36)),animtime=-ifelse(p2bodydist x<=120,5,11)||enemynear(helper(218),Var(36)),facing*facing>0
trigger3=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger3=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger3=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger3=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]





















[State 5010, 喰らい抜け]
type = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
triggerall = var(11) = 1
triggerall = Time >= 2 && (stateno=5000||stateno=5010)
triggerall = GetHitVar(yvel) = 0 && !GetHitVar(fall)
triggerall = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=100 && p2movetype=A
trigger1=0;enemynear(helper(218),Var(36)),ctrl||p2movetype=A
value = 5045
[State -1, Stand]
type = ChangeState
value =42
triggerall = !IsHelper
triggerall = var(59)>0;&&var(11)=0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype =C
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 100
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
[State -1, Stand]
type = ChangeState
value =430
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=5
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x<=60,400,240)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= ifelse(p2statetype=S,75,60)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
[State -1, Stand]
type = ChangeState
value =260
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 130
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
[State -1, Stand]
type = ChangeState
value = 250
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype =S
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X <= 170
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=13
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=15
[State -1, Stand]
type = ChangeState
value = 3050
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 3
triggerall = power >= 1000
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall =P2BodyDist X <= 120
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999])||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
[State -1, Stand]
type = ChangeState
value =3030
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(37)=0
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 5
triggerall = power >= 1000
triggerall = (facing>0&&helper(218),var(10)=[100000,199999])||(facing<0&&helper(218),var(10)=[200000,299999])||p2statetype!=A
triggerall = partner,life<=0||partner,stateno<200||(partner,movetype!=H)||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A) && (power>=3000||p2life<300||partner,life>0||life<p2life)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=(p2statetype !=A);||p2bodydist y>=-80||p2bodydist x>80
triggerall=(p2statetype !=A);||(p2statetype=A&&p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&((p2bodydist y+enemynear(helper(218),Var(36)),vel y*7<=0&&p2bodydist y>=-80)||p2bodydist y+enemynear(helper(218),Var(36)),vel y*7=[-40,40]))
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X<=200
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=enemynear(helper(218),Var(36)),animtime<-11-(p2bodydist x/12)
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
;triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000
;triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
;triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
;triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
;triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=0
trigger17=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger17=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger18=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger18=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger19=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger19=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger20=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger20=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger21=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger21=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger22=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger22=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger23=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),fvar(5)!=-99999
trigger23=p2bodydist x>120;(prevstateno=[150,159])||(prevstateno=[5000,5150])||(enemynear(helper(218),Var(36)),vel x>=2&&p2bodydist x<100)
trigger24=partner,life>0
[State -1, Stand]
type = ChangeState
value =42
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(37)=0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=(p2bodydist x=[-20,100])&&p2statetype!=A
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=1
[State -1, Stand]
type = ChangeState
value =48
triggerall = !IsHelper
triggerall = var(59)>0 ;;;&& var(37)=0 ;;;&& var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
triggerall = stateno != [100,105]
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive  && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing>0||p2bodydist x>-40
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<-40;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT);;;||(var(43)>=2000000||var(44)>=2000000||var(43)=p2stateno||var(44)=p2stateno)
triggerall=(var(54)-((ceil(var(54)/100000)-ifelse(var(54)-(ceil(var(54)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=1
[State -1, Stand]
type = ChangeState
value =ifelse(statetype=C,710,700)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),fvar(5)!=-99999)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)>=50000
triggerall = var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
;;triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||(p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*5<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall =P2BodyDist X <= 130
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(45)<2000000 && helper(218),var(44)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA)
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger1 = stateno = 200
trigger2 = stateno = [230,231]
trigger3 = stateno = 400
trigger4 = stateno = 430
[State -1, Stand]
type = ChangeState
value =3030
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 5
triggerall = power >= 1000
triggerall=partner,life<=0;;||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),fvar(5)!=-99999)
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)>=50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
;triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
;triggerall=(p2statetype !=A)||(p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*5<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
;triggerall =P2BodyDist X <= 130
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000 ;;&& (var(46)!=p2stateno) && (var(46)=[0,999999]) && (var(47)!=p2stateno) && (var(47)=[0,999999])
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA)
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
trigger1 = var(1) && stateno = [200,499]
[State -1, Stand]
type = ChangeState
value =ifelse(p2statetype=C,710,700)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=partner,life<=0||(partner,movetype!=H)||partner,stateno<200;;||(partner,stateno=[5000,5150])
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])&&(helper(218),var(35)!=98)
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
;triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(55)-((ceil(var(55)/1000)-ifelse(var(55)-(ceil(var(55)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||((StateNo =[120,149])&&stateno!=123)||(StateNo = 109)||(stateno=[100,103])
triggerall = p2movetype=A
triggerall=(p2statetype !=A)||(p2bodydist x>0&&enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist y+enemynear(helper(218),Var(36)),vel y*5<=20)
triggerall=p2bodydist x>=-30 ;&& enemynear(Var(36)),vel x<=0
triggerall =P2BodyDist X < 100||partner,life<=0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(45)<2000000 && helper(218),var(44)<2000000
triggerall=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA)
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger11=helper(218),fvar(30)>999&&helper(218),fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger12=helper(218),fvar(31)>999&&helper(218),fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger13=helper(218),fvar(32)>999&&helper(218),fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger14=helper(218),fvar(33)>999&&helper(218),fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger15=helper(218),fvar(34)>999&&helper(218),fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger16=helper(218),fvar(35)>999&&helper(218),fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[-1,ifelse(p2statetype=A,5,1)]
trigger17=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger17=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger17=helper(218),var(11)-((ceil(helper(218),var(11)/10)-ifelse(helper(218),var(11)-(ceil(helper(218),var(11)/10)*10)<0,1,0))*10)!=[-1,0]
trigger17=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger18=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(30)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(30)-((ceil(helper(218),fvar(30)/1000)-ifelse(helper(218),fvar(30)-(ceil(helper(218),fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(32)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(32)-((ceil(helper(218),fvar(32)/1000)-ifelse(helper(218),fvar(32)-(ceil(helper(218),fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(33)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(33)-((ceil(helper(218),fvar(33)/1000)-ifelse(helper(218),fvar(33)-(ceil(helper(218),fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(35)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(35)-((ceil(helper(218),fvar(35)/1000)-ifelse(helper(218),fvar(35)-(ceil(helper(218),fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(34)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(34)-((ceil(helper(218),fvar(34)/1000)-ifelse(helper(218),fvar(34)-(ceil(helper(218),fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=(helper(218),fvar(31)-(p2stateno*1000)!=[-2,999]);||helper(218),fvar(31)-((ceil(helper(218),fvar(31)/1000)-ifelse(helper(218),fvar(31)-(ceil(helper(218),fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=16
trigger18=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
trigger18=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30 && helper(218),var(14)>=3 && helper(218),fvar(5)!=-99999
trigger18=(prevstateno=[150,159])||(prevstateno=[5100,5150])||(enemynear(helper(218),Var(36)),vel x>=2&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*5<0)||p2bodydist x<50
trigger19=p2bodydist x<=80&&partner,life>0&&(helper(218),var(14)=[2,10])
[State -1, Stand]
type = ChangeState
value =47;;ifelse(p2bodydist x>170,108,47)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[7,8]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=[100,101])
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
triggerall=helper(218),var(56)<2000000 && helper(218),var(59)<2000000
triggerall=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=40





































[State -1, 地上]
type       = ChangeState
value      = 740
triggerall = !ishelper
triggerall = var(59)>0
;triggerall = var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(p2bodydist x>70&&frontedgebodydist>100)||var(11)!=1
triggerall = RoundState = 2 && Alive
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40
;triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2statetype!=A
triggerall=time=16 && p2stateno=[700,799]
triggerall = StateNo = 701||StateNo = 711
trigger1 =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2 && random<=ifelse(power<1000,500,250) ;;&& p2bodydist x<=60
trigger2 =0;frontedgebodydist>100&&p2bodydist x=[ifelse(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2,71,61),170]
[State -1, 地上]
type       = ChangeState
value      = 3000;;ifelse(random<=500,3030,3070)
triggerall = !ishelper
triggerall = var(59)>0&&partner,life<=0
triggerall=(helper(218),var(35)!=[16,17])
triggerall = NumHelper(10000) = 1
triggerall = NumHelper(10050) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = var(11) = 1
triggerall = RoundState = 2 && Alive
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=ifelse(stateno=440,40,20)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno=440&&p2statetype=A)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = 210
triggerall = !ishelper
triggerall = var(59)>0 && var(11)=0
triggerall=(helper(218),var(35)!=[16,17])
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && frontedgebodydist<70
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype=S;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
;triggerall=(stateno!=440)
trigger1 = StateNo = 200
trigger2 = StateNo = 400
trigger3 = StateNo = 230
trigger4 = StateNo = 430
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,210,ifelse(p2statetype=S&&p2bodydist x<=50&&random<=500,240,410))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=ifelse(p2statetype=A,80,60)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
;triggerall=(stateno!=440)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = StateNo = 200
trigger2 = StateNo = 400
trigger3 = StateNo = 230
trigger4 = StateNo = 430
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2bodydist x>100||p2statetype=A,250,260)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||p2bodydist x<=100||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||p2bodydist x<=100||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=140
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
trigger1 = StateNo = 210
trigger2 = StateNo = 240
trigger3 = StateNo = 410
[State -1, 地上]
type       = ChangeState
value      = stateno+1
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40;; && p2bodydist x<=60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H;;;(p2movetype=H&&p2stateno>200)&&p2statetype=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
;triggerall =movecontact
;triggerall=(stateno!=440)
trigger1 = StateNo = 200 && Time = 10 ;;;&& p2statetype!=A
trigger2 = StateNo = 240 && Time = 11 ;;&& p2bodydist y>-10
[State -1, 地上]
type       = ChangeState
value      = ifelse(random<=500,3040,3020)
triggerall = !ishelper
triggerall = var(59)>0
;;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<8
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 4||var(12) = 6
triggerall = power >= 1000
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
triggerall=(random<=333||((p2life<250||power>=3000)&&(helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<8||p2life>500||helper(218),var(35)!=20)))
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=90
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2movetype=H&&p2stateno>200&&p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno!=200)&&(stateno!=230)&&(stateno!=400)&&(stateno!=430)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,ifelse(p2bodydist x<120,1000,1050),ifelse(p2bodydist x<=80,1100,ifelse(p2bodydist x<130&&random<=500&&(p2statetype=S||movehit=0),1000,1050)))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = RoundState = 2 && Alive 
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
;triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000||(p2bodydist x<=50&&p2movetype=H&&p2stateno>200)||p2statetype=A
triggerall =(p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=60-ifelse(stateno=250,10,0)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno=200)||(stateno=230)||(stateno=400)||(stateno=430)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = ifelse(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200&&random<=500&&power>=1000&&var(11)=0,1050,1000)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = RoundState = 2 && Alive 
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
triggerall =(p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=ifelse(p2statetype=A,120,130)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)&&p2statetype!=C;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno!=200)&&(stateno!=230)&&(stateno!=400)&&(stateno!=430)&&(stateno!=440)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,ifelse(p2bodydist x<120,1000,1050),ifelse(p2bodydist x<=60||frontedgebodydist<=90,1100,ifelse(p2bodydist x<130&&random<=500&&(p2statetype=S||movehit=0),1000,1050)))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = RoundState = 2 && Alive 
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
triggerall =(p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 ;;&& p2bodydist x<=60-ifelse(stateno=250,10,0)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno!=200)&&(stateno!=230)&&(stateno!=400)&&(stateno!=430)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2statetype=A,ifelse(p2bodydist x<120,1000,1050),1100)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = RoundState = 2 && Alive 
;triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<20000)||(p2statetype!=C)||movehit=0||p2stateno<200||p2movetype!=H
;triggerall=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)<80000)||(p2statetype=A)||movehit=0||p2stateno<200||p2movetype!=H
triggerall =(p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && (p2bodydist x<=60||frontedgebodydist<=90||p2statetype=A)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200);;;||p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
;triggerall=(stateno!=200)&&(stateno!=230)&&(stateno!=400)&&(stateno!=430)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
triggerall = var(1)
trigger1=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)>=20000)&&(p2statetype=C);;;||movehit=0||p2stateno<200||p2movetype!=H
trigger2=(var(57)-((ceil(var(57)/100000)-ifelse(var(57)-(ceil(var(57)/100000)*100000)<0,1,0))*100000)>=80000)&&(p2statetype=S);;;||movehit=0||p2stateno<200||p2movetype!=H
[State -1, 地上]
type       = ChangeState
value      = ifelse(p2bodydist x<=60||frontedgebodydist<=90,1100,1000)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||(stateno!=210)||(frontedgebodydist>75&&movecontact=1)||p2statetype=A||movehit=0||p2stateno<200||p2movetype!=H
triggerall = RoundState = 2 && Alive 
triggerall=var(57)-((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)<2000||(p2bodydist x>60&&frontedgebodydist>90)
triggerall=var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<200000||(p2movetype=H&&p2stateno>200);;||p2statetype=A
;triggerall =(p2movetype=H&&p2stateno>200)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype!= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =((p2movetype!=H)||p2stateno<200)&&p2statetype!=A;;;||(p2bodydist x<=280&&p2statetype!=A)
triggerall =movecontact
triggerall=(stateno!=200)&&(stateno!=230)&&(stateno!=400)&&(stateno!=430)
triggerall=((stateno!=200)&&(stateno!=240))||(movecontact=1&&random<=500)
trigger1 = var(1)
[State -1, 地上]
type       = ChangeState
value      = 3060
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=[16,17])
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 2
triggerall = power >= 1000
;triggerall=helper(218),var(35)!=16
triggerall = RoundState = 2 && Alive
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<4
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2life<200
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-40 && p2bodydist x<=40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200)
trigger1 = StateNo = 640 && movecontact && p2statetype!=A
[State -1, 地上]
type       = ChangeState
value      = 640;;ifelse(stateno=600,630,650)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=19)&&(stateno!=[110,119])
triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
;triggerall=p2bodydist x>=-40 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =p2statetype!=A
trigger1 = (StateNo = 600||stateno=630) && movecontact && vel y>=0
[State -1, 地上]
type       = ChangeState
value      = ifelse(stateno=600,630,ifelse(stateno=630,610,ifelse(stateno=610,640,600)))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=((helper(218),var(35)!=19)&&(stateno!=[110,119]))||stateno=650
triggerall=helper(218),var(35)!=13
triggerall = RoundState = 2 && Alive
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall = statetype= A
triggerall=p2bodydist x>=-60 && p2bodydist x<=120
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerAll =(p2movetype=H&&p2stateno>200) && p2statetype=A
trigger1 = StateNo = 600 && movecontact
trigger2 = StateNo = 610 && movecontact
trigger3 = StateNo = 630 && movecontact
trigger4 = 0;StateNo = 640 && movecontact && var(11)=1
trigger5 = 0;StateNo = 650 && movecontact && var(11)=1
trigger6 = ctrl||(stateno=[0,40])||(stateno=[120,149])
trigger6=p2bodydist x<=30 && p2bodydist y=[ifelse(vel y<0,-100,-20),20)






























































[State -1]
type = ChangeState
value=800
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;||((statetype = A)&&(p2statetype=A)&&(p2bodydist Y=[-20,20]))
triggerall=p2bodydist x>=-20
triggerall = stateno != 100
triggerall = p2bodydist X <=20 
triggerall=p2movetype=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1 =1
[State -1]
type = ChangeState
value=800
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)&&(helper(218),var(35)!=[7,8])
;;triggerall = var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(54)-((ceil(var(54)/1000)-ifelse(var(54)-(ceil(var(54)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;||((statetype = A)&&(p2statetype=A)&&(p2bodydist Y=[-20,20]))
triggerall=p2bodydist x>=-20
triggerall = stateno != 100
triggerall = p2bodydist X <=20 
triggerall=p2movetype!=A;;(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);;||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=500;;||p2movetype=A;+ifelse(var(53)-((ceil(var(53)/100)-ifelse(var(53)-(ceil(var(53)/100)*100)<0,1,0))*100)>=30,-100,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =((p2stateno=[50,59]) && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20)
trigger3 =(teamside=2 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30)
trigger4 = statetype=A
[State -1]
type = ChangeState
value=109
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = RoundState = 2 && Alive  && stateno!=3
;;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=partner,life>0||helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;;;;||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-20
triggerall = p2bodydist X <=50
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=10049
triggerall = !ishelper
triggerall = var(59)>0&&var(11)=0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=ifelse(random<=500,20,30);;;||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=30 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100||(p2movetype=H&&p2statetype=C&&random<=500);;||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=280
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;;||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=60 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=25+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-13,0)||(p2movetype=H&&p2statetype=C&&random<=200);;||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>40,400,430)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=60 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=60&&random<=600,200,ifelse(p2bodydist x<=70&&random<=800,440,410))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>20
triggerall=p2bodydist x<=80 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<40,230,ifelse(p2bodydist x<=75,240,220))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;;;||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x<=ifelse(random<=500,75,40) 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-25,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=130,260,250)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>80
triggerall=p2bodydist x<ifelse(random<=250,170,ifelse(random<=500,130,100)) 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-25,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =partner,life>0 && random<=500  && p2statetype=S
[State -1]
type = ChangeState
value=1100
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=var(57)-((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<230
triggerall=var(57)-((ceil(var(57)/10000)-ifelse(var(57)-(ceil(var(57)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||life>p2life
;triggerall=p2stateno!=80103
;triggerall=(p2movetype!=H)||random<=100||partner,life>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>70
triggerall=p2bodydist x<100 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-25,0);;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>150,1050,1000)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20;;||random<=500
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||p2bodydist x=[100,150];;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=80
triggerall=p2bodydist x<=ifelse(random<=250,200,ifelse(random<=500,150,100)) 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>100))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =partner,life>0 && random<=500 && p2statetype=S
[State -1]
type = ChangeState
value=ifelse(random<=500||p2bodydist x>150,1050,1000)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=p2stateno!=80103
;;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive  && stateno!=3
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20;;||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=p2bodydist x>=80
triggerall=p2bodydist x<=ifelse(random<=250,200,ifelse(random<=500,150,100)) 
triggerall = (p2statetype != A);;||(p2bodydist y>=-40 && p2bodydist x>0)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=[100,101]
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;;+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=30,1150,240)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
;triggerall =p2bodydist x<60||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive
triggerall = statetype != A
triggerall=p2bodydist x>=0
triggerall=p2bodydist x<=75
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=100)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =(helper(218),fvar(20)>0 && helper(218),fvar(20)=p2stateno)||(helper(218),fvar(21)>0 && helper(218),fvar(21)=p2stateno)||(helper(218),fvar(22)>0 && helper(218),fvar(22)=p2stateno)
[State -1]
type = ChangeState
value=760
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall = var(11) = 1
triggerall = NumHelper(10050) = 0
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive; && partner,life<=0
;triggerall =random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
;triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall =var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<40||(life>500&&life>p2life&&random<=500)
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>100
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=100||partner,life>0
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>120))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;;ifelse(p2bodydist x>400,25,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0;;p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 = partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=700||(partner,life>0)||(helper(218),var(3)>=600),ifelse(random<=350||p2bodydist x<90,42,47),ifelse(random<=850,43,48))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive; && partner,life<=0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30;;||var(11)=1;;||(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
triggerall =random<=800
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0||random<=500
;triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<233||var(11)=0||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=ifelse(var(11)=1,100,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=700||(partner,life>0)||(helper(218),var(3)>=600),42,43)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive; && partner,life<=0
triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30;;(life>p2life&&life>300)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
triggerall =helper(218),var(3)<600||random<=500
triggerall =time<30||random<=333
triggerall =random<=800
;triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<230||random<=500
;triggerall =(helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)<20000)||partner,life>0||random<=500
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall =var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)<233||var(11)=0||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall =statetype != A 
triggerall=p2bodydist x>60 && p2bodydist x<=300
;;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*30>=150
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=ifelse(var(11)=1,100,50);||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=750
triggerall = !ishelper
triggerall = var(59)>0
triggerall = var(11) = 0
triggerall=(helper(218),var(35)!=13)
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10051) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= ifelse(random<=500||var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200,1000,2000)
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && (random<=500||var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200)
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x>ifelse(var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)>=200,120,150)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno!=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>30000||p2bodydist x>150
[State -1]
type = ChangeState
value=760
triggerall = !ishelper
triggerall = var(59)>0 && var(59)<2000000
triggerall=(helper(218),var(35)!=13)
triggerall = var(11) = 1
triggerall = NumHelper(10050) = 0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && random<=500
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x>100
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno!=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>30000||p2bodydist x>150
[State -1, 地上]
type       = ChangeState
value      = 3070
triggerall = !ishelper
triggerall = var(59)>0 && var(59)<2000000
triggerall=(helper(218),var(35)!=13)
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3000) = 0
triggerall = var(11) = 0
;triggerall = var(12) = 1
triggerall=power>=1000
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && random<=500
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall=p2bodydist x=[70,120];;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[10000,25000]
[State -1]
type = ChangeState
value=ifelse(random=500||p2bodydist x>40,42,49)
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && random<=500
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=p2bodydist x=[10,80];;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[25000,30000]
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>140,250,1000)
triggerall = !ishelper
triggerall = var(59)>0 && var(57)<2000000
triggerall=(helper(218),var(35)!=13)
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
triggerall = RoundState = 2 && Alive && random<=500
;;triggerall = p2bodydist x<=150||stateno!=100
triggerall = statetype!=A 
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<80000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<60000||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<40000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,10,20)||random<=500
triggerall =var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)<20000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=p2bodydist x=[110,170];;; && p2bodydist x<200
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||stateno=100
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=0;helper(218),var(18)<1000 && p2stateno=5120;; && p2bodydist x>130
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
;trigger3=helper(218),var(18)>3000 && ((helper(218),var(35)=[13,14])||(helper(218),var(35)=16))
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[7000,10000]
[State -1]
type = ChangeState
value=ifelse(frontedgebodydist>120&&(enemynear(helper(218),Var(36)),vel x>=2),47,ifelse(backedgebodydist>60,ifelse(var(11)=1,43,105),47))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=(helper(218),var(35)!=13)
triggerall=(helper(218),var(35)!=96)
;triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
triggerall=(helper(218),var(35)!=11)||(p2movetype!=H)||(p2stateno=[5100,5150])
;triggerall=p2stateno!=80103
triggerall = RoundState = 2 && Alive && numenemy=1 && numpartner=0
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-40
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)
triggerall =(p2statetype!=A);||(helper(218),var(35)=8)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 =p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=50 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
trigger3 = p2bodydist x<=20 ;;;&& helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)!=[1,2]





















[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=101&&p2movetype=A)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse(statetype=A,132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=101&&p2movetype=A)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(54)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse(statetype=A,132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=101&&p2movetype=A)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(var(46)>0 && var(46)=p2stateno)||(var(45)>0 && var(45)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=101&&p2movetype=A)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall = prevStateNo != [110,111]
triggerall=statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(46)<=0||var(46) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(45)<=0 ||var(45) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=(stateno!=1000) && (stateno!=[1340,1349]) && (stateno!=[11120,11129]) && (pos y>=0||((stateno!=[10,19])&&(prevstateno!=[10,19])))
;triggerall=var(52)=[-999999,999]
;triggerall=var(56)!=[1000,1999]
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive
triggerall = StateNo != [120, 159]
triggerall = StateNo != 102
triggerall = StateNo != [110,111]
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(54)<100000
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])||(StateNo = 109)||(stateno=5120&&AnimTime=0)||(stateno=[50,51]);;||(stateno=105&&time>=2)
triggerall=statetype=A
trigger1=1
value      = 132









[State -1, Stand1]
type = ChangeState
value =100
triggerall = !IsHelper
triggerall = var(59)>0 && var(11)=0
;triggerall=(helper(218),var(35)!=19)||(p2statetype=A)||partner,life>0
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=[13,14])
;triggerall = (helper(218),var(35)!=16)
;triggerall = (helper(218),var(35)!=[12,13])||p2statetype!=A
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(54)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x>20||frontedgebodydist>60
;;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250 && p2bodydist x-enemynear(helper(218),Var(36)),vel x*30>250
;trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=0;random<=8 && p2bodydist x<=150 && p2movetype!=H
trigger3=p2bodydist x>170 && var(11)=0
trigger3=p2stateno=[5100,5150]
trigger3=0;((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger3=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger3=helper(218),var(18)>3000;;||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
trigger3=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000=[15000,20000]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=28 && (random<=200||helper(218),var(35)=20));;||(stateno=28 && (helper(218),var(35)=18||helper(218),var(35)=[20,26]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,40,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)&&(helper(218),var(35)!=[17,18]);;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,40,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
trigger2=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)&&(helper(218),var(35)!=[17,18]);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=p2bodydist x>=200
trigger3=(helper(218),var(35)=11)||(helper(218),var(35)=14)||(helper(218),var(35)=[17,18])
[State -1, Stand1]
type = ChangeState
value =28;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20&&p2movetype!=A
;triggerall=(helper(218),var(35)!=[11,12])
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=27 && (random<=200||helper(218),var(35)=20));;||(stateno=28 && (helper(218),var(35)=18||helper(218),var(35)=[20,26]))
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(54)>=100000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,40,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,30))
trigger1=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)&&(helper(218),var(35)!=[17,18]);;;&&((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger2=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,40,ifelse(p2movetype=H&&p2stateno>200&&(frontedgebodydist>50||p2statetype!=A),0,50))
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
trigger2=(helper(218),var(35)!=11)&&(helper(218),var(35)!=14)&&(helper(218),var(35)!=[17,18]);;;((p2stateno!=5500)||(p2movetype!=H));;||(p2bodydist y<-60&&p2statetype=A)||partner,life>0
trigger3=p2bodydist x<200
trigger3=(helper(218),var(35)=11)||(helper(218),var(35)=14)||(helper(218),var(35)=[17,18])
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && time
triggerall = time>=10 && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-30||time>=300;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
;;trigger3 = helper(218),var(35)=18 && p2bodydist x=[-20,20]
ctrl=1
[State -1, Stand]
type = ChangeState
value = 101
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall =stateno=100 && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<50)&&time>=30)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<180||p2bodydist x<=180
trigger3 =p2bodydist x<ifelse(p2statetype=A,10,0)
;;ctrl=1











[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=0;numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A&&(helper(218),var(3)<600)&&p2bodydist x<130,28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1


















































[State -1]
type = ChangeState
value =4250;;14400;ifelse(random<=500,14500,14600);ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(53)=0
trigger1 = 0;(StateType != A) && (MoveContact) && stateno<2000
[State -1]
type = ChangeState
value =42;ifelse(random<=333,2600,ifelse(random<=666,2200,2400));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 =Command = "a"
trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
;trigger2=(stateno = 320) && (Time >= 35)



























































;------------------------------------------------------------------------------
;===========================================================================

[State -1, Combo Condition Reset] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo Condition Check] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H        ;ここに使っても無駄！
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 270
trigger2 = stateno != 280
trigger2 = movecontact || time > 2
var(1) = 1
ignorehitpause = 1

;===========================================================================

;獣神アタック（Peccary）
[State -1, ]
type = ChangeState
value = 3070
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 1
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Hawk）
[State -1, ]
type = ChangeState
value = 3060
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 2
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,649]
trigger2 = movecontact

;獣神アタック（Wolf）
[State -1, ]
type = ChangeState
value = 3050
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 3
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Ox）
[State -1, ]
type = ChangeState
value = 3040
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 4
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Snake）
[State -1, ]
type = ChangeState
value = 3030
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 5
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Tiger）
[State -1, ]
type = ChangeState
value = 3020
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 6
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;獣神アタック（Rabbit）
[State -1, ]
type = ChangeState
value = 3010
triggerall = command = "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = NumProjID(3010) = 0
triggerall = var(11) = 0
triggerall = var(12) = 0
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;昇蛇招嵐（Snake）
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "昇蛇招嵐"
triggerall = NumHelper(10000) = 1
triggerall = NumHelper(10050) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = var(11) = 1
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;堕天掌「鎌首」
[State -1, ]
type = ChangeState
value = 1150
triggerall = command = "421_x" || command = "421_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = 102

;------------------------------------------------------------------------------

;破砕陣「蛟鱗」
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "623_x" || command = "623_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;疾風斬「蛇喝」
[State -1, ]
type = ChangeState
value = 1050
triggerall = command = "41236_x" || command = "41236_y"
triggerall = var(59) = 0
trigger1 = movetype != H
trigger1 = var(1)
trigger2 = stateno = [100,102]

;------------------------------------------------------------------------------

;四連斬「牙顎」
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "63214_x" || command = "63214_y"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1)
trigger2 = stateno = [100,102]

;==============================================================================

;獣神セレクト
[State -1]
type = VarSet
triggerall = var(59) = 0
trigger1 = var(12) = 0
trigger1 = RoundState = 2
trigger1 = alive = 1
trigger1 = command = "c"
var(12) = 7

[State -1]
type = varadd
triggerall = var(59) = 0
trigger1 = var(12) != 0
trigger1 = RoundState = 2
trigger1 = alive = 1
trigger1 = command = "c"
var(12) = -1

;------------------------------------------------------------------------------

;ビースト召喚
[State -1, Beast]
type = ChangeState
value = 750
triggerall = var(11) = 0
triggerall = command != "holdfwd"
triggerall = command = "beast" || command = "z"
triggerall = NumHelper(10000) = 0
triggerall = NumHelper(10141) = 0
triggerall = NumHelper(10161) = 0
triggerall = statetype != A
triggerall = movetype != H
triggerall = power >= 1000
triggerall = var(59) = 0
trigger1 = var(1) = 1

;蛟地斬
[State -1, Beast Atack]
type = ChangeState
value = 760
triggerall = var(11) = 1
triggerall = NumHelper(10050) = 0
triggerall = command = "beast" || command = "z"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1) = 1
trigger2 = stateno = 40
trigger3 = stateno = 52
trigger4 = stateno = [100,102]

;払い(立ち)
[State -1, Shield]
type = ChangeState
value = 700
triggerall = command = "x+a"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = [200,201]
trigger4 = stateno = 230

;払い(屈み)
[State -1, Shield]
type = ChangeState
value = 710
triggerall = command = "x+a"
triggerall = statetype = C
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 400
trigger4 = stateno = 430

;==============================================================================

;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------

;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = var(59) = 0
triggerall = EnemyNear,statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype != H
trigger1 = p2bodydist X = [-20,20]
trigger1 = ctrl || stateno = 101

;==============================================================================

;最終連続
[State -1, ]
type = ChangeState
value = 270
triggerall = command = "FF+y"
triggerall = movetype != H
triggerall = var(59) = 0
trigger1 = var(1) = 1

;------------------------------------------------------------------------------

;中段攻撃
[State -1, ]
type = ChangeState
value = 280
triggerall = command = "x+y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200
trigger3 = movecontact || time > 2
trigger4 = stateno = 210
trigger4 = movecontact || time > 2
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact

;------------------------------------------------------------------------------

;踏み込み攻撃y
[State -1, ]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;踏み込み攻撃b
[State -1, ]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;------------------------------------------------------------------------------

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;------------------------------------------------------------------------------

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [100,101]

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;------------------------------------------------------------------------------

;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = time > 5

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 102
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact

;------------------------------------------------------------------------------

;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl

;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2
trigger3 = stateno = 630
trigger3 = time > 2

;------------------------------------------------------------------------------

;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2

;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time > 2
trigger3 = stateno = 610
trigger3 = time > 2
trigger4 = stateno = 630
trigger4 = time > 2

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;この下、一行以上空ける事…



