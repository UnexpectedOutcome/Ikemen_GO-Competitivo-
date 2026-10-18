
;---------------------------------------------------------------------------

;AI Setup

[Command]
name = "ai1"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+x+y+z
time = 1

[Command]
name = "ai2"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+x+y+z
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+x+y+z
time = 1

[Command]
name = "ai4"
command = a,a,a,a,a,a,a,a,a,a,a+b+c+x+y+z
time = 1

[Command]
name = "ai5"
command = b,b,b,b,b,b,b,b,b,b,a+b+c+x+y+z
time = 1

[Command]
name = "ai6"
command = c,c,c,c,c,c,c,c,c,c,a+b+c+x+y+z
time = 1

[Command]
name = "ai7"
command = F,F,F,F,F,F,F,F,a+b+c+x+y+z
time = 1

[Command]
name = "ai8"
command = B,B,B,B,B,B,B,B,B,a+b+c+x+y+z
time = 1

[Command]
name = "ai9"
command = U,U,U,U,U,U,U,U,U,a+b+c+x+y+z
time = 1

[Command]
name = "ai10"
command = D,D,D,D,D,D,D,D,D,a+b+c+x+y+z
time = 1

[Command]
name = "ai11"
command = F,F,F,B,B,B,U,U,U,a+b+c+x+y+z
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F,B,F,B,F,a+b+c+x+y+z
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "acv"
command =~D, F,D, F, c
time = 30

[Command]
name = "asp"
command = ~D, F,D, F, a+b
time = 30

[Command]
name = "super"
command = ~D,B,D,F,a
time = 20

[Command]
name = "ac_xy"
command = ~D, F, D,F, x+y
time = 30

[Command]
name = "ab_xy"
command = ~D, B, D,B, x
time = 25
[Command]
name = "ab_xy"
command = ~D, B, D,B, y
time = 25

[Command]
name = "at_ab"
command = ~D, B, D,B, a
time = 30
[Command]
name = "at_ab"
command = ~D, B, D,B, b
time = 30


;Special Motions----------------------------------------------------
[Command]
name = "wn"
command = ~F, D, B, b
time = 20

[Command]
name = "ac_x"
command = ~F, D, DF, x

[Command]
name = "ac_y"
command = ~F, D, DF, y

[Command]
name = "ab_x"
command = ~D, DF, F, x

[Command]
name = "ab_y"
command = ~D, DF, F, y

[Command]
name = "at_a"
command = ~D, DB, B, a

[Command]
name = "at_b"
command = ~D, DB, B, b


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------


[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "tyudan"
command = y+b
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "longjump"
command = D, $U

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; AI
;---------------------------------------------------------------------------
; AI Setup

[State -1, AI]
type = VarSet ;Variable Set
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
var(59) = 1 ;Sets Variable 59 to 1 (Activates AI)

;===========================================================================

;アリーナカーニバル
[State -1, ac]
type = ChangeState
value = 3000
triggerall = command = "acv"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
;---------------------------------------------------------------------------
;わくわく投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 880
triggerall = command = "wn"
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2bodydist X <= 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;===========================================================================
;アリーナクラッシュＥＸ
[State -1, ab]
type = ChangeState
value = 4500
triggerall = command = "ac_xy"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1499
trigger3=movecontact&&statetype!=A

[State -1, ab]
type = ChangeState
value = 4919
triggerall = command = "ac_xy"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
trigger2=stateno=4996||stateno=1200||stateno=1201||stateno=1202||stateno=1290||stateno=1401||stateno=1410||stateno=1420||stateno=1430||stateno=1440
trigger2=movecontact

;スーパー化
[State -1, スーパー]
type = ChangeState
value = 4900
triggerall = command = "super"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1499

;アリーナビームＥＸ
[State -1, ab]
type = ChangeState
value = 4300
triggerall = command = "ab_xy"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1499
trigger3=movecontact&&statetype!=A

;アリーナビームＥＸ空中
[State -1, ab]
type = ChangeState
value = 4310
triggerall = command = "ab_xy"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2=movecontact&&statetype=A
trigger3=stateno=1200||stateno=1201||stateno=1202||stateno=1290||stateno=1401||stateno=1410||stateno=1420||stateno=1430||stateno=1440
trigger3=movecontact

;アリーナトルネードＥＸ
[State -1, at]
type = ChangeState
value = 4995
triggerall = command = "at_ab"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A
trigger3=stateno=1200||stateno=1201||stateno=1202||stateno=1290||stateno=1401||stateno=1410||stateno=1420||stateno=1430||stateno=1440||stateno=1499
trigger3=movecontact

[State -1, ac]
type = ChangeState
value = 4989
triggerall = command = "asp"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=[200,499]
trigger3=stateno=4996||stateno=1200||stateno=1201||stateno=1202||stateno=1290||stateno=1401||stateno=1410||stateno=1420||stateno=1430||stateno=1440
trigger3=movecontact

[State -1, ac]
type = ChangeState
value = 4000
triggerall = command = "asp"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=[200,499]
trigger2 = movecontact&&statetype!=A
trigger3=stateno=1499
trigger3=movecontact&&statetype!=A


;______________________________________________________________----------
;アリーナクラッシュ
[State -1, ab]
type = ChangeState
value = 1400
triggerall = command = "ac_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

[State -1, ab]
type = ChangeState
value = 1499
triggerall = command = "ac_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;アリーナビーム弱
[State -1, ab]
type = ChangeState
value = 1000
triggerall = command = "ab_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=[200,499]
trigger2=movecontact&&statetype!=A

;アリーナビーム強
[State -1, ab]
type = ChangeState
value = 1010
triggerall = command = "ab_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=[200,499]
trigger2=movecontact&&statetype!=A

;アリーナビーム弱空中
[State -1, ab]
type = ChangeState
value = 1020
triggerall = command = "ab_x"
trigger1 = statetype = A
trigger1 = ctrl

;アリーナビーム強空中
[State -1, ab]
type = ChangeState
value = 1030
triggerall = command = "ab_y"
trigger1 = statetype = A
trigger1 = ctrl
;__________________________________________________________________________
;アリーナトルネード弱
[State -1, at]
type = ChangeState
value = 1200
triggerall = command = "at_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;アリーナトルネード強
[State -1, at]
type = ChangeState
value = 1290
triggerall = command = "at_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2=movecontact&&statetype!=A

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ｐ投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Ｋ投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;空中投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ちゅーだーん
[State -1, 中段]
type = ChangeState
value = 711
triggerall = command = "tyudan" || command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [150,151]
trigger2 = power >= 1000

[State -1]
type = ChangeState
value = 799
triggerall = command = "tyudan" || command = "c"
triggerall = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 740
triggerall = command = "ax" && Command = "holdback"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000
[State -1]
type = ChangeState
value = 740
triggerall = command = "z" && Command = "holdback"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = [150,151]
trigger2 = Power >= 1000

[State -1]
type = ChangeState
value = 730
triggerall = command = "a" && command = "x" && !Command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && Power >= 1000
trigger2 = statetype != A
trigger3 = stateno = [150,151]
trigger3 = Power >= 1000
[State -1]
type = ChangeState
value = 730
triggerall = command = "z" && !Command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact && Power >= 1000
trigger2 = statetype != A
trigger3 = stateno = [150,151]
trigger3 = Power >= 1000
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno=210||stateno=200||stateno=240||stateno=400||stateno=410
trigger2 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=stateno=430

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強Ｐ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱Ｋ
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 995
triggerall = statetype = S
triggerall = stateno != 995 && ctrl
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 =  command = "start"
