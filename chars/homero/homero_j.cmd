
; Definition of the Commands
;=====================================================================
[command]
name = "AI1"
command = a,a,a,a,a,b,b,c,c
time = 1

[command]
name = "AI2"
command = b,b,b,b,b,c,c,a,a
time = 1

[command]
name = "AI3"
command = c,c,c,c,c,a,a,b,b
time = 1

[command]
name = "AI4"
command = x,x,x,x,x,y,y,z,z
time = 1

[command]
name = "AI5"
command = y,y,y,y,y,z,z,x,x
time = 1

[command]
name = "AI6"
command = z,z,z,z,z,x,x,y,y
time = 1

[command]
name = "AI7"
command = F,F,D,D,DF,DF
time = 1

[command]
name = "AI8"
command = D,D,DF,DF,F,F
time = 1

[command]
name = "AI9"
command = DF,DF,F,F,D,D
time = 1

[command]
name = "AI10"
command = B,B,D,D,DB,DB
time = 1

[command]
name = "AI11"
command = D,D,DB,DB,B,B
time = 1

[command]
name = "AI12"
command = DB,DB,B,B,D,D
time = 1

[command]
name = "AI13"
command = F,F,U,U,UF,UF
time = 1

[command]
name = "AI14"
command = U,U,UF,UF,F,F
time = 1

[command]
name = "AI15"
command = UF,UF,F,F,U,U
time = 1

[command]
name = "AI16"
command = B,B,U,U,UB,UB
time = 1

[command]
name = "AI17"
command = U,U,UB,UB,B,B
time = 1

[command]
name = "AI18"
command = UB,UB,B,B,U,U
time = 1

[command]
name = "AI19"
command = F,F,B,B,U,U
time = 1

[command]
name = "AI20"
command = B,B,U,U,F,F
time = 1

[command]
name = "AI21"
command = U,U,F,F,B,B
time = 1

[command]
name = "AI22"
command = UB,B,UB,B,U,U
time = 1

[command]
name = "AI23"
command = F,B,B,F,U,U
time = 1

[command]
name = "AI24"
command = B,U,B,U,F,F
time = 1

[command]
name = "AI25"
command = U,F,U,F,B,B,B
time = 1

[command]
name = "AI26"
command = s,s,s,s,s,s,s,s
time = 1
;-| Super Motions |---------------------------------------------------


[Command]
name = "Bart_LV.3"  ;bart
command = ~D, DB, B, y+z
time = 26

[Command]
name = "Bart_LV.2"
command = ~D, DB, B, x+y
time = 26

[Command]
name = "Bart_LV.1"
command = ~D, DB, B, x+z
time = 26

[Command]
name = "chango_LV.3" ;chango con codazo
command = ~D, DF, F, y+z
time = 26

[Command]
name = "Kin 1211 Shiki: Ya Otome_LV.2"
command = ~D, DF, F, x+z
time = 26

[Command]
name = "Kin 1211 Shiki: Ya Otome_LV.1"
command = ~D, DF, F, x+y
time = 26

[Command]
name = "Ura 100 Shiki: Oni homura_LV.3"
command = ~D, F, D, F, x+y
time = 26

[Command]
name = "Ura 100 Shiki: Oni homura_LV.2"
command = ~D, F, D, F, y
time = 26

[Command]
name = "Ura 100 Shiki: Oni homura_LV.1"
command = ~D, F, D, F, x
time = 26

[Command]
name = "Kakaroto"
command = ~D, DF, F, a+b
time = 26

[Command]
name = "Overdrive"; modo ebrio
command =   ~D, DB, B, D, DB, B, s
time = 20

;-| Special Motions |-------------------------------------------------


[Command]
name = "Kuzukaze";agarre inutil
command = ~D, DB, B, z
time = 20

[Command]
name = "212 Shiki: Kototsuki In_a";correr y dar
command = ~D, DB, B, a
time = 20

[Command]
name = "212 Shiki: Kototsuki In_b";correr y dar
command = ~D, DB, B, b
time = 20

[Command]
name = "100 Shiki: Oniyaki_x"
command = ~F, F, x

[Command]
name = "100 Shiki: Oniyaki_y"
command = ~F, F, y

[Command]
name = "100 Shiki: Oniyaki_y"
command = ~F, F, z

[Command]
name = "cuetazo_x" ;balazo
command = ~D, DF, F, x

[Command]
name = "cuetazo_y" ;balazo
command = ~D, DF, F, y

[Command]
name = "cuetazo_z" ;balazo
command = ~D, DF, F, z

[Command]
name = "127 Shiki: Aoi Hana"
command = ~D, DB, B, x

[Command]
name = "127 Shiki: Aoi Hana"
command = ~D, DB, B, y

[Command]
name = "yurrujuju"
command = ~D, DB, B, c


[Command]
name = "muerte"
command = ~D, DF, F, D, DF, F, s
time = 20

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "call-st";Required (do not remove)
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1


[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge"
command = /c
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = s
time = 1

[Command]
name = "recovery"
command = z+c
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]
;=====================================================================
; CPU Function
;=====================================================================
[state -1, Activate AI]
type = varset
;triggerall = (Var(0) != 1)
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
var(0) = 1


;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------

[State -1]
type = ChangeState
value = 3020
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Bart_LV.3" && Power >= 1000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.2）
[State -1]
type = ChangeState
value = 3010
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && var(39) = 0 && (Command = "Bart_LV.2" && Power >= 1000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百八式・八酒杯（LV.1）
[State -1]
type = ChangeState
value = 3000
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0&& Power >= 1000
triggerall= Var(17) = 0 && var(39) = 0 && ((Command = "Bart_LV.1") || (Command = "Bart_LV.2" && Power < 2000))
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.3）
[State -1]
type = ChangeState
value = 3120
triggerall= Command = "chango_LV.3" && Power >= 1000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.2）
[State -1]
type = ChangeState
value = 3110
triggerall= Command = "Kin 1211 Shiki: Ya Otome_LV.2" && Power >= 1000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 禁千弐百拾壱式・八稚女（LV.1）
[State -1]
type = ChangeState
value = 3100
triggerall= Power >= 1000
triggerall= (Command = "Kin 1211 Shiki: Ya Otome_LV.1") || (Command = "Kin 1211 Shiki: Ya Otome_LV.2" && Power < 1000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.3）
[State -1]
type = ChangeState
value = 3320
triggerall= var(39)
triggerall= Command = "Ura 100 Shiki: Oni homura_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.2）
[State -1]
type = ChangeState
value = 3310
triggerall= var(39)
triggerall= Command = "Ura 100 Shiki: Oni homura_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 裏百式・鬼焔（Lv.1）
[State -1]
type = ChangeState
value = 3300
triggerall= var(39)&& Power >= 1000
triggerall= (Command = "Ura 100 Shiki: Oni homura_LV.1") || (Command = "Ura 100 Shiki: Oni homura_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

[State -1, Hyper]
type = ChangeState
value = 3500
triggerall = command = "Kakaroto"
triggerall = power >= 2000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;la muerte (usa 3 super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3666
triggerall = command = "muerte"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------
; 暴走
[State -1]
type = ChangeState
value = 9999
triggerall= !var(39)
triggerall = command = "Overdrive"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 屑風
[State -1]
type = ChangeState
value = 1200
triggerall= Command = "Kuzukaze" && var(39) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 弐百拾弐式・琴月　陰（弱）
[State -1]
type = ChangeState
value = 1400
triggerall= Command = "212 Shiki: Kototsuki In_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 弐百拾弐式・琴月　陰（強）
[State -1]
type = ChangeState
value = 1410
triggerall= Command = "212 Shiki: Kototsuki In_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百式・鬼焼き（弱）
[State -1]
type = ChangeState
value = 1100
triggerall= Command = "100 Shiki: Oniyaki_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百式・鬼焼き（強）
[State -1]
type = ChangeState
value = 1110
triggerall= Command = "100 Shiki: Oniyaki_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百八式・闇払い（弱）
[State -1]
type = ChangeState
value = 1000
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "cuetazo_x" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百八式・闇払い（強）
[State -1]
type = ChangeState
value = 1010
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "cuetazo_y" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 3 de unave
[State -1]
type = ChangeState
value = 1011
triggerall= NumHelper(3008) = 0 && NumHelper(3009) = 0 && NumHelper(3010) = 0
triggerall= Var(17) = 0 && Command = "cuetazo_z" && NumProjID(1005) = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;---------------------------------------------------------------------
; 百弐拾七式・葵花
;------------------------ 一段目
[State -1]
type = ChangeState
value = 1300
triggerall= Command = "127 Shiki: Aoi Hana"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(12) = [1,10]
trigger2 = (stateno = [200,205)) || stateno = 235 || stateno = 400 || stateno = 430
trigger3 = Var(12) = [1,16]
trigger3 = stateno = 210 || (stateno = 215 && var(13) = 1) || stateno = 410

;------------------------ 二段目
[State -1]
type = ChangeState
value = 1301
triggerall= var(15) = 1
trigger1  = StateNo = 1300 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1300

;------------------------ 三段目
[State -1]
type = ChangeState
value = 1302
triggerall= var(15) = 1
trigger1  = StateNo = 1301 && AnimElem = 5,>= 2 && AnimElem = 7,< 0
trigger2 = Var(12) = [1,16]
trigger2 = stateno = 1301

;------------------------先行入力
[State -1,VarSet(15)]
type = VarSet
var(15) = 1
triggerall = Command = "127 Shiki: Aoi Hana" && Time > 0 && var(15) = 0
trigger1  = StateNo = 1300 && AnimElem = 1,> 1 && AnimElem = 6,< 3
trigger2  = StateNo = 1301 && AnimElem = 1,> 1 && AnimElem = 6,< 3

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 逆剥ぎ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 40
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; 逆剥ぎ（K通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 40
trigger2 = Command = "back_b" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 緊急回避動作
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))



;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; 外式・轟斧　陰　"死神"（→＋A）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "fwd_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 外式・百合折り（ジャンプ中←＋A）
[State -1]
type = ChangeState
value = 710
triggerall= Command = "back_a"
trigger1 = StateType = A && Ctrl = 1

;---------------------------------------------------------------------
; remolino
[State -1]
type = ChangeState
value = 720
triggerall= Command = "yurrujuju"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; media
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 28,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 44,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 40,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------------
;Stand Stronger Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Standing Stronger Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------

[State -1]
type = ChangeState
value = 420
triggerall = Command = "z" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 200 && AnimElem = 3,> 1)
trigger3  = (StateNo = 205 && AnimElem = 3,> 1)
trigger4  = (StateNo = 400 && AnimElem = 3,> 1)
trigger5  = (StateNo = 430 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------

[State -1]
type = ChangeState
value = 450
triggerall = Command = "c" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;Jump Fierce punch
[State -1, Jump Fierce Kick]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105
;---------------------------------------------------------------------------
;Jump Fierce Kick
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

