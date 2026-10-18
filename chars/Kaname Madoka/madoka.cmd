; The CMD file.
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
a = a
b = b
c = c

x = x
y = y
z = z

s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "JOUKA01"   ;Same name as above
command = a+z
time = 30

[Command]
name = "JOUKA02"   ;Same name as above
command = a+z
time = 30

[Command]
name = "Hyper_Madoka_Beam!!!!"   ;Same name as above
command = a+c
time = 20

[Command]
name = "Hyper_Madoka_Beam!!!!01"   ;Same name as above
command = b+z
time = 20

[Command]
name = "Cause_and_Effect"   ;Same name as above
command = c+z
time = 20

[Command]
name = "Super_moveLv02"   ;Same name as above
command = a+b
time = 20

[Command]
name = "Goddess_Madoka"   ;Same name as above
command = b+c
time = 20

;-| Special Motions |------------------------------------------------------

;マジカル・シュート《スパイラル》
[Command]
name = "Spiral1"
command = ~B,D,F, a

[Command]
name = "Spiral2"
command = ~B,D,F, b

[Command]
name = "Spiral3"
command = ~B,D,F, c

;マジカル・シュート《トリプル》
[Command]
name = "Triple1"
command = ~F,D,DF, a

[Command]
name = "Triple2"
command = ~F,D,DF, b

[Command]
name = "Triple3"
command = ~F,D,DF, c

;マジカル・シュート《イーグル》
[Command]
name = "Magical_Shoot!_1"
command = ~D, DF, F, a

[Command]
name = "Magical_Shoot!_2"
command = ~D, DF, F, b

[Command]
name = "Magical_Shoot!_3"
command = ~D, DF, F, c

;マジカル・シュート《ああああ》
[Command]
name = "Magical_Shoot!_aaaa"
command = ~D, DB, B, a

[Command]
name = "Magical_Shoot!_bbbb"
command = ~D, DB, B, b

[Command]
name = "Magical_Shoot!_cccc"
command = ~D, DB, B, c

;パニエロケット
[Command]
name = "DD_a"
command = D, D, a

[Command]
name = "DD_b"
command = D, D, b

[Command]
name = "DD_c"
command = D, D, c

;ダッシュ攻撃
[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = F, F, c

;ラピッド
[Command]
name = "Rapid1"
command = a,a,a
time = 20

[Command]
name = "Rapid2"
command = b,b,b
time = 20

[Command]
name = "Rapid3"
command = c,c,c
time = 20

;-| High_Jump |--------------------------------------------------------------
;ハイジャンプ
[Command]
name = "High_Jump"
command = ~D,/$U
time = 5

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "3c"
command = /$DF,c
time = 1

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
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
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

;-| ブロッキング用 |--------------------------------------------------------------
;立ち
[Command]
name = "B_F"
command = F
time = 0

;しゃがみ
[Command]
name = "B_D"
command = D
time = 0

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;以下、こまんどの発動記述です
;---------------------------------------------------------------------------
;======================================================================
;救済の女神
;======================================================================
[State -1, Hyper madoka beam!!]
type = ChangeState
value = 3300
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Goddess_Madoka" 
triggerall = (var(51)= 0 && power >= 3000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0 

[State -1, Hyper madoka beam!!!]
type = ChangeState
value = 3300
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Goddess_Madoka" 
triggerall = (var(51)= 0 && power >= 3000) || (var(51) = 1 &&var(53) > 0)
triggerall = statetype != A
triggerall = hitdefattr = SC, NA, SA, HA
triggerall = stateno != [3000,3005]
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 215
trigger4 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 220
trigger6 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger8 = stateno =1080 && animelemtime(6) >= 0 


;======================================================================
;因果
;======================================================================
[State -1, "Cause_and_Effect"]
type = ChangeState
value = 3100
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Cause_and_Effect" 
triggerall = (var(51)= 0 && power >= 2000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0 

[State -1, "Cause_and_Effect"]
type = ChangeState
value = 3100
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Cause_and_Effect"
triggerall = (var(51)= 0 && power >= 2000) || (var(51) = 1 &&var(53) > 0)
triggerall = statetype != A
triggerall = hitdefattr = SC, NA, SA, HA
triggerall = stateno != [3000,3005]
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 215
trigger4 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 220
trigger6 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger8 = stateno =1080 && animelemtime(6) >= 0 


;======================================================================
;模倣
;======================================================================
[State -1, "腹パン"]
type = ChangeState
value = 3250
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Super_moveLv02"
triggerall = (var(51)= 0 && power >= 2000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;浄化の儀式
;======================================================================
[State -1, "浄化の儀式"]
type = ChangeState
value = 3050
triggerall = numhelper(3015) = 1
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "JOUKA01"
triggerall = (var(51)= 0 && power >= 1000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0

[State -1, "浄化の儀式"]
type = ChangeState
value = 3050
triggerall = numhelper(3015) = 0
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "JOUKA02"
triggerall = (var(51)= 0 && power >= 2000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;ハイパーまどかビーム
;======================================================================
[State -1, Hyper madoka beam!!]
type = ChangeState
value = 3000
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Hyper_Madoka_Beam!!!!" 
triggerall = (var(51)= 0 && power >= 1000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1
trigger8 = stateno =1080 && animelemtime(6) >= 0 

[State -1, Hyper madoka beam!!!]
type = ChangeState
value = 3000
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Hyper_Madoka_Beam!!!!" 
triggerall = (var(51)= 0 && power >= 1000) || (var(51) = 1 &&var(53) > 0)
triggerall = statetype != A
triggerall = hitdefattr = SC, NA, SA, HA
triggerall = stateno != [3000,3005]
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 215
trigger4 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 220
trigger6 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger8 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;ハイパーまどかビーム(漫画版)
;======================================================================
[State -1, Hyper madoka beam!!]
type = ChangeState
value = 3040
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Hyper_Madoka_Beam!!!!01" 
triggerall = (var(51)= 0 && power >= 1000) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3005]
trigger2 = movecontact
trigger3 = Stateno = [1000,1010] 
trigger3 = animelemtime(8) > 1
trigger4 = Stateno = [1200,1220] 
trigger4 = animelemtime(8) > 1
trigger5 = Stateno = 1101
trigger5 = animelemtime(6) > 1
trigger6 = Stateno = 1106
trigger6 = animelemtime(6) > 1
trigger7 = Stateno = 1111
trigger7 = animelemtime(6) > 1

[State -1, Hyper madoka beam!!!]
type = ChangeState
value = 3040
triggerall = numhelper(3000) = 0
triggerall = numhelper(3001) = 0
triggerall = command = "Hyper_Madoka_Beam!!!!01" 
triggerall = (var(51)= 0 && power >= 1000) || (var(51) = 1 &&var(53) > 0)
triggerall = statetype != A
triggerall = hitdefattr = SC, NA, SA, HA
triggerall = stateno != [3000,3005]
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 215
trigger4 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 220
trigger6 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5

;======================================================================
;マジカルシュート《スパイラル》
;======================================================================
[State -1,Magical Shoot! <<Spiral>>]
type = null;ChangeState
value = 1050
triggerall = command = "Spiral1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1,Magical Shoot! <<Spiral>>]
type = null;ChangeState
value = 1055
triggerall = command = "Spiral2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1,Magical Shoot! <<Spiral>>]
type = null;ChangeState
value = 1060
triggerall = command = "Spiral3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;マジカルシュート《トリプル》
;======================================================================
[State -1,マジカルシュート《トリプル》]
type = ChangeState
value = 1100
triggerall = command =  "Triple1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1, マジカルシュート《トリプル》]
type = ChangeState
value = 1110
triggerall = command = "Triple2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1, マジカルシュート《トリプル》]
type = ChangeState
value = 1120
triggerall = command = "Triple3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger10 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;結界
;======================================================================
[State -1, 結界]
type = ChangeState
value = 1090
;triggerall = command = "Magical_Shoot!_1" || command = "Magical_Shoot!_2" || command = "Magical_Shoot!_3"
triggerall = command = "x"
triggerall = (var(51)= 0 && power >= 0); || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = stateno != [130,159]

;======================================================================
;バインド(ブロッキング) まだ作ってませんので
;======================================================================
[State -1, 結界]
type = null;ChangeState
value = 1090
;triggerall = command = "Magical_Shoot!_1" || command = "Magical_Shoot!_2" || command = "Magical_Shoot!_3"
triggerall = command = "x"
triggerall = (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = stateno != [130,159]

;======================================================================
;マジカルシュート《クラック》
;======================================================================
[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1080
;triggerall = command = "Magical_Shoot!_1" || command = "Magical_Shoot!_2" || command = "Magical_Shoot!_3"
triggerall = command = "x"
triggerall = (var(51)= 0 && power >= 100) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl = 0
trigger1 = stateno = [130,159]


;======================================================================
;マジカルシュート《イーグル》
;======================================================================
[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1000
triggerall = command = "Magical_Shoot!_1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1005
triggerall = command = "Magical_Shoot!_2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 
trigger10 = stateno =1080 && animelemtime(6) >= 0 

[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1010
triggerall = command = "Magical_Shoot!_3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 
trigger10 = stateno =1080 && animelemtime(6) >= 0 

;======================================================================
;マジカルシュート《イーグル》空中
;======================================================================
[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1020
triggerall = command = "Magical_Shoot!_1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 

[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1030
triggerall = command = "Magical_Shoot!_2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 

[State -1, マジカルシュート《イーグル》]
type = ChangeState
value = 1040
triggerall = command = "Magical_Shoot!_3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 



;======================================================================
;マジカルシュート《バラージ》
;======================================================================
[State -1, マジカルシュート《バラージ》]
type = ChangeState
value = 1150
triggerall = command = "Magical_Shoot!_aaaa"
triggerall = numhelper(1150) = 0
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《バラージ》]
type = ChangeState
value = 1160
triggerall = command = "Magical_Shoot!_bbbb"
triggerall = numhelper(1160) = 0
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《バラージ》]
type = ChangeState
value = 1170
triggerall = command = "Magical_Shoot!_cccc"
triggerall = numhelper(1170) = 0
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

;======================================================================
;パニエロケット《ムーヴ》
;======================================================================
[State -1, パニエロケット《ムーヴ》]
type = ChangeState
value = 1250
triggerall = command = "DD_a"
triggerall = (var(51)= 0) || (var(51) = 1 && var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1,  パニエロケット《ムーヴ》]
type = ChangeState
value = 1260
triggerall = command = "DD_b"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1,  パニエロケット《ムーヴ》]
type = ChangeState
value = 1270
triggerall = command = "DD_c"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

;======================================================================
;マジカルシュート《ラピッド》
;======================================================================
[State -1, マジカルシュート《ラピッド》]
type = ChangeState
value = 1200
triggerall = command = "Rapid1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《ラピッド》]
type = ChangeState
value = 1205
triggerall = command = "Rapid2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《ラピッド》]
type = ChangeState
value = 1210
triggerall = command = "Rapid3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (Stateno = [700,705])
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 410
trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger9 = stateno = 420
trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 



;======================================================================
;マジカルシュート《スフィア》
;======================================================================
[State -1, マジカルシュート《スフィア》]
type = ChangeState
value = 1220
triggerall = command = "Rapid1"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 
;trigger6 = stateno = 215
;trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
;trigger7 = stateno = 410
;trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
;trigger8 = stateno = 220
;trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
;trigger9 = stateno = 420
;trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《スフィア》]
type = ChangeState
value = 1225
triggerall = command = "Rapid2"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 
;trigger6 = stateno = 215
;trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
;trigger7 = stateno = 410
;trigger7 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
;trigger8 = stateno = 220
;trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
;trigger9 = stateno = 420
;trigger9 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, マジカルシュート《スフィア》]
type = ChangeState
value = 1230
triggerall = command = "Rapid3"
triggerall = (var(51)= 0) || (var(51) = 1 &&var(53) > 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5

;===========================================================================
;---------------------------------------------------------------------------
;ノーマルモードのみ
:パワーチャージ
;---------------------------------------------------------------------------
[State -1, Charge]
type = ChangeState
value = 270
triggerall = Var(51) = 0;ノーマルモード
triggerall = power < 3000;パワーが全快では無いとき
triggerall = command = "a"
triggerall = command = "b";a+bで発動
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュアタック
;---------------------------------------------------------------------------
[State -1, Dash Attack]
type = ChangeState
value = 705
triggerall = command = "FF_b"|| command = "FF_a" || command = "FF_c"
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 215
trigger4 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger5 = stateno = 410
trigger5 = ProjContactTime(400) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 220
trigger6 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 

[State -1, Dash Attack]
type = ChangeState
value = 700
triggerall = command = "FF_b"|| command = "FF_a" || command = "FF_c"
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = movecontact
;trigger2 = stateno = 200
;trigger2 = ProjContact(200) = 1
;trigger3 = stateno = 400
;trigger3 = ProjContact(400) = 1;movecontact

[State -1, Dash Attack]
type = ChangeState
value = 700
triggerall = Stateno = 100
triggerall = command = "b"|| command = "a" || command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact


;---------------------------------------------------------------------------
[State -1, Strong Dush Attack]
type = null;ChangeState
value = 720
triggerall = command = "FF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;===========================================================================
;目覚めた心は走り出した未来を描くため
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Back Step
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Back Step type2
;バックステップ
[State -1, Run Back]
type = ChangeState
value = 107
trigger1 = stateno = 105
trigger1 = command = "BB"

;---------------------------------------------------------------------------
;空中ダッシュ
;2回目以降
[State -1, Run Fwd in Air]
type = ChangeState
value = 111
triggerall = Var(51) = 0
triggerall = power > 0
triggerall = Var(2) >= 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;1回目
[State -1, Run Fwd In Air]
type = ChangeState
value = 110
triggerall = Var(51) = 0
triggerall = Var(2) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;2回目以降
[State -1, Run Fwd in Air]
type = ChangeState
value = 111
triggerall = Var(51) = 1
triggerall = Var(50) > 0
triggerall = Var(2) >= 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;1回目
[State -1, Run Fwd In Air]
type = ChangeState
value = 110
triggerall = Var(51) = 1
triggerall = Var(50) > 0
triggerall = Var(2) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中バックダッシュ
;2回目以降
[State -1, Run Back in Air]
type = ChangeState
value = 116
triggerall = Var(51) = 0
triggerall = power > 0
triggerall = Var(2) >= 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;1回目
[State -1, Run Back in Air]
type = ChangeState
value = 115
triggerall = Var(51) = 0
triggerall = Var(2) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;2回目以降
[State -1, Run Back in Air]
type = ChangeState
value = 116
triggerall = Var(51) = 1
triggerall = Var(50) > 0
triggerall = Var(2) >= 1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;1回目
[State -1, Run Back in Air]
type = ChangeState
value = 115
triggerall = Var(51) = 1
triggerall = Var(50) > 0
triggerall = Var(2) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中ダウンダッシュ
[State -1, Run Down in Air]
type = ChangeState
value = 650
triggerall = Var(51) = 0
triggerall = power > 0
;triggerall = Var(2) >= 1
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1021 || stateno = 1031 || stateno = 1041
trigger2 = command = "DD"

[State -1, Run Down in Air]
type = ChangeState
value = 650
triggerall = Var(51) = 1
triggerall = Var(50) > 0
;triggerall = power > 0
;triggerall = Var(2) >= 1
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ハイジャンプ 
[State -1] 
type = ChangeState 
value = 70
trigger1 = command = "High_Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;レバー入れ攻撃
;---------------------------------------------------------------------------
;throw
[State -1, throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;throw
[State -1, throw]
type = ChangeState
value = 810
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = p2bodydist X < 50
trigger1 = p2statetype = A
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,630]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 

;---------------------------------------------------------------------------
;throw
[State -1, throw]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = command = "holdback"
triggerall = p2bodydist X < 50
trigger1 = p2statetype = S
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,630]
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger4 = stateno = 610
trigger4 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger5 = stateno = 620
trigger5 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 

;マジカル・サブマリン・アロー
[State -1, Magical Submarin Arrow]
type = ChangeState
value = 450
triggerall = command = "3c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger3 = stateno = 400
trigger3 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger4 = stateno = 210
trigger4 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger7 = stateno = 420
trigger7 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 
trigger8 = stateno = 220
trigger8 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5

;---------------------------------------------------------------------------
[State -1, Jump Down Shoot!]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger3 = stateno = 610
trigger3 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger4 = stateno = 620
trigger4 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 

[State -1, Jump Down Shoot!]
type = ChangeState
value = 645
trigger1 = command = "holddown" && (command = "a" || command = "b" || command = "c")
trigger1 = p2statetype = L && p2stateno != 5120
;trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Magical Faint Arrow]
type = ChangeState
value = 231
triggerall = command = "holdback"
triggerall = command = "c"
triggerall = command != "holddown"
;trigger1 = statetype = S
;trigger1 = ctrl
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 10
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 10
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 10
trigger4 = stateno = 410
trigger4 = ProjContactTime(410) != -1 && ProjContactTime(410) < 10
trigger5 = stateno = 215
trigger5 = ProjContactTime(215) != -1 && ProjContactTime(215) < 10
trigger6 = stateno = 420
trigger6 = ProjContactTime(420) != -1 && ProjContactTime(420) < 10
trigger7 = stateno = 220
trigger7 = ProjContactTime(220) != -1 && ProjContactTime(220) < 10

[State -1, Magical Faint Arrow]
type = ChangeState
value = 230
triggerall = command = "holdback"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) || (Stateno = 400) || (Stateno = 410)
;trigger2 = movecontact

;---------------------------------------------------------------------------
;マジカル・アッパー・ショット
[State -1, Stand Attack]
type = null;ChangeState
value = 240
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (Stateno = 400) || (Stateno = 410) || (Stateno = 420)
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 420
trigger4 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5
trigger5 = stateno = 220
trigger5 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5 

;===========================================================================
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中
;---------------------------------------------------------------------------
[State -1, Stand Attack]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (Stateno = 400)
trigger2 = movecontact
trigger3 = stateno = 200
;trigger3 = Var(32) > 0
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 

;---------------------------------------------------------------------------
[State -1, Magical middle Arrow]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (Stateno = 400)
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 215
trigger5 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5 

;---------------------------------------------------------------------------
[State -1, Magical middle Arrow]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (Stateno = 400)
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 

;---------------------------------------------------------------------------
[State -1, Stand Attack]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (Stateno = 400) || (Stateno = 410) || (Stateno = 420)
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = ProjContactTime(200) != -1 && ProjContactTime(200) < 10
trigger4 = stateno = 400
trigger4 = ProjContactTime(400) != -1 && ProjContactTime(400) < 10
trigger5 = stateno = 210
trigger5 = ProjContactTime(210) != -1 && ProjContactTime(210) < 10
trigger6 = stateno = 410
trigger6 = ProjContactTime(410) != -1 && ProjContactTime(410) < 10
trigger7 = stateno = 215
trigger7 = ProjContactTime(215) != -1 && ProjContactTime(215) < 10

;---------------------------------------------------------------------------
;しゃがみ中
;---------------------------------------------------------------------------
[State -1, Crouching Attack]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger3 = stateno = 400
trigger3 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 

;---------------------------------------------------------------------------
[State -1, Crouching Attack]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger3 = stateno = 400
trigger3 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger4 = stateno = 210
trigger4 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger5 = stateno = 215
trigger5 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5 

;---------------------------------------------------------------------------
[State -1, Crouching Attack]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger3 = stateno = 400
trigger3 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger4 = stateno = 210
trigger4 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger5 = stateno = 410
trigger5 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger6 = stateno = 215
trigger6 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5

;---------------------------------------------------------------------------
;空中
;---------------------------------------------------------------------------
[State -1, Jump Attack]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 600
trigger3 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 

;---------------------------------------------------------------------------
[State -1, Jump Attack]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 

;---------------------------------------------------------------------------
[State -1, Jump Attack]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger3 = stateno = 610
trigger3 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 

;===========================================================================
;キャンセル
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
;ＭＳトリプルキャンセル
trigger1 = stateno = 1101
trigger1 = numhelper(1105) = 1
trigger1 = helper(1105),movecontact = 1 && helper(1105),stateno = 1105
trigger2 = stateno = 1101
trigger2 = numhelper(1106) = 1
trigger2 = helper(1106),movecontact = 1 && helper(1106),stateno = 1106
trigger3 = stateno = 1101
trigger3 = numhelper(1107) = 1
trigger3 = helper(1107),movecontact = 1 && helper(1106),stateno = 1107

trigger4 = stateno = 1111
trigger4 = numhelper(1115) = 1
trigger4 = helper(1115),movecontact = 1 && helper(1115),stateno = 1115
trigger5 = stateno = 1111
trigger5 = numhelper(1116) = 1
trigger5 = helper(1116),movecontact = 1 && helper(1116),stateno = 1116
trigger6 = stateno = 1111
trigger6 = numhelper(1117) = 1
trigger6 = helper(1117),movecontact = 1 && helper(1116),stateno = 1117

trigger7 = stateno = 1121
trigger7 = numhelper(1125) = 1
trigger7 = helper(1125),movecontact = 1 && helper(1125),stateno = 1125
trigger8 = stateno = 1121
trigger8 = numhelper(1126) = 1
trigger8 = helper(1126),movecontact = 1 && helper(1126),stateno = 1126
trigger9 = stateno = 1121
trigger9 = numhelper(1127) = 1
trigger9 = helper(1127),movecontact = 1 && helper(1126),stateno = 1127

;キャンセルジャンプ
[State -1]
type = null;ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 200
trigger1 = ProjContactTime(200) != -1 && ProjContactTime(200) < 5 
trigger2 = stateno = 400
trigger2 = ProjContactTime(400) != -1 && ProjContactTime(400) < 5 
trigger3 = stateno = 210
trigger3 = ProjContactTime(210) != -1 && ProjContactTime(210) < 5 
trigger4 = stateno = 410
trigger4 = ProjContactTime(410) != -1 && ProjContactTime(410) < 5 
trigger5 = stateno = 215
trigger5 = ProjContactTime(215) != -1 && ProjContactTime(215) < 5
trigger6 = stateno = 420
trigger6 = ProjContactTime(420) != -1 && ProjContactTime(420) < 5 
trigger7 = stateno = 220
trigger7 = ProjContactTime(220) != -1 && ProjContactTime(220) < 5

[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup"
trigger1 = stateno = 600
trigger1 = ProjContactTime(600) != -1 && ProjContactTime(600) < 5 
trigger2 = stateno = 610
trigger2 = ProjContactTime(610) != -1 && ProjContactTime(610) < 5 
trigger3 = stateno = 620
trigger3 = ProjContactTime(620) != -1 && ProjContactTime(620) < 5 
