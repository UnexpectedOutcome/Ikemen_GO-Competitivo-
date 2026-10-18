
;---------

[Command]
name = "hensei"
command = ~DB, F,DF,D,DB,B,DF, z
[Command]
name = "taizan"
command = ~DF, B,DB,D,DF,F,DB, z

[Command]
name = "22_b"
command = D, D, b

[Command]
name = "tossin"
command = ~35$F, B, x
time = 15

[Command]
name = "high"
command = DB, UF
time = 8
[Command]
name = "high"
command = D, UF
time = 8

[Command]
name = "AD"
command = ~B, DB, D, DF, F, z

[Command]
name = "DA"
command = ~F, DF, D, DB, B, z

[Command]
name = "bloodheat"
command = x+y+z
time = 2

[Command]
name = "bloodheat"
command = x+z

[Command]
name = "bloodheat"
command = y+z



[Command]
name = "tuika"
command = ~D, DF, F, s

[Command]
name = "22_x"
command = D, D, x
[Command]
name = "22_y"
command = D, D, y
[Command]
name = "22_z"
command = D, D, z

[Command]
name = "214_a"
command = ~D, DB, B, a
[Command]
name = "214_x"
command = ~D, DB, B, x
[Command]
name = "214_y"
command = ~D, DB, B, y
[Command]
name = "214_z"
command = ~D, DB, B, z

[Command]
name = "623_x"
command = ~F, D, DF, x
[Command]
name = "623_y"
command = ~F, D, DF, y
[Command]
name = "623_z"
command = ~F, D, DF, z

[Command]
name = "236_x"
command = ~D, DF, F, x
[Command]
name = "236_y"
command = ~D, DF, F, y
[Command]
name = "236_z"
command = ~D, DF, F, z



[Command]
name = "AI"
command = a, U, a, c, s, B
time = 1
[Command]
name = "AI"
command = B, B, U, a, a, y
time = 1
[Command]
name = "AI"
command = D, y, x, U, y
time = 1
[Command]
name = "AI"
command = F, s, B, c, z
time = 1
[Command]
name = "AI"
command = x, z, DB, s, s
time = 1

[Command]
name = "AI1"
command = F, F, c, a, b, a, c
time = 1
[Command]
name = "AI1"
command = c, F, a, y, y
time = 1
[Command]
name = "AI1"
command = D, F, U, F, b, c
time = 1
[Command]
name = "AI1"
command = F, s, z, s, c
time = 1
[Command]
name = "AI1"
command = a, a, b, c, D
time = 1

[Command]
name = "AI2"
command = y, U, y, DB, x
time = 1
[Command]
name = "AI2"
command = b, b, a, DF, y
time = 1
[Command]
name = "AI2"
command = B, D, B, F, F
time = 1
[Command]
name = "AI2"
command = D, U, U, U, x, s
time = 1
[Command]
name = "AI2"
command = D, y, D, U, y
time = 1

[Command]
name = "AI3"
command = c, c, F, B, b
time = 1
[Command]
name = "AI3"
command = x, z, y, c, b
time = 1
[Command]
name = "AI3"
command = a, b, c, x, b, b
time = 1
[Command]
name = "AI3"
command = B, D, D, D, a
time = 1
[Command]
name = "AI3"
command = F, D, F, U, y, D
time = 1

[Command]
name = "AI4"
command = B, B, z, s, U
time = 1

[Command]
name = "AI4"
command = z, B, x, a, s
time = 1
[Command]
name = "AI4"
command = F, D, b, a, a, a
time = 1
[Command]
name = "AI4"
command = s, y, b, U, a
time = 1

[Command]
name = "AI5"
command = a, b, U, c, D
time = 1
[Command]
name = "AI5"
command = s, U, y, x, s
time = 1
[Command]
name = "AI5"
command = b, U, D, D, F, U
time = 1
[Command]
name = "AI5"
command = B, y, B, s, B
time = 1
[Command]
name = "AI5"
command = x, x, a, F, x
time = 1

[Command]
name = "AI6"
command = b, y, U, a, y, s
time = 1
[Command]
name = "AI6"
command = a, c, F, c, b, U, a
time = 1
[Command]
name = "AI6"
command = x, z, c, c, b
time = 1
[Command]
name = "AI6"
command = a, b, c, z, b
time = 1

[Command]
name = "AI7"
command = B, D, F, B, a
time = 1
[Command]
name = "AI7"
command = F, D, F, c, y
time = 1
[Command]
name = "AI7"
command = F, B, z, U, U, F
time = 1
[Command]
name = "AI7"
command = z, z, x, s, s
time = 1
[Command]
name = "AI7"
command = F, B, b, s, a, a
time = 1

[Command]
name = "AI8"
command = B, F, F, B, a
time = 1
[Command]
name = "AI8"
command = F, D, D, c, y
time = 1
[Command]
name = "AI8"
command = F, B, z, y, U, F
time = 1
[Command]
name = "AI9"
command = z, B, x, s, F
time = 1
[Command]
name = "AI9"
command = F, a, b, s, U, a
time = 1

























;-| Super Motions |--------------------------------------------------------


;-------------------------------

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
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "recovery";"throw_k"
command = a
time = 5
[Command]
name = "recovery";"throw_k"
command = x
time = 5
[Command]
name = "recovery";"throw_k"
command = y
time = 5
[Command]
name = "recovery";"throw_k"
command = z
time = 5
[Command]
name = "recovery";"throw_k"
command = c
time = 5
[Command]
name = "recovery";"throw_k"
command = b
time = 5

[Command]
name = "pow"
command = a+x
time = 5

[Command]
name = "huyuu"
command = b+y
time = 5

[Command]
name = "huusya"
command = c+z
time = 5

[Command]
name = "in"
command = c+z
time = 5

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
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "fwd_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "fwd_c"        ;Alternative button command
command = /$B,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
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
name = "jump"
command = $U
time = 1


;-| Hold Single Button |----------------------------------------------------
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



;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================

;---------------------------------------------------------------------------
;Hyper Attacks
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; 236b
[State -1]
type = ChangeState
value = 2060
triggerall = Numhelper(2061) = 0
triggerall = var(50) >= 2
triggerall = var(41) = 2
triggerall = command = "22_b" || command = "hensei"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = stateno = [1030,1031]

;AD
[State -1]
type = ChangeState
value = 3000
triggerall = command = "AD"
triggerall = var(50) = 2 || var(50) = 3
triggerall = statetype != A
trigger1 = ctrl || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;AAD
[State -1]
type = ChangeState
value = 3010
triggerall = command = "AD"
triggerall = var(50) = 4
triggerall = statetype != A
trigger1 = ctrl || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, sprak];サーキットスパーク
type = ChangeState
value = 1050
triggerall = var(41) != 2
triggerall = var(59) = 0
triggerall = var(41) = 0
triggerall = command = "bloodheat"  || command = "c"
triggerall = statetype = S || statetype = C
triggerall = movetype = H
triggerall = life > 0
;trigger1 = power >= 3000
trigger1 = var(50) = 2
;trigger3 = var(50) = 4
[State -1, sprak];サーキットスパーク
type = ChangeState
value = 1050
triggerall = var(41) != 2
triggerall = var(59) = 0
triggerall = command = "bloodheat"
triggerall = statetype = S || statetype = C
triggerall = movetype = H
triggerall = life > 0
trigger1 = var(50) = 2

[State -1, sprak];ブラッドヒート
type = ChangeState
value = 1051
triggerall = var(50) = 2
triggerall = command = "bloodheat" || command = "c"
triggerall = statetype = S
trigger1 = ctrl = 1
[State -1, sprak];ブラッドヒート
type = ChangeState
value = 1051
triggerall = var(50) = 2
triggerall = command = "bloodheat"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, sprak];強制開放
type = ChangeState
value = 1054
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = var(50) = 0
triggerall = command = "bloodheat"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, sprak];強制開放
type = ChangeState
value = 1054
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = var(50) = 0
triggerall = command = "bloodheat" || command = "c"
triggerall = statetype = S
trigger1 = ctrl = 1




;---------------------------------------------------------------------------
; ニ定 623x
[State -1]
type = ChangeState
value = 1010
triggerall = var(41) != 2
triggerall = command = "623_x"
triggerall = stateno != 230
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1

;---------------------------------------------------------------------------
;  623y
[State -1]
type = ChangeState
value = 1015
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "623_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; EX 623z
[State -1]
type = ChangeState
value = 2010
triggerall = stateno != 1001
triggerall = stateno != 1004
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = power >= 1000 || var(50) >= 2
;triggerall = Numhelper(2001) = 0
triggerall = command = "623_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1

;---------------------------------------------------------------------------
; 縦カットEX 623z足りない時
[State -1]
type = ChangeState
value = 1012
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = power < 1000 && var(50) < 2
triggerall = command = "623_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1

;---------------------------------------------------------------------------
; 三定 236x
[State -1]
type = ChangeState
value = 1000
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "236_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
;  236y
[State -1]
type = ChangeState
value = 1003
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "236_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; sanjoEX 236z
[State -1]
type = ChangeState
value = 2000
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = var(41) = 0
triggerall = stateno != 1001
triggerall = stateno != 1004
triggerall = power >= 1000 || var(50) >= 2
triggerall = command = "236_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; dagoku 236z
[State -1]
type = ChangeState
value = 7500
triggerall = var(41) = 2
triggerall = power >= 1000 || var(50) >= 2
triggerall = command = "236_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = stateno = [1030,1031]

[State -1]
type = ChangeState
value = 2050
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = var(41) = 1
triggerall = stateno != 1001
triggerall = stateno != 1004
triggerall = power >= 1000 || var(50) >= 2
triggerall = command = "236_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1


; nijoEX air 236z
[State -1]
type = ChangeState
value = 2011
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = stateno != 1001
triggerall = stateno != 1004
triggerall = power >= 1000 || var(50) >= 2
triggerall = command = "236_z"
triggerall = statetype = A
trigger1 = ctrl = 1 || stateno = 9925 || stateno = 9926
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = hitdefattr = A, NA,SA
trigger3 = movecontact
trigger3 = var(41) = 1

;---------------------------------------------------------------------------
; 横カットEX 236z たりない
[State -1]
type = ChangeState
value = 1001
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = power < 1000
;triggerall = Numhelper(2001) = 0
triggerall = command = "236_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact


;---------------------------------------------------------------------------
; 空中ニ定 236x
[State -1]
type = ChangeState
value = 1012
triggerall = var(41) != 2
triggerall = command = "236_x"
trigger1 = statetype = A
trigger1 = ctrl = 1 || stateno = 9925 || stateno = 9926
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA
trigger2 = movecontact

;---------------------------------------------------------------------------
; 236y
[State -1]
type = ChangeState
value = 1016
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "236_y"
trigger1 = statetype = A
trigger1 = ctrl = 1 || stateno = 9925 || stateno = 9926
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA
trigger2 = movecontact

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; シルドバンカ 214a カワバンガ！みたい
[State -1]
type = ChangeState
value = 9880
triggerall = var(41) != 2
triggerall = command = "214_a"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = Var(59) = 0
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;---------------------------------------------------------------------------
; 元祖圧壊 214x
[State -1]
type = ChangeState
value = 1080
triggerall = var(41) != 2
triggerall = var(59) = 0
;triggerall = enemy,movetype != H
triggerall = stateno != 230
triggerall = command = "214_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
[State -1]
type = ChangeState
value = 1080
triggerall = var(41) != 2
triggerall = var(59) = 1
triggerall = enemy,movetype != H
triggerall = stateno != 230
triggerall = stateno != 200
triggerall = stateno != 400
triggerall = command = "214_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; 214y
[State -1]
type = ChangeState
value = 1088
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = stateno != 230
triggerall = command = "214_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
;  214z
[State -1]
type = ChangeState
value = 2020
triggerall = power >= 1000 || var(50) >= 2
triggerall = var(41) != 2
;triggerall = stateno != 240
triggerall = var(59) = 0
triggerall = command = "214_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
;  214z
[State -1]
type = ChangeState
value = 1088
triggerall = power < 1000 && var(50) < 2
triggerall = var(41) != 2
;triggerall = stateno != 240
;triggerall = var(59) = 0
triggerall = command = "214_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1

[State -1]
type = ChangeState
value = 2020
triggerall = power >= 1000 || var(50) >= 2
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = var(59) = 1
triggerall = enemy,movetype != H
triggerall = command = "214_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; 兜神 22x
[State -1]
type = ChangeState
value = 1025
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "22_x"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; 兜神 !?
[State -1]
type = ChangeState
value = 1030
triggerall = var(41) = 2
triggerall = command = "tossin"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;---------------------------------------------------------------------------
; 22y
[State -1]
type = ChangeState
value = 1028
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "22_y"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1
;---------------------------------------------------------------------------
; 22z
[State -1]
type = ChangeState
value = 2030
triggerall = var(41) != 2
triggerall = stateno != 230
triggerall = command = "22_z"
trigger1 = statetype != A
trigger1 = ctrl = 1 || stateno = 9905 || stateno = 9906 || stateno = 9915 || stateno = 9916 || stateno = 1000
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 9880
trigger3 = time = 1


;---------------------------------------------------------------------------
;;空中で空中ジャンプキャンセル
[State -1, Jump]
type = ChangeState
value = 45
triggerall = var(41) = 1
triggerall = var(32) = 0
;triggerall = var(2) = 1
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = movecontact
trigger1 = stateno != 605
;空中ジャンプ
[State -1, Jump]
type = ChangeState
value = 45
triggerall = var(2) = 1
triggerall = var(41) != 2
triggerall = var(32) = 0
;triggerall = command = "up"
trigger1 = statetype = A
trigger1 = stateno = [50,51]
trigger1 = time >= 5
trigger1 = ctrl = 1
;;空中で空中ダッシュキャンセル
[State -1, Jump]
type = ChangeState
value = 234
triggerall = var(41) = 1
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = movecontact
trigger1 = hitdefattr = A,NA,SA
trigger1 = stateno != 1011
trigger1 = var(5) = 0
trigger1 = stateno != 605

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ Dash Fwd
;
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = var(41) != 2
triggerall = Var(20) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != 101
triggerall = stateno != [10000,13000]
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Dash Air]
type = ChangeState
value = 234
triggerall = var(41) != 2
;triggerall = Var(20) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 224
trigger1 = var(5) = 0


[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = var(41) != 2
triggerall = Var(20) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != 101
triggerall = stateno != [10000,13000]
trigger1 = command = "holdfwd"
trigger1 = command = "x"
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash Air]
type = ChangeState
value = 234
triggerall = var(41) != 2
;triggerall = Var(20) = 0
triggerall = Var(59) != 1 ;AI doesn't do this move
trigger1 = command = "holdfwd"
trigger1 = command = "x"
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 224
trigger1 = var(5) = 0

;---------------------------------------------------------------------------
;回避　Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
ctrl = 0
triggerall = var(41) != 2
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [3,9]
triggerall = stateno != [10000,13000]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;;回避　AIR Dash Back
[State -1, Dash Back]
type = ChangeState
value = 235
ctrl = 0
triggerall = var(41) != 2
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = var(5) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl


;回避　Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
ctrl = 0
triggerall = var(41) != 2
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [3,9]
triggerall = stateno != [10000,13000]
trigger1 = command = "holdback"
trigger1 = command = "x"
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;;回避　AIR Dash Back
[State -1, Dash Back]
type = ChangeState
value = 235
ctrl = 0
triggerall = var(41) != 2
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = var(5) = 0
trigger1 = command = "holdback"
trigger1 = command = "x"
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;-------------------
;[State 1, airj]
;type = ChangeState
;triggerall = Var(4) = 0
;triggerall = Vel Y >= 0 
;trigger1 = command = "up";
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger1 = time >= 10
;value = 500

;避け
[State -1, Stand A]
type = ChangeState
value = 9930
triggerall = var(41) != 2
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

;---------------------------------------------------------------------------
;jump
[State -1, Dash Back]
type = ChangeState
value = 1040
ctrl = 0
triggerall = var(41) != 2
triggerall = Var(59) != 1 ;AI doesn't do this move
triggerall = stateno != [10000,13000]
triggerall = stateno != [3000,3510]
trigger1 = command = "high"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
;
[State -1, 0]
type = ChangeState
value = 980
triggerall = Numhelper(2990) = 0
triggerall = command = "a"
triggerall = command = "x"
;triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]
;---------------------------------------------------------------------------
;投げ
;air
[State -1, 0]
type = ChangeState
value = 970
triggerall = command = "a"
triggerall = command = "x"
;triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = movehit
trigger2 = var(41) = 1



;===========================================================================


[State -1, Stand X];パンチ
type = ChangeState
value = 200
triggerall = var(41) != 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 6
trigger3 = var(45) % 10 = 0
trigger3 = movecontact
trigger3 = stateno=210
trigger4 = var(45) % 10 = 0
trigger4 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movehit
trigger5 = var(45) % 10 = 0
trigger6 = var(45) % 10 = 0
trigger6 = stateno = [417,420]
trigger6 = movecontact
trigger7 = var(45) % 10 = 0
trigger7 = stateno = [220,223]
trigger7 = movecontact

[State -1, Stand Y];中パンチ
type = ChangeState
value = 210
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "y"
;triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(45) % 100 < 10
trigger2 = stateno=200 || stateno=220 || stateno=222
trigger3 = var(45) % 100 < 10
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = time >= 5
trigger4 = var(45) % 100 < 10
trigger4 = stateno=200
trigger5 = var(45) % 100 < 10
trigger5 = stateno = [417,420]
trigger5 = movecontact

[State -1, Stand Z];うわぁぁッ
type = ChangeState
value = 220
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(45) % 1000 < 100
trigger2 = stateno=200 || stateno=210
trigger3 = var(45) % 1000 < 100
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = time >= 5
trigger4 = var(45) % 1000 < 100
trigger4 = stateno=200
trigger5 = var(45) % 1000 < 100
trigger5 = stateno = [417,420]
trigger5 = movecontact

[State -1, Stand back Z];前進ぐるり
type = ChangeState
value = 230
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno=200 || stateno=240 || stateno=210  || stateno=220 || stateno=222
trigger3 = var(45) % 10000 < 1000
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger3 = var(45) % 10000 < 1000
trigger4 = time >= 5
trigger4 = var(45) % 10000 < 1000
trigger4 = stateno=200
trigger5 = var(45) % 10000 < 1000
trigger5 = stateno = [417,420]
trigger5 = movecontact




[State -1, crouch X];いとしゃがみけり
type = ChangeState
value = 400
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno=200 || stateno=210 || stateno=240 || stateno=220 || stateno=222
trigger2 = movecontact
trigger2 = time >= 5
trigger2 = var(46) % 10 = 0
trigger3 = stateno=400 || stateno=410 || stateno=420 || stateno=450
trigger3 = movecontact
trigger3 = time >= 5
trigger3 = var(46) % 10 = 0
trigger4 = stateno=222 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 10 = 0
trigger5 = stateno = 400
trigger6 = var(46) % 10 = 0
trigger6 = stateno = [417,420]
trigger6 = movecontact

[State -1, crouch Y];しゃがみ下へぱんちっち
type = ChangeState
value = 410
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(46) % 100 < 10
trigger2 = stateno=200 || stateno=210 || stateno=220  || stateno=240 || stateno=222
trigger3 = var(46) % 100 < 10
trigger3 = stateno=400 || stateno=420 || stateno=450
trigger3 = movecontact
trigger4 = stateno=222 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 100 < 10
trigger5 = stateno = 400
trigger5 = time >= 6
trigger5 = var(46) % 100 < 10
trigger6 = time >= 5
trigger6 = var(46) % 100 < 10
trigger6 = stateno=200
trigger7 = var(46) % 100 < 10
trigger7 = stateno = [417,420]
trigger7 = movecontact

[State -1, crouch Z];足払い
type = ChangeState
value = 420
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = var(46) % 1000 < 100
trigger2 = stateno=200 || stateno=210 || stateno=220 || stateno=240 || stateno=222
trigger3 = var(46) % 1000 < 100
trigger3 = stateno=400 || stateno=410
trigger3 = movecontact
trigger4 = stateno=222 || stateno=223 || stateno=234
trigger4 = movecontact
trigger4 = var(46) % 1000 < 100
trigger5 = stateno = 400
trigger5 = time >= 10
trigger5 = var(46) % 1000 < 100
trigger6 = time >= 5
trigger6 = var(46) % 1000 < 100
trigger6 = stateno=200


[State -1, Air X];空中パンチ
type = ChangeState
value = 600
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(41) = 1
trigger2 = var(47) % 10 = 0
trigger2 = stateno=620 || stateno=610
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = time >= 7

[State -1, Air Y];判定強
type = ChangeState
value = 610
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(41) = 1
trigger2 = var(47) % 100 < 10
trigger2 = stateno=600 || stateno=620
trigger2 = movecontact

[State -1, Air Z]
type = ChangeState
value = 620
triggerall = var(41) != 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(41) = 1
trigger2 = var(47) % 1000 < 100
trigger2 = stateno=600 || stateno=610
trigger2 = movecontact














;-----------------------------------------------------------------------------------

[State -1, Stand X];パンチ
type = ChangeState
value = 200
triggerall = var(41) = 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Stand Y];中パンチ
type = ChangeState
value = 210
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "y"
;triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Stand Z];うわぁぁッ
type = ChangeState
value = 7220
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Stand back Z];前進ぐるり
type = ChangeState
value = 7230
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]



[State -1, crouch X];いとしゃがみけり
type = ChangeState
value = 400
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, crouch Y];しゃがみ下へぱんちっち
type = ChangeState
value = 410
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, crouch Z];足払い
type = ChangeState
value = 420
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Air X];空中パンチ
type = ChangeState
value = 600
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Air Y];判定強
type = ChangeState
value = 610
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

[State -1, Air Z]
type = ChangeState
value = 620
triggerall = var(41) = 2
;triggerall = var(41) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1030,1031]













;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9900
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 9905
triggerall = stateno != 9906
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]
;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9910
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != 9915
triggerall = stateno != 9916
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;シールド
[State -1, Stand A]
type = ChangeState
value = 9920
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = stateno != 9925
triggerall = stateno != 9926
trigger1 = statetype = A
trigger1 = ctrl


;-------------便利ボタン--------------------------------------------------------------
;避け
[State -1, Stand A]
type = ChangeState
value = 9930
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [1030,1031]

;---------------------------------------------------------------------------
;投げ
;
[State -1, 0]
type = ChangeState
value = 980
triggerall = Numhelper(2990) = 0
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1030,1031]
;---------------------------------------------------------------------------
;投げ
;air
[State -1, 0]
type = ChangeState
value = 970
triggerall = Var(59) =0
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = movehit
trigger2 = var(41) = 1


;---------------------------------------------------------------------------
;Taunt
;
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl





;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------

[State -1, AI]
type = VarSet
trigger1 = command = "AI"
trigger2 = command = "AI1"
trigger3 = command = "AI2"
trigger4 = command = "AI3"
trigger5 = command = "AI4"
trigger6 = command = "AI5"
trigger7 = command = "AI6"
trigger8 = command = "AI7"
trigger9 = command = "AI8"
trigger10 = command = "AI9"
v = 59
value = 1
ignorehitpause = 1

[State 190,1]
type = VarRandom
trigger1 = time = 0
v = 19
range = 0,100

[State -1, Random Var(3)]
type = VarRandom
trigger1 = 1
v = 3
ignorehitpause = 1

;------------------------------------
;AI Stand Guard
;------------------------------------
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = Var(41) != 2
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = Random >= 910
value = 130

;------------------------------------
;AI Stand to Crouch Guard
;------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = StateNo = 150
trigger1 = 1
value = 152

;------------------------------------
;AI Crouching Guard
;------------------------------------
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = random >= 900
value = 131

;------------------------------------
;AI Crouch to Stand Guard
;------------------------------------
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = 1
trigger1 = StateNo = 152
value = 150

;------------------------------------
;AI Aerial Guard
;------------------------------------
[State -1]
type = ChangeState
triggerall = Var(59) = 1
triggerall = Statetype = A
triggerall = (P2Movetype = A) || (enemy, NumProj >= 1)
trigger1 = Ctrl = 1
trigger1 = random >= 900
value = 132


;------------------------------------
;AI Dash
;------------------------------------
[State -1, AI Dash Forward]
type = ChangeState
value = 100;204
triggerall = var(41) != 2
triggerall = statetype = S
triggerall = Var(59) =1
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2MoveType != A)
triggerall = P2life != 0
trigger1 = Ctrl = 1
trigger1 = P2BodyDist x >= 11
trigger1 = Random >= 580
trigger1 = ctrl = 1
trigger1 = stateno != 201
trigger1 = stateno != 100
trigger1 = stateno != 204
trigger1 = stateno != 101
trigger1 = stateno != 10
trigger1 = enemy,stateno != [5100,5120]
trigger1 = prevstateno != 100
ctrl = 0
persistent = 35

[State -1, AI Dash Back]
type = ChangeState
value = 105
triggerall = var(41) != 2
triggerall = Var(59) = 1
triggerall = Var(20) = 0
triggerall = Statetype != A
triggerall = P2life != 0
triggerall = Alive = 1
trigger1 = P2StateNo = 5120
trigger1 = P2BodyDist X = [-10,40]
trigger1 = Ctrl = 1


;---------------------------------------------------------------------------
;AI Misc
;---------------------------------------------------------------------------

[State -1, AI Jump Over Projectiles]
type = ChangeState
triggerall = Var(59) = 1
triggerall = (StateType != A) && (StateType != L)
triggerall = (P2MoveType = A) && (P2StateType != A) && (enemy, NumProj >= 1)
triggerall = StateNo != 40
trigger1 = Ctrl = 1
value = 40

[state -1,AI]
type = changestate
trigger1 = var(45) % 10 = 0
trigger1 = random >= 850
trigger1 = enemy,movetype != A
;trigger1 = time >= 11
trigger1 = var(59) = 1
trigger1 = p2bodydist x = [0,22]
trigger1 = p2bodydist y = [-70,-2]
;trigger1 = prevstateno != 410
trigger1 = Ctrl = 1
trigger1 = statetype = S
value = 200
persistent = 10

[State -1, AI]
type = ChangeState
value = 425
triggerall = Var(59) =1
triggerall = (StateType = S) && (MoveType != H)
triggerall = P2life != 0
trigger1 = Ctrl = 1
trigger1 = P2BodyDist x = [120,400]
trigger1 = Random >= 980

[State -1, Blocking]
type = HitOverride
triggerall = var(59) = 1
triggerall = life <= 600
trigger1 = StateType = S
trigger1 = random >= 200 + life
trigger1 = gametime % 5 = 0
trigger1 = ctrl = 1
attr = A, NA, SA, HA, NP, SP, HP
stateno = 9905
time = 1

[State -1, Blocking]
type = HitOverride
triggerall = var(59) = 1
triggerall = life <= 300
trigger1 = StateType != A
trigger1 = random >= life
trigger1 = gametime % 5 = 0
trigger1 = ctrl = 1
attr = C, NA, SA, HA, NP, SP, HP
stateno = 9915
time = 1
[State -1, Blocking]
type = HitOverride
triggerall = var(59) = 1
triggerall = life <= 330
trigger1 = StateType != A
trigger1 = random >= life
trigger1 = gametime % 5 = 0
trigger1 = ctrl = 1
attr = SA, NA, SA, HA, NP, SP, HP
stateno = 9925
time = 1


[state -1,AI]
type = changestate
triggerall = var(41) = 2
triggerall = var(59) = 1
trigger1 = movetype != H
trigger1 = var(45) % 10 = 0
trigger1 = random >= 850
trigger1 = enemy,movetype = A
trigger1 = enemy,hitdefattr = SC, NA
trigger1 = p2bodydist x = [0,52]
trigger1 = statetype != A
;trigger1 = prevstateno != 410
trigger1 = Ctrl = 1
trigger1 = stateno != [140,155]
trigger1 = statetype != A
trigger1 = power >= 1000 || var(50) >= 2
value = 7500
[state -1,AI]
type = changestate
triggerall = var(41) != 2
triggerall = var(59) = 1
trigger1 = movetype != H
trigger1 = var(45) % 10 = 0
trigger1 = random >= 850
trigger1 = enemy,movetype = A
trigger1 = enemy,hitdefattr = SC, NA
trigger1 = p2bodydist x = [0,52]
trigger1 = statetype != A
;trigger1 = prevstateno != 410
trigger1 = Ctrl = 1
trigger1 = stateno != [140,155]
trigger1 = statetype != A
trigger1 = power >= 1000 || var(50) >= 2
value = 2020
[state -1,AI]
type = changestate
triggerall = var(59) = 1
trigger1 = var(45) % 10 = 0
trigger1 = random >= 450
trigger1 = movetype != H
trigger1 = enemy,movetype = A
trigger1 = enemy,hitdefattr = SC, NA
trigger1 = p2bodydist x = [0,22]
trigger1 = statetype != A
;trigger1 = prevstateno != 410
trigger1 = Ctrl = 1
trigger1 = stateno != [140,155]
trigger1 = statetype != A
trigger1 = var(50) = [2,3]
value = 3000
[state -1,AI]
type = changestate
triggerall = var(59) = 1
trigger1 = var(45) % 10 = 0
trigger1 = random >= 450
trigger1 = movetype != H
trigger1 = enemy,movetype = A
trigger1 = enemy,hitdefattr = SC, NA
trigger1 = p2bodydist x = [0,42]
trigger1 = statetype != A
;trigger1 = prevstateno != 410
trigger1 = Ctrl = 1
trigger1 = stateno != [140,155]
trigger1 = statetype != A
trigger1 = var(50) = 4
value = 3010

[State -1, Dash Air]
type = ChangeState
value = 234
triggerall = var(41) != 2
triggerall = Var(59) = 1
trigger1 = stateno = 50
trigger1 = ctrl
trigger1 = pos y = -40
trigger1 = var(5) = 0
trigger1 = random >= 500
trigger1 = p2bodydist x = [100,280]

