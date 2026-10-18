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


;---[cpu ai]----------------------------------------------------------------------
[command]
name = "cpu1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "cpu2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "cpu3"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu15"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu16"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "cpu5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "cpu6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "cpu7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "cpu8"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu25"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu26"
command = B, B, B, B, B, B, B, b
time = 1

[command]
name = "cpu9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "cpu10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "cpu30"
command = s, s, s, s, s, s, s, s
time = 1



;-| Super Motions |--------------------------------------------------------


;GATTSSS.... APPPPPPPPPPAAAAAAAAHHHHHHHHHHHHHHHH1!!!!!!!!!!111111111112233344455

[Command]
name = "GATS APPA"
command = ~D, DF, F, a+b
time = 10

[Command]
name = "GATS APPA"
command = ~D, DF, F, b+c
time = 10

[Command]
name = "GATS APPA"
command = ~D, DF, F, c+a
time = 10

;Z-KIAI+KUUCHUU

[Command]
name = "Z-KIAI"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "Z-KIAI"
command = ~D, DF, F, y+z
time = 10

[Command]
name = "Z-KIAI"
command = ~D, DF, F, z+x
time = 10


;Nekketsu Kiai-Zan

[Command]
name = "NEKKETSU"
command = ~D, DB, B, a+b
time = 10

[Command]
name = "NEKKETSU"
command = ~D, DB, B, b+c
time = 10

[Command]
name = "NEKKETSU"
command = ~D, DB, B, c+a
time = 10

;ÔMEGA

[Command]
name = "ÔMEGA"
command = ~D, DF, F, c+z
time = 10



;SPECIALS

[Command]
name = "GATS X"
command = ~F, D, DF, x

[Command]
name = "GATS Y"
command = ~F, D, DF, y

[Command]
name = "GATS Z"
command = ~F, D, DF, z

;MIDZUKI A CYCLONE KICKU

[Command]
name = "MIDZUKI A"
command = ~F, D, DF, a

[Command]
name = "MIDZUKI B"
command = ~F, D, DF, b

[Command]
name = "MIDZUKI C"
command = ~F, D, DF, c


;METEORO DO KICKÃO

[Command]
name = "METEORO DO KICKÃO A"
command = ~D, DF, F, a
time = 10

[Command]
name = "METEORO DO KICKÃO B"
command = ~D, DF, F, b
time = 10

[Command]
name = "METEORO DO KICKÃO C"
command = ~D, DF, F, c
time = 10


; GATZ, APPAHHH1!!@1331444141 CARALHO


; KIAI-ZAN

[Command]
name = "Kiaizan X"
command = ~D, DF, F, x
time = 10

[Command]
name = "Kiaizan Y"
command = ~D, DF, F, y
time = 10

[Command]
name = "Kiaizan Z"
command = ~D, DF, F, z
time = 10


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
command = x+y
time = 1
[Command]
name="recovery"
command=a+x
time=1
[Command]
name = "recovery"
command = y+z
time=1
[Command]
name = "recovery"
command = x+z
time=1
[Command]
name = "recovery"
command = a+b
time=1
[Command]
name = "recovery"
command = b+c
time=1
[Command]
name = "recovery"
command = a+c
time=1

[Command]
name = "pp"
command = x+y
time = 1
[Command]
name = "pp"
command = x+z
time = 1
[Command]
name = "pp"
command = y+z
time = 1
[Command]
name = "kk"
command = a+b
time = 1
[Command]
name = "kk"
command = a+c
time = 1
[Command]
name = "kk"
command = b+c
time = 1
[Command]
name = "a+x"
command = a+x
time=1
[Command]
name = "b+y"
command = b+y
time = 1
[Command]
name = "c+z"
command = c+z
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
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1
[Command]
name = "downfwd"
command = $DF
time = 1
[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1
[Command]
name = "upback"
command = $UB
time = 1
[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1
[Command]
name = "upfwd"
command = $UF
time = 1
;-| Hold Button |--------------------------------------------------------------
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
name = "hold_a"
command = /a
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
name = "hold_s"
command = /s
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddownfwd"
command = /$DF
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1
;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
[Command]
name = "rlsy"
command = ~y
time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
[Command]
name = "rlsc"
command = ~c
time = 1

[Command]
name = "start"
command = s
time = 1
;---------------------------------------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

[Command]
name = "shouldersuplex";Required (do not remove)
command = x+y
time = 1

[command]
name = "counter"
command = /F, x+a
time = 8

[command]
name = "counter"
command = /F, y+b
time = 8

[command]
name = "counter"
command = /F, z+c
time = 8

;---------------------------------------------------------------------------
[Statedef -1]


;------------------------------------
;ai stand guard
;------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1  && p2bodydist x < 70
triggerall = statetype != a
triggerall = var(7) = 0
triggerall = p2statetype != c
triggerall = p2movetype = a
trigger1 = ctrl = 1
trigger2 = enemy, numhelper >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 130

[state -1]
type = changestate
triggerall = var(57) = 1  && p2bodydist x < 70
triggerall = statetype != a
triggerall = var(7) = 1
trigger1 = enemy, numhelper >= 1
trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger2 = enemy, numproj >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
value = 130

;land block------------------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1
triggerall = stateno = 52 = 1
triggerall = p2movetype = a
;trigger1 = ctrl = 1
trigger1 = enemy, numhelper >= 1
;trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
;trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 130
;------------------------------------
;ai stand to crouch guard
;------------------------------------
[state -1]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype = c
triggerall = p2movetype = a
trigger1 = stateno = 150
value = 152

;------------------------------------
;ai crouching guard
;------------------------------------
[state -1,]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype = c
triggerall = p2movetype = a
trigger1 = ctrl = 1
value = 131
;------------------------------------
;ai crouch to stand guard
;------------------------------------
[state -1, c-to-s guard]
type = changestate
triggerall = var(57) = 1 && p2bodydist x < 70
triggerall = statetype != a
triggerall = p2statetype != c
triggerall = p2movetype = a
trigger1 = stateno = 152
value = 150

;------------------------------------
;ai aerial guard
;------------------------------------
[state -1, air guard]
type = changestate
triggerall = var(57) = 1 && p2bodydist x > 0
triggerall = var(7) = 0
triggerall = statetype = a
triggerall = p2movetype = a
trigger1 = ctrl = 1
trigger2 = enemy, numhelper >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
trigger3 = enemy, numproj >= 1
trigger3 = ctrl = 1
trigger3 = enemynear, movetype = a
value = 132

[state -1, air guard]
type = changestate
triggerall = var(57) = 1
triggerall = var(7) = 1
triggerall = statetype = a
trigger1 = enemy, numhelper >= 1
trigger1 = ctrl = 1
trigger1 = enemynear, movetype = a
trigger2 = enemy, numproj >= 1
trigger2 = ctrl = 1
trigger2 = enemynear, movetype = a
value = 132
;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------

[state -1]
type = changestate
triggerall = random < 100
triggerall = var(57) = 1
triggerall = stateno != 40
triggerall = statetype != a
trigger1 = (p2movetype = a) && (p2statetype != a) && (enemy, numhelper >= 1)
trigger1 = ctrl = 1
trigger2 = (p2movetype = a) && (p2statetype != a) && (enemy, numproj >= 1)
trigger2 = ctrl = 1
value = 40

[state -1]
type = varset
trigger1 = var(57) = 1
trigger1 = (p2movetype = a) && (p2statetype != a) && (enemy, numproj >= 1)
trigger1 = ctrl = 1
v = 3
value = 1


[state -1]
type = varset
var(57) = 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"

; stand still--if you win, stop moving!!!
[state -1]
type = changestate
value = 0
triggerall = var(57) = 1
triggerall = roundstate = 3
trigger1 = statetype != a
trigger1 = ctrl

;ground combo 1
[state -1,1]
type = changestate
value = 200
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0,25]
trigger1 = random < 500
trigger2 = stateno = 100
trigger2 = p2bodydist x = [0,25]
trigger2 = random < 500

[state -1,1]
type = changestate
value = 230
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0,20]
trigger1 = random < 200
trigger2 = stateno = 100
trigger2 = p2bodydist x = [0,20]
trigger2 = random < 200

[state -1,2]
type = changestate
value = 210
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movecontact
trigger1 = p2bodydist x < 50
trigger2 = p2bodydist x = [0,40]
trigger2 = random < 500 && enemynear, statetype = l
trigger2 = ctrl

;aircombo

[state -1,41]
type = changestate
value = 600
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = a
triggerall = p2bodydist x = [0,40]
trigger1 = ctrl = 1
trigger1 = p2bodydist y = [-20,10]
trigger1 = stateno = 50

[state -1]
type = changestate
value = 630
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact

[state -1]
type = changestate
value = 610
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact


[state -1]
type = changestate
value = 640
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 610 ;|| stateno = 610
trigger1 = movecontact


[state -1]
type = changestate
value = 650
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = random < 500

[state -1]
type = changestate
value = 620
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640
trigger1 = movecontact
trigger1 = random < 500

;Super Jump
[state -1]
type = changestate
value = 40
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 420
trigger3 = stateno = 1030 && time > 14
trigger4 = stateno = 1031 && time > 14;&& movehit
trigger5 = stateno = 1032 && time > 14;&& movehit
trigger6 = stateno = 3000 && time > 153 && movehit=1;&& movehit
;trigger3 = time > 14

;--------------------------------------------------------------------

;========================= HYPER COMBOS ============================

;PROJECT JUSTICE ÔMEGA

[State -1, Jiyuu no Melody]
type = ChangeState
value = 4120
triggerall = !var(0)
triggerall = Command = "ÔMEGA"
triggerall = power >= 3000
triggerall = statetype !=a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 460
;trigger3 = (stateno = [1000,1999]) ;|| (stateno = [1060,1062]) || (stateno = [1070,1092])


;ZENKAI KIAI-ZAN

[State -1, Jiyuu no Melody]
type = ChangeState
value = 3108
triggerall = !var(0)
triggerall = Command = "Z-KIAI"
triggerall = power >= 1000
triggerall = statetype !=a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

;NEKKETSU KIAI-ZAN

[State -1, Jiyuu no Melody]
type = ChangeState
value = 3100
triggerall = !var(0)
triggerall = Command = "NEKKETSU"
triggerall = power >= 1000
triggerall = statetype !=a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])

;KUUCHUU ZENKAI KIAI-ZAN

[State -1, Jiyuu no Melody]
type = ChangeState
value = 3127
triggerall = Command = "Z-KIAI"
triggerall = power >= 1000 ;Level 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = [1450,1470]
trigger4 = stateno = [1069,1474]

;TITAN GUTS UPPER
[State -1, Jiyuu no Melody]
type = ChangeState
value = 3000
triggerall = !var(0)
triggerall = Command = "GATS APPA"
triggerall = power >= 1000
triggerall = statetype !=a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = (stateno = [1000,1002]) ;|| (stateno = [400,499])

;SHIN RYUSEI KICK
[State -1, Jiyuu no Melody]
type = ChangeState
value = 4290
triggerall = Command = "GATS APPA"
triggerall = power >= 1000 ;Level 1
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger3 = stateno = [1450,1470]
trigger4 = stateno = [1069,1474]
;========================= SPECIAL MOVES ===========================

;GUTS UPPER

[state -1, a2]
type = changestate
value = 1030
triggerall = command = "GATS X"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1031
triggerall = command = "GATS Y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1032
triggerall = command = "GATS Z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;KUUCHUU MIKDAZUKI KICK

;CYCLONE KICK

[state -1, a2]
type = changestate
value = 1069
triggerall = command = "MIDZUKI A"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1072
triggerall = command = "MIDZUKI B"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1074
triggerall = command = "MIDZUKI C"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]


;CYCLONE KICK

[state -1, a2]
type = changestate
value = 1060
triggerall = command = "MIDZUKI A"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1063
triggerall = command = "MIDZUKI B"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1066
triggerall = command = "MIDZUKI C"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;METEORO DO KICKÃO

[state -1, a2]
type = changestate
value = 1090
triggerall = command = "METEORO DO KICKÃO A"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1093
triggerall = command = "METEORO DO KICKÃO B"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1094
triggerall = command = "METEORO DO KICKÃO C"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

;KIAI-ZAN

[state -1, a2]
type = changestate
value = 1000
triggerall = command = "Kiaizan X"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1001
triggerall = command = "Kiaizan Y"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = changestate
value = 1002
triggerall = command = "Kiaizan Z"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,499]

;AERO

[state -1, a2]
type = changestate
value = 1450
triggerall = command = "Kiaizan X"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1460
triggerall = command = "Kiaizan Y"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = changestate
value = 1470
triggerall = command = "Kiaizan Z"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]



;RYUUSEI KICK

;CYCLONE KICK

;THROW

; “Š‚°1
[State -1, AGARRÃO DO FAUSTÃO, BEST ANIME DE 2015, VAI TOMAR NO CU]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl



;========================================================================

;Dash Forward
;Run Fwd
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = (command = "FF") && (stateno !=[100,106]) ;&& (var(2) = 0)
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
;run back
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl
trigger1 = statetype != A

;------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = Var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(59) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = Var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(59) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(59) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = Var(59) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(59) <= 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(59) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = Var(59) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Var(59) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]) && movecontact


; Push Block (Stand)
[State -1]
type = ChangeState
value = 555
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 566
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 577
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;counter strike 1
[state -1, counter]
type = changestate
value = 910
triggerall = (command = "counter") && (power >= 1000)
trigger1 = stateno = [150,153]


