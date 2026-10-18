;===========================================================================
;†††-1 states†††
;===========================================================================
[remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| default values |-------------------------------------------------------

[defaults]
command.time = 15
command.buffer.time = 1

;-| ai activation |---------------------------------------------------------
[command]
name = "ai1"
command = DF, B, DB, D, DF, F, B, D, DB, x
time = 1

[command]
name = "ai2"
command = DF, B, DB, D, DF, F, B, D, DB, y
time = 1

[command]
name = "ai3"
command = DF, B, DB, D, DF, F, B, D, DB, z
time = 1

[command]
name = "ai4"
command = DF, B, DB, D, DF, F, B, D, DB, a
time = 1

[command]
name = "ai5"
command = DF, B, DB, D, DF, F, B, D, DB, b
time = 1

[command]
name = "ai6"
command = DF, B, DB, D, DF, F, B, D, DB, c
time = 1

[command]
name = "ai7"
command = DF, B, DB, D, DF, F, B, D, DB, x+y
time = 1

[command]
name = "ai8"
command = DF, B, DB, D, DF, F, B, D, DB, y+z
time = 1

[command]
name = "ai9"
command = DF, B, DB, D, DF, F, B, D, DB, z+x
time = 1

[command]
name = "ai10"
command = DF, B, DB, D, DF, F, B, D, DB, a+b
time = 1

[command]
name = "ai11"
command = DF, B, DB, D, DF, F, B, D, DB, b+c
time = 1

[command]
name = "ai12"
command = DF, B, DB, D, DF, F, B, D, DB, c+a
time = 1

[command]
name = "ai13"
command = DF, B, DB, D, DF, F, B, D, DB, x+a
time = 1

[command]
name = "ai14"
command = DF, B, DB, D, DF, F, B, D, DB, x+b
time = 1

[command]
name = "ai15"
command = DF, B, DB, D, DF, F, B, D, DB, x+c
time = 1

[command]
name = "ai16"
command = DF, B, DB, D, DF, F, B, D, DB, y+a
time = 1

[command]
name = "ai17"
command = DF, B, DB, D, DF, F, B, D, DB, y+b
time = 1

[command]
name = "ai18"
command = DF, B, DB, D, DF, F, B, D, DB, y+c
time = 1

[command]
name = "ai19"
command = DF, B, DB, D, DF, F, B, D, DB, z+a
time = 1

[command]
name = "ai20"
command = DF, B, DB, D, DF, F, B, D, DB, z+b
time = 1

[command]
name = "ai21"
command = DF, B, DB, D, DF, F, B, D, DB, z+c
time = 1

[command]
name = "ai22"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+z
time = 1

[command]
name = "ai23"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+a
time = 1

[command]
name = "ai24"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+b
time = 1

[command]
name = "ai25"
command = DF, B, DB, D, DF, F, B, D, DB, x+y+c
time = 1

[command]
name = "ai26"
command = DF, B, DB, D, DF, F, B, D, DB, x+a+z
time = 1

[command]
name = "ai27"
command = DF, B, DB, D, DF, F, B, D, DB, x+b+z
time = 1

[command]
name = "ai28"
command = DF, B, DB, D, DF, F, B, D, DB, x+c+z
time = 1

[command]
name = "ai29"
command = DF, B, DB, D, DF, F, B, D, DB, a+y+z
time = 1

[command]
name = "ai30"
command = DF, B, DB, D, DF, F, B, D, DB, b+y+z
time = 1

[command]
name = "ai31"
command = DF, B, DB, D, DF, F, B, D, DB, c+y+z
time = 1

[command]
name = "ai32"
command = DF, B, DB, D, DF, F, B, D, DB, a+b+c
time = 1

;-| hyper motions |--------------------------------------------------------

[command]
name = "supper"
command = U, U, s
time = 90

[command]
name = "loagaeth"
command = ~D, DF, F, DF, D, DB, B, x
time = 60

[command]
name = "loagaeth"
command = ~D, DF, F, DF, D, DB, B, y
time = 60

[command]
name = "loagaeth"
command = ~D, DF, F, DF, D, DB, B, z
time = 60

[command]
name = "d-e-m"
command = ~F, B, DB, D, DF, F, x
time = 60

[command]
name = "d-e-m"
command = ~F, B, DB, D, DF, F, y
time = 60

[command]
name = "d-e-m"
command = ~F, B, DB, D, DF, F, z
time = 60

[command]
name = "c-sword"
command = ~D, DF, F, D, DF, F, x
time = 30

[command]
name = "c-sword"
command = ~D, DF, F, D, DF, F, y
time = 30

[command]
name = "c-sword"
command = ~D, DF, F, D, DF, F, z
time = 30

[command]
name = "k-hazard"
command = ~D, DB, B, F, a
time = 30

[command]
name = "k-hazard"
command = ~D, DB, B, F, b
time = 30

[command]
name = "k-hazard"
command = ~D, DB, B, F, c
time = 30

[command]
name = "dirac"
command = ~D, DB, B, D, DB, B, a
time = 30

[command]
name = "dirac"
command = ~D, DB, B, D, DB, B, b
time = 30

[command]
name = "dirac"
command = ~D, DB, B, D, DB, B, c
time = 30

[command]
name = "sephirot"
command = ~D, D, s
time = 20

;-| special motions |------------------------------------------------------

[command]
name = "twinkle_pile"
command = ~F, D, DF, a

[command]
name = "twinkle_pile"
command = ~F, D, DF, b

[command]
name = "twinkle_pile"
command = ~F, D, DF, c

[command]
name = "k-call"
command = ~D, DF, F, x

[command]
name = "k-call"
command = ~D, DF, F, y

[command]
name = "k-call"
command = ~D, DF, F, z

[command]
name = "angel_ray1"
command = ~D, DB, B, x

[command]
name = "angel_ray2"
command = ~D, DB, B, y

[command]
name = "angel_ray3"
command = ~D, DB, B, z

[command]
name = "sphere1"
command = ~D, DB, B, a

[command]
name = "sphere2"
command = ~D, DB, B, b

[command]
name = "sphere3"
command = ~D, DB, B, c

[command]
name = "at_field"
command = x+y+z

;-| original command |------------------------------------------------------
[command]
name = "hold_s"
command = /s
time = 1

[command]
name = "sdown"
command = /D
time = 1

[command]
name = "sdownfwd"
command = /DF
time = 1

[command]
name = "sdownback"
command = /DB
time = 1

[command]
name = "u"
command = /U
time = 1

[command]
name = "uf"
command = /UF
time = 1

[command]
name = "ub"
command = /UB
time = 1

;-| double tap |-----------------------------------------------------------
[command]
name = "ff"     ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb"     ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

;-| dir + button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| dir |--------------------------------------------------------------
[command]
name = "fwd"
command = $F
time = 1

[command]
name = "back"
command = $B
time = 1

[command]
name = "up"
command = $U
time = 1

[command]
name = "down"
command = $D
time = 1

;-| hold dir |--------------------------------------------------------------
[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[statedef -1]
;===========================================================================
; 超必殺技
;===========================================================================
;■最後の晩餐
[state -1, the last supper]
type = changestate
value = 3900
triggerall = var(50) = 0
triggerall = command = "supper"
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [200,350]		;通常技
trigger3 = stateno = [195,199]		;挑発
trigger4 = stateno = 2000		;ATフィールド
trigger4 = pos y = 0
trigger4 = time >= 20
;---------------------------------------------------------------------------
;■キティコールハザード
[state -1, kitty call hazard]
type = changestate
value = 3500
triggerall = var(50) = 0
triggerall = command = "k-hazard"
triggerall = statetype != a
triggerall = power >= 1000
triggerall = numhelper(7000) = 0
triggerall = numhelper(7400) = 0
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ディア・ロガエス
[state -1, dia-loagaeth]
type = changestate
value = 3400
triggerall = var(50) = 0
triggerall = command = "loagaeth"
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) = 0
triggerall = command = "sephirot"
triggerall = statetype != a
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;---------------------------------------------------------------------------
;■デウス・エクス・マキナ
[state -1, deus ex machina]
type = changestate
value = 3200
triggerall = var(50) = 0
triggerall = command = "d-e-m"
triggerall = statetype != a
triggerall = power >= 2000
triggerall = numhelper(31200) < numenemy
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ディラックの海
[state -1, sea of dirac]
type = changestate
value = 3100
triggerall = var(50) = 0
triggerall = command = "dirac"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;---------------------------------------------------------------------------
;■炎の剣
[state -1, sword of cherubim]
type = changestate
value = 3000
triggerall = var(50) = 0
triggerall = command = "c-sword"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = movecontact
;===========================================================================
; 必殺技
;===========================================================================
;■ＡＴフィールド
[state -1, at field]
type = changestate
value = 2000
triggerall = var(50) = 0
triggerall = command = "at_field"
triggerall = power >= 200
trigger1 = stateno = [150,155]
;---------------------------------------------------------------------------
;■光のパイル
[state -1, twinkle pile bunker]
type = changestate
value = 1100
triggerall = var(50) = 0
triggerall = command = "twinkle_pile"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = pos y = 0
trigger2 = time >= 20
trigger3 = stateno = [200,350]
trigger3 = (stateno != 220) && (stateno != 320)
trigger3 = movecontact
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) = 0
triggerall = command = "angel_ray1" || command = "angel_ray2"  || command = "angel_ray3"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = pos y = 0
trigger2 = time >= 20
trigger3 = stateno = [200,350]
trigger3 = (stateno != 220) && (stateno != 320)
trigger3 = movecontact
;---------------------------------------------------------------------------
;■キティコールアタック
[state -1, kitty call attack]
type = changestate
value = 1200
triggerall = var(50) = 0
triggerall = command = "k-call"
triggerall = statetype != a
triggerall = numhelper(7000) = 0
triggerall = numhelper(7400) = 0
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = pos y = 0
trigger2 = time >= 20
trigger3 = stateno = [200,350]
trigger3 = (stateno != 220) && (stateno != 320)
trigger3 = movecontact
;---------------------------------------------------------------------------
;■ＧボールＰ
[state -1, shadow sphere 1]
type = changestate
value = 1300
triggerall = var(50) = 0
triggerall = command = "angel_ray1" || command = "angel_ray2"  || command = "angel_ray3"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = time >= 20
trigger3 = stateno = [400,450]
trigger3 = time >= 12
;---------------------------------------------------------------------------
;■ＧボールＫ
[state -1, shadow sphere 4]
type = changestate
value = 1330
triggerall = var(50) = 0
triggerall = command = "sphere1" || command = "sphere2"  || command = "sphere3"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = time >= 20
trigger3 = stateno = [400,450]
trigger3 = time >= 12
;===========================================================================
;†投げ技†
;===========================================================================
;■エロージョンアタック
[state -1, erosion attack]
type = changestate
value = 500
triggerall = var(50) = 0
triggerall = command = "recovery"
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;■(空中投げ)
[state -1, -------------]
type = null;changestate
value = 550
triggerall = var(50) = 0
triggerall = command = "recovery"
triggerall = statetype = a
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
;===========================================================================
;†補助動作†
;===========================================================================
;■ダッシュ
[state -1, run fwd]
type = changestate
value = 100
triggerall = var(50) = 0
triggerall = command = "ff"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = time >= 90
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) = 0
triggerall = command = "bb"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 2000
trigger2 = time >= 90
;---------------------------------------------------------------------------
;■エアジャンプ
[state -1, triple jump]
type = changestate
value = 45
triggerall = command = "up"
triggerall = var(10) > 0
triggerall = var(50) = 0
trigger1 = statetype = a
trigger1 = time >= 15
trigger1 = ctrl
;===========================================================================
; 通常技
;===========================================================================
;■立ち小パンチ
[state -1, standing jab]
type = changestate
value = 200
triggerall = var(50) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300
trigger2 = movecontact || (animelemtime(3) > 0)
;---------------------------------------------------------------------------
;■立ち中パンチ
[state -1, standing strong]
type = changestate
value = 210
triggerall = var(50) = 0
triggerall = command = "y" || command = "b"
triggerall = command != "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 210) && (stateno != 220)
trigger2 = (stateno != 240) && (stateno != 250)
trigger2 = (stateno != 310) && (stateno != 320)
trigger2 = (stateno != 340) && (stateno != 350)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち大パンチ
[state -1, standing fierce]
type = changestate
value = 220
triggerall = var(50) = 0
triggerall = command = "z"
;triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 250)
trigger2 = (stateno != 320) && (stateno != 350)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■立ち小キック
[state -1, standing short]
type = changestate
value = 230
triggerall = var(50) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact || (animelemtime(3) > 0)
trigger3 = stateno = 230
trigger3 = movecontact || (animelemtime(5) > 0)
;---------------------------------------------------------------------------
;■立ち大キック
[state -1, standing roundhouse]
type = changestate
value = 250
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 250)
trigger2 = (stateno != 320) && (stateno != 350)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■しゃがみ小パンチ
[state -1, crouching jab]
type = changestate
value = 300
triggerall = var(50) = 0
triggerall = command = "x" || command = "a"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 300
trigger2 = movecontact || (animelemtime(3) > 0)
;---------------------------------------------------------------------------
;■しゃがみ中パンチ
[state -1, crouching strong]
type = changestate
value = 310
triggerall = var(50) = 0
triggerall = command = "y" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 210) && (stateno != 220)
trigger2 = (stateno != 240) && (stateno != 250)
trigger2 = (stateno != 310) && (stateno != 320)
trigger2 = (stateno != 340) && (stateno != 350)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■しゃがみ大キック
[state -1, crouching roundhouse]
type = changestate
value = 350
triggerall = var(50) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = [200,350]
trigger2 = (stateno != 220) && (stateno != 250)
trigger2 = (stateno != 320) && (stateno != 350)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■ジャンプ小パンチ
[state -1, jumping jab]
type = changestate
value = 400
triggerall = var(50) = 0
triggerall = command = "x" || command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = moveguarded
trigger2 = time >= 6
trigger3 = stateno = 400
trigger3 = movehit
trigger3 = time >= 4
trigger4 = stateno = 400
trigger4 = animelemtime(3) > 0
;---------------------------------------------------------------------------
;■ジャンプ中パンチ
[state -1, jumping strong]
type = changestate
value = 410
triggerall = var(50) = 0
triggerall = command = "y" || command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 410) && (stateno != 420)
trigger2 = (stateno != 440) && (stateno != 450)
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = animelemtime(6) > 0
;---------------------------------------------------------------------------
;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) = 0
triggerall = command = "z" || command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = [400,450]
trigger2 = (stateno != 420) && (stateno != 450)
trigger2 = movecontact
;---------------------------------------------------------------------------
;■チャージ
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) = 0
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;===========================================================================
;†AI ACTIVATION SWITCH†
;===========================================================================
[state -1, ai]
type = helper
triggerall = numhelper(9990) = 0
triggerall = var(51) = 0
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
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
trigger19 = command = "ai19"
trigger20 = command = "ai20"
trigger21 = command = "ai21"
trigger22 = command = "ai22"
trigger23 = command = "ai23"
trigger24 = command = "ai24"
trigger25 = command = "ai25"
trigger26 = command = "ai26"
trigger27 = command = "ai27"
trigger28 = command = "ai28"
trigger29 = command = "ai29"
trigger30 = command = "ai30"
trigger31 = command = "ai31"
trigger32 = command = "ai32"
trigger33 = var(52) = 1
helpertype = normal
name = "az ai"
pos = -160,0
postype = front
facing = facing
id = 9990
stateno = 9990
pausemovetime = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 1
;===========================================================================
;†環境変数†
;===========================================================================
;■リセット
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = movetype = h
trigger2 = var(53) = 1
trigger2 = (vel y > 0)
trigger3 = var(53) = [10,14]
trigger3 = (numenemy = 1) && (enemy,statetype != a)
trigger4 = var(53) = [15,19]
trigger4 = (numenemy = 1) && ((enemy,statetype = l) || (enemy,ctrl = 1))
trigger5 = var(53) = [20,39]
trigger5 = (numenemy = 1) && (enemy,statetype != a)
trigger6 = var(53) = [40,49]
trigger6 = (stateno = 52) || ((vel y > 1) && (pos y > -10))
trigger7 = stateno = 3970
trigger8 = numenemy = 2
trigger8 = enemy,movetype != h
trigger9 = var(50) = 1
trigger9 = random <= 50*var(50);250
trigger10 = var(50) = 2
trigger10 = random <= 10*var(50);50
var(53) = 0

;■ＡＴフィールド・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 2000
var(55) = 800-100*var(50)

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(55) > 0
var(55) = -1
ignorehitpause = 1

;■無敵技インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = 3000
trigger2 = stateno = 3100
trigger3 = stateno = 3400
var(56) = 600

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(56) > 0
var(56) = -1
ignorehitpause = 1

;■挑発・インターバル
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [195,199]
var(57) = 100

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(57) > 0
var(57) = -1
ignorehitpause = 1

;■累積監視
[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = p2movetype = a
var(49) = 1

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = p2movetype != a
var(49) = 0

;■投げ無敵認識解除
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = numenemy
trigger1 = enemy,roundsexisted = 0
trigger1 = roundstate < 2
trigger2 = (stateno = 500) || (stateno = 1100)
trigger2 = movehit
var(54) = 0

;■投げはめ防止
[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [200,350]
trigger1 = p2statetype != l
trigger1 = movecontact
var(48) = 30

[state -1, varset]
type = varset
triggerall = var(50) != 0
trigger1 = stateno = [400,450]
trigger1 = p2statetype != l
trigger1 = movecontact
var(48) = 90

[state -1, varadd]
type = varadd
triggerall = var(50) != 0
trigger1 = var(48) > 0
var(48) = -1
ignorehitpause = 1

;■コマンド
[state -1, varset]
type = null
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = (stateno = 1300) || (stateno = 1330)
trigger1 = p2bodydist x < -30
trigger1 = var(7) := 1
trigger2 = p2bodydist x >= -30
trigger2 = p2bodydist x < 30
trigger2 = var(7) := 2
trigger3 = p2bodydist x >= 30
trigger3 = var(7) := 3
;===========================================================================
;†反撃動作†
;===========================================================================
;■小パンチ
[state -1, jab]
type = changestate
value = 200+(var(2)%3=0)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [-10,130]
trigger1 = prevstateno = [130,155]		;■ガードヒット監視
trigger1 = random <= 80*var(50);400
trigger2 = numhelper(30110)
trigger2 = helper(30110),time < 20		;■ＡＴフィールド監視
trigger2 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■炎の剣
[state -1, sword of cherubim]
type = changestate
value = 3000
triggerall = var(50) > 2
triggerall = var(56) = 0
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != l
triggerall = p2bodydist y > -180
triggerall = p2bodydist x = [-90,90]
trigger1 = var(49) = [16,36]			;■カウンター
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;■ディラックの海
[state -1, sea of dirac]
type = changestate
value = 3100
triggerall = var(50) > 2
triggerall = var(56) = 0
triggerall = power >= 1000
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2statetype != a
triggerall = p2bodydist x = [-240,240]
triggerall = p2bodydist x != [-90,90]
trigger1 = var(49) = [16,36]			;■カウンター
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2bodydist x > 90
trigger1 = p2statetype = a
trigger1 = numhelper(30110)
trigger1 = helper(30110),time < 20		;■ＡＴフィールド監視
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■光のパイル
[state -1, twinkle pile bunker]
type = changestate
value = 1100-(roundstate!=2)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = ctrl && roundstate = 2
triggerall = statetype != a
triggerall = p2bodydist x > 90
trigger1 = p2statetype != a
trigger1 = numhelper(30110)
trigger1 = helper(30110),time < 20		;■ＡＴフィールド監視
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■ＡＴフィールド
[state -1, at field]
type = changestate
value = 2000
triggerall = var(50) > 2
triggerall = var(55) = 0
triggerall = power >= 200
triggerall = alive && numenemy
triggerall = stateno = [150,155]
triggerall = statetype != a
triggerall = time < 10
trigger1 = random <= 80*var(50);400
ignorehitpause = 1
;===========================================================================
;†コモン動作†
;===========================================================================
;■ガード
[state -1, guard]
type = changestate
value = 120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = inguarddist
triggerall = random <= 40*var(58)*var(50)
trigger1 = enemynear,hitdefattr = sca, aa
trigger2 = enemynear,hitdefattr = sca, ap
trigger3 = enemynear,numproj || (enemynear,numhelper && p2movetype != h)
;===========================================================================
;†タッグ用エントリ†
;===========================================================================
;■援護
[state -1, assist & attack]
type = changestate
value = 3000+(p2statetype!=a)*100
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(56) = 0
triggerall = power > 1000
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = p2movetype = a
trigger1 = numpartner
trigger1 = partner,alive
trigger1 = partner,movetype = h
trigger1 = partner,stateno != 120
trigger1 = partner,statetype != l
trigger2 = numenemy = 2
trigger2 = enemy(0),alive
trigger2 = enemy(1),alive
trigger2 = ((enemy(0),pos x > pos x) && (enemy(1),pos x < pos x)) || ((enemy(0),pos x < pos x) && (enemy(1),pos x > pos x))
triggerall = random <= 60*var(50);300
;---------------------------------------------------------------------------
;■離脱
[state -1, escape]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = prevstateno != 105
trigger1 = numenemy = 2
trigger1 = enemy(0),alive
trigger1 = enemy(1),alive
trigger1 = ((enemy(0),pos x > pos x) && (enemy(1),pos x < pos x)) || ((enemy(0),pos x < pos x) && (enemy(1),pos x > pos x))
trigger1 = random <= 100*var(50);500
;===========================================================================
;†フリーエントリ†
;===========================================================================
;■チャージ
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(57) = 0
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21)
triggerall = statetype != a
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = !inguarddist
triggerall = enemy,movetype != a
triggerall = enemynear,numproj = 0
triggerall = enemynear,vel x < 3
trigger1 = enemy,statetype != a
trigger1 = p2bodydist x > 200
trigger2 = p2stateno = [5025,5050]
triggerall = random <= 40*var(50);200

[state -1, taunt end]
type = changestate
value = 199
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = stateno = 195
triggerall = ctrl
triggerall = statetype != a
trigger1 = enemy,movetype = a
trigger2 = enemynear,numproj != 0
;---------------------------------------------------------------------------
;■小パンチ
[state -1, jab]
type = changestate
value = 200
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0				;■デバッガ
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = statetype != a
triggerall = roundstate = 2
trigger1 = (p2statetype = s || p2statetype = c) 
trigger1 = (p2bodydist x = [-60,140]) && (p2movetype != a)
trigger1 = p2movetype != a
trigger1 = random <= ((p2movetype=h)*120*var(50))+30*var(50);350+150
;---------------------------------------------------------------------------
;■エロージョンアタック
[state -1, erosion attack]
type = changestate
value = 500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(54) <= 5				;■投げ耐性のある相手はパス
triggerall = var(48) = 0				;■禁止ラグをクリア
triggerall = var(59) = 0				;■デバッガ
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = numtarget = 0
triggerall = enemynear,ctrl
triggerall = (p2bodydist x = [0,165]) && (p2movetype != a)
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = (p2statetype = s || p2statetype = c)
trigger1 = random <= 10*var(50);50
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0				;■デバッガ
triggerall = alive && numenemy
triggerall = (roundstate = 2) || (prevstateno != 1000)
triggerall = statetype != a
triggerall = p2statetype != l				;■ダウン追い討ちは狙わない
triggerall = (p2movetype = h) || (p2bodydist x > 140)
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = random <= (10+(p2statetype=a)*10+(p2movetype=h)*10)*var(50);150
;---------------------------------------------------------------------------
;■光のパイル
[state -1, twinkle pile bunker]
type = changestate
value = 1100-(roundstate!=2)*100
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0				;■デバッガ
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = s
triggerall = (p2movetype != a) || (p2bodydist x > 140)
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = prevstateno != 1100
trigger1 = random <= 10*var(50);50
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
triggerall = var(0) = 0
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = prevstateno != [3000,3999]
trigger1 = life < lifemax/2
trigger1 = p2statetype = l
trigger1 = random <= 10*var(50);50
trigger2 = life != lifemax
trigger2 = roundstate > 2
trigger2 = !matchover
trigger2 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;■ディア・ロガエス
[state -1, dia-loagaeth]
type = changestate
value = 3400
triggerall = var(50) > 2
triggerall = var(53) = 0
triggerall = var(56) = 0				;■カウンター扱い
triggerall = power >= 3000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21)
triggerall = roundstate = 2
trigger1 = p2statetype = a
trigger1 = p2bodydist y < -300
trigger1 = prevstateno != [3000,3999]
trigger1 = random <= 5*var(50);25
trigger2 = numpartner					;■タッグ用
trigger2 = partner,movetype = h
trigger2 = random <= 20*var(50);100
;===========================================================================
;†ＡＴフィールドコンビネーション†
;===========================================================================
;地上
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = pos y = 0	;◆
triggerall = stateno = 2000
trigger1 = time = [20,30]
trigger1 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;■光のパイル
[state -1, twinkle pile bunker]
type = changestate
value = 1100-(roundstate!=2)*100
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = pos y = 0	;◆
triggerall = stateno = 2000
trigger1 = p2statetype != a
trigger1 = time = [20,30]
trigger1 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;空中
;---------------------------------------------------------------------------
;■Ｇボール
[state -1, shadow sphere]
type = changestate
value = 1300+(random<500)*30
triggerall = var(50) > 2
triggerall = alive && numenemy
triggerall = pos y != 0	;◆
triggerall = stateno = 2000
trigger1 = time = [20,30]
trigger1 = random <= 20*var(50);100
;===========================================================================
;†炎の剣コンビネーション†
;===========================================================================
;■モード
[state -1, varset]
type = varset
triggerall = var(50) > 2
trigger1 = stateno = 3000
trigger1 = enemynear,movetype = h
var(53) = 10+(power>3000)*1
;---------------------------------------------------------------------------
;モード１
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 10
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
trigger1 = random <= 120*var(50);600
;---------------------------------------------------------------------------
;モード２
;---------------------------------------------------------------------------
;■最後の晩餐
[state -1, the last supper]
type = changestate
value = 3900
triggerall = var(50) != 0
triggerall = var(53) = 11
triggerall = power >= 3000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2bodydist y < -60
trigger1 = p2bodydist x = [-60,60]
trigger1 = random <= (var(50)=5)*450+90*var(50);900
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 11
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
trigger1 = power < 3000				;■サイマルモード環境
trigger1 = random <= 120*var(50);600
;===========================================================================
;†ディラックの海コンビネーション†
;===========================================================================
;■モード
[state -1, varset]
type = varset
triggerall = var(50) > 2
triggerall = var(53) = 0
trigger1 = stateno = 3100
trigger1 = movehit
var(53) = 15+(power>3000)*1
;---------------------------------------------------------------------------
;モード１
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 15
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = prevstateno != [3000,3999]
trigger1 = life < lifemax/2
trigger1 = var(0) = 0
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■チャージ
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) != 0
triggerall = var(53) = 15
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 15
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl && (stateno != [195,199])
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;モード２
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 16
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21)
triggerall = stateno != [100,101]
triggerall = statetype != a
trigger1 = p2bodydist x > 200
trigger1 = random <= 180*var(50);900
;---------------------------------------------------------------------------
;■最後の晩餐
[state -1, the last supper]
type = changestate
value = 3900
triggerall = var(50) != 0
triggerall = var(53) = 16
triggerall = power >= 3000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2bodydist x = [-160,160]
trigger1 = random <= (var(50)=5)*450+90*var(50);900
;===========================================================================
;†エンジェルレイコンビネーション†
;===========================================================================
;■モード
[state -1, varset]
type = varset
triggerall = var(50) > 2
triggerall = var(53) = 0
trigger1 = stateno = 1000
trigger1 = var(8) = 1
var(53) = 20+(power>3000)*1
;---------------------------------------------------------------------------
;モード１
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = prevstateno != [3000,3999]
trigger1 = life < lifemax/2
trigger1 = var(0) = 0
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■チャージ
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 20
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl && (stateno != [195,199])
trigger1 = random <= 120*var(50);600
;---------------------------------------------------------------------------
;モード２
;---------------------------------------------------------------------------
;■最後の晩餐
[state -1, the last supper]
type = changestate
value = 3900
triggerall = var(50) != 0
triggerall = var(53) = 21
triggerall = power >= 3000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2bodydist y > -340
trigger1 = (p2bodydist x = [-60,80]) || (frontedgedist < 30)
triggerall = random <= 180*var(50);900
;---------------------------------------------------------------------------
;■ディア・ロガエス
[state -1, dia-loagaeth]
type = changestate
value = 3400
triggerall = var(50) != 0
triggerall = var(53) = 21
triggerall = power >= 6000
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21)
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = prevstateno != 3400
triggerall = roundstate = 2
trigger1 = time = [0,10]
trigger1 = random <= (var(50)=5)*450+90*var(50);900
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = 21
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21)
triggerall = stateno != [100,101]
triggerall = statetype != a
trigger1 = p2bodydist x > -50
trigger1 = random <= 180*var(50);900
;---------------------------------------------------------------------------
;■ターン
[state -1, turn]
type = turn
triggerall = var(50) != 0
triggerall = var(53) = 21
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = p2bodydist x < -100
;===========================================================================
;†光のパイルコンビネーション†
;===========================================================================
;■モード
[state -1, varset]
type = varset
triggerall = var(50) > 2
trigger1 = stateno = 1102
trigger1 = animelemtime(23) > 0
var(53) = 30+((frontedgedist<270)&&(power<3000))*1+((frontedgedist<270)&&(power>=3000))*2
;---------------------------------------------------------------------------
;遠距離
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl && (stateno != [195,199])
trigger1 = (fvar(2) = 1.0) || (power < 2000)  || (prevstateno = 3200) || (numhelper(31200) = numenemy);エンジェルレイ初弾、または機械神がリミット
trigger1 = random <= (20+(p2statetype!=s)*160)*var(50);900
;---------------------------------------------------------------------------
;■チャージ
[state -1, taunt]
type = changestate
value = 195
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl
triggerall = prevstateno != 220
triggerall = prevstateno != 3200
trigger1 = fvar(2) = 0.8
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■大パンチ
[state -1, fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = ctrl && (stateno != [195,199])
triggerall = prevstateno != 220
triggerall = prevstateno != 3200
trigger1 = fvar(2) = 0.8
trigger1 = power >= 2000
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = prevstateno != [3000,3999]
trigger1 = stateno = 220
trigger1 = movehit = [5,15]
trigger1 = life < lifemax/2
trigger1 = var(0) = 0
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■キティコールハザード
[state -1, kitty call hazard]
type = changestate
value = 3500
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = power >= 1000
triggerall = numhelper(7000) = 0
triggerall = numhelper(7400) = 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = p2statetype = a
trigger1 = life > lifemax/2
trigger1 = stateno = 220
trigger1 = movehit = [5,10]
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■デウス・エクス・マキナ
[state -1, deus ex machina]
type = changestate
value = 3200
triggerall = var(50) != 0
triggerall = var(53) = 30
triggerall = numhelper(31200) < numenemy
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = p2statetype = a
trigger1 = stateno = 220
trigger1 = movehit = [5+(roundstate>2)*15,10+(roundstate>2)*15]
trigger1 = random <= 120*var(50);600
;---------------------------------------------------------------------------
;近距離
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = var(53) = [31,32]
triggerall = alive && numenemy
triggerall = ctrl || (stateno = 21)
triggerall = stateno != [100,101]
triggerall = statetype != a
trigger1 = frontedgedist > 150
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;■待機
[state -1, stand]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = var(53) = [31,32]
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = stateno = 101
trigger1 = frontedgedist < 90
ctrl = 1
;---------------------------------------------------------------------------
;■中パンチ
[state -1, strong]
type = changestate
value = 210
triggerall = var(50) != 0
triggerall = var(53) = [31,32]
triggerall = roundstate = 2
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = (var(53) = 31) || (p2bodydist y > -120)
trigger1 = frontedgedist < 160+(var(53)=31)*20
trigger1 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 31
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = stateno = 210
trigger1 = movehit
trigger1 = random <= 160*var(50);800
trigger2 = ctrl || (stateno = 21) || (stateno = 101)
trigger2 = (fvar(2) < 0.8) || (roundstate != 2)
trigger2 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;■大パンチ
[state -1, fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = var(53) = 32
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = stateno = 210
trigger1 = movehit > 5+(roundstate>2)*15
trigger1 = random <= 160*var(50);800
trigger2 = roundstate > 2
trigger2 = ctrl || (stateno = 21) || (stateno = 101)
trigger2 = p2bodydist y > -150
trigger2 = frontedgedist < 160
trigger2 = random <= 160*var(50);800
;---------------------------------------------------------------------------
;■最後の晩餐
[state -1, the last supper]
type = changestate
value = 3900
triggerall = var(50) != 0
triggerall = var(53) = 32
triggerall = power >= 3000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = frontedgedist < 120		;■サイマルモード環境
trigger1 = stateno = 220
trigger1 = movehit = [1,5]
trigger1 = random <= 180*var(50);900
;---------------------------------------------------------------------------
;■デウス・エクス・マキナ
[state -1, deus ex machina]
type = changestate
value = 3200
triggerall = var(50) != 0
triggerall = var(53) = 32
triggerall = numhelper(31200) < numenemy
triggerall = power = [2000,2999]		;■サイマルモード環境
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = stateno = 220
trigger1 = movehit = [5+(roundstate>2)*15,10+(roundstate>2)*15]
trigger1 = random <= 30*var(50);150
;===========================================================================
;†ジャンプコンビネーション†
;===========================================================================
;■ジャンプ
[state -1, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = var(59) = 0				;■デバッガ
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = roundstate = 2
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [0,100]
trigger1 = var(53) := 40
triggerall = random <= (10+(p2stateno=5120)*20)*var(50);50

;■ジャンプ大パンチ
[state -1, jumping fierce]
type = changestate
value = 420
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = var(10) = 2					;■1stジャンプ
trigger1 = p2movetype != a
trigger1 = p2bodydist x = [-100,100]
trigger1 = pos y < -170
triggerall = random <= 100*var(50);500

;■ＧボールＰ
[state -1, shadow sphere 1]
type = changestate
value = 1300
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = var(10) = 2					;■1stジャンプ
trigger1 = p2statetype = a
trigger1 = p2movetype = a
trigger1 = pos y < -160
triggerall = random <= 100*var(50);500

;■ＧボールＫ
[state -1, shadow sphere 4]
type = changestate
value = 1330
triggerall = var(50) != 0
triggerall = var(53) = 40
triggerall = alive && numenemy
triggerall = statetype = a
triggerall = ctrl
trigger1 = var(10) = 2					;■1stジャンプ
trigger1 = p2statetype != a
trigger1 = p2movetype = a
trigger1 = pos y < -160
triggerall = random <= 100*var(50);500
;===========================================================================
;†地上コンボ†
;===========================================================================
;■小キック（フォロー）
[state -1, short]
type = changestate
value = 230
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x = [-10,60]
trigger1 = stateno = 200 || stateno = 300
trigger1 = moveguarded = [1,10]
trigger1 = p2statetype = s 
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;■小パンチ
[state -1, jab]
type = changestate
value = 200+(statetype=c)*100
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x = [-10,100]
trigger1 = stateno = 200 || stateno = 300
trigger1 = movecontact = [1,10]
trigger1 = p2statetype = s || p2statetype = c 
trigger1 = random <= (160-((p2bodydist x>60)&&(moveguarded))*80)*var(50);800
;---------------------------------------------------------------------------
;■中パンチ
[state -1, strong]
type = changestate
value = 210+(moveguarded&&(random<200))*100
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = (p2bodydist x = [100-(moveguarded)*30,160]) || (stateno = 230)
trigger1 = (stateno = 200) || (stateno = 230) || (stateno = 300)
trigger1 = movecontact = [1,10]
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;■光のパイル
[state -1, twinkle pile bunker]
type = changestate
value = 1100-(roundstate!=2)*100
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 90
triggerall = var(54) <= 5			;■投げ耐性のある相手はパス
trigger1 = (stateno = [200,350]) && (stateno != 220) && (stateno != 250) && (stateno != 350)
trigger1 = movecontact
trigger1 = random <= (20+(p2statetype=s)*40)*var(50);300
trigger2 = (stateno = 250) || (stateno = 350)
trigger2 = moveguarded > 10
trigger2 = random <= 60*var(50);300
;---------------------------------------------------------------------------
;■キティコールアタック
[state -1, kitty call attack]
type = changestate
value = 1200
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 90
trigger1 = (stateno = 250) || (stateno = 350)
trigger1 = movecontact
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;■キティコールハザード
[state -1, kitty call hazard]
type = changestate
value = 3500
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = power >= 3000			;■余裕があるとき
triggerall = numhelper(7000) = 0
triggerall = numhelper(7400) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 90
trigger1 = life > lifemax/2
trigger1 = (stateno = 250) || (stateno = 350)
trigger1 = movecontact
trigger1 = random <= 30*var(50);150
;---------------------------------------------------------------------------
;■エンジェルレイ
[state -1, angel ray]
type = changestate
value = 1000
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 90
trigger1 = (stateno = 200) || (stateno = 300) || (stateno = 210) || ((stateno = 310) && (animelemtime(5)>0))
trigger1 = movecontact
trigger1 = random <= (20+(p2statetype!=s)*40)*var(50);300
trigger2 = (stateno = 250) || (stateno = 350)
trigger2 = movehit
trigger2 = random <= (20+(p2statetype!=s)*40)*var(50);300
;---------------------------------------------------------------------------
;■立ち大キック
[state -1, standing roundhouse]
type = changestate
value = 250-(roundstate!=2)*30
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 100
trigger1 = (stateno = 210) || ((stateno = 310) && (animelemtime(5)>0))
trigger1 = movecontact
trigger1 = random <= 100*var(50);500
;---------------------------------------------------------------------------
;■しゃがみ大キック
[state -1, crouching roundhouse]
type = changestate
value = 350-(roundstate!=2)*130
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2bodydist x > 100
trigger1 = (stateno = 210) || ((stateno = 310) && (animelemtime(5)>0))
trigger1 = moveguarded
trigger1 = random <= (20+(p2statetype=s)*40)*var(50);300
;---------------------------------------------------------------------------
;■大パンチ
[state -1, fierce]
type = changestate
value = 220
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = stateno = 210 || ((stateno = 310) && (animelemtime(5)>0))
trigger1 = movehit = [1,10]
trigger1 = random <= (50+(power<2000)*100)*var(50);750
trigger2 = stateno = 210
trigger2 = moveguarded
trigger2 = random <= 10*var(50);50
;---------------------------------------------------------------------------
;■生命の樹
[state -1, sephirothic tree]
type = changestate
value = 3300
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
triggerall = stateno != [195,199]
triggerall = prevstateno != [195,199]
triggerall = prevstateno != [3000,3999]
trigger1 = (stateno = 220) || (stateno = 350) || (stateno = 350)
trigger1 = movehit > 5
trigger1 = life < lifemax/2
trigger1 = var(0) = 0
trigger1 = random <= 40*var(50);200
;---------------------------------------------------------------------------
;■デウス・エクス・マキナ
[state -1, deus ex machina]
type = changestate
value = 3200
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = numhelper(31200) < numenemy
triggerall = power >= 2000
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = p2statetype = a
trigger1 = (stateno = 250) || (stateno = 350)
trigger1 = movehit = [1+(roundstate>2)*10,5+(roundstate>2)*10]
trigger2 = stateno = 220
trigger2 = movehit = [5+(roundstate>2)*15,10+(roundstate>2)*15]
triggerall = random <= 80*var(50);400
;===========================================================================
;†コモン動作†
;===========================================================================
;■ジャンプ
[state -3, jump]
type = changestate
value = 41
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
trigger1 = p2statetype != a			;■回避ジャンプ
trigger1 = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = enemynear,hitdefattr = sca, at
trigger1 = random <= 40*var(50);200
trigger1 = var(53) := 1
;---------------------------------------------------------------------------
;■起き上がり
[state -1, hit_getup]
type = changestate
value = 5120
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = roundstate = 2
triggerall = statetype = l
triggerall = stateno = 5110
triggerall = hitover
trigger1 = time > 20
trigger1 = random <= 50*var(50);250
;---------------------------------------------------------------------------
;■歩行
[state -1, walk]
type = changestate
value = 21
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = anim != [100,105]
triggerall = prevstateno != 21
triggerall = stateno != [195,199]		;■AIは挑発からちょくで移行しない
trigger1 = var(53) = 0
trigger1 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;■ニュートラル
[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = stateno = 21
trigger1 = time > 90+(roundstate=2)*120
trigger2 = p2dist x < 100
trigger3 = roundstate != 2
triggerall = random <= 50*var(50);250
ctrl = 1
;---------------------------------------------------------------------------
;■ダッシュ(ai)
[state -1, run fwd]
type = changestate
value = 101
triggerall = var(50) != 0
triggerall = alive && numenemy
triggerall = ctrl || ((stateno = 21) && (anim = 21) && (time > 200))
triggerall = roundstate = 2
triggerall = statetype != a
triggerall = stateno != [100,101]
triggerall = stateno != [195,199]		;■AIは挑発からちょくで移行しない
trigger1 = var(53) = 0
trigger1 = p2bodydist x > 100
trigger1 = p2movetype != a
trigger1 = random <= 5*var(50);25
;---------------------------------------------------------------------------
;■バックステップ
[state -1, step back]
type = changestate
value = 105
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive && numenemy
triggerall = statetype != a
triggerall = ctrl || (stateno = 21) || (stateno = 101)
trigger1 = p2dist x = [-60,60]
trigger1 = p2movetype = a
trigger1 = random <= (5+(stateno=101)*5)*var(50);25/50
trigger2 = p2dist x = [-60,60]
trigger2 = p2stateno = 5120
trigger2 = random <= 60*var(50);300
trigger3 = time > 180
trigger3 = random <= 20*var(50);100
;---------------------------------------------------------------------------
;■ブレーキ
[state -1, brake]
type = changestate
value = 0
triggerall = var(50) != 0
triggerall = var(53) = 0
triggerall = alive
triggerall = statetype != a
triggerall = prevstateno != 0
triggerall = (stateno = 21) || (stateno = 101)
trigger1 = time > 90+(roundstate=2)*120
trigger2 = p2dist x < 0
trigger3 = roundstate != 2
triggerall = random <= 50*var(50);250
ctrl = 1
