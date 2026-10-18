;  CMD file
;     by
; ドロウィン
;
;
;
;
;
;
;-| AI/CPU Commands |------------------------------------------------------

[Command]
name = "cpu_1"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_2"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_3"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_4"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_5"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_6"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_7"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_8"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_9"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_10"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_11"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_12"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_13"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_14"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_15"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_16"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_17"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_18"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_19"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_20"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_21"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_22"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_23"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_24"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_25"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_26"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_27"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_28"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_29"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_30"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_31"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_32"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_33"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_34"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_35"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_36"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_37"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_38"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_39"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_40"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_41"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_42"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_43"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_44"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_45"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_46"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_47"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_48"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_49"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_50"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_51"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_52"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_53"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_54"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_55"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_56"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_57"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_58"
command = x, x, x, x, x
time = 1


























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
command = a+b
time = 1

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
command = a+b
time = 5

[Command]
name = "recovery";"throw_k"
command = b+c
time = 5

[Command]
name = "recovery";"throw_k"
command = a+c
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
name = "down"
command = D
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

[Command]
name = "up"
command = $U
time = 1

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ Dash Fwd
;
[State -1, Dash Fwd]
type = null;ChangeState
value = 100
triggerall = palno = [7,12]
triggerall = Var(59) != 1 ;AI doesn't do this move
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash back]
type = null;ChangeState
value = 105
triggerall = palno = [7,12]
triggerall = Var(59) != 1 ;AI doesn't do this move
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;投げ（オリジナル
;
[State -1,  Z]
type = null;ChangeState
value = 221
triggerall = power >= 1000
triggerall = palno = [7,12]
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
trigger1 = ctrl
trigger1 = statetype = S



;===========================================================================
;---------------------------------------------------------------------------
;全然効きません！
[State -1, Stand X]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;吹き飛ばしてあげます！
;
[State -1, Stand Y]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
trigger1 = statetype = S
trigger1 = ctrl

;AI
[State -1, Stand Y]
type = ChangeState
value = 211
triggerall = var(59) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
triggerall = random >= 90
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;ドリル
;
[State -1, Stand A]
type = ChangeState
value = 234
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
trigger1 = statetype = S
trigger1 = ctrl

;AI
[State -1, Stand A]
type = ChangeState
value = 234
triggerall = var(59) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
triggerall = random >= 650
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;ちょこまか
;
[State -1, Stand B]
type = ChangeState
value = 241
triggerall = power >= 1000
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = Numhelper(6) = 1
triggerall = helper(6),stateno = 6
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Taunt
;
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = palno = [7,12]
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------

[State -1, Activate AI]
type = VarSet
trigger1 = command = "cpu_1"
trigger2 = command = "cpu_2"
trigger3 = command = "cpu_3"
trigger4 = command = "cpu_4"
trigger5 = command = "cpu_5"
trigger6 = command = "cpu_6"
trigger7 = command = "cpu_7"
trigger8 = command = "cpu_8"
trigger9 = command = "cpu_9"
trigger10 = command = "cpu_10"
trigger11 = command = "cpu_11"
trigger12 = command = "cpu_12"
trigger13 = command = "cpu_13"
trigger14 = command = "cpu_14"
trigger15 = command = "cpu_15"
trigger16 = command = "cpu_16"
trigger17 = command = "cpu_17"
trigger18 = command = "cpu_18"
trigger19 = command = "cpu_19"
trigger20 = command = "cpu_20"
trigger21 = command = "cpu_21"
trigger22 = command = "cpu_22"
trigger23 = command = "cpu_23"
trigger24 = command = "cpu_24"
trigger25 = command = "cpu_25"
trigger26 = command = "cpu_26"
trigger27 = command = "cpu_27"
trigger28 = command = "cpu_28"
trigger29 = command = "cpu_29"
trigger30 = command = "cpu_30"
trigger31 = command = "cpu_31"
trigger32 = command = "cpu_32"
trigger33 = command = "cpu_33"
trigger34 = command = "cpu_34"
trigger35 = command = "cpu_35"
trigger36 = command = "cpu_36"
trigger37 = command = "cpu_37"
trigger38 = command = "cpu_38"
trigger39 = command = "cpu_39"
trigger40 = command = "cpu_40"
trigger41 = command = "cpu_41"
trigger42 = command = "cpu_42"
trigger43 = command = "cpu_43"
trigger44 = command = "cpu_44"
trigger45 = command = "cpu_45"
trigger46 = command = "cpu_46"
trigger47 = command = "cpu_47"
trigger48 = command = "cpu_48"
trigger49 = command = "cpu_49"
trigger50 = command = "cpu_50"
trigger51 = command = "cpu_51"
trigger52 = command = "cpu_52"
trigger53 = command = "cpu_53"
trigger54 = command = "cpu_54"
trigger55 = command = "cpu_55"
trigger56 = command = "cpu_56"
trigger57 = command = "cpu_57"
trigger58 = command = "cpu_58"
v = 59
value = 1

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


