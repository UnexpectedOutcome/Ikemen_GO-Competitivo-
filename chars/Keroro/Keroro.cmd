;==========================================================================
;ƒRƒ}ƒ“ƒhŠÖ˜Aƒtƒ@ƒCƒ‹
;==========================================================================
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove);˜M‚Á‚Ä‚Í‚¢‚¯‚È‚¢‚ç‚µ‚¢B
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1
;-| ‘Œ© |-----------------------------------------------------------
; B   DB   D @ DF   F   UF   U   UB
;¶  ¶‰º@‰º  ‰E‰º ‰E@‰Eã ã@¶ã

;-| ’Êí‹Z |---------------------------------------------------------
[Command];’ÊEa‚è‰º‚ë‚µ•‹ó’†a‚è—p
name = "a"
command = ~a
time = 1

[Command];’ÊE’†’f“Ë‚«—p
name = "fa"
command = /$F,a ;•ûŒüƒL[‚Æ‘g‚İ‡‚í‚¹B’´d—vB‚±‚ê‚Í¨{aƒ{ƒ^ƒ“
time = 1


[Command];’ÊEa‚èã‚°•‹ó’†a‚èã‚°—p
name = "da"
command = /$D,a  ;«{aƒ{ƒ^ƒ“
time = 1

;-| “Á‹Z |------------------------------------------------------------
[Command];–‚_Œ•
name = "mazinken"
command = ~D, F, a
time = 20

[Command];”ò‰˜A‹r
name = "hienrenkyaku"
command = ~D, B, a
time = 20

[Command];P’Ü—‹a
name = "syuusyouraizan"
command = b
time = 1

[Command];H¹‰J
name = "akisazame"
command = x
time = 1

[Command];ŒÕ‰å”ja
name = "kogahazan"
command = /$D,x
time = 1

[Command];–P™€“V‹ì
name = "hououtenku"
command = c
time = 1

[Command];çŒì•ûw
name = "syugohouzin"
command = ~D,D,x
time = 30

[Command];^‹ó”ja
name = "shinkuhazan"
command = /$F,x
time = 1

[Command];„µ—ˆ
name = "gousyourai"
command = /$a,y
time = 20

[Command];‚qí™á
name = "shishisenko"
command = y
time = 1

[Command];‘M‹ó—ô”j
name = "senkuretuha"
command = /$B,x
time = 1

[Command];W‹C–@
name = "syuukihou"
command = /$a,x
time = 20

[Command];g˜@Œ•
name = "gurenken"
command = ~D, DF, F, x
time = 30

[Command];‹•‹ó‘“”ja
name = "kokuusouhazan"
command = z
time = 1

[Command];‹óŠÔãÄ“]ˆÚ
name = "kuukansyouteni"
command = /$B,z
time = 1

[Command];ŸŒ³a
name = "zigenzan"
command = /$D,z
time = 1

[Command];”ò˜A‘M
name = "hirensen"
command = /$F,z
time = 1

;-|‰œ‹`|----------------------------------------------------------------

[Command];–‚_‘o”ja
name = "mazinsouhazan"
command = ~D,F,D,F,a
time = 25

[Command];–‚_ç—ô”j
name = "mazinsenretuha"
command = ~F,D,B,a
time = 25

[Command];‚q™á”ja
name = "sisikouhazan"
command = ~D,F,D,F,y
time = 25

[Command];‚qç—ô”j
name = "sisisenretuha"
command = ~F,D,B,y
time = 25

[Command];P’Ü”ò‰‹r
name = "syuusouhienkyaku"
command = ~D,DF,F,b
time = 25

[Command];P’Ü‘M‹ó”j
name = "syuusousenkuuha"
command = ~D,DB,B,b
time = 15

[Command];–P™€“VãÄ‹r
name = "hououtensyoukyaku"
command = ~D,D,c
time = 25

[Command];–P™€ãÄ”ja
name = "houousyouhazan"
command = ~D,DF,F,c
time = 25

[Command];–P™€“V‹ó”j
name = "hououtenkuuha"
command = ~D,DB,B,c
time = 25

[Command];‹ó‘“”ja
name = "zikuusouhazan"
command = ~D,DF,F,z
time = 25

[Command];“]ˆÚ‘“”ja
name = "tenisouhazan"
command = ~D,DB,B,z
time = 25

[Command];–ÒŒÕ˜AŒ‚”j
name = "moukorengekiha"
command = ~D,DB,B,x
time = 25

;-| ”é‰œ‹` |------------------------------------------------------------

[Command];”é‰œ‹`
name = "hiougi"
command = /$s
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
name = "u"
command = $U
time = 1
[Command]
name = "uu"
command = /$U
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1




; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;ƒRƒ}ƒ“ƒhÀs•”•ªi—Dæ‡ˆÊ‚ª‚‚¢‚à‚Ì‚ğæ‚É•\‹Lj
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;‘O•ûƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ƒoƒbƒNƒXƒeƒbƒv
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;@”é‰œ‹`
;===========================================================================
;@”ê™€â‰ŠÕ
[State -1]
type = ChangeState
value = 2000
triggerall = command = "hiougi"
triggerall = (100*power/const(data.power))>=33
triggerall = var(1) = 1
trigger1 = (stateno = 353) && animelem = 4,>= 0
trigger2 = (stateno = 1033) && animelem = 4,>= 0

;@ƒGƒ^[ƒiƒ‹ƒuƒŒƒCƒh
[State -1]
type = ChangeState
value = 1750
triggerall = command = "hiougi"
triggerall = (100*power/const(data.power))>=100
trigger1 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger2 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger3 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger4 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger8 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger9 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger11 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger12 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger13 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger14 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger15 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger16 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger17 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger18 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger19 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger20 = (stateno = 1006) && animelem = 1,>= 0 && var(4) = 1 ;mazinsouhazan
trigger21 = (stateno = 1009) && animelem = 8,>= 0 && var(4) = 1 ;mazinsenretuha
trigger22 = (stateno = 1013) && animelem = 6,>= 0 && var(4) = 1 ;‚q™á”ja
trigger23 = (stateno = 1015) && animelem = 6,>= 0 && var(4) = 1 ;‚qç—ô”j
trigger24 = (stateno = 1023) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü”ò‰‹r
trigger25 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger26 = (stateno = 1028) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü‘M‹ó”j
trigger27 = (stateno = 1047) && animelem = 1,>= 0 && var(4) = 1 ;–P™€ãÄ”ja
trigger28 = (stateno = 1053) && animelem = 5,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger29 = (stateno = 1057) && animelem = 11,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger30 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M
trigger31 = (stateno = 1072) && animelem = 2,>= 0 && var(4) = 1 ;–ÒŒÕ˜AŒ‚”j
trigger32 = (stateno = 1062) && animelem = 9,>= 0 && var(4) = 1 ;“]ˆÚ‘“”ja

;@–»‹óaãÄŒ•
[State -1]
type = ChangeState
value = 1700
triggerall = command = "hiougi"
triggerall = (100*power/const(data.power))>=66
triggerall = (100*power/const(data.power))<=99
trigger1 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger2 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger3 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger4 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger8 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger9 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger11 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger12 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger13 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger14 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger15 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger16 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger17 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger18 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger19 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger20 = (stateno = 1006) && animelem = 1,>= 0 && var(4) = 1 ;mazinsouhazan
trigger21 = (stateno = 1009) && animelem = 8,>= 0 && var(4) = 1 ;mazinsenretuha
trigger22 = (stateno = 1013) && animelem = 6,>= 0 && var(4) = 1 ;‚q™á”ja
trigger23 = (stateno = 1015) && animelem = 6,>= 0 && var(4) = 1 ;‚qç—ô”j
trigger24 = (stateno = 1023) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü”ò‰‹r
trigger25 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger26 = (stateno = 1028) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü‘M‹ó”j
trigger27 = (stateno = 1047) && animelem = 1,>= 0 && var(4) = 1 ;–P™€ãÄ”ja
trigger28 = (stateno = 1053) && animelem = 5,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger29 = (stateno = 1057) && animelem = 11,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger30 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M
trigger31 = (stateno = 1072) && animelem = 2,>= 0 && var(4) = 1 ;–ÒŒÕ˜AŒ‚”j
trigger32 = (stateno = 1062) && animelem = 9,>= 0 && var(4) = 1 ;“]ˆÚ‘“”ja

;@EŒ€•‘rŒ•
[State -1]
type = ChangeState
value = 1600
triggerall = command = "hiougi"
triggerall = (100*power/const(data.power))>=33
triggerall = (100*power/const(data.power))<=65
trigger1 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger2 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger3 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger4 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger8 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger9 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger11 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger12 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger13 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger14 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger15 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger16 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger17 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger18 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger19 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger20 = (stateno = 1006) && animelem = 1,>= 0 && var(4) = 1 ;mazinsouhazan
trigger21 = (stateno = 1009) && animelem = 8,>= 0 && var(4) = 1 ;mazinsenretuha
trigger22 = (stateno = 1013) && animelem = 6,>= 0 && var(4) = 1 ;‚q™á”ja
trigger23 = (stateno = 1015) && animelem = 6,>= 0 && var(4) = 1 ;‚qç—ô”j
trigger24 = (stateno = 1023) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü”ò‰‹r
trigger25 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger26 = (stateno = 1028) && animelem = 2,>= 0 && var(4) = 1 ;P’Ü‘M‹ó”j
trigger27 = (stateno = 1047) && animelem = 1,>= 0 && var(4) = 1 ;–P™€ãÄ”ja
trigger28 = (stateno = 1053) && animelem = 5,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger29 = (stateno = 1057) && animelem = 11,>= 0 && var(4) = 1 ;–P™€“V‹ó”j
trigger30 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M
trigger31 = (stateno = 1072) && animelem = 2,>= 0 && var(4) = 1 ;–ÒŒÕ˜AŒ‚”j
trigger32 = (stateno = 1062) && animelem = 9,>= 0 && var(4) = 1 ;“]ˆÚ‘“”ja

;===========================================================================
;@‰œ‹`
;===========================================================================
;@–ÒŒÕ˜AŒ‚”j
[State -1]
type = ChangeState
value = 1063
triggerall = command = "moukorengekiha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@“]ˆÚ‘“”ja
[State -1]
type = ChangeState
value = 1058
triggerall = command = "tenisouhazan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‹ó‘“”ja
[State -1]
type = ChangeState
value = 1054
triggerall = command = "zikuusouhazan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M


;@–P™€“V‹ó”j
[State -1]
type = ChangeState
value = 1049
triggerall = command = "hououtenkuuha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–P™€ãÄ”ja
[State -1]
type = ChangeState
value = 1038
triggerall = command = "houousyouhazan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–P™€ãÄ”ja¥‹ó’†
[State -1]
type = ChangeState
value = 1048
triggerall = command = "houousyouhazan"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
trigger5 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger6 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku
trigger7 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@–P™€“VãÄ‹r
[State -1]
type = ChangeState
value = 1029
triggerall = command = "hououtensyoukyaku"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–P™€“VãÄ‹r¥‹ó’†
[State -1]
type = ChangeState
value = 1034
triggerall = command = "hououtensyoukyaku"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
trigger5 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger6 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku
trigger7 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@P’Ü‘M‹ó”j
[State -1]
type = ChangeState
value = 1024
triggerall = command = "syuusousenkuuha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@P’Ü”ò‰‹r
[State -1]
type = ChangeState
value = 1016
triggerall = command = "syuusouhienkyaku"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‚qç—ô”j
[State -1]
type = ChangeState
value = 1014
triggerall = command = "sisisenretuha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‚q™á”ja
[State -1]
type = ChangeState
value = 1010
triggerall = command = "sisikouhazan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–‚_ç—ô”j
[State -1]
type = ChangeState
value = 1007
triggerall = command = "mazinsenretuha"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–‚_‘o”ja
[State -1]
type = ChangeState
value = 1000
triggerall = command = "mazinsouhazan"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0 && MoveHit
trigger3 = (stateno = 230) && animelem = 6,>= 0 && MoveHit
trigger4 = (stateno = 245) && animelem = 5,>= 0 && MoveHit
trigger5 = (stateno = 255) && animelem = 5,>= 0 && MoveHit
trigger6 = (stateno = 250) && animelem = 5,>= 0 && MoveHit
trigger7 = (stateno = 260) && animelem = 5,>= 0 && MoveHit
trigger8 = (stateno = 200) && animelem = 6,>= 0 && MoveHit
trigger9 = (stateno = 210) && animelem = 5,>= 0 && MoveHit
trigger10 = (stateno = 220) && animelem = 5,>= 0 && MoveHit
trigger11 = (stateno = 323) && animelem = 1,>= 0 && var(4) = 1 ;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0 && MoveHit ;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0 && MoveHit ;kogahazan
trigger14 = (stateno = 360) && animelem = 57,>= 0 && MoveHit ;syugohouzin
trigger15 = (stateno = 370) && animelem = 7,>= 0 && MoveHit ;sinkuuhazan
trigger16 = (stateno = 390) && animelem = 6,>= 0 && MoveHit ;sisisenkou
trigger17 = (stateno = 400) && animelem = 5,>= 0 && MoveHit ;gousyourai
trigger18 = (stateno = 430) && animelem = 35,>= 0 && MoveHit ;kokuusouhazan
trigger19 = (stateno = 453) && animelem = 1,>= 0 && MoveHit ;zigenzan
trigger20 = (stateno = 300) && animelem = 7,>= 0 && MoveHit ;mazinken
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger22 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M


;===========================================================================
;@“Á‹Z
;===========================================================================
;@”ò˜A‘M¥‹ó’†
[State -1]
type = ChangeState
value = 465
triggerall = command = "hirensen"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
trigger5 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger6 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku

;@”ò˜A‘M
[State -1]
type = ChangeState
value = 460
triggerall = command = "hirensen"
triggerall = var(15) > 2 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@ŸŒ³a
[State -1]
type = ChangeState
value = 450
triggerall = command = "zigenzan"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‹óŠÔãÄ“]ˆÚ
[State -1]
type = ChangeState
value = 440
triggerall = command = "kuukansyouteni"
triggerall = var(15) > 2 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‹•‹ó‘“”ja
[State -1]
type = ChangeState
value = 430
triggerall = command = "kokuusouhazan"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@çŒì•ûw
[State -1]
type = ChangeState
value = 360
triggerall = command = "syugohouzin"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@g˜@Œ•¥‹ó’†
[State -1]
type = ChangeState
value = 423
triggerall = command = "gurenken"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
;trigger5 = (stateno = 422) && animelem = 2,>= 0;gurenken
trigger5 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku
trigger6 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@g˜@Œ•
[State -1]
type = ChangeState
value = 420
triggerall = command = "gurenken"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@‘M‹ó—ô”j
[State -1]
type = ChangeState
value = 410
triggerall = command = "senkuretuha"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@^‹ó”ja
[State -1]
type = ChangeState
value = 370
triggerall = command = "shinkuhazan"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@ŒÕ‰å”ja¥‹ó’†
[State -1]
type = ChangeState
value = 345
triggerall = command = "kogahazan"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger5 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku
trigger6 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@ŒÕ‰å”ja
[State -1]
type = ChangeState
value = 340
triggerall = command = "kogahazan"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M


;@P’Ü—‹a
[State -1]
type = ChangeState
value = 320
triggerall = command = "syuusyouraizan"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–P™€“V‹ì
[State -1]
type = ChangeState
value = 350
triggerall = command = "hououtenku"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–P™€“V‹ì¥‹ó’†
[State -1]
type = ChangeState
value = 354
triggerall = command = "hououtenku"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
trigger5 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger6 = (stateno = 315) && animelem = 4,>= 0;hienrenkyaku
trigger7 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@„µ—ˆ
[State -1]
type = ChangeState
value = 400
triggerall = command = "gousyourai"
triggerall = (100*power/const(data.power))>=15
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@W‹C–@
[State -1]
type = ChangeState
value = 380
trigger1 = command = "syuukihou"
trigger1 = statetype != A
trigger1 = ctrl = 1

;@‚qí™á
[State -1]
type = ChangeState
value = 390
triggerall = command = "shishisenko"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@H¹‰J
[State -1]
type = ChangeState
value = 330
triggerall = command = "akisazame"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@”ò‰˜A‹r¥‹ó’†
[State -1]
type = ChangeState
value = 314
triggerall = command = "hienrenkyaku"
triggerall = var(16) > 3
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0
trigger3 = (stateno = 215) && animelem = 6,>= 0
trigger4 = (stateno = 347) && animelem = 4,>= 0;kogahazan
trigger5 = (stateno = 422) && animelem = 3,>= 0;gurenken
trigger6 = (stateno = 467) && animelem = 3,>= 0;hirensen

;@”ò‰˜A‹r
[State -1]
type = ChangeState
value = 310
triggerall = command = "hienrenkyaku"
triggerall = var(15) > 3 && var(5) <= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 300) && animelem = 7,>= 0;mazinken
trigger22 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M

;@–‚_Œ•
[State -1]
type = ChangeState
value = 300
triggerall = command = "mazinken"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger3 = (stateno = 230) && animelem = 6,>= 0
trigger4 = (stateno = 245) && animelem = 5,>= 0
trigger5 = (stateno = 255) && animelem = 5,>= 0
trigger6 = (stateno = 250) && animelem = 5,>= 0
trigger7 = (stateno = 260) && animelem = 5,>= 0
trigger8 = (stateno = 200) && animelem = 6,>= 0
trigger9 = (stateno = 210) && animelem = 5,>= 0
trigger10 = (stateno = 220) && animelem = 5,>= 0
trigger11 = (stateno = 323) && animelem = 1,>= 0;syuusouraizan
trigger12 = (stateno = 330) && animelem = 52,>= 0;akisazame
trigger13 = (stateno = 343) && animelem = 1,>= 0;kogahazan
trigger14 = (stateno = 353) && animelem = 2,>= 0;hououtenku
trigger15 = (stateno = 360) && animelem = 57,>= 0;syugohouzin
trigger16 = (stateno = 370) && animelem = 7,>= 0;sinkuuhazan
trigger17 = (stateno = 390) && animelem = 6,>= 0;sisisenkou
trigger18 = (stateno = 400) && animelem = 5,>= 0;gousyourai
trigger19 = (stateno = 430) && animelem = 32,>= 0;kokuusouhazan
trigger20 = (stateno = 453) && animelem = 1,>= 0;zigenzan
trigger21 = (stateno = 313) && animelem = 1,>= 0 && var(4) = 1 ;”ò‰˜A‹r
trigger23 = (stateno = 463) && animelem = 1,>= 0 && var(4) = 1 ;”ò˜A‘M


;===========================================================================
;@’Êí‹Z
;===========================================================================
;@’ÊE’†’i“Ë‚«1Hits‚ß
[State -1]
type = ChangeState
value = 240
trigger1 = command = "fa"
trigger1 = statetype != A
trigger1 = ctrl = 1

;@’ÊE’†’f“Ë‚«2Hits‚ß
[State -1]
type = ChangeState
value = 230
triggerall = command = "fa"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 240) && animelem = 9,>= 0
trigger2 = command = "fa"

;@’ÊE’†’f“Ë‚«3Hits‚ß
[State -1]
type = ChangeState
value = 245
triggerall = command = "fa"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && animelem = 6,>= 0
trigger2 = command = "fa"

;@’ÊEa‚èã‚°1Hits‚ß
[State -1]
type = ChangeState
value = 255
trigger1 = command = "da"
trigger1 = statetype != A
trigger1 = ctrl = 1

;@’ÊEa‚èã‚°2Hits‚ß
[State -1]
type = ChangeState
value = 250
triggerall = command = "da"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 255) && animelem = 5,>= 0
trigger2 = command = "da"

;@’ÊEa‚èã‚°3Hits‚ß ƒAƒbƒp[
[State -1]
type = ChangeState
value = 260
triggerall = command = "da"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 250) && animelem = 5,>= 0
trigger2 = command = "da"

;@’ÊEa‚è‰º‚ë‚µ1Hits‚ß
[State -1]
type = ChangeState
value = 200
trigger1 = command = "a"
trigger1 = statetype != A
trigger1 = ctrl = 1

;@’ÊEa‚è‰º‚ë‚µ2Hits‚ß
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && animelem = 6,>= 0
trigger2 = command = "a"

;@’ÊEa‚è‰º‚ë‚µ3Hits‚ß
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 210) && animelem = 5,>= 0
trigger2 = command = "a"
;===========================================================================
;@‹ó’†’Êí‹Z
;===========================================================================
;‹ó’†Ø‚èã‚°
[State -1]
type = ChangeState
value = 215
triggerall = command = "da"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = Pos Y <= 30
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && animelem = 4,>= 0

;‹ó’†Ø‚è
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = Pos Y <= 30
trigger2 = (stateno = 215) && animelem = 6,>= 0
trigger1 = ctrl = 1