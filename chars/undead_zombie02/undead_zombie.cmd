
;-| Button Remapping |-----------------------------------------------------

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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "DFDFx"
command = ~D, DF, F,D, DF, F, x
time = 30
buffer.time = 6

[Command]
name = "DFDFy"
command = ~D, DF, F,D, DF, F, y
time = 30
buffer.time = 6

[Command]
name = "DFDFz"
command = ~D, DF, F,D, DF, F, z
time = 30
buffer.time = 6


;-| Special Motions |------------------------------------------------------
[Command]
name = "FDFx"
command = ~F, D, DF, x
time = 15
buffer.time = 6

[Command]
name = "FDFy"
command = ~F, D, DF, y
time = 15
buffer.time = 6

[Command]
name = "FDFz"
command = ~F, D, DF, z
time = 15
buffer.time = 6

[Command]
name = "FDFc"
command = ~F, D, DF, c
time = 15
buffer.time = 6

[Command]
name = "FDFxy"
command = ~F, D, DF, x+y
time = 15
buffer.time = 6

[Command]
name = "DFx"
command = ~D, DF, F, x
time = 15
buffer.time = 6

[Command]
name = "DFy"
command = ~D, DF, F, y
time = 15
buffer.time = 6

[Command]
name = "DFz"
command = ~D, DF, F, z
time = 15
buffer.time = 6


[Command]
name = "DFxy"
command = ~D, DF, F, x+y
time = 15
buffer.time = 6


[Command]
name = "DFa"
command = ~D, DF, F, a
time = 15
buffer.time = 6

[Command]
name = "DFb"
command = ~D, DF, F, b
time = 15
buffer.time = 6

[Command]
name = "DFc"
command = ~D, DF, F, c
time = 15
buffer.time = 6



[Command]
name = "DBx"
command = ~D, DB, B, x
time = 15
buffer.time = 6

[Command]
name = "DBy"
command = ~D, DB, B, y
time = 15
buffer.time = 6

[Command]
name = "DBz"
command = ~D, DB, B, z
time = 15
buffer.time = 6

[Command]
name = "DBa"
command = ~D, DB, B, a
time = 15
buffer.time = 6

[Command]
name = "DBb"
command = ~D, DB, B, b
time = 15
buffer.time = 6

[Command]
name = "DBc"
command = ~D, DB, B, c
time = 15
buffer.time = 6

[Command]
name = "FBa"
command = ~F, B  ,a
time = 15
buffer.time = 6

[Command]
name = "DBDxy"
command = ~D, DB, B, x+y
time = 15
buffer.time = 6

[Command]
name = "BFc"
command = ~40$B, $F  ,c
time = 15
buffer.time = 6

[Command]
name = "BFz"
command = ~40$B, $F  ,z
time = 15
buffer.time = 6



[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

;---------------------------------------------------------------------------



[Statedef -1]
[State -1, AI-ø™∆Ù]
type = ChangeState
value = 1000
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FBa"
trigger1 = command = "x"
;================================
;AIø™∆Ù

[State -1 , AI-’æµΩ∂◊œ¬]
type = ChangeState
value = 10
triggerall = Var(59) = 1
trigger1 = StateType = S && P2StateType = C &&  P2MoveType = A && P2BodyDist X <= 200 && Ctrl = 1

[State -1 , AI-∂◊µΩ’æ¡¢];∏’”Î…œ√Êµƒ∂´Œ˜œ‡∑¥,  «“™»ÀŒÔ’æ∆¿¥
type = ChangeState
value = 12
triggerall = Var(59) = 1
trigger1 = StateType = C && P2StateType = A && P2MoveType = A && P2BodyDist X <= 200 && Ctrl = 1


[State -1 , AI-◊‘∂Ø∑¿]
type = ChangeState
triggerall = Var(59) = 1
trigger1 = Ctrl = 1
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = PrevStateNo != 380
trigger1 = PrevStateNo != 390
value = 120





[State -1, AI-Õ⁄–ÿ]
type = ChangeState
value = 1200
triggerall = statetype = S
triggerall = var(59) = 1
triggerall = numhelper(1206)= 0
triggerall =PrevStateNo != 1200
trigger1 = P2bodydist X >  140
trigger1 = ctrl
trigger1 = Random = [1,300]
trigger2 = (stateno = 400) || (stateno = 420)
trigger2 = movecontact
trigger2 = Random = [1,300]

[State -1, AI-Õ¬≥Ê»∫]
type = ChangeState
value = 1050
triggerall = statetype = S || statetype = C
triggerall = var(59) = 1
trigger1 = numhelper(1052)<1 && numhelper(1051)<1
trigger1 = P2bodydist X >  80
trigger1 = ctrl
trigger1 = Random = [1,300]
trigger2 = (stateno = 400) || (stateno = 420)
trigger2 = moveguarded
;trigger2 = Random = [1,500]

[State -1, AI-≈ª≥Ê»∫1]
type = ChangeState
value = 6000
triggerall = statetype = S
triggerall = power >=100
triggerall = var(59) = 1
trigger1 = P2bodydist X <  30
trigger1 = P2statetype = A
trigger1 = ctrl
trigger1 = Random = [1,250]

[State -1, AI-≈ª≥Ê»∫2]
type = ChangeState
value = 6001
triggerall = statetype = S
triggerall = power >=200
triggerall = var(59) = 1
trigger1 = P2bodydist X <  30
trigger1 = P2statetype = A
trigger1 = ctrl
trigger1 = Random = [1,330]

[State -1, AI-≈ª≥Ê»∫3]
type = ChangeState
value = 6002
triggerall = statetype = S
triggerall = power =300
triggerall = var(59) = 1
trigger1 = P2bodydist X <  30
trigger1 = P2statetype = A
trigger1 = ctrl
trigger1 = Random = [1,500]

[State -1, AI-Õ⁄–ÿ2]
type = ChangeState
value = 1220
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = P2bodydist X <  50
trigger1 = P2statetype = A
trigger1 = ctrl
trigger1 = Random = [1,300]




[State -1, AI-Õ¬—™]
type = ChangeState
value = 1100
triggerall = statetype = S
triggerall = var(59) = 1
triggerall =PrevStateNo != 1100
trigger1 = P2bodydist X <  80
trigger1 = ctrl
trigger1 = Random = [1,300]
trigger2 = (stateno = 200)||(stateno = 230)
trigger2 = movecontact
trigger2 = Random = [1,300]

[State -1, AI-≈ª—™]
type = ChangeState
value = 1060
triggerall = statetype = S
triggerall = var(59) = 1
triggerall =PrevStateNo != 1060
trigger1 = P2bodydist X <  80
trigger1 = ctrl
trigger1 = Random = [301,500]
trigger2 = (stateno = 200)||(stateno = 230)
trigger2 = movecontact
trigger2 = Random = [301,500]


[State -1, AI-Õ¬Œ∏“∫]
type = ChangeState
value = 1070
triggerall = statetype = S
triggerall = var(59) = 1
triggerall =PrevStateNo != 1070
trigger1 = P2bodydist X <  80
trigger1 = ctrl
trigger1 = Random = [1,300]
trigger2 = (stateno = 430) || (stateno = 440)
trigger2 =  moveguarded
trigger2 = Random = [1,300]


[State -1, AI-¡‘»À∆À]
type = ChangeState
value =    ifelse(p2bodydist x<50,1010,ifelse(p2bodydist x<80,1020,1030))
triggerall = statetype = S
triggerall = var(59) = 1
triggerall = ctrl
trigger1 =  P2bodydist X = [40 , 80]
trigger1 = numhelper(1052)>0 && numhelper(1051)>0
trigger2 = P2bodydist X < 80
trigger2 = Random = [1,300]
trigger3 = P2bodydist X >= 80
trigger3 = Random = [1,300]
;trigger2 = numhelper(1052)=0 && numhelper(1051)=0


[State -1, AI-Ã¢ ¨]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = stateno = 1011
trigger1 =  P2bodydist X >80
trigger1 = Random = [1,300]


[State -1, AI-¡‘»À∆ÀΩ¸-œ•πÚ,ª”◊¶]
type = ChangeState
value =  ifelse(p2bodydist x<20,630,600)
triggerall = var(59) = 1
triggerall = stateno = 1011
triggerall = Random = [1,300]
trigger1 =  P2bodydist X < 20
trigger2 =  P2bodydist X = [20,40]



[State -1, AI-¡‘»À∆À÷–-À´Ω≈ìŒ,À´◊¶∞«]
type = ChangeState
value = ifelse(p2bodydist x<40,640,610)
triggerall = var(59) = 1
triggerall = stateno = 1011
triggerall = Random = [1,300]
trigger1 =  P2bodydist X < 50


[State -1, AI-¡‘»À∆À …• ¨ …]
type = ChangeState
value = 2000
triggerall = var(59) = 1
triggerall = stateno = 1011
triggerall = Random = [1,300]
trigger1 =  P2bodydist X < 15



;==============================
;AI  ’æ¡¢¡¨–Ø
[State -1, AI-Õ∑Õª]
type = ChangeState
value = 200
triggerall = statetype = S
triggerall = var(59) = 1
triggerall = ctrl
triggerall =  P2bodydist X < 20
trigger1 = stateno = 200 &&  movecontact
trigger2 = stateno = 230 &&  movecontact



[State -1, AI-≤Âœ¬ÃÂ]
type = ChangeState
value = 230
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = (stateno = 200) &&  movehit

[State -1, AI-Õ⁄√≈]
type = ChangeState
value = 210
triggerall =   statetype = S
triggerall = var(59) = 1
trigger1 = stateno = 200 && movecontact && P2bodydist X < 30
trigger2 = stateno = 230 && movecontact && P2bodydist X < 30


[State -1, AI-Õ⁄«Ω]
type = ChangeState
value =  220
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = stateno = 200 &&  movecontact
trigger2 = stateno = 210 &&  movecontact
trigger3 = p2statetype = A && P2bodydist X < 50 && ctrl


[State -1, AI-±‰“Ï◊¶]
type = ChangeState
value = 250
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = (stateno = 200) &&  movehit
trigger2 = (stateno = 220) &&  movecontact
trigger3 = (stateno = 230) &&  movehit


[State -1, AI-≤»À¿]
type = ChangeState
value = 240
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = (stateno = 200)&&  movecontact
trigger2 = (stateno = 230)&&  movecontact

;==============================
;AI  ∂◊œ¬¡¨–Ø
[State -1, AI-≥Â …]
type = ChangeState
value = 400
triggerall = statetype = S
triggerall = var(59) = 1
trigger1 = ctrl
trigger1 = P2bodydist X < 30
trigger1 = p2statetype != A
;trigger1 = Random = [1,50]

[State -1, AI-ª”◊¶]
type = ChangeState
value = 430
triggerall =  statetype = C
triggerall = var(59) = 1
trigger1 = (stateno = 400)&& movecontact
trigger2 = (stateno = 430)&& movecontact && P2bodydist X < 25

[State -1, AI-Õ⁄Õ¡]
type = ChangeState
value = 410
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = stateno = 400&& movecontact &&  P2bodydist X < 35
;trigger1 = Random = [1,50]
trigger2 = stateno = 430&& movecontact &&  P2bodydist X < 35
;trigger2 = Random = [51,90]


[State -1, AI-≤Â ¨]
type = ChangeState
value = 440
triggerall =  statetype = C
triggerall = var(59) = 1
trigger1 = (stateno = 400) || (stateno = 410)
trigger1 = movecontact
trigger1 = P2bodydist X < 25


[State -1, AI-Õ⁄∑ÿ]
type = ChangeState
value =  420
triggerall = statetype = C
triggerall = var(59) = 1
trigger1 = (stateno = 400) &&  movecontact
trigger2 = (stateno = 410) &&  movecontact
trigger3 = p2statetype = L && P2bodydist X < 55 && ctrl

[State -1, AI-∞«µπ]
type = ChangeState
value = 450
triggerall =  statetype = C
triggerall = var(59) = 1
trigger1 = (stateno = 400) || (stateno = 420 ) || (stateno = 430)
trigger1 = movehit
trigger2 = p2statetype = S && P2bodydist X < 50 && ctrl
;trigger2 = Random = [1,500]






;===========================================================================

[State -1, ≥¨…±-≈ª≥Ê»∫x]
type = ChangeState
value = 6000
triggerall =  command = "DFDFx";"DFb"
triggerall = statetype != A
triggerall = power >=100
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 =  movecontact
trigger3 = (stateno = 400) || (stateno = 420)
trigger3 = movecontact

[State -1, ≥¨…±-≈ª≥Ê»∫y]
type = ChangeState
value = 6001
triggerall =  command = "DFDFy";"DFb"
triggerall = statetype != A
triggerall = power >=200
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 =  movecontact
trigger3 = (stateno = 400) || (stateno = 420)
trigger3 = movecontact


[State -1, ≥¨…±-≈ª≥Ê»∫z]
type = ChangeState
value = 6002
triggerall =  command = "DFDFz";"DFb"
triggerall = statetype != A
triggerall = power =300
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 =  movecontact
trigger3 = (stateno = 400) || (stateno = 420)
trigger3 = movecontact


;===========================================================================

[State -1, ±ÿ…±-≈ª—™]
type = ChangeState
value = 1060
triggerall = command = "DFa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200)&&  movecontact
trigger3 = (stateno = 230)&&  movecontact

[State -1, ±ÿ…±-Õ¬≥Ê»∫]
type = ChangeState
value = 1050
triggerall =  command = "DFb"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 =  movecontact
trigger3 = (stateno = 400) || (stateno = 420)
trigger3 = movecontact

[State -1, ±ÿ…±-Õ¬Œ∏“∫]
type = ChangeState
value = 1070
triggerall =  command = "DFc"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 =  movecontact
trigger3 = (stateno = 400) || (stateno = 420)
trigger3 = movecontact
;===========================================================================

;Õ¬—™
[State -1, ±ÿ…±-Õ¬—™]
type = ChangeState
value = 1100
triggerall = command = "DFx"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200)&&  movecontact
trigger3 = (stateno = 230)&&  movecontact


[State -1, ±ÿ…±-Õ⁄–ÿ]
type = ChangeState
value = 1200
triggerall =  command = "DFy"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 420)
trigger2 = movecontact

[State -1, ±ÿ…±-Õ⁄–ÿ2]
type = ChangeState
value = 1220
triggerall =  command = "DFz"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 420)
trigger2 = movecontact
;===========================================================================
;¡‘»À∆À
[State -1, ±ÿ…±-¡‘»À∆À1]
type = ChangeState
value = 1010
triggerall =  command = "DBa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact

;¡‘»À∆À
[State -1, ±ÿ…±-¡‘»À∆À2]
type = ChangeState
value = 1020
triggerall =  command = "DBb"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact


;¡‘»À∆À
[State -1, ±ÿ…±-¡‘»À∆À3]
type = ChangeState
value = 1030
triggerall =  command = "DBc"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact


;===========================================================================
;¡‘»À∆À  …
[State -1, ±ÿ…±-¡‘»À∆À  …]
type = ChangeState
value = 2000
triggerall = command = "DBa" || command = "DBb" || command = "DBc"
trigger1 = stateno = 1011

;---------------------------------------------------------------------------
;----------------------------------------

[State -1,∆’Õ®Õ∂-…• ¨“ß ]                           ;…• ¨“ß
type = ChangeState
value = 800
triggerall = command = "holdfwd"  && command = "y" && command = "b"|| command = "holdback"  && command = "y" && command = "b"
triggerall = statetype = S
trigger1 = ctrl = 1
triggerall = stateno != 100
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;---------------------------------------------------------------------------
;«·»≠-Õ∑Õª
[State -1, «·»≠-Õ∑Õª]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 &&  movecontact
trigger3 = stateno = 230 &&  movecontact

;---------------------------------------------------------------------------
;÷–»≠-Õ⁄√≈
[State -1, ÷–»≠-Õ⁄√≈]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;----------------------------------

;÷ÿ»≠-Õ⁄«Ω
[State -1, ÷ÿ»≠-Õ⁄«Ω]
type = ChangeState
value =  220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 &&  movecontact
trigger3 = stateno = 210 &&  movecontact

;---------------------------------------------------------------------------
;«·Ω≈-≤Âœ¬ÃÂ
[State -1, «·Ω≈-≤Âœ¬ÃÂ]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) &&  movecontact
;trigger3 = (stateno = 230) && time > 9



;---------------------------------------------------------------------------


;------------
;≤»À¿
[State -1, ÷–Ω≈-≤»À¿]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)&&  movecontact
trigger3 = (stateno = 230)&&  movecontact

;--------------------------------
;÷ÿΩ≈.(“Ï±‰ ÷)
[State -1, ÷ÿΩ≈-±‰“Ï◊¶]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) &&  movecontact
trigger3 = (stateno = 220) &&  movecontact
trigger4 = (stateno = 230) &&  movecontact



;---------------------------------------------------------------------------
;Taunt
;íßî≠
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl




;---------------------------------------------------------------------------
;∂◊«·»≠-≥Â …
[State -1, ∂◊«·»≠-≥Â …]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;∂◊÷–»≠-Õ⁄Õ¡
[State -1, ∂◊÷–»≠-Õ⁄Õ¡]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact


;∂◊÷ÿ»≠-Õ⁄∑ÿ
[State -1, ∂◊÷ÿ»≠-Õ⁄∑ÿ]
type = ChangeState
value =  420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) &&  movecontact
trigger3 = (stateno = 410) &&  movecontact
trigger4 = (stateno = 440) &&  movecontact
;---------------------------------------------------------------------------
;a∂◊«·Ω≈-ª”◊¶
[State -1, ∂◊«·Ω≈-ª”◊¶]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;∂◊÷–Ω≈-≤Â ¨
[State -1, ∂◊÷–Ω≈-≤Â ¨]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)|| (stateno = 420)
trigger2 = movecontact

;------------------------------------------------------------------------

;∂◊÷ÿΩ≈-∞«µπ
[State -1, ∂◊÷ÿΩ≈-∞«µπ]
type = ChangeState
value =  450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) &&  movecontact
trigger3 = (stateno = 410) &&  movecontact
trigger4 = (stateno = 420) &&  movecontact
trigger5 = (stateno = 430) &&  movecontact
;---------------------------------------------------------------------------
;
;Ã¯«·»≠-ª”◊¶
[State -1, Ã¯«·»≠-ª”◊¶]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 13
trigger3 = stateno = 1011


;---------------------------------------------------------------------------
;Ã¯÷–»≠-À´◊¶∞«
[State -1, Ã¯÷–»≠-À´◊¶∞«]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1011

;≈ª≥Ê
[State -1, Ã¯÷ÿ»≠-≈ª≥Ê]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1011
;---------------------------------------------------------------------------
;œ•πÚ
[State -1, Ã¯«·Ω≈-œ•πÚ]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1011

;---------------------------------------------------------------------------
;À´Ω≈ìŒ
[State -1, Ã¯÷–Ω≈-À´Ω≈ìŒ]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1011

;--------------------------------
;‚≥Ê  Ã¢ ¨
[State -1, Ã¯÷ÿΩ≈-‚≥Ê,Ã¢ ¨]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1011

