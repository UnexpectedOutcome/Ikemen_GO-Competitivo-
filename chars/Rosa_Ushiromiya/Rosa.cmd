;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[ボタンリマップ（ボタンコンフィグ)]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン
z = z      ;Ｚボタン
a = a      ;Ａボタン
b = b      ;Ｂボタン
c = c      ;Ｃボタン
s = s      ;スタートボタン

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;[デフォルト設定]
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。



;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; コマンド定義パート（入力キーを設定する）

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


;***********************************
[Command]
Name = "高速ジャンプ"
Command = $D
Time = 1

;------------------------------------------------------------------------------
;-| 必殺技コマンド |-----------------------------------------------------------------


[Command]
name    = "メタ世界"
command = a+b+c
time   = 5

[Command]
name    = "メタ世界"
command = z
time   = 5

[Command]
name    = "メタ反論"
command = z
time   = 5

[Command]
name = "MARIA"
command = ~F, B, D , F , c
time = 25

[Command]
name = "236236C"
command = ~D, DF, F , D, DF, F , c
time = 25

[Command]
name = "214AB"
command = ~D, DB, B , a+b
time = 20

[Command]
name = "236AB"
command = ~D, DF, F , a+b
time = 20

[Command]
name = "623AB"
command = ~F, D, DF , a+b
time = 20

[Command]
name = "623B"
command = ~F, D, DF , b
time = 15

[Command]
name = "623C"
command = ~F, D, DF , c
time = 15

[Command]
name = "236A"
command = ~D, DF, F , a
time = 15

[Command]
name = "236B"
command = ~D, DF, F , b
time = 15

[Command]
name = "236C"
command = ~D, DF, F , c
time = 15

[Command]
name = "236X"
command = ~D, DF, F , x
time = 15
[Command]
name = "236Y"
command = ~D, DF, F , y
time = 15

[Command]
name = "214A"
command = ~D, DB, B , a
time = 15

[Command]
name = "214B"
command = ~D, DB, B , b
time = 15

[Command]
name = "214C"
command = ~D, DB, B , c
time = 15

[Command]
name = "投げ"
command = b+c
time = 15

[Command]
name = "ダッシュ"       ;メタ展開用
command = F,F
time = 15

[Command]
name = "バクステ"       ;メタ展開用
command = B,B
time = 15


;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F,F
time = 5

[Command]
name = "BB"       ;必須コマンド名
command = B,B
time = 5


;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
Name = "recovery"
Command = a
Time = 1

[Command]
Name = "recovery"
Command = b
Time = 1

[Command]
Name = "recovery"
Command = c
Time = 1

[Command]
Name = "recovery"
Command = x
Time = 1

[Command]
Name = "recovery"
Command = y
Time = 1

[Command]
Name = "recovery"
Command = z
Time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

;[Command]
;name = "fwd_a"
;command = /F,a

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

[Command]
Name = "fwd" 
Command = F
Time = 1

[Command]
Name = "back" 
Command = B
Time = 1

[Command]
Name = "up" 
Command = U
Time = 1

[Command]
Name = "down"
Command = D
Time = 1

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdz"
command = /$z
time = 1




;============================================================================

[Statedef -1]

;============================================================================


;================================================================================


;■ 真理亞の込めてくれた弾丸 ■

[state -1, 2600]
type  = ChangeState
value = 2600
TriggerAll = !var(59)
TriggerAll = command  = "MARIA" || helper(6000),var(10) > 0
TriggerAll = statetype != A
TriggerAll = var(19) = 1
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)



;■ ゴートハンティング ■

[state -1, 2200]
type  = ChangeState
value = 2200
TriggerAll = !var(59)
TriggerAll = command  = "236236C" || helper(6000),var(11) > 0
TriggerAll = statetype != A
TriggerAll = Power >= 2000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)



;■ フライングネックカット/シューティングジャスティス ■

[state -1, 2300]
type  = ChangeState
value = 2300 + ((var(50))*100)
TriggerAll = !var(59)
TriggerAll = command  = "623AB" || helper(6000),var(12) > 0
TriggerAll = statetype != A
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)


;■ ゴールデンドリーム ■

[state -1, 2500]
type  = ChangeState
value = 2500
TriggerAll = !var(59)
TriggerAll = command  = "214AB" || helper(6000),var(17) > 0
TriggerAll = statetype != A
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)



;■ ウルフハンティング(空中) ■

[state -1, 2050]
type  = ChangeState
value = 2050 + ((!var(50))*100)
TriggerAll = !var(59)
TriggerAll = command  = "236AB" || helper(6000),var(13) > 0
TriggerAll = statetype = A
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=600)&&(Movecontact)
Trigger3   = (StateNo=610)&&(Movecontact)
Trigger4   = (StateNo=620)&&(Movecontact)
Trigger5   = (StateNo=630)&&(Movecontact)
Trigger6   = (StateNo=640)&&(Movecontact)
Trigger7   = (StateNo=650)&&(Movecontact)
Trigger8   = (StateNo=430)&&(Movecontact)



;■ ウルフハンティング ■

[state -1, 2000]
type  = ChangeState
value = 2000 + ((!var(50))*100)
TriggerAll = !var(59)
TriggerAll = command  = "236AB" || helper(6000),var(13) > 0
TriggerAll = statetype != A
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)




;■ ソードオフライフルJC ■

[state -1, 1070]
type  = ChangeState
value = 1070 + ((!var(50))*80)
TriggerAll = !var(59)
TriggerAll = command  = "236C" || helper(6000),var(16) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=600)&&(Movecontact)
Trigger3   = (StateNo=610)&&(Movecontact)
Trigger4   = (StateNo=620)&&(Movecontact)
Trigger5   = (StateNo=630)&&(Movecontact)
Trigger6   = (StateNo=640)&&(Movecontact)
Trigger7   = (StateNo=650)&&(Movecontact)
Trigger8   = (StateNo=430)&&(Movecontact)


;■ ソードオフライフルJB ■

[state -1, 1060]
type  = ChangeState
value = 1060 + ((!var(50))*90)
TriggerAll = !var(59)
TriggerAll = command  = "236B" || helper(6000),var(15) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=600)&&(Movecontact)
Trigger3   = (StateNo=610)&&(Movecontact)
Trigger4   = (StateNo=620)&&(Movecontact)
Trigger5   = (StateNo=630)&&(Movecontact)
Trigger6   = (StateNo=640)&&(Movecontact)
Trigger7   = (StateNo=650)&&(Movecontact)
Trigger8   = (StateNo=430)&&(Movecontact)


;■ ソードオフライフルJA ■

[state -1, 1050]
type  = ChangeState
value = 1050 + ((!var(50))*100)
TriggerAll = !var(59)
TriggerAll = command  = "236A" || helper(6000),var(14) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=600)&&(Movecontact)
Trigger3   = (StateNo=610)&&(Movecontact)
Trigger4   = (StateNo=620)&&(Movecontact)
Trigger5   = (StateNo=630)&&(Movecontact)
Trigger6   = (StateNo=640)&&(Movecontact)
Trigger7   = (StateNo=650)&&(Movecontact)
Trigger8   = (StateNo=430)&&(Movecontact)



;■ ソードオフライフルC ■

[state -1, 1020]
type  = ChangeState
value = 1020 + ((!var(50))*80)
TriggerAll = !var(59)
TriggerAll = command  = "236C" || helper(6000),var(16) > 0
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)


;■ ソードオフライフルB ■

[state -1, 1010]
type  = ChangeState
value = 1010 + ((!var(50))*90)
TriggerAll = !var(59)
TriggerAll = command  = "236B" || helper(6000),var(15) > 0
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)


;■ ソードオフライフルA ■

[state -1, 1000]
type  = ChangeState
value = 1000 + ((!var(50))*100)
TriggerAll = !var(59)
TriggerAll = command  = "236A" || helper(6000),var(14) > 0
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)




;■ ローリングシープC ■

[state -1, 1220]
type  = ChangeState
value = 1220
TriggerAll = !var(59)
TriggerAll = command  = "214C"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)


;■ ローリングシープB ■

[state -1, 1210]
type  = ChangeState
value = 1210
TriggerAll = !var(59)
TriggerAll = command  = "214B"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)


;■ ローリングシープA ■

[state -1, 1200]
type  = ChangeState
value = 1200
TriggerAll = !var(59)
TriggerAll = command  = "214A"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)




;■ メタ宣言 ■

[State 2900]
type       = ChangeState
value      = 2900
TriggerAll = command = "メタ世界"
TriggerAll = statetype != A
TriggerAll = Power >= 1000
TriggerAll = fvar(17) >= 320      ;メタゲージ量
TriggerAll = var(19) = 0          ;メタ展開中でない
TriggerAll = var(18) = 0          ;他人がメタ展開中でない
TriggerAll = roundstate = 2
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)





;■ 投げ ■

[state -1, 900]
type  = ChangeState
value = 900
TriggerAll = !var(59)
TriggerAll = command  = "投げ"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)




;===============================================================


;■ アサルトタッチ(レミリア) ■

[state -1, 880]
type  = ChangeState
value = 880
TriggerAll = !var(59)
TriggerAll = command  = "236Y"
TriggerAll = statetype != A
TriggerAll = fvar(13) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)

Trigger13  = (StateNo=1000)&&(Time>13)
Trigger14  = (StateNo=1010)&&(Time>15)
Trigger15  = (StateNo=1020)&&(Time>15)

Trigger16  = (StateNo=1200)&&(Time>26)
Trigger17  = (StateNo=1210)&&(Time>27)
Trigger18  = (StateNo=1200)&&(Time>30)

Trigger19  = (StateNo=810)&&(Time>20)
Trigger20  = (StateNo=860)&&(Time>20)




;■ アサルトタッチ(れみりあ) ■

[state -1, 830]
type  = ChangeState
value = 830
TriggerAll = !var(59)
TriggerAll = command  = "236X"
TriggerAll = statetype != A
TriggerAll = fvar(10) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
TriggerAll = Power >= 1000
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=240)&&(Movecontact)
Trigger7   = (StateNo=250)&&(Movecontact)
Trigger8   = (StateNo=260)&&(Movecontact)
Trigger9   = (StateNo=270)&&(Movecontact)
Trigger10  = (StateNo=400)&&(Movecontact)
Trigger11  = (StateNo=410)&&(Movecontact)
Trigger12  = (StateNo=420)&&(Movecontact)

Trigger13  = (StateNo=1000)&&(Time>13)
Trigger14  = (StateNo=1010)&&(Time>15)
Trigger15  = (StateNo=1020)&&(Time>15)

Trigger16  = (StateNo=1200)&&(Time>26)
Trigger17  = (StateNo=1210)&&(Time>27)
Trigger18  = (StateNo=1200)&&(Time>30)

Trigger19  = (StateNo=810)&&(Time>20)
Trigger20  = (StateNo=860)&&(Time>20)






;■ アタックタッチ(レミリア) ■

[state -1, 860]
type  = ChangeState
value = 860
TriggerAll = !var(59)
TriggerAll = command  = "y"
TriggerAll = statetype != A
TriggerAll = fvar(13) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
Trigger1   = (StateNo=200)&&(Movecontact)
Trigger2   = (StateNo=210)&&(Movecontact)
Trigger3   = (StateNo=220)&&(Movecontact)
Trigger4   = (StateNo=230)&&(Movecontact)
Trigger5   = (StateNo=240)&&(Movecontact)
Trigger6   = (StateNo=250)&&(Movecontact)
Trigger7   = (StateNo=260)&&(Movecontact)
Trigger8   = (StateNo=270)&&(Movecontact)
Trigger9   = (StateNo=400)&&(Movecontact)
Trigger10  = (StateNo=410)&&(Movecontact)
Trigger11  = (StateNo=420)&&(Movecontact)


;■ ノーマルタッチ(レミリア) ■

[state -1, 850]
type  = ChangeState
value = 850
TriggerAll = !var(59)
TriggerAll = command  = "y"
TriggerAll = statetype != A
TriggerAll = fvar(13) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)










;■ ガードタッチ(れみりあ) ■
[State -1, 820]
type       = Helper
TriggerAll = !var(59)
TriggerAll = statetype != A
TriggerAll = Power >= 1000                  ;ゲージ
TriggerAll = Fvar(10) = 100                 ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
triggerAll = (command = "x")
trigger1   = stateno = 150
trigger2   = stateno = 151
trigger3   = stateno = 152
trigger4   = stateno = 153
name       = "remilia_y"
ID         = 20000
postype    = P1
pos        = -300, -90
StateNo    = 20400
sprpriority = 5
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
helpertype = normal
keyctrl = 0
ownpal = 1

;■ ガードタッチ(レミリア) ■
[State -1, 870]
type       = Helper
TriggerAll = !var(59)
TriggerAll = statetype != A
TriggerAll = Power >= 1000                  ;ゲージ
TriggerAll = Fvar(13) = 100                 ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
triggerAll = (command = "y")
trigger1   = stateno = 150
trigger2   = stateno = 151
trigger3   = stateno = 152
trigger4   = stateno = 153
name       = "remilia_y"
ID         = 30000
postype    = P1
pos        = 25, 0
StateNo    = 30400
sprpriority = 5
size.xscale   = 1
size.yscale   = 1
SuperMoveTime = 99999
PauseMoveTime = 99999
helpertype = normal
keyctrl = 0
ownpal = 1


;■ アタックタッチ(れみりあ) ■

[state -1, 810]
type  = ChangeState
value = 810
TriggerAll = !var(59)
TriggerAll = command  = "x"
TriggerAll = statetype != A
TriggerAll = fvar(10) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
Trigger1   = (StateNo=200)&&(Movecontact)
Trigger2   = (StateNo=210)&&(Movecontact)
Trigger3   = (StateNo=220)&&(Movecontact)
Trigger4   = (StateNo=230)&&(Movecontact)
Trigger5   = (StateNo=240)&&(Movecontact)
Trigger6   = (StateNo=250)&&(Movecontact)
Trigger7   = (StateNo=260)&&(Movecontact)
Trigger8   = (StateNo=270)&&(Movecontact)
Trigger9   = (StateNo=400)&&(Movecontact)
Trigger10  = (StateNo=410)&&(Movecontact)
Trigger11  = (StateNo=420)&&(Movecontact)


;■ ノーマルタッチ(れみりあ) ■

[state -1, 800]
type  = ChangeState
value = 800
TriggerAll = !var(59)
TriggerAll = command  = "x"
TriggerAll = statetype != A
TriggerAll = fvar(10) >= 100      ;タッチゲージ
TriggerAll = NumHelper(20000) = 0 ;れみぃ不在
TriggerAll = NumHelper(30000) = 0 ;レミィ不在
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)








;===============================================================

;■ JC ■

[state -1, 650]
type  = ChangeState
value = 650
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = statetype = A
TriggerAll = (Vel X != [-1, 1])
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = StateNo = 630 && MoveContact
Trigger3   = StateNo = 640 && MoveContact
Trigger4   = StateNo = 600 && MoveContact
Trigger5   = StateNo = 620 && MoveContact


;■ JB ■

[state -1, 640]
type  = ChangeState
value = 640
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
TriggerAll = statetype = A
TriggerAll = (Vel X != [-1, 1])
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = StateNo = 630 && MoveContact
Trigger3   = StateNo = 600 && MoveContact
Trigger4   = StateNo = 650 && MoveContact && (PrevStateNo != 640)
Trigger5   = StateNo = 620 && MoveContact && (PrevStateNo != 610)


;■ JA ■

[state -1, 630]
type  = ChangeState
value = 630
TriggerAll = !var(59)
TriggerAll = command  = "a" || helper(6000),var(17) > 0
TriggerAll = statetype = A
TriggerAll = (Vel X != [-1, 1])
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)


;■ NJC ■

[state -1, 620]
type  = ChangeState
value = 620
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = StateNo = 600 && MoveContact
Trigger3   = StateNo = 610 && MoveContact
Trigger4   = StateNo = 630 && MoveContact
Trigger5   = StateNo = 640 && MoveContact

;■ NJB ■

[state -1, 610]
type  = ChangeState
value = 610
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = StateNo = 600 && MoveContact
Trigger3   = StateNo = 630 && MoveContact
Trigger4   = StateNo = 650 && MoveContact && (PrevStateNo != 640)
Trigger5   = StateNo = 620 && MoveContact && (PrevStateNo != 610)

;■ NJA ■

[state -1, 600]
type  = ChangeState
value = 600
TriggerAll = !var(59)
TriggerAll = command  = "a" || helper(6000),var(17) > 0
TriggerAll = statetype = A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)


;--------------------------------------------------

;■ 3C ■

[state -1, 430]
type  = ChangeState
value = 430
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = command  = "holddown"
TriggerAll = command  = "holdfwd"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=400)&&(MoveContact)
Trigger3   = (StateNo=410)&&(MoveContact)
Trigger4   = (StateNo=420)&&(MoveContact)
Trigger4   = (StateNo=200)&&(MoveContact)
Trigger5   = (StateNo=210)&&(MoveContact)
Trigger6   = (StateNo=220)&&(MoveContact)
Trigger7   = (StateNo=230)&&(MoveContact)
Trigger8   = (StateNo=240)&&(MoveContact)
Trigger9   = (StateNo=250)&&(MoveContact)


;■ 2C ■

[state -1, 420]
type  = ChangeState
value = 420
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
triggerall = command  = "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=400)&&(MoveContact)
Trigger3   = (StateNo=410)&&(MoveContact)
Trigger4   = (StateNo=200)&&(MoveContact)
Trigger5   = (StateNo=210)&&(MoveContact)
Trigger6   = (StateNo=220)&&(MoveContact)
Trigger7   = (StateNo=230)&&(MoveContact)


;■ 2B ■

[state -1, 410]
type  = ChangeState
value = 410
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
triggerall = command  = "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=400)&&(MoveContact)
Trigger3   = (StateNo=200)&&(MoveContact)
Trigger4   = (StateNo=210)&&(MoveContact)
Trigger5   = (StateNo=220)&&(MoveContact)
Trigger6   = (StateNo=230)&&(MoveContact)


;■ 2A ■

[state -1, 400]
type  = ChangeState
value = 400
TriggerAll = !var(59)
TriggerAll = command  = "a" || helper(6000),var(17) > 0
triggerall = command  = "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=400)&&(Statetime > 10)
Trigger3   = (StateNo=400)&&(MoveContact)
Trigger4   = (StateNo=200)&&(MoveContact)
Trigger5   = (StateNo=210)&&(MoveContact)

;--------------------------------------------------


;■ 6C ■

[state -1, 270]
type  = ChangeState
value = 270
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = command != "holddown"
TriggerAll = command  = "holdfwd"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=400)&&(Movecontact)
Trigger7   = (StateNo=410)&&(Movecontact)


;■ 6B ■

[state -1, 260]
type  = ChangeState
value = 260
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
triggerall = command  = "holdfwd"
triggerall = command != "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(MoveContact)
Trigger3   = (StateNo=210)&&(MoveContact)
Trigger4   = (StateNo=400)&&(MoveContact)
Trigger5   = (StateNo=410)&&(MoveContact)


;■ 近距離C ■

[state -1, 240]
type  = ChangeState
value = 240
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
TriggerAll = p2bodydist x < 25
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=400)&&(Movecontact)
Trigger7   = (StateNo=410)&&(Movecontact)


;■ 遠距離C ■

[state -1, 250]
type  = ChangeState
value = 250
TriggerAll = !var(59)
TriggerAll = command  = "c" || helper(6000),var(19) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=220)&&(Movecontact)
Trigger5   = (StateNo=230)&&(Movecontact)
Trigger6   = (StateNo=400)&&(Movecontact)
Trigger7   = (StateNo=410)&&(Movecontact)


;■ 近距離B ■

[state -1, 220]
type  = ChangeState
value = 220
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
TriggerAll = p2bodydist x < 25
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=400)&&(Movecontact)
Trigger5   = (StateNo=410)&&(Movecontact)


;■ 遠距離B ■

[state -1, 230]
type  = ChangeState
value = 230
TriggerAll = !var(59)
TriggerAll = command  = "b" || helper(6000),var(18) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=400)&&(Movecontact)
Trigger5   = (StateNo=410)&&(Movecontact)


;■ 近距離A ■

[state -1, 200]
type  = ChangeState
value = 200
TriggerAll = !var(59)
TriggerAll = command  = "a" || helper(6000),var(17) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
TriggerAll = p2bodydist x < 25
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Time>=13)
Trigger3   = (StateNo=200)&&(Movecontact)
Trigger4   = (StateNo=400)&&(Movecontact)


;■ 遠距離A ■

[state -1, 210]
type  = ChangeState
value = 210
TriggerAll = !var(59)
TriggerAll = command  = "a" || helper(6000),var(17) > 0
TriggerAll = command != "holddown"
TriggerAll = statetype != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)
Trigger2   = (StateNo=200)&&(Movecontact)
Trigger3   = (StateNo=210)&&(Movecontact)
Trigger4   = (StateNo=400)&&(Movecontact)



[State -1, アピール]
Type  = ChangeState
Value = 199
TriggerAll = !var(59)                ;AI判定
TriggerAll = Command    = "start"
TriggerAll = StateType != A
Trigger1   = Ctrl || (StateNo = 100) || (StateNo = 101)


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / 前方ダッシュ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, 100]
Type = ChangeState
Value = 100
TriggerAll 	= !var(59)                ;AI判定
TriggerAll	= Command    = "ダッシュ" || helper(6000),var(20) > 0
TriggerAll	= StateType != A
TriggerAll	= stateno   != [100,101]
Trigger1	= Ctrl


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / 後方ダッシュ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, 105]
Type = ChangeState
Value = 105
TriggerAll 	= !var(59)                ;AI判定
TriggerAll	= Command    = "バクステ" || helper(6000),var(21) > 0
TriggerAll	= StateType != A
TriggerAll	= stateno   != [105,106]
Trigger1	= Ctrl


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ハイジャンプ
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State -1, 41]
Type  = ChangeState
Value = 41
TriggerAll	= !Var(59);		AI不可
TriggerAll	= Command  = "holdup"
TriggerAll	= Command != "holddown"
TriggerAll	= StateType != A
Trigger1	= Ctrl
Trigger1	= Var(4) > 0
Trigger2	= (StateNo=100)&&(StateTime >= 9)		;前ダッシュ中

[State -1, 41]
Type  = ChangeState
Value = 41
TriggerAll = !Var(59);		AI不可
TriggerAll = Command  = "holdup"
TriggerAll = Command != "holddown"
TriggerAll = StateType != A
TriggerAll = Var(4) > 0
TriggerAll = (Enemynear,Statetype = A)
Trigger1   = (StateNo=200)&&(Movehit)
Trigger2   = (StateNo=210)&&(Movehit)
Trigger3   = (StateNo=220)&&(Movehit)
Trigger4   = (StateNo=230)&&(Movehit)
Trigger5   = (StateNo=240)&&(Movehit)
Trigger6   = (StateNo=250)&&(Movehit)
Trigger7   = (StateNo=260)&&(Movehit)

[State -1, 41]
Type = ChangeState
Value = 41
TriggerAll	= !Var(59);		AI不可
TriggerAll	= StateType != A
TriggerAll      = (Command = "holdx")
TriggerAll      = (Command = "up")
Trigger1	= Ctrl
Trigger2	= (StateNo=100)&&(StateTime >= 9)		;前ダッシュ中


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 地上 / ジャンプキャンセル
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[State a]  ;キャンセルジャンプ
Type       = ChangeState
Value      = 40
TriggerAll = !Var(59);		AI不可
TriggerAll = Command  = "holdup"
TriggerAll = !Var(4)
TriggerAll = (enemynear,Statetype = A)
Trigger1   = (StateNo=200)&&(Movehit)
Trigger2   = (StateNo=210)&&(Movehit)
Trigger3   = (StateNo=220)&&(Movehit)
Trigger4   = (StateNo=230)&&(Movehit)
Trigger5   = (StateNo=240)&&(Movehit)
Trigger6   = (StateNo=250)&&(Movehit)
Trigger7   = (StateNo=260)&&(Movehit)
