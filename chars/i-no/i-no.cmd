;-| 覚醒必殺技 |--------------------------------------------------
[Command];限界フォルテッシモ
name = "genkai"
command = ~D, DF, F, DF, D, DB, B, y
time = 30

[Command];窓際desperade
name = "madogiwa"
command = ~F, DF, D, DB, B, F, b
time = 30

;-| 必殺技 |------------------------------------------------------
[Command];ケミカル愛情
name = "chemical"
command = ~F, DF, D, DB, B, F, a
time = 30

[Command];大木をさする手Ｓ
name = "taiboku_y"    
command = ~B, DB, D, DF, F, y
time = 30

[Command];大木をさする手ＨＳ
name = "taiboku_b"    
command = ~B, DB, D, DF, F, b
time = 30

[Command];狂言実行Ｐ
name = "kyougen_x"    
command = ~D, DF, F, x

[Command];狂言実行Ｋ
name = "kyougen_a"    
command = ~D, DF, F, a

[Command];狂言実行Ｓ
name = "kyougen_y"    
command = ~D, DF, F, y

[Command];狂言実行ＨＳ
name = "kyougen_b"    
command = ~D, DF, F, b

[Command];抗鬱音階
name = "kouutsu"    
command = ~D, DB, B, x

;------------------------------------------------------------------------
;ハイジャンプ
[Command]
name = "jump"    
command = D, $U
time = 20

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
name = "ichigeki"
command = x+y+a+b

[Command]
name = "roman"
command = x+y+a

[Command]
name = "roman"
command = x+y+b

[Command]
name = "roman"
command = a+b+x

[Command]
name = "roman"
command = a+b+y

[Command]
name = "dead"
command = /F,x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "dust";Required (do not remove)
command = y+b
time = 1

[Command];フォルトレスディフェンス
name = "foltlessX"
command = /x
time = 1

[Command];フォルトレスディフェンス
name = "foltlessA"
command = /a
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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
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

;-------------------------
;[Statedef -1]
;意味：
;	コマンド入力が可能ならば常時実行されるstate
[Statedef -1] ;この一行は削除しないで下さい

;===========================================================================
;                               　覚醒必殺技
;===========================================================================
;限界フォルテッシモ
[State -1, genkai foltessimo]
type = ChangeState
value = 3100
triggerall = command = "genkai" 
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------
[State -1, madogiwa desperate]
type = ChangeState
value = 3000
triggerall = command = "madogiwa"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;===========================================================================
;                                 システム関連
;===========================================================================
;ロマンキャンセル地上
[State -1, romancansel]
type = ChangeState
value = 2000
triggerall = command = "roman"
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger7 = stateno = 240
trigger8 = stateno = 245
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 850
trigger15 = stateno = 196
trigger16 = stateno = 2030;デッドアングルアタック
trigger17 = stateno = 1002;大木をさする手Ｓ
trigger18 = stateno = 1007;大木をさする手ＨＳ
ignorehitpause = 1

;-----------------------------------------------------------------------------------------
;ロマンキャンセル空中
[State -1, Air romancansel]
type = ChangeState
value = 2001
triggerall = command = "roman"
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 630
trigger5 = stateno = 640
trigger6 = stateno = 650
trigger7 = stateno = 1051;狂言実行Ｐ
trigger8 = stateno = 1061;狂言実行Ｋ
trigger9 = stateno = 1071;狂言実行Ｓ
trigger10 = stateno = 1081;狂言実行ＨＳ
ignorehitpause = 1

;------------------------------------------------------------------------------------
;デッドアングルアタック
[State -1, dead angle attack]
type = ChangeState
value = 2030
triggerall = command = "dead"
triggerall = Power >= 1000
triggerall = command != "holddown"
trigger1 = Stateno = 150
trigger2 = Stateno = 151
trigger3 = Stateno = 152
trigger4 = Stateno = 153

;------------------------------------------------------------------------------------
;フォルトレスディフェンス用varスイッチオンx+a
[State -1,foltlessXA var]
type = Varset
triggerall = var(26) = 0 
triggerall = command = "holdback"
triggerall = command = "foltlessX"
triggerall = command = "foltlessA"
trigger1 = Power > 0
ignorehitpause = 1
v = 26
value = 1

;------------------------------------------------------------------------------------
;フォルトレスディフェンスx+a
[State -1, foltless]
type = ChangeState
value = 120
triggerall = var(26) = 1
triggerall = command = "holdback"
triggerall = command = "foltlessX"
triggerall = command = "foltlessA"
triggerall = command != "b"
triggerall = command != "c"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "start"
triggerall = Power > 0
trigger1 = ctrl
trigger1 = stateno !=[101,102];空中ダッシュ中
trigger2 = stateno = 100
trigger3 = stateno = 103

;===========================================================================
;                                 必殺技
;===========================================================================
;ケミカル愛情（空中）
[State -1, Air chemical aijou]
type = ChangeState
value = 1110
triggerall = command = "chemical" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------------
;ケミカル愛情（地上）
[State -1, chemikal aijou]
type = ChangeState
value = 1100
triggerall = command = "chemical"
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;---------------------------------------------------------------------------
;大木をさする手
[State -1, taiboku wo sasuru te S]
type = ChangeState
value = 1000
triggerall = command = "taiboku_y" 
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;---------------------------------------------------------------------------
;大木をさする手ＨＳ
[State -1, taiboku wo sasuru te HS]
type = ChangeState
value = 1005
triggerall = command = "taiboku_b" 
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;---------------------------------------------------------------------------------
;狂言実行Ｐ
[State -1, kyougen jikkou]
type = ChangeState
value = 1050
triggerall = command = "kyougen_x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------------
;狂言実行Ｋ
[State -1, kyougen jikkou]
type = ChangeState
value = 1060
triggerall = command = "kyougen_a" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------------
;狂言実行Ｓ
[State -1, kyougen jikkou]
type = ChangeState
value = 1070
triggerall = command = "kyougen_y" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------------
;狂言実行ＨＳ
[State -1, kyougen jikkou]
type = ChangeState
value = 1080
triggerall = command = "kyougen_b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------------
;抗鬱音階（空中）
[State -1, Air kouutsu onkai]
type = ChangeState
value = 1170
triggerall = command = "kouutsu" 
triggerall = Numhelper(1152) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;抗鬱音階（空中）
[State -1, Air kouutsu onkai]
type = ChangeState
value = 1170
triggerall = command = "kouutsu" 
triggerall = Numhelper(1152)
triggerall = helper(1152),stateno != 1152
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102   
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;---------------------------------------------------------------------------
;抗鬱音階
[State -1, kouutsu onkai]
type = ChangeState
value = 1150
triggerall = command = "kouutsu" 
triggerall = Numhelper(1152) = 0
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;抗鬱音階
[State -1, kouutsu onkai]
type = ChangeState
value = 1150
triggerall = command = "kouutsu" 
triggerall = Numhelper(1152)
triggerall = helper(1152),stateno != 1152
trigger1 = statetype != A
trigger1 = ctrl  
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 450
trigger13 = movecontact

;===========================================================================
;                                 システム関連
;===========================================================================
;ダストアタック
[State -1, dust attack]
type = ChangeState
value = 850
triggerall = command = "dust" || command = "c"
triggerall = command != "holddown" 
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;ハイジャンプ
[State -1]
type = ChangeState
value = 900
triggerall = command = "jump"
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;空中ジャンプキャンセル
[State -1, Air Jump cansel]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(2) <= 1
trigger1 = stateno = 610
trigger1 = movecontact
trigger2 = stateno = 650
trigger2 = movecontact

;---------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, Jump cansel]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
triggerall = var(11) = 1
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact

;------------------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, air dash];空中ダッシュ
type = ChangeState
value = 101
triggerall = command = "FF"
triggerall = command != "holdback" 
triggerall = Var(4) = 0
triggerall = statetype = A
trigger1 = Var(2) <= 1
trigger1 = ctrl
trigger2 = Var(2) = 5
trigger2 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, air dash];空中後ダッシュ
type = ChangeState
value = 102
triggerall = command = "BB"
triggerall = command != "holdfwd" 
triggerall = Var(4) = 0
triggerall = statetype = A
trigger1 = Var(2) <= 1
trigger1 = ctrl
trigger2 = Var(2) = 5
trigger2 = ctrl

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = command = "b"
triggerall = p2statetype = A
triggerall = ctrl
triggerall = var(8) = 0
triggerall = statetype = A
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = P2bodyDist Y >= -20
trigger1 = P2bodyDist Y <= 20
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = P2bodyDist Y >= -20
trigger2 = P2bodyDist Y <= 20

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
                               通常技
;===========================================================================
;足払い
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "dust" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact
trigger9 = stateno = 230
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 205
trigger11 = movecontact

;----------------------------------------------------------------------------------
;立ち→ＨＳ
[State -1, Hard Slash]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205

;---------------------------------------------------------------------------
;立ち→Ｐ
[State -1, Stand Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = var(59) = 0 || var(59) = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 430

;---------------------------------------------------------------------------
;立ち近距離Ｓ
[State -1, Slash]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 230
trigger4 = movecontact
trigger4 = stateno = 205
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 430

;---------------------------------------------------------------------------
;立ちＰ
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400

;---------------------------------------------------------------------------
;立ちＳ
[State -1, Stand Slash]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 230
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 205
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 430

;---------------------------------------------------------------------------
;立ちＫ
[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400

;---------------------------------------------------------------------------
;立ちＨＳ
[State -1, Standing Hard Slash]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 230
trigger5 = movecontact
trigger5 = stateno = 205
trigger6 = movecontact
trigger6 = stateno = 215
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 410

;---------------------------------------------------------------------------
;敬意
[State -1, keii]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------------
;モードチェンジ
[State -1, mode change]
type = ChangeState
value = 7050
triggerall = command = "z"
triggerall = command != "holddown" 
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = stateno = [0,1]
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみＰ
[State -1, Crouching P]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 200

;---------------------------------------------------------------------------
;しゃがみＳ
[State -1, Crouching Slash]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 430
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 230
trigger6 = movecontact
trigger6 = stateno = 210
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 215

;---------------------------------------------------------------------------
;しゃがみＫ
[State -1, Crouching K]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 200

;---------------------------------------------------------------------------
;しゃがみＨＳ
[State -1, Crouching Hard Slash]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 410
trigger4 = movecontact
trigger4 = stateno = 430
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 205
trigger7 = movecontact
trigger7 = stateno = 210
trigger8 = movecontact
trigger8 = stateno = 215
trigger9 = movecontact
trigger9 = stateno = 230
trigger10 = movecontact
trigger10 = stateno = 240

;---------------------------------------------------------------------------
;ジャンプダスト
[State -1, Jump dust]
type = ChangeState
value = 650
triggerall = command = "dust" || command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact

;---------------------------------------------------------------------------
;ジャンプP
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

;---------------------------------------------------------------------------
;ジャンプS
[State -1, Jump Slash]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

;---------------------------------------------------------------------------
;ジャンプK
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

;---------------------------------------------------------------------------
;ジャンプHS
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

