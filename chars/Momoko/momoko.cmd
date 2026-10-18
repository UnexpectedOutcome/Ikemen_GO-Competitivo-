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
command.time = 15
command.buffer.time = 1

;-| AI |--------------------------------------------------------
[Command]
Name = "AI_00"
Command = U, U, D, D, B, F, B, F, b, a
Time = 0

[Command]
Name = "AI_01"
Command = U, U, D, D, B, F, B, F, a, a
Time = 0

[Command]
Name = "AI_02"
Command = U, U, D, D, B, F, B, F, b, b
Time = 0

[Command]
Name = "AI_03"
Command = U, U, D, D, B, F, B, F, c, c
Time = 0

[Command]
Name = "AI_04"
Command = U, U, D, D, B, F, B, F, x, x
Time = 0

[Command]
Name = "AI_05"
Command = U, U, D, D, B, F, B, F, y, y
Time = 0

[Command]
Name = "AI_06"
Command = U, U, D, D, B, F, B, F, z, z
Time = 0

[Command]
Name = "AI_07"
Command = U, U, D, D, B, F, B, F, s, s
Time = 0

[Command]
Name = "AI_08"
Command = U, U, D, D, B, F, B, F, a, b
Time = 0

[Command]
Name = "AI_09"
Command = U, U, D, D, B, F, B, F, a, c
Time = 0

[Command]
Name = "AI_10"
Command = U, U, D, D, B, F, B, F, a, x
Time = 0

[Command]
Name = "AI_11"
Command = U, U, D, D, B, F, B, F, a, y
Time = 0

[Command]
Name = "AI_12"
Command = U, U, D, D, B, F, B, F, a, z
Time = 0

[Command]
Name = "AI_13"
Command = U, U, D, D, B, F, B, F, a, s
Time = 0

[Command]
Name = "AI_14"
Command = U, U, D, D, B, F, B, F, b, c
Time = 0

[Command]
Name = "AI_15"
Command = U, U, D, D, B, F, B, F, b, x
Time = 0

[Command]
Name = "AI_16"
Command = U, U, D, D, B, F, B, F, b, y
Time = 0

[Command]
Name = "AI_17"
Command = U, U, D, D, B, F, B, F, b, z
Time = 0

[Command]
Name = "AI_18"
Command = U, U, D, D, B, F, B, F, b, s
Time = 0

[Command]
Name = "AI_19"
Command = U, U, D, D, B, F, B, F, c, a
Time = 0

[Command]
Name = "AI_20"
Command = U, U, D, D, B, F, B, F, c, b
Time = 0

[Command]
Name = "AI_21"
Command = U, U, D, D, B, F, B, F, c, x
Time = 0

[Command]
Name = "AI_22"
Command = U, U, D, D, B, F, B, F, c, y
Time = 0

[Command]
Name = "AI_23"
Command = U, U, D, D, B, F, B, F, c, z
Time = 0

[Command]
Name = "AI_24"
Command = U, U, D, D, B, F, B, F, c, s
Time = 0

[Command]
Name = "AI_25"
Command = U, U, D, D, B, F, B, F, s, a
Time = 0

[Command]
Name = "AI_26"
Command = U, U, D, D, B, F, B, F, s, b
Time = 0

[Command]
Name = "AI_27"
Command = U, U, D, D, B, F, B, F, s, c
Time = 0

[Command]
Name = "AI_28"
Command = U, U, D, D, B, F, B, F, s, x
Time = 0

[Command]
Name = "AI_29"
Command = U, U, D, D, B, F, B, F, s, y
Time = 0

[Command]
Name = "AI_30"
Command = U, U, D, D, B, F, B, F, s, z
Time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "ｼﾓﾑｪMAX2"
command = ~F,$D,B,F,$D,B, x+y
time = 45

[Command]
name = "esp"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "hosi"
command = ~F,$D,B,F,$D,B, x
time = 45

[Command]
name = "hosi"
command = ~F,$D,B,F,$D,B, y
time = 45

[Command]
name = "doremi"
command = ~D, DF, F, D, DF, F, a
time = 24

[Command]
name = "doremi"
command = ~D, DF, F, D, DF, F, b
time = 24

;-| Special Motions |------------------------------------------------------
[Command]
name = "bane_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "bane_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "for_a"
command = ~D, DF, F, a

[Command]
name = "for_b"
command = ~D, DF, F, b

[Command]
name = "fenix_a"
command = ~D, DB, B, a

[Command]
name = "fenix_b"
command = ~D, DB, B, b

[Command]
name = "peach_x"
command = ~D, DF, F, x

[Command]
name = "peach_y"
command = ~D, DF, F, y

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "cd"
command = y+b
time = 1

[Command]
name = "cd"
command = z
time = 1

[Command]
name = "MAX"
command = c
time = 1

[Command]
name = "2nd"
command = U+F
time = 1

[Command]
name = "QC"
command = a+b
time = 1

[Command]
name = "QC"
command = x+y
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

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

;-| Hold Dir |--------------------------------------------------------------
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_s"
command = /$s
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
[State -1]
type = ChangeState
value = 3800
triggerall = Var(59) != 1
triggerall = command = "ｼﾓﾑｪMAX2"
triggerall = power >= ifelse(Var(23)>0,2000,3000)
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = var(23) > 0 && movecontact && stateno = 260 && time = [17,20]
trigger7 = movecontact && stateno = 1000 && time = [10,14]
trigger8 = movecontact && stateno = 1010 && time = [17,21]
trigger9 = movecontact && stateno = 1200 && time = [9,21]
trigger10 = movecontact && stateno = 1210 && time = [9,21]
trigger11 = movecontact = 1 && stateno = [3200,3490]

;---------------------------------------------------------------------------
; えすぱ～！
[State -1]
type = ChangeState
value = 3500
triggerall = command = "esp"
triggerall = power >= ifelse(Var(23)>0,1000,2000)
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = var(23) > 0 && movecontact && stateno = 260 && time = [17,20]
trigger7 = movecontact && stateno = 1000 && time = [10,14]
trigger8 = movecontact && stateno = 1010 && time = [17,21]
trigger9 = movecontact && stateno = 1200 && time = [9,21]
trigger10 = movecontact && stateno = 1210 && time = [9,21]

;---------------------------------------------------------------------------
; ももこのどれみかんと♪
[State -1]
type = ChangeState
value = 3100
triggerall = command = "doremi"
triggerall = power >= ifelse(Var(23)>0,0,1000)
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = var(23) > 0 && movecontact && stateno = 260 && time = [17,20]
trigger7 = movecontact && stateno = 1000 && time = [10,14]
trigger8 = movecontact && stateno = 1010 && time = [17,21]
trigger9 = movecontact && stateno = 1200 && time = [9,21]
trigger10 = movecontact && stateno = 1210 && time = [9,21]

;---------------------------------------------------------------------------
; おほしさまになっちゃえ～☆
[State -1]
type = ChangeState
value = 3000
triggerall = Var(59) != 1
triggerall = command = "hosi"
triggerall = power >= ifelse(Var(23)>0,0,1000)
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = var(23) > 0 && movecontact && stateno = 260 && time = [17,20]
trigger7 = movecontact && stateno = 1000 && time = [10,14]
trigger8 = movecontact && stateno = 1010 && time = [17,21]
trigger9 = movecontact && stateno = 1200 && time = [9,21]
trigger10 = movecontact && stateno = 1210 && time = [9,21]

;===========================================================================
;---------------------------------------------------------------------------
; ばねらいら・どいす・ごうぴす
[State -1]
type = ChangeState
value = 1000
triggerall = command = "bane_a"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

; ばねらいら・どいす・ごうぴす
[State -1]
type = ChangeState
value = 1000
triggerall = command = "bane_a"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1200 && time = [10,21]
trigger8 = movecontact && stateno = 1210 && time = [10,21]

[State -1]
type = ChangeState
value = 1010
triggerall = command = "bane_b"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

[State -1]
type = ChangeState
value = 1010
triggerall = command = "bane_b"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1200 && time = [10,21]
trigger8 = movecontact && stateno = 1210 && time = [10,21]

;---------------------------------------------------------------------------
; ふぉーりゃ
[State -1]
type = ChangeState
value = 1100
triggerall = command = "for_a"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

; ふぉーりゃ
[State -1]
type = ChangeState
value = 1100
triggerall = command = "for_a"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1000 && time = [10,13]
trigger8 = movecontact && stateno = 1010 && time = [17,20]
trigger9 = movecontact && stateno = 1200 && time = [10,21]
trigger10 = movecontact && stateno = 1210 && time = [10,21]

[State -1]
type = ChangeState
value = 1110
triggerall = command = "for_b"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

[State -1]
type = ChangeState
value = 1110
triggerall = command = "for_b"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1000 && time = [10,13]
trigger8 = movecontact && stateno = 1010 && time = [17,20]
trigger9 = movecontact && stateno = 1200 && time = [10,21]
trigger10 = movecontact && stateno = 1210 && time = [10,21]

;---------------------------------------------------------------------------
; ふぇにっくす・あろー
[State -1]
type = ChangeState
value = 1200
triggerall = command = "fenix_a"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

; ふぇにっくす・あろー
[State -1]
type = ChangeState
value = 1200
triggerall = command = "fenix_a"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1000 && time = [10,13]
trigger8 = movecontact && stateno = 1010 && time = [17,20]

[State -1]
type = ChangeState
value = 1210
triggerall = command = "fenix_b"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

[State -1]
type = ChangeState
value = 1210
triggerall = command = "fenix_b"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1000 && time = [10,13]
trigger8 = movecontact && stateno = 1010 && time = [17,20]

;---------------------------------------------------------------------------
; ぴーち・あたっき
[State -1]
type = ChangeState
value = 1300
triggerall = command = "peach_x" || command = "peach_y"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240 || stateno = 270) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

; ぴーち・あたっき
[State -1]
type = ChangeState
value = 1300
triggerall = command = "peach_x" || command = "peach_y"
triggerall = var(23) > 0
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = stateno = 215
trigger3 = stateno = 235
trigger4 = stateno = 245
trigger5 = movecontact && stateno = 260 && time = [17,20]
trigger6 = stateno = 440
trigger7 = movecontact && stateno = 1000 && time = [10,13]
trigger8 = movecontact && stateno = 1010 && time = [17,20]
trigger9 = movecontact && stateno = 1200 && time = [10,21]
trigger10 = movecontact && stateno = 1210 && time = [10,21]

;===========================================================================
;---------------------------------------------------------------------------
;Power Up Charge
[State -1, Charge]
type = ChangeState
value = 9000
triggerall = var(1) != 1
triggerall = Power != PowerMax
triggerall = command = "hold_x" && command = "hold_a" && command = "hold_y"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Max On
[State -1, Max On]
type = ChangeState
value = 9030
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(23) <= 0
trigger1 = ctrl || (stateno = 100 && time >= 5) || stateno = 101

;Quick Max
[State -1, Quick Max]
type = ChangeState
value = 9031
triggerall = command = "MAX"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(23) <= 0
trigger1 = stateno = [200,720]
trigger1 = movecontact = 1

; ももこんぼ
[State -1]
type = varset
var(4) = 0
trigger1 = (stateno != 210) && (stateno != 260) && (stateno != 410)

;-------------------------------------------------------------Roll from falling
[State -1]
type = ChangeState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive && (StateNo = 5050 || StateNo = 5071)
trigger1 = Command = "recovery"
value = 5200

;---------------------------------------------------------------------------
; あぅまーだ・ぷらーた
[State -1]
type = ChangeState
value = 1900
triggerall = var(4) = 1
trigger1 = stateno = 210 && (AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)
trigger2 = stateno = 260 && (AnimElemTime(6) >= 2 && AnimElemTime(8) < 0) && movecontact
trigger3 = stateno = 410 && (AnimElemTime(3) >= 2 && AnimElemTime(4) < 0)

[State -1]
type = varset
var(4) = 1
triggerall = (command = "a" || command = "b") && command = "holdfwd"
triggerall = command != "holdup" && command != "holddown"
trigger1 = (stateno = 210) || (stateno = 260) || (stateno = 410)

;---------------------------------------------------------------------------
; えっすぃ・どぶらーど
[State -1]
type = ChangeState
value = 1910
triggerall = var(4) = 2
trigger1 = stateno = 210 && (AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)
trigger2 = stateno = 260 && (AnimElemTime(6) >= 2 && AnimElemTime(8) < 0) && movecontact
trigger3 = stateno = 410 && (AnimElemTime(3) >= 2 && AnimElemTime(4) < 0)

[State -1]
type = varset
var(4) = 2
triggerall = (command = "x" || command = "y") && command = "holdback"
triggerall = command != "holdup" && command != "holddown"
trigger1 = (stateno = 210) || (stateno = 260) || (stateno = 410)

;---------------------------------------------------------------------------
; とろっか・え・ぴぃあお
[State -1]
type = ChangeState
value = 1920
triggerall = var(4) = 3
trigger1 = stateno = 210 && (AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)
trigger2 = stateno = 260 && (AnimElemTime(6) >= 2 && AnimElemTime(8) < 0) && movecontact
trigger3 = stateno = 410 && (AnimElemTime(3) >= 2 && AnimElemTime(4) < 0)

[State -1]
type = varset
var(4) = 3
triggerall = (command = "a" || command = "b") && command = "holddown"
triggerall = command != "holdfwd" && command != "holdback"
trigger1 = (stateno = 210) || (stateno = 260) || (stateno = 410)

;---------------------------------------------------------------------------
; ばねらいら・どいす・ごうぴす
[State -1]
type = ChangeState
value = 1930
triggerall = var(4) = 4
trigger1 = stateno = 210 && (AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)
trigger2 = stateno = 260 && (AnimElemTime(6) >= 2 && AnimElemTime(8) < 0) && movecontact
trigger3 = stateno = 410 && (AnimElemTime(3) >= 2 && AnimElemTime(4) < 0)

[State -1]
type = varset
var(4) = 4
triggerall = (command = "a" || command = "b") && command = "holdup"
triggerall = command != "holdfwd" && command != "holdback"
trigger1 = (stateno = 210) || (stateno = 260) || (stateno = 410)

;---------------------------------------------------------------------------
; へべるさぉん・せん・まぉん
[State -1]
type = ChangeState
value = 1940
triggerall = var(4) = 5
trigger1 = stateno = 210 && (AnimElemTime(4) >= 2 && AnimElemTime(6) < 0)
trigger2 = stateno = 260 && (AnimElemTime(6) >= 2 && AnimElemTime(8) < 0) && movecontact
trigger3 = stateno = 410 && (AnimElemTime(3) >= 2 && AnimElemTime(4) < 0)

[State -1]
type = varset
var(4) = 5
triggerall = (command = "x" || command = "y") && command = "holdfwd"
triggerall = command != "holdup" && command != "holddown"
trigger1 = (stateno = 210) || (stateno = 260) || (stateno = 410)

;===========================================================================
;------------------------------------------
;　いやんv(Ｐ投げ)
[State -1]
type = ChangeState
value = 800
triggerall = var(2) != 1
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 7 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;　いやんv(Ｋ投げ)
[State -1]
type = ChangeState
value = 805
triggerall = var(2) != 1
triggerall = command = "b" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 7 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 80
triggerall = Command = "recovery" && Command != "holdback" || Command = "recovery" && Command = "holdfwd"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = (stateno = [150,152]) && power >= 1000

; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 90
triggerall = Command = "recovery" && Command = "holdback"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = stateno = 100 || stateno = 101
trigger3 = (stateno = [150,152]) && power >= 1000

;---------------------------------------------------------------------------
;吹っ飛ばし
[State -1]
type = ChangeState
value = 700
triggerall = command = "cd"
trigger1 = statetype != A && (ctrl || (Stateno = [100,101]))

[State -1]
type = ChangeState
value = 710
triggerall = command = "cd"
trigger1 = statetype = A && (ctrl || (Stateno = [100,101]))

[State -1]
type = ChangeState
value = 720
triggerall = command = "cd"
trigger1 = (stateno = [150,152]) && (power >= 1000)

;---------------------------------------------------------------------------
; かべいりんにゃ
[State -1]
type = ChangeState
value = 290
triggerall = command = "b" && command = "holdfwd" && command = "holddown"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; かべっさーだ
[State -1]
type = ChangeState
value = 280
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; はすていら
[State -1]
type = ChangeState
value = 270
triggerall = command = "a" && command = "holdfwd" && command = "holddown"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 230 || stateno = 240) && movecontact = 1
trigger3 = (stateno = 210 || stateno = 400 || stateno = 410) && movecontact = 1
trigger4 = (stateno = 200) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger5 = (stateno = 205) && (AnimElemTime(6) >= 0) && movecontact = 1
trigger6 = (stateno = 410) && (AnimElemTime(3) >= 0)

;---------------------------------------------------------------------------
; あうー・ぱちどぅー
[State -1]
type = ChangeState
value = 260
triggerall = command = "a" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; かべっさーだ
[State -1]
type = ChangeState
value = 250
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = statetype != A && ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; ふみふみ・あたっき
[State -1]
type = ChangeState
value = 650
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = A && ctrl

[State -1]
type = ChangeState
value = 655
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; せぐんだ・ぷーろ
[State -1]
type = ChangeState
value = 45
trigger1 = command = "up" && (Anim = 41)
trigger1 = (Time >= 13) && (time < 35)
trigger2 = command = "2nd" && (Anim = 42)
trigger2 = (Time >= 13) && (time < 35)

;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 199
triggerall = Var(59) != 1
triggerall = command = "start"
trigger1 = statetype != A && (ctrl || (Anim = [100,101]))

;===========================================================================
;--------------------------
;　立ち弱パンチ
[State -1]
type = changestate
value = 200
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2Bodydist X <= 19
trigger1 = ctrl || (stateno = 100 && time >= 5)
trigger2 = (stateno = 200) && (time >= 15)

[State -1]
type = changestate
value = 205
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2Bodydist X > 19
trigger1 = ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
;　立ち強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2Bodydist X <= 18
trigger1 = ctrl || (stateno = 100 && time >= 5)

[State -1]
type = ChangeState
value = 215
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2Bodydist X > 18
trigger1 = ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; 立ち弱キック
[State -1]
type = ChangeState
value = 230
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2Bodydist X <= 15
trigger1 = ctrl || (stateno = 100 && time >= 5)

[State -1]
type = ChangeState
value = 235
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2Bodydist X > 15
trigger1 = ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; 立ち強キック
[State -1]
type = ChangeState
value = 240
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2Bodydist X <= 17
trigger1 = ctrl || (stateno = 100 && time >= 5)

[State -1]
type = ChangeState
value = 245
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2Bodydist X > 17
trigger1 = ctrl || (stateno = 100 && time >= 5)

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
; 空中弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中弱キック
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中強キック
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
