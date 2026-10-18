
;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 18

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 3

;-| CPUアルゴリズム用コマンド |------------------------------
;CPUアルゴリズムを使う際に便利な記述です。
;AIを使わないなら必要ありません。
;これらのコマンドは人間には入力できないものにする必要があります。

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpuA"
command = y,U,D,B,F,B,F,D,U,z
time = 1
[Command]
name = "cpuB"
command = z,U,D,B,F,F,B,D,U,s
time = 1
[Command]
name = "cpuC"
command = U,D,F,F,B,B,D,U,a+x
time = 1
[Command]
name = "cpuD"
command = U,D,F,B,F,B,D,U,b+y
time = 1
[Command]
name = "cpuE"
command = U,D,B,F,B,F,D,U,c+z
time = 1
[Command]
name = "cpuF"
command = U,D,s,B,F,F,B,s,D,U
time = 1

[Command] ;同じコマンド名を使えば後が楽になる
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U,s
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D,s
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B,s
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F,s
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a,s
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b,s
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c,s
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x,s
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y,s
time = 1
[Command]
name = "cpuA"
command = y,U,D,B,F,B,F,D,U,z,s
time = 1
[Command]
name = "cpuB"
command = z,U,D,B,F,F,B,D,U,s,z
time = 1
[Command]
name = "cpuC"
command = U,D,F,F,B,B,D,U,a+x,s
time = 1
[Command]
name = "cpuD"
command = U,D,F,B,F,B,D,U,b+y,s
time = 1
[Command]
name = "cpuE"
command = U,D,B,F,B,F,D,U,c+z,s
time = 1
[Command]
name = "cpuF"
command = U,D,s,B,F,F,B,s,D,U,z
time = 1


;------------------------------------------------------------------------------
;-| 超必殺技 |----------
[Command]
name = "thunder1"
command = ~D,F,D,F,x
time = 29

[Command]
name = "thunder2"
command = ~D,F,D,F,y
time = 29

[Command]
name = "thunder3"
command = ~D,F,D,F,b
time = 29

[Command]
name = "rengoku"
command = ~D,B,D,B,x
time = 29

[Command]
name = "hikari"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "hikari"
command = ~D,DF,F,y+b
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "hadou1"
command = ~D,F,y

[Command]
name = "hadou2"
command = ~D,F,b

[Command]
name = "anten1"
command = ~F,D,DF,y

[Command]
name = "anten2"
command = ~F,D,DF,b

[Command]
name = "ido1"
command = ~D,F,a

[Command]
name = "ido2"
command = ~D,B,a

[Command]
name = "atemi"
command = ~D,B,x


[Command]
name = "kekkai"
command = ~D,B,y

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+y
time = 2

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+a
time = 2

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a+b
time = 2



;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

;---------------------------
;(パワー溜めステート用にコマンドを追加しています)
[Command]
name = "hold_c"
command = /c

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1


;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[1]
[State -1, thunder]
type = ChangeState
value = 6000
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "thunder1"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 235 && movecontact
trigger10 = StateNo = 430 && movecontact
trigger11 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[2]
[State -1, thunder]
type = ChangeState
value = 6001
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "thunder2"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 235 && movecontact
trigger10 = StateNo = 430 && movecontact
trigger11 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[3]
[State -1, thunder]
type = ChangeState
value = 6002
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "thunder3"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 235 && movecontact
trigger10 = StateNo = 430 && movecontact
trigger11 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;煉獄の炎
[State -1, thunder]
type = ChangeState
value = 6100
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "rengoku"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;裁きの光
[State -1, thunder]
type = ChangeState
value = 6200
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "hikari"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;弱 暗転入滅せよ(空中)
[State -1, thunder]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "anten1"
trigger1 = ctrl
trigger2 = StateNo = 600 && animelemtime(3) > 0
trigger3 = StateNo = 610 && animelemtime(3) > 0
trigger4 = StateNo = 620 && animelemtime(3) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
;強 暗転入滅せよ(空中)
[State -1, thunder]
type = ChangeState
value = 1202
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "anten2"
trigger1 = ctrl
trigger2 = StateNo = 600 && animelemtime(3) > 0
trigger3 = StateNo = 610 && animelemtime(3) > 0
trigger4 = StateNo = 620 && animelemtime(3) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
;暗転入滅せよ(地上)
[State -1, thunder]
type = ChangeState
value = 1205
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall =( command = "anten1" )|| (command = "anten2")
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0


;---------------------------------------------------------------------------
;弱 冥府魔障弾
[State -1, thunder]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "hadou1"
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0


;---------------------------------------------------------------------------
;強 冥府魔障弾
[State -1, thunder]
type = ChangeState
value = 1005
triggerall = !var(59)
triggerall = numproj = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "hadou2"
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;瞬間移動[前]
[State -1, thunder]
type = ChangeState
value = 1100
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "ido1"
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;瞬間移動[後]
[State -1, thunder]
type = ChangeState
value = 1101
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "ido2"
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;結界
[State -1, thunder]
type = ChangeState
value = 1300
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "c" || command = "kekkai"
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = stateno = 205 && animelemtime(3) > 0
trigger6 = stateno = 210 && animelemtime(4) > 0
trigger7 = stateno = 225 && animelemtime(6) > 0
trigger8 = stateno = 400 && animelemtime(3) > 0
trigger9 = stateno = 410 && animelemtime(3) > 0
trigger10 = stateno = 420 && animelemtime(4) > 0
trigger11 = StateNo = 405 && movecontact
trigger12 = StateNo = 415 && movecontact
trigger13 = StateNo = 425 && movecontact
trigger14 = StateNo = 230 && movecontact
trigger15 = StateNo = 235 && movecontact
trigger16 = StateNo = 430 && movecontact
trigger17 = StateNo = 435 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;結界[空中]
[State -1, thunder]
type = ChangeState
value = 1305
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = command = "c" || command = "kekkai"
trigger1 = ctrl
trigger1 = stateno != 1305
trigger2 = StateNo = 600 && animelemtime(3) > 0
trigger3 = StateNo = 610 && animelemtime(3) > 0
trigger4 = StateNo = 620 && animelemtime(3) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
;atemi
[State -1, thunder]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = command = "atemi"
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 235 && movecontact
trigger10 = StateNo = 430 && movecontact
trigger11 = StateNo = 435 && movecontact
ignorehitpause = 0
;------------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = !var(59)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = (-2,10) ;負の方向にも制限を付けないと…
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X = (-2,10) ;相手の後ろに回った後も投げが出せてしまう
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
;回避
[State -1, taunt]
type = ChangeState
value = 11111
trigger1 = command = "x" && command = "a"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
;triggerall = P2BodyDist X <= 20
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
;trigger3 = stateno = 200 && time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
;triggerall = P2BodyDist X > 20
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1, Taunt]
type = ChangeState
value = 215
;triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X > 20
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
;triggerall = P2BodyDist X <= 24
trigger1 = P2BodyDist X <= 24
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 225
;triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X > 24
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;立ちキック
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 && time > 6
ignorehitpause = 0


;---------------------------------------------------------------------------
;立ち強キック
[State -1, Taunt]
type = ChangeState
value = 235
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 430 && movecontact
ignorehitpause = 0


;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Taunt]
type = ChangeState
value = 400
;triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X >= 21
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;しゃがみ弱パンチ[近距離]
[State -1, Taunt]
type = ChangeState
value = 405
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1, Taunt]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X >= 21
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ中パンチ[近距離]
[State -1, Taunt]
type = ChangeState
value = 415
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X <= 20
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Taunt]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X >= 25
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ強パンチ[近距離]
[State -1, Taunt]
type = ChangeState
value = 425
triggerall = !var(59)
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = P2BodyDist X <= 24
trigger1 = ctrl
trigger2 = helper(3000), stateno != 3000
trigger2 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Taunt]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time > 5
ignorehitpause = 0
;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Taunt]
type = ChangeState
value = 435
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && movecontact
trigger3 = StateNo = 215 && movecontact
trigger4 = StateNo = 220 && movecontact
trigger5 = StateNo = 405 && movecontact
trigger6 = StateNo = 415 && movecontact
trigger7 = StateNo = 425 && movecontact
trigger8 = StateNo = 230 && movecontact
trigger9 = StateNo = 430 && movecontact
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Taunt]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1, Taunt]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
ignorehitpause = 0
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, Taunt]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
;ジャンプキック
[State -1, Taunt]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = stateno != 105
trigger1 = ctrl
ignorehitpause = 0
;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;------------------------------------------------------------------------------
;挑発
[State -1, taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;-----------------------------------------------------------------------
;AI(on)
[State -1, on]
type     = VarSet
triggerall = var(59) = 0  ;要するにOFFの時が含まれていれば良い
trigger1 = (command="cpu1")||(command="cpu2")
trigger2 = (command="cpu3")||(command="cpu4")
trigger3 = (command="cpu5")||(command="cpu6")
trigger4 = (command="cpu7")||(command="cpu8")
trigger5 = (command="cpu9")||(command="cpuA")
trigger6 = (command="cpuB")||(command="cpuC")
trigger7 = (command="cpuD")||(command="cpuE")
trigger8 = (command="cpuF");||(command="start");デバッグ用
var(59)  = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;Random Mode Change   ;var=↓
[State -1, Random_AIvar]  ; 0 ～ = 防御 (例)
type     = VarRandom      ;20 ～ = 移動
triggerall = var(59) = 1
trigger1 = 1;Time = 1       ;40 ～ = 自由
v     = 58                ;60 ～ = 超必
range = 0,99              ;80 ～ = 特殊

;ガード---------------------------------
;立ちガード
[State -1]
Type = ChangeState
Value = 130
TriggerAll = Var(59) = 1
TriggerAll = StateType != A
triggerall = movetype != H
;triggerall = movetype != A
Triggerall = Ctrl
Trigger1 = P2StateType != C
Trigger1 = EnemyNear,HitDefAttr != SCA,NT,ST,HT ;投げ属性以外の攻撃にのみ
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,70]
trigger1  = var(58) = [0,59]  
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0     ;相手が出したHelperまたはProjが一個以上あるとき
Trigger2 = EnemyNear,MoveType = A                       ;その飛び道具が攻撃状態のとき
Trigger2 = Ctrl                                   ;自分がガード可能なとき
Trigger2 = EnemyNear,HitDefAttr = SCA,NP,SP,HP,NA,SA,HA  ;投げ属性以外の攻撃にのみ 
;Trigger2 = P2BodyDist X = [-50,50]
Trigger2 = var(58) = [0,59]


;しゃがみガード
[State -1]
Type = ChangeState
Value = 131
TriggerAll = Var(59) = 1
TriggerAll = StateType != A
triggerall = movetype != H
;triggerall = movetype != A
Triggerall = Ctrl
Trigger1 = P2StateType = C
Trigger1 = EnemyNear,HitDefAttr != SCA,NT,ST,HT ;投げ属性以外の攻撃にのみ
Trigger1 = P2MoveType = A 
Trigger1 = P2BodyDist X = [0,80]
Trigger1 = var(58) = [0,59]
trigger2 = EnemyNear,StateType != L
trigger2 = Enemy, NumProj >= 1
trigger2 = P2BodyDist X >= 70
trigger2 = var(58) = [0,29]

[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = p2movetype = A          ;相手が攻撃中
triggerall = statetype = A           ;自分が空中
triggerall = var(59) = 1             ;CPU時
triggerall = ctrl                    ;自由に動けるとき
;triggerall = stateno != [190,194]    ;いろいろとバグ対策などを施しておきましょう(例)
trigger1   = P2BodyDist X = [40,80]  ;遠距離用
trigger1   = var(58) = [0,59]     
trigger2   = P2BodyDist X = [-20,39] ;近距離用(背後も含めている)
trigger2   = var(58) = [0,79]        
trigger3 = Enemy, NumProj >= 1
trigger3 = P2BodyDist X >= 20
trigger3 = var(58) = [0,59]
;------------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;裁きの光
[State -1, light]
type = ChangeState
value = 6200
triggerall = var(59) = 1
triggerall = power >= 2000
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2BodyDist Y = [-80,2]
trigger1 = ctrl
trigger1 = random = [0,500]
trigger1 = var(58) = [0,99]
trigger1   = P2BodyDist X = [0,70]
trigger1   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger2 = var(58) = [0,69]
trigger2 = (StateNo =[200,435]) && movehit
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger3   = P2BodyDist X = [0,70]
trigger3   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger3   = var(58) = [0,59]
trigger4 = stateno = 210 && animelemtime(4) > 0
trigger4   = P2BodyDist X = [0,70]
trigger4   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger4   = var(58) = [0,59]
trigger5 = stateno = 225 && animelemtime(6) > 0
trigger5   = P2BodyDist X = [0,70]
trigger5   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger5   = var(58) = [0,59]
trigger6 = stateno = 400 && animelemtime(3) > 0
trigger6   = P2BodyDist X = [0,70]
trigger6   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger6   = var(58) = [0,59]
trigger7 = stateno = 410 && animelemtime(3) > 0
trigger7   = P2BodyDist X = [0,70]
trigger7   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger7   = var(58) = [0,59]
trigger8 = stateno = 420 && animelemtime(4) > 0
trigger8   = P2BodyDist X = [0,70]
trigger8   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger8   = var(58) = [0,59]


;---------------------------------------------------------------------------
;煉獄の炎
[State -1, honoh]
type = ChangeState
value = 6100
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = P2BodyDist Y = [-30,2]
triggerall = p2statetype != A
triggerall   = p2movetype != H
trigger1 = ctrl
trigger1   = var(58) = [0,29]
trigger1   = P2BodyDist X = [100,300]
trigger1   = p2movetype = A                ;相手が攻撃中(割り込み)
trigger2 = ctrl
trigger2   = var(58) = [30,40]
trigger2   = P2BodyDist X = [200,300]
trigger2   = p2movetype = I 
trigger3 = stateno = 205 && animelemtime(3) > 0
trigger4 = stateno = 210 && animelemtime(4) > 0
trigger5 = stateno = 225 && animelemtime(6) > 0
trigger6 = stateno = 400 && animelemtime(3) > 0
trigger7 = stateno = 410 && animelemtime(3) > 0
trigger8 = stateno = 420 && animelemtime(4) > 0

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[1]
[State -1, thunder]
type = ChangeState
value = 6000
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = helper(3000), stateno = 3000
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1   = var(58) = [0,15]
trigger1   = P2BodyDist X = [0,80]
trigger1   = p2movetype = A                ;相手が攻撃中(割り込み)

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[2]
[State -1, thunder]
type = ChangeState
value = 6001
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = helper(3000), stateno = 3000
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1   = var(58) = [0,39]
trigger1   = P2BodyDist X = [91,150]
trigger1   = p2movetype = A                ;相手が攻撃中(割り込み)

;---------------------------------------------------------------------------
;我の前に立つ詮無き者に、裁きの雷を[3]
[State -1, thunder]
type = ChangeState
value = 6002
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = helper(3000), stateno = 3000
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1   = var(58) = [0,39]
trigger1   = P2BodyDist X = [151,300]
trigger1   = p2movetype = A                ;相手が攻撃中(割り込み)
;---------------------------------------------------------------------------
;atemi
[State -1, thunder]
type = ChangeState
value = 1600
triggerall = var(59) = 1
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1   = P2BodyDist X = [11,80]
trigger1   = P2BodyDist y = [-81,2]
trigger1   = p2movetype = A  
trigger1   = var(58) = [40,89]
;---------------------------------------------------------------------------
;弱 暗転入滅せよ(空中)
[State -1, antena0]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1   = var(58) = [0,19]
trigger1   = P2BodyDist X = [21,90]

;---------------------------------------------------------------------------
;強 暗転入滅せよ(空中)
[State -1, antena1]
type = ChangeState
value = 1202
triggerall = var(59) = 1
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1   = var(58) = [0,19]
trigger1   = P2BodyDist X = [91,170]
trigger2 = var(58) = [0,29]
trigger2 = StateNo = 600 && animelemtime(3) > 0
trigger3 = var(58) = [0,29]
trigger3 = StateNo = 610 && animelemtime(3) > 0
trigger4 = var(58) = [0,29]
trigger4 = StateNo = 620 && animelemtime(3) > 0
trigger5  = p2movetype = H
trigger5 = var(58) = [0,59]
trigger5 = StateNo = 600 && animelemtime(3) > 0
trigger6   = p2movetype = H
trigger6 = var(58) = [0,59]
trigger6 = StateNo = 610 && animelemtime(3) > 0
trigger7   = p2movetype = H
trigger7 = var(58) = [0,59]
trigger7 = StateNo = 620 && animelemtime(3) > 0

;---------------------------------------------------------------------------
;暗転入滅せよ(地上)
[State -1, anteng]
type = ChangeState
value = 1205
triggerall = var(59) = 1
triggerall = p2statetype != L
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger1   = P2BodyDist X = [51,200]
trigger1 = random = [400,520]
trigger2 = var(58) = [0,29]
trigger2 = (StateNo =[200,435]) && movecontact
trigger3 = ctrl
trigger3  = var(58) = [0,29]
trigger3  = P2BodyDist X = [21,100]
trigger3  = P2BodyDist Y = [-201,-100]

;---------------------------------------------------------------------------
;弱 冥府魔障弾
[State -1, thunder]
type = ChangeState
value = 1000
triggerall = Var(59) = 1
triggerall = numproj = 0
triggerall = statetype != A
triggerall = movetype != H
TriggerAll = P2StateType != L
trigger1 = Random = [100,170]
trigger1 = ctrl
trigger1 = p2bodydist X >= 140
trigger2 = var(58) = [30,59]
trigger2 = (StateNo =[200,435]) && movecontact

;---------------------------------------------------------------------------
;瞬間移動[前]
[State -1, warp]
type = ChangeState
value = 1100
triggerall = Var(59) = 1
trigger1 = p2movetype = A
trigger1 = statetype != A
trigger1 = Random = [200,230]
trigger1 = ctrl
;---------------------------------------------------------------------------
;瞬間移動[後]
[State -1, warp2]
type = ChangeState
value = 1101
triggerall = Var(59) = 1
trigger1 = p2movetype = A
trigger1 = statetype != A
trigger1 = Random = [231,280]
trigger1 = ctrl
;---------------------------------------------------------------------------
;結界
[State -1, kekkai]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = Random > 900
trigger1 = ctrl
trigger1 = var(58) = [90,99]
trigger2 = stateno = 205 && animelemtime(3) > 0
trigger3 = stateno = 210 && animelemtime(4) > 0
trigger4 = stateno = 225 && animelemtime(6) > 0
trigger5 = stateno = 400 && animelemtime(3) > 0
trigger6 = stateno = 410 && animelemtime(3) > 0
trigger7 = stateno = 420 && animelemtime(4) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
;結界[空中]
[State -1, thunder]
type = ChangeState
value = 1305
triggerall = var(59) = 1
;triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = Random > 900
trigger1 = ctrl
trigger1 = stateno != 1305
trigger2 = StateNo = 600 && animelemtime(3) > 0
trigger3 = StateNo = 610 && animelemtime(3) > 0
trigger4 = StateNo = 620 && animelemtime(3) > 0
ignorehitpause = 0

;------------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = Var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = Random = [0,120]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;------------------------------------------------------------------------------
;回避
[State -1, taunt]
type = ChangeState
value = 11111
triggerall = Var(59) = 1
trigger1 = statetype != A
trigger1 = Random = [0,30]
trigger1 = ctrl
trigger1 = p2bodydist X <= 100

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 205
triggerall = var(59) = 1
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = Random = [0,70]
trigger1 = ctrl
trigger1 = p2bodydist X >= 100

;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = Random = [0,80]
trigger1 = ctrl
trigger1 = p2bodydist X >= 100
trigger1 = p2bodydist Y <= -50

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = Random = [0,100]
trigger1 = ctrl
trigger1 = p2bodydist X <= 30

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 225
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
triggerall = helper(3000), stateno = 3000
trigger1 = Random = [80,160]
trigger1 = ctrl
trigger1 = p2bodydist X >= 150

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Taunt]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = helper(3000), stateno = 3000
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = Random = [0,80]
trigger1 = ctrl
trigger1 = p2bodydist X >= 100
trigger1 = p2statetype = S

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Taunt]
type = ChangeState
value = 235
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = ctrl
trigger1 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Taunt]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = ctrl
trigger1 = p2bodydist X <= 30
trigger1 = p2statetype = S
trigger1 = Random = [0,120]
trigger2 = stateno = 430 && time > 5
trigger2 = Random = [0,520]

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Taunt]
type = ChangeState
value = 435
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = statetype != A
TriggerAll = P2StateType != L
trigger1 = ctrl
trigger1 = p2bodydist X = [31,90]
trigger1 = p2statetype = S
trigger2 = stateno = 430 && time > 5
trigger2 = Random = [521,820]

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, Taunt]
type = ChangeState
value = 620
triggerall = helper(3000), stateno = 3000
triggerall = Var(59) = 1
triggerall = statetype = A
triggerall = movetype != H
TriggerAll = P2StateType != L
trigger1 = stateno != 106
trigger1 = ctrl
trigger1 = p2bodydist X >= 1
trigger1 = p2bodydist X <= 100
trigger1 = Random = [0,170]
ignorehitpause = 0

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(59) = 1
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = Random = [940,999]
trigger1 = ctrl
trigger1 = p2bodydist X >= 90
;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) = 1
triggerall = movetype != H
triggerall = statetype != A
trigger1 = Random = [910,949]
trigger1 = ctrl
trigger1 = p2bodydist X >= 90
trigger1 = p2bodydist X <= 160
Trigger2 = P2StateType = L
trigger2 = ctrl
trigger2 = p2bodydist X = [-5,26]       ;至近距離
trigger2 = Random > (p2bodydist X +5)*3 ;近いほど高確率
trigger2 = BackEdgeBodyDist > 30

[State -1, 前にジャンプ]
type = VarSet
triggerall = var(59) = 1
triggerall = Random < (P2BodyDist X) * 5 ;前にジャンプする確率は距離の3倍
trigger1   = stateno = 40
sysvar(1)  = 1


;ジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = statetype != A
triggerall = movetype != H
triggerall = Var(59) = 1
trigger1 = ctrl = 1
trigger1 = p2movetype = A
trigger1   = P2BodyDist X = [100,120]  ;遠距離用
trigger1   = Random = [500,910] 

;空中復帰
[State -1]
Type = ChangeState
value = 5210
TriggerAll = Var(59) = 1
TriggerAll = Vel Y > -1
TriggerAll = Alive      ;生きているとき
TriggerAll = stateno = 5050
Trigger1 = CanRecover    ;復帰することが出来るとき
Trigger1 = Random = [0,400]


