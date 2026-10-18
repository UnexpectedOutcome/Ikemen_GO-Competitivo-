; Winner Screen 1
;
;---------------------è-------------- sem musica e cores em escala de cinza
[Statedef 10000]
type = S
ctrl = 0

[State 10000, No_music]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoMusic
flag2 = nobardisplay
flag3 = noFG

[State 10000, RoundNotOver]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = RoundNotOver

[State 10000,Bccolor]
type = BGPalfx
trigger1 = Time >= 0
ignorehitpause = 1
time = 10
add = 0,0,0
color = 1
invertall = 0

[State 10000, Win_BGM]
type = PlaySnd
trigger1 = Time = 25
value = s3,3

[State 10000, cut_in];
type = Helper
trigger1 = Time = 0
ignorehitpause = 1
helpertype = normal
name = "winner"
ID = 10000
postype = left
pos = 0, -240
facing = 0
stateno = 10001
keyctrl = 0
persistent = 
ownpal = 1
priority = 99999999999

;----------------------------------------------Tela de Winner
[Statedef 10001]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10001
velset = 0,0
bindtime = -1
sprpriority = 99999999999999

[State 10001, KO]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow
ignorehitpause = 1

[State 10001, pos_fix]
type = Posset
trigger1 = time = 0
x = -160
y = -floor(ScreenPos Y) - 240

[State 10001, first_invisible]
type = assertspecial
trigger1 = Time = [0,5]
flag = invisible
ignorehitpause = 1

[State 10001, gradually_coller]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(5) = -255

[State 10001, gradually_coller]
type = Varadd
trigger1 = Time >= 0
ignorehitpause = 1
var(5) = 5

[State 10001, gradually_coller]
type = PalFX
trigger1 = Time >= 0 && Time <= 50
ignorehitpause = 1
add = Var(5)+1,Var(5)+1,Var(5)+1
time = 2

;----------------------------------------- Entrada da Foto state 9000
[State 10001, select]
type = ChangeAnim
trigger1 = Time = 90
value = 10001

[State 10001, Face_Varset]
type = Varset
triggerall = Time = 0
trigger1 = root,var(26) = 1
trigger2 = root,var(26) = 2
ignorehitpause = 1
var(11) = 0

[State 9910, select]
type = Explod
trigger1 = Time = 120
anim = 10003
ID = 10003
sprpriority = 100
ontop = 1
postype = left
pos = 3, 177
vel = 0,0
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10001, END]
type = DestroySelf
trigger1 = Time >= 900

;----------è--------------------------------
[State 10001, Face select Entrada]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = -150, 45
vel = 7,0
scale = .9,.9
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10001, 0 Face Select Parado]
type = ModifyExplod
trigger1 = time = 87
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = 105, 45
vel = 0,0
scale = .9,.9
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10001, 1]
type = varrandom
trigger1 = time = 0
trigger1 = Numhelper(10002) = 1
v = 12
range = 0,2

[State 10001, Vacuo]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 1
anim = 10006
ID = 10006
sprpriority = 100
ontop = 1
postype = left;p1
pos = 0,0
scale = 1,1
bindtime = -1
removetime = 9999999
supermove = 1
ownpal = 1



; Winner Screen 2
;
;---------------------è-------------- sem musica e cores em escala de cinza
[Statedef 10010]
type = S
ctrl = 0

[State 10010, No_music]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoMusic
flag2 = nobardisplay
flag3 = noFG

[State 10010, RoundNotOver]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = RoundNotOver

[State 10010,Bccolor]
type = BGPalfx
trigger1 = Time >= 0
ignorehitpause = 1
time = 10
add = 0,0,0
color = 1
invertall = 0

[State 10010, Win_BGM]
type = PlaySnd
trigger1 = Time = 25
value = s3,3

[State 10010, cut_in];
type = Helper
trigger1 = Time = 0
ignorehitpause = 1
helpertype = normal
name = "winner2"
ID = 10010
postype = left
pos = 0, -240
facing = 0
stateno = 10011
keyctrl = 0
persistent = 
ownpal = 1
priority = 99999999999

;----------------------------------------------Tela de Winner
[Statedef 10011]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10001
velset = 0,0
bindtime = -1
sprpriority = 99999999999999

[State 10011, KO]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow
ignorehitpause = 1

[State 10011, pos_fix]
type = Posset
trigger1 = time = 0
x = -160
y = -floor(ScreenPos Y) - 240

[State 10011, first_invisible]
type = assertspecial
trigger1 = Time = [0,5]
flag = invisible
ignorehitpause = 1

[State 10011, gradually_coller]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(5) = -255

[State 10011, gradually_coller]
type = Varadd
trigger1 = Time >= 0
ignorehitpause = 1
var(5) = 5

[State 10011, gradually_coller]
type = PalFX
trigger1 = Time >= 0 && Time <= 50
ignorehitpause = 1
add = Var(5)+1,Var(5)+1,Var(5)+1
time = 2

;----------------------------------------- Entrada da Foto state 9000
[State 10011, select]
type = ChangeAnim
trigger1 = Time = 90
value = 10001 

[State 10011, Face_Varset]
type = Varset
triggerall = Time = 0
trigger1 = root,var(26) = 1
trigger2 = root,var(26) = 2
ignorehitpause = 1
var(11) = 0

[State 9910, select]
type = Explod
trigger1 = Time = 120
anim = 10005
ID = 10005
sprpriority = 100
ontop = 1
postype = left
pos = 3, 177
vel = 0,0
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10011, END]
type = DestroySelf
trigger1 = Time >= 900

;----------è--------------------------------
[State 10011, Face select Entrada]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = -150, 45
vel = 7,0
scale = .9,.9
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10011, 0 Face Select Parado]
type = ModifyExplod
trigger1 = time = 87
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = 105, 45
vel = 0,0
scale = .9,.9
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10011, 1]
type = varrandom
trigger1 = time = 0
trigger1 = Numhelper(10002) = 1
v = 12
range = 0,2

[State 10011, Vacuo]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 1
anim = 10006
ID = 10006
sprpriority = 100
ontop = 1
postype = left;p1
pos = 0,0
scale = 1,1
bindtime = -1
removetime = 9999999
supermove = 1
ownpal = 1


; Winner Screen 3
;
;---------------------è-------------- sem musica e cores em escala de cinza
[Statedef 10020]
type = S
ctrl = 0

[State 10020, No_music]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoMusic
flag2 = nobardisplay
flag3 = noFG

[State 10020, RoundNotOver]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = RoundNotOver

[State 10020,Bccolor]
type = BGPalfx
trigger1 = Time >= 0
ignorehitpause = 1
time = 10
add = 0,0,0
color = 1
invertall = 0

[State 10020, Win_BGM]
type = PlaySnd
trigger1 = Time = 25
value = s3,3

[State 10020, cut_in];
type = Helper
trigger1 = Time = 0
ignorehitpause = 1
helpertype = normal
name = "winner3"
ID = 10020
postype = left
pos = 0, -240
facing = 0
stateno = 10021
keyctrl = 0
persistent = 
ownpal = 1
priority = 99999999999

;----------------------------------------------Tela de Winner
[Statedef 10021]
type = A
movetype = I
physics = N
ctrl = 0
anim = 10001
velset = 0,0
bindtime = -1
sprpriority = 99999999999999

[State 10021, KO]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow
ignorehitpause = 1

[State 10021, pos_fix]
type = Posset
trigger1 = time = 0
x = -160
y = -floor(ScreenPos Y) - 240

[State 10021, first_invisible]
type = assertspecial
trigger1 = Time = [0,5]
flag = invisible
ignorehitpause = 1

[State 10021, gradually_coller]
type = Varset
trigger1 = Time = 0
ignorehitpause = 1
var(5) = -255

[State 10021, gradually_coller]
type = Varadd
trigger1 = Time >= 0
ignorehitpause = 1
var(5) = 5

[State 10021, gradually_coller]
type = PalFX
trigger1 = Time >= 0 && Time <= 50
ignorehitpause = 1
add = Var(5)+1,Var(5)+1,Var(5)+1
time = 2

;----------------------------------------- Entrada da Foto state 9000
[State 10021, select]
type = ChangeAnim
trigger1 = Time = 90
value = 10001 

[State 10021, Face_Varset]
type = Varset
triggerall = Time = 0
trigger1 = root,var(26) = 1
trigger2 = root,var(26) = 2
ignorehitpause = 1
var(11) = 0

[State 10021, select]
type = Explod
trigger1 = Time = 120
anim = 10004
ID = 10004
sprpriority = 100
ontop = 1
postype = left
pos = -6, 177
vel = 0,0
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10021, END]
type = DestroySelf
trigger1 = Time >= 900

;----------è--------------------------------
[State 10021, Face select Entrada]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = -150, 45
vel = 7,0
scale = .9,.9
;bindtime = -1
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10021, 0 Face Select Parado]
type = ModifyExplod
trigger1 = time = 87
trigger1 = Numhelper(10002) = 0
anim = 10002 + Var(11)
ID = 10002
sprpriority = 100
ontop = 1
postype = left
pos = 105, 45
vel = 0,0
scale = .9,.9
removetime = -1
supermove = 10000
ownpal = 1
facing = 1

[State 10021, 1]
type = varrandom
trigger1 = time = 0
trigger1 = Numhelper(10002) = 1
v = 12
range = 0,2

[State 10021, Vacuo]
type = Explod
trigger1 = Time = 50
trigger1 = Numhelper(10002) = 1
anim = 10006
ID = 10006
sprpriority = 100
ontop = 1
postype = left;p1
pos = 0,0
scale = 1,1
bindtime = -1
removetime = 9999999
supermove = 1
ownpal = 1