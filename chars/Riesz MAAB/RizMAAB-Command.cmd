;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; コマンド デフィニション ‖ 指令定義
; Command Definition
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 1.全局設定 ;https://qxmugen.com/portal/36
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; Cmd最開頭會有Remap和Defaults兩部分 一般用默認的就可以

;＝＝＝＝＝＝＝＝＝＝＝＝< Button Remapping >＝＝＝＝＝＝＝＝＝＝＝＝;
[Remap]
x = x                  ;X按鈕
y = y                  ;Y按鈕
z = z                  ;Z按鈕
a = a                  ;A按鈕
b = b                  ;B按鈕
c = c                  ;C按鈕
s = s                  ;START按鈕

; 這一段可以讓玩家簡單的重新排列該人物的攻擊按鍵。
; 格式是『CMD代碼上的按鍵 等於 在鍵盤或搖桿上的按鍵』
; 如果不填寫在鍵盤或搖桿上的按鍵 則CMD代碼上的按鍵將失效

;＝＝＝＝＝＝＝＝＝＝＝＝< Default Values >＝＝＝＝＝＝＝＝＝＝＝＝;
[Defaults]
command.time = 15       ;標準命令輸入接收時間
                        ;每個命令都省略時有效
                        ;此參數被刪除時 默認為1幀
                        ;M.U.G.E.N. = 1/60秒1幀


command.buffer.time = 1 ;標準命令輸入存儲時間
                        ;輸入後立即存儲該命令
                        ;即使鬆開手指 命令成功的條件
                        ;保持在這裡設定的時間量
                        ;可以設置1到30幀
                        ;默認是1幀

; 這一段主要是指令的相關默認參數，包括按鍵容錯時間和按住蓄力的默認時間。

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 2.招式
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; 全局設定往下就要編寫每一個招式了。
; 每一個招式由兩部分構成，操作指令和触發條件，
; 而這兩部分分別寫在不同的地方。我們先來說操作指令。

; 2.1 操作指令
; 一個招式的操作指令的語法規範如下:

; [Command]
; name = " 指令名" ;指令的名字，
; 不可重複，因為後面的觸發條件會調用這個名字，指令名區分大小寫。

; command = 按鍵輸入
; 按鍵輸入，輸入的按鍵的列表。每一個鍵由逗號隔開，
; 方向鍵和攻擊鍵之前可以用特殊符號來達到一些效果，詳細見下面的按鍵說明。

; time = 接受指令輸入的時間(可選)
; 接受指令輸入的時間，以幀為單位。默認值可以在[Defaults]條目修改，通常為15 。

; buffer.time = 輸入緩存的時間(可選)
; 輸入的指令被緩存的時間。當一個指令被輸入時，它在這段時間裡都是有效的。

; 以"TripleKFPalm"這招為例：

; [Command]
; name = "TripleKFPalm" ;招式名稱為TripleKFPalm
; command = ~D, DF, F, D, DF, F, x ;出招指令為↓↘→↓↘→X 也就是下前下前拳
; time = 20 ;在上一個按鍵輸入後的20幀內按下的按鍵為有效按鍵

; 2.2 按鍵說明
; 注意: 按鍵和招式名分大小寫
; 八個方向分別是:
; B, DB, D, DF, F, UF, U, UB (全大寫)
; 對應後，下後，下，下前，前，前上，上，上後。

; 六個按鍵是:
; a, b, c, x, y, z (全小寫)
; 在默認按鍵的情況下，xyz 在上排，abc 在下排。
; 推薦使用xyz 作為拳，abc 作為腳。

; 方向鍵和攻擊鍵之前可以用特殊符號來達到一些效果，比如:

; 斜杠(/) - 表示之後的一個鍵必須被按住不放
; 舉例, command = /D       按住不放下方向鍵
;       command = /DB, a   按住不放下後方向鍵的時候按a

; 波浪號(~) - 表示按鍵被鬆開
; 舉例, command = ~a       鬆開a鍵
;       command = ~D, F, a 鬆開下方向鍵，按前方向鍵，再按a

; 如果你想讓某個鍵蓄力一段時間再放開，
; 可以再波浪號之後加入你想保持蓄力的時間(以幀為單位)
; 舉例, command = ~30a     按住a30幀，再鬆開

; 美金($) - 僅限上下左右方向鍵。表示包括正和斜方向
; 舉例, command = $D       包括下，下後和下前
;       command = $B       包括後，下後和上後

; 加號(+) - 僅限攻擊鍵。表示同時按多個鍵。
; 舉例, command = a+b      同時按a 和b
;       command = x+y+z    同時按x,y 和z

; 大於號(>) - 表示上一次按鍵和這一次按鍵之中不能摻雜其他的按鍵
; 舉例, command = a, >~a   按下a 再鬆開a，而其中不按下或者鬆開其他鍵

; 這些符號可以組合使用:
; 舉例, command = ~30$D, a+b
; 按住下，下後或者下前30幀，鬆開，然後同時按a和b

; 注意: 連續按方向鍵的指令會被MUGEN 引擎自動理解如下:
; 舉例，cmd 文件中的定義:
;       command = F, F
; 會被引擎理解成:
;       command = F, >~F, >F

; 對於有多個方向鍵的定義，例如四分之一圈下前，
; 為了讓招數能更容易的使出，最好在定義由一個"鬆開方向鍵"起始。

;＝＝＝＝＝＝＝＝＝＝＝＝< Hyper Motions >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command]
name = "Hyakka_Light_Bullet_Spear"      ;Statedef 3200
command = ~D, B, b+y
time = 18
buffer.time = 6

[Command]
name = "Hyakka_Light_Bullet_Spear"      ;Statedef 3200
command = ~D, B, ~b+y
time = 18
buffer.time = 6

[Command]
name = "Meteor_Spear"                   ;Statedef 3100
command = ~D, F, b+c
time = 18
buffer.time = 6

[Command]
name = "Meteor_Spear"                   ;Statedef 3100
command = ~D, F, ~b+c
time = 18
buffer.time = 6

[Command]
name = "Vacuum_Wave_Spear"              ;Statedef 3000
command = ~D, F, b+y
time = 18
buffer.time = 6

[Command]
name = "Vacuum_Wave_Spear"              ;Statedef 3000
command = ~D, F, ~b+y
time = 18
buffer.time = 6

[Command]
name = "Clone_Pharsalia"                ;Statedef 3600
command = ~D, B, c
time = 15
buffer.time = 5

[Command]
name = "Clone_Pharsalia"                ;Statedef 3600
command = ~D, B, ~c
time = 15
buffer.time = 5

[Command]
name = "Barrier"                        ;Statedef 3800、3810
command = a+x
time = 1
buffer.time = 5

;＝＝＝＝＝＝＝＝＝＝＝＝< Special Motions >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command]
name = "Clone_Scathach"                 ;Statedef 2800
command = ~D, B, b
time = 15
buffer.time = 5

[Command]
name = "Clone_Scathach"                 ;Statedef 2800
command = ~D, B, ~b
time = 15
buffer.time = 5

[Command]
name = "Foible_Elle"                    ;Statedef 2600
command = ~D, B, y
time = 15
buffer.time = 5

[Command]
name = "Foible_Elle"                    ;Statedef 2600
command = ~D, B, ~y
time = 15
buffer.time = 5

[Command]
name = "Dragon_Fang_Spear"              ;Statedef 2400、2450
command = /z
time = 1
buffer.time = 3

[Command]
name = "Whirlwind_Wave_Spear"           ;Statedef 1600
command = ~D, F, x
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Wave_Spear"           ;Statedef 1600
command = ~D, F, ~x
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Wave_Spear"           ;Statedef 1600
command = ~D, F, z
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Wave_Spear"           ;Statedef 1600
command = ~D, F, ~z
time = 15
buffer.time = 5

[Command]
name = "Kuzukaze_Spear"                 ;Statedef 1500
command = ~D, B, b+c
time = 18
buffer.time = 6

[Command]
name = "Kuzukaze_Spear"                 ;Statedef 1500
command = ~D, B, ~b+c
time = 18
buffer.time = 6

[Command]
name = "Whirlwind_Spear_C"              ;Statedef 1300
command = ~F, D, DF, c
time = 20
buffer.time = 8

[Command]
name = "Whirlwind_Spear_C"              ;Statedef 1300
command = ~F, D, DF, ~c
time = 20
buffer.time = 8

[Command]
name = "Whirlwind_Spear_C"              ;Statedef 1300
command = ~D, F, c
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Spear_C"              ;Statedef 1300
command = ~D, F, ~c
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Spear_B"              ;Statedef 1200
command = ~F, D, DF, b
time = 20
buffer.time = 8

[Command]
name = "Whirlwind_Spear_B"              ;Statedef 1200
command = ~F, D, DF, ~b
time = 20
buffer.time = 8

[Command]
name = "Run_+_Whirlwind_Spear_B"        ;Statedef 102
command = ~D, F, b
time = 15
buffer.time = 5

[Command]
name = "Run_+_Whirlwind_Spear_B"        ;Statedef 102
command = ~D, F, ~b
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Spear_A"              ;Statedef 1100
command = ~F, D, DF, a
time = 20
buffer.time = 8

[Command]
name = "Whirlwind_Spear_A"              ;Statedef 1100
command = ~F, D, DF, ~a
time = 20
buffer.time = 8

[Command]
name = "Whirlwind_Spear_A"              ;Statedef 1100
command = ~D, F, a
time = 15
buffer.time = 5

[Command]
name = "Whirlwind_Spear_A"              ;Statedef 1100
command = ~D, F, ~a
time = 15
buffer.time = 5

[Command]
name = "Hyakka_Spear_(Air)"             ;Statedef 1050
command = x
time = 1
buffer.time = 2

[Command]
name = "Hyakka_Spear"                   ;Statedef 1000
command = x
time = 1
buffer.time = 2

[Command]
name = "Ice_Gale_Spear"                 ;Statedef 1700
command = ~D, F, y
time = 15
buffer.time = 5

[Command]
name = "Ice_Gale_Spear"                 ;Statedef 1700
command = ~D, F, ~y
time = 15
buffer.time = 5

[Command]
name = "Gale_Spear_Air_Move_Downward"   ;Statedef 1475
command = /$D, z
time = 5
buffer.time = 3

[Command]
name = "Gale_Spear_Air_Move_Forward"    ;Statedef 1450
command = z
time = 1
buffer.time = 2

[Command]
name = "Gale_Spear_Move_Upward"         ;Statedef 1425
command = /$D, z
time = 5
buffer.time = 3

[Command]
name = "Gale_Spear_Move_Forward"        ;Statedef 1400
command = z
time = 1
buffer.time = 2

[Command]
name = "Heaven's_Spear"                 ;Statedef 620
command = /$D, b
time = 1
buffer.time = 3

[Command]
name = "Heaven's_Spear"                 ;Statedef 620
command = a
time = 1
buffer.time = 2

[Command]
name = "Teleport_Heaven's_Spear"        ;Statedef 259
command = a+s
time = 1
buffer.time = 5

;＝＝＝＝＝＝＝＝＝＝＝＝＝< Throw >＝＝＝＝＝＝＝＝＝＝＝＝＝＝;
[Command]
name = "Back_Air_Somersault_Kick"       ;Statedef 875
command = /$B, b+c
time = 2
buffer.time = 6

[Command]
name = "Air_Somersault_Kick"            ;Statedef 850
command = b+c
time = 1
buffer.time = 5

[Command]
name = "Somersault_Kick"                ;Statedef 800
command = b+c
time = 1
buffer.time = 5

;＝＝＝＝＝＝＝＝＝< Dodge & Cancel Motions >＝＝＝＝＝＝＝＝＝;
[Command]
name = "Guard_Cancel_C"                 ;Statedef 720
command = /$F, b+c
time = 2
buffer.time = 6

[Command]
name = "Guard_Cancel_CB"                ;Statedef 725
command = /$B, b+c
time = 2
buffer.time = 6

[Command]
name = "Guard_Cancel_C"                 ;Statedef 720
command = b+c
time = 1
buffer.time = 5

[Command]
name = "Guard_Cancel_Y"                 ;Statedef 710
command = /$F, b+y
time = 2
buffer.time = 6

[Command]
name = "Guard_Cancel_YB"                ;Statedef 715
command = /$B, b+y
time = 2
buffer.time = 6

[Command]
name = "Guard_Cancel_Y"                 ;Statedef 710
command = b+y
time = 1
buffer.time = 5

[Command]
name = "Kinkyuu_Kaihi_(Front)"          ;Statedef 700
command = /$F, b+y
time = 2
buffer.time = 6

[Command]
name = "Kinkyuu_Kaihi_(Back)"           ;Statedef 705
command = /$B, b+y
time = 2
buffer.time = 6

[Command]
name = "Kinkyuu_Kaihi_(Front)"          ;Statedef 700
command = b+y
time = 1
buffer.time = 5

;＝＝＝＝＝＝＝＝＝＝＝＝< Double Tap >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command];*
name = "FF"
command = F, F
time = 15

[Command];*
name = "BB" 
command = B, B
time = 15

[Command];*
name = "UU"
command = U, U
time = 15

[Command];*
name = "DD"
command = D, D
time = 15

[Command]
name = "BB"
command = ~B, B
time = 5

;*必要指令 (不可刪除)
; Required (do not remove)

;＝＝＝＝＝＝＝＝＝＝＝＝< Blocking >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command]
name = "Blocking_Standing"              ;StateType = S
command = F
time = 1

[Command]
name = "Blocking_Crouching"             ;StateType = S
command = D
time = 1

[Command]
name = "Blocking_Crouching_2"           ;StateType = C
command = $F
time = 1

[Command]
name = "Blocking_Aerial"                ;StateType = A
command = F
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝< 2/3 Button Combination >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command];*
name = "recovery"
command = a 
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery"
command = z
time = 1

;*必要指令 (不可刪除，最少要設置一個)
; Required (Do not remove, at least one must be set)

;＝＝＝＝＝＝＝＝＝＝＝＝< Single Button >＝＝＝＝＝＝＝＝＝＝＝＝;
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

;＝＝＝＝＝＝＝＝＝＝＝＝< Dir >＝＝＝＝＝＝＝＝＝＝＝＝;
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝< Hold Dir >＝＝＝＝＝＝＝＝＝＝＝＝;
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

;＝＝＝＝＝＝＝＝＝＝＝＝< Hold Button >＝＝＝＝＝＝＝＝＝＝＝＝;
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
name = "holdstart"
command = /s
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝< Other >＝＝＝＝＝＝＝＝＝＝＝＝;
[command]
name = "Super Jump"                    ;Statedef 43
command = $D, $U
time = 15

[Command]
name = "DU"
command = D, U
time = 18

[Command]
name = "DU"
command = DB, UF
time = 18

[Command]
name = "DU"
command = DF, UB
time = 18

[Command]
name = "DU"
command = $D, UF
time = 18

[Command]
name = "DU"
command = $D, UB
time = 18

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; Command States (Use Statedef -1)
; 命令用States (使用Statedef -1)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Statedef -1]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI Switch Variable
; AI開關用變量
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Var 59 Set Up (AI On)]
type = VarSet
triggerall = var(59) <= 0 ;AI停止中
trigger1 = RoundState = 2 ;戰鬥中
trigger1 = AILevel ;AI操作Flag
trigger1 = Alive = 1 ;存活
trigger1 = Ctrl = 1 ;加上Ctrl防止AI偷跑 → 測試過添加此項不會在Ctrl = 0的Statedef中時 var(59)不會突然變成0 (AI OFF部份不能添加Ctrl = 0)
v = 59
value = Cond(AILevel > 8,8,AILevel) ;AI On啟動開始
ignorehitpause = 1

[State -1, Var 59 Set Up (AI Off)]
type = VarSet
triggerall = var(59) >= 1 ;AI啟動中
trigger1 = RoundState != 2 ;戰鬥中以外
trigger2 = AILevel = 0 ;玩家操作Flag
trigger3 = Alive = 0 ;死亡
v = 59
value = 0 ;AI Off停止
ignorehitpause = 1

; 參考來源 新MUGEN1.0&1.1での"AILevel"を用いた起動方法
; https://w.atwiki.jp/niconicomugen/pages/2329.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; AI Difficulty (Attack Probability) Variable
; AI強度/難度(攻擊機率)用變量
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Var 58 Set Up (AI Attack Probability)]
type = VarSet
trigger1 = 1
v = 58
value = (AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*60+(AILevel=6)*95+(AILevel=7)*160+(AILevel=8)*315+(AILevel>8)*360
;value = (AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+(AILevel=7)*150+(AILevel=8)*300

; Easy 簡單級別            原版建議數值 / 莉絲使用數值
; AI Lv = 1級時 var(58) =        3              3 
; AI Lv = 2級時 var(58) =        7              7

; Normal 正常級別
; AI Lv = 3級時 var(58) =       16             16
; AI Lv = 4級時 var(58) =       30             30
; AI Lv = 5級時 var(58) =       58             60

; Hard 困難級別
; AI Lv = 6級時 var(58) =       90             95
; AI Lv = 7級時 var(58) =      150            160
; AI Lv = 8級時 var(58) =      300            315 ~Highest AI Level~
; AI Lv > 8級時 var(58) =                     360 (備用設置 實際上MUGEN AI系統最高只有到8級)

; 較高的值將更頻繁地攻擊，而較低的值將更不頻繁地攻擊
; Random值超過500基本上無差異(以一個攻擊招式來算，反應時間低於1tick)

;-----------------------------------------------------------------------
; 一般性建議是
; Easy 簡單級別，請從1~15間隔中取數字，
; Normal 正常級別，請從10~50中取數字，
; Hard 困難級別，請從50~200中取數字。
; 具有更多動作或更好/更通用動作的角色通常需要較低的值，例如1~10(輕鬆)、10~30(普通)和30~100(硬)。

; 代碼參考網站：
; https://mugenfreeforall.com/topic/22615-seravys-ai-guide/AI_activation_for_winmugen.2Fbeta_mugen

; 補充：若要節省變量使用，可以跟AI開關使用的變量合併。
; 例如將v = 58的value那一串代碼寫在v = 59的value上。

;=======================================================================
;========================< Blocking >===================================
;=======================================================================

;---------------------------------------------------------------------------
; Blocking (Standing)
; 格擋 (正在站立時)
;---------------------------------------------------------------------------
[State -1, Blocking (Standing)]
type = HitOverride
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = (StateNo != [520,565])
triggerall = PalNo != [11,12] ;即使不添加此項 11P、12P常時霸體仍然會覆蓋格檔的效果
triggerall = StateType = S && Command = "Blocking_Standing" && Command != "back" && Command != "up" && Command != "down" ;意思是「向對手方向」按
;▼----------✱單獨觸發條件列表✱----------▼;✔ ← 打勾代表指令已經檢查過(基本上OK)
trigger1 = Ctrl || StateNo = 52 || (StateNo = [150,153])
attr = SA, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 520
slot = 0
time = 7 ;跟Statedef 7000的Timer Reset時間相同

;---------------------------------------------------------------------------
; Blocking (Crouching)
; 格擋 (正在蹲下時)
;---------------------------------------------------------------------------
[State -1, Blocking (Crouching)]
type = HitOverride
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = (StateNo != [520,565])
triggerall = PalNo != [11,12]
triggerall = StateType = S && Command = "Blocking_Crouching" || (StateType = C && Command = "Blocking_Crouching_2") && Command != "back" && Command != "up" ;意思是「站立時 向下」按  || 「蹲下時 向對手方向」
;▼----------✱單獨觸發條件列表✱----------▼;✔
trigger1 = Ctrl || StateNo = 52 || (StateNo = [150,153])
attr = C, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 540
slot = 0
time = 7

;---------------------------------------------------------------------------
; Blocking (Aerial)
; 格擋 (正在空中時)
;---------------------------------------------------------------------------
[State -1, Blocking (Aerial)]
type = HitOverride
triggerall = var(53) = 0
triggerall = var(59) = 0
triggerall = (StateNo != [520,565])
triggerall = PalNo != [11,12]
triggerall = StateType = A && Command = "Blocking_Aerial" && Command != "back" && Command != "up" && Command != "down" ;意思是「在空中時 向對手方向」按
;▼----------✱單獨觸發條件列表✱----------▼;✔
trigger1 = Ctrl || StateNo = 105 && Time >= 2 || StateNo = 111 || StateNo = 116 || (StateNo = [154,155])
attr = SCA, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 560
forceair = 1
slot = 0
time = 7

;=======================================================================
;=====================< Player Contral >================================
;=======================================================================
; 提醒：請將輸入條件高的手操代碼撰寫在上方。

; MoveContact
; 攻擊一接觸到(對手),MoveContact便返回1.
; 接觸了之後,在p1沒有停頓(p1招式接觸到對手後會產生停頓;查看HitDef控制器中pausetime參數)時
; MoveContact返回的值將隨著遊戲幀增加(1以上)。直到ChangeState後到新的Statedef重新歸零計算。

; 運算符介紹。
; https://www49.atwiki.jp/mugencns/pages/44.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear
; 百花光弾槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Hyakka Light Bullet Spear]
type = ChangeState
value = 3200
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Hyakka_Light_Bullet_Spear" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = power >= 2000 ;能量2000點以上
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || (stateno = [130,131]) || stateno = 140 || stateno = 652 ;可控制狀態&移動狀態&站立蹲下防禦時&防禦結束時&飛天槍跳完落地
trigger2 = stateno = 200 && (movecontact >= 1 || (animelemtime(4) >= 1)) ;通常攻擊5Y
trigger3 = stateno = 210 && (movecontact >= 1 || (animelemtime(6) >= 0)) ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movecontact >= 1 && animelemtime(6) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊5B
trigger8 = stateno = 240 && (movecontact >= 1 || (animelemtime(10) >= 1)) ;通常攻擊5C
trigger9 = stateno = 245 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && (movecontact >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger12 = stateno = 410 && (movecontact >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger13 = stateno = 440 && (movecontact >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 810 && (animelemtime(11) >= 1) ;筋斗踢
trigger15 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger16 = stateno = 1100 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍A
trigger17 = stateno = 1200 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍B (組合一)
trigger18 = stateno = 1202 && (movecontact >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger19 = stateno = 1300 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍C (組合一)
trigger20 = stateno = 1302 && (movecontact >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger21 = stateno = 1402 && (movecontact >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger22 = stateno = 1409 && (movecontact >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger23 = stateno = 1489 && (movecontact >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger24 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger25 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger26 = stateno = 2402 && (movecontact >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger27 = stateno = 2412 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger28 = stateno = 2489 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger29 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)^2
trigger30 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger31 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
;---------- stateno = 3107 →→→→→→→→→→ stateno = 106 ;流星衝^1
trigger32 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;^1 流星衝 招式結束後會ChangeState到Statedef 106狀態。

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear 
; 流星衝
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Meteor Spear]
type = ChangeState
value = 3100
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Meteor_Spear" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = power >= 1000 ;能量1000點以上
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || (stateno = [130,131]) || stateno = 140 || stateno = 652 ;可控制狀態&移動狀態&站立蹲下防禦時&防禦結束時&飛天槍跳完落地
trigger2 = stateno = 200 && (movecontact >= 1 || (animelemtime(4) >= 1)) ;通常攻擊5Y
trigger3 = stateno = 210 && (movecontact >= 1 || (animelemtime(6) >= 0)) ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movecontact >= 1 && animelemtime(6) >= 1) ;通常攻擊5Y*5 
trigger7 = stateno = 230 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊5B
trigger8 = stateno = 240 && (movecontact >= 1 || (animelemtime(10) >= 1)) ;通常攻擊5C
trigger9 = stateno = 245 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && (movecontact >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger12 = stateno = 410 && (movecontact >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger13 = stateno = 440 && (movecontact >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 810 && (animelemtime(11) >= 1) ;筋斗踢
trigger15 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger16 = stateno = 1100 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍A
trigger17 = stateno = 1200 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍B (組合一)
trigger18 = stateno = 1202 && (movecontact >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger19 = stateno = 1300 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍C (組合一)
trigger20 = stateno = 1302 && (movecontact >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger21 = stateno = 1402 && (movecontact >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger22 = stateno = 1409 && (movecontact >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger23 = stateno = 1489 && (movecontact >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger24 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger25 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger26 = stateno = 2402 && (movecontact >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger27 = stateno = 2412 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger28 = stateno = 2489 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger29 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger30 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger31 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
;---------- stateno = 3213 →→→→→→→→→→ ctrl ;百花光弾槍^1
trigger32 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;^1 百花光弾槍 招式為直接結束到ctrl = 1為止(上面寫的trigger1 = ctrl即可)。

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Vacuum Wave Spear
; 真空波動槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Vacuum Wave Spear]
type = ChangeState
value = 3000
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Vacuum_Wave_Spear" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
triggerall = power >= 1000 ;能量1000點以上
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || (stateno = [130,131]) || stateno = 140 || stateno = 652 ;可控制狀態&移動狀態&站立蹲下防禦時&防禦結束時&飛天槍跳完落地
trigger2 = stateno = 200 && (movecontact >= 1 || (animelemtime(4) >= 1)) ;通常攻擊5Y
trigger3 = stateno = 210 && (movecontact >= 1 || (animelemtime(6) >= 0)) ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movecontact >= 1 && animelemtime(6) >= 1) ;通常攻擊5Y*5 
trigger7 = stateno = 230 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊5B
trigger8 = stateno = 240 && (movecontact >= 1 || (animelemtime(10) >= 1)) ;通常攻擊5C
trigger9 = stateno = 245 && (movecontact >= 1 || (animelemtime(7) >= 1)) ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && (movecontact >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger12 = stateno = 410 && (movecontact >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger13 = stateno = 440 && (movecontact >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 810 && (animelemtime(11) >= 1) ;筋斗踢
trigger15 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger16 = stateno = 1100 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍A
trigger17 = stateno = 1200 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍B (組合一)
trigger18 = stateno = 1202 && (movecontact >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger19 = stateno = 1300 && (movecontact >= 1 && animelemtime(8) >= 1) ;旋風槍C (組合一)
trigger20 = stateno = 1302 && (movecontact >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger21 = stateno = 1402 && (movecontact >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger22 = stateno = 1409 && (movecontact >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger23 = stateno = 1489 && (movecontact >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger24 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger25 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger26 = stateno = 2402 && (movecontact >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger27 = stateno = 2412 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger28 = stateno = 2489 && (movecontact >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger29 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger30 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger31 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Kuzukaze Spear《Command Grab》
; 屑風槍《指令投》
;===========================================================================
[State -1, Kuzukaze Spear]
type = ChangeState
value = 1500
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Kuzukaze_Spear" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger6 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger7 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier
; 氣障壁
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Barrier]
type = ChangeState
value = cond(statetype = A,3810,3800) ;如果狀態類型為空中 轉為空中版氣障壁
triggerall = alive ;人物存活
triggerall = var(53) = 0 ;復活未開啟時
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Barrier" ;指令名稱
triggerall = power >= 1000 ;能量1000點以上
triggerall = numprojid(7975) = 0 ;未出現氣障壁特效
triggerall = numprojid(7976) = 0 ;未出現氣障壁特效
triggerall = movetype != I && movetype != A ;招式類型不是空閒和攻擊
triggerall = movetype = H && (stateno != [120,159]) ;招式類型為受擊和不處於防禦狀態時
triggerall = roundstate = [2,3] ;戰鬥中和剛結束時
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = palno = [1,10] ;人物色表編號1~10
trigger2 = palno = [1,10] ;人物色表編號1~10
trigger2 = canrecover ;可受身時

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Support Knight Summon C (Clone Pharsalia)
; 支援騎士召喚C (複製型法莎莉雅)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Support Knight Summon C (Clone Pharsalia)]
type = ChangeState
value = 3600
triggerall = var(39) >= 3 ;騎士卡牌點數3點以上
triggerall = var(59) = 0 ;AI關閉時
triggerall = movetype != H ;招式類型不是受擊
triggerall = command = "Clone_Pharsalia" ;指令名稱
triggerall = numhelper(13600) = 0 ;法莎莉雅未出現時
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 43 || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger12 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger13 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger14 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger15 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger16 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger17 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger18 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger19 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger20 = stateno = 810 && (animelemtime(11) >= 1) ;筋斗踢
;---------- stateno = 860 →→→→→→→→→→ ctrl ;空中筋斗踢^1
;---------- stateno = 885 →→→→→→→→→→ ctrl ;後空中筋斗踢^1
trigger21 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger22 = stateno = 1050 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍 / 空中
trigger23 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger24 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger25 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger26 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger27 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger28 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger29 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger30 = stateno = 1425 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 向上移動
trigger31 = stateno = 1452 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 空中向前移動
trigger32 = stateno = 1475 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 空中向下移動
trigger33 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger34 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger35 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger36 = stateno = 1700 && (movehit >= 1 && animelemtime(6) >= 1) ;冰風槍
trigger37 = stateno = 2402 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger38 = stateno = 2412 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger39 = stateno = 2452 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍 / 空中
trigger40 = stateno = 2462 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 空中轉向
trigger41 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger42 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger43 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger44 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger45 = stateno = 3107 && animelemtime(1) >= 1 ;流星衝 / 第六段

;^1 空中筋斗踢 招式結束後會ChangeState到Statedef 50狀態(並且Ctrl狀態改為1)。

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Support Knight Summon B (Clone Scathach)
; 支援騎士召喚B (複製型斯卡哈)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Support Knight Summon B (Clone Scathach)]
type = ChangeState
value = 2800
triggerall = var(39) >= 2 ;騎士卡牌點數2點以上
triggerall = var(59) = 0 ;AI關閉時
triggerall = movetype != H ;招式類型不是受擊
triggerall = command = "Clone_Scathach" ;指令名稱
triggerall = numhelper(12800) = 0 ;斯卡哈未出現時
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 43 || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movecontact >= 1 && animelemtime(6) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger12 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger13 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger14 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger15 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger16 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger17 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger18 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger19 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger20 = stateno = 810 && (animelemtime(10) >= 1) ;筋斗踢
trigger21 = stateno = 860 && (animelemtime(10) >= 1) ;空中筋斗踢
trigger22 = stateno = 885 && (animelemtime(10) >= 1) ;後空中筋斗踢
trigger23 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger24 = stateno = 1050 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍 / 空中
trigger25 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger26 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger27 = stateno = 1202 && (movecontact >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger28 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger29 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger30 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger31 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger32 = stateno = 1425 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 向上移動
trigger33 = stateno = 1452 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 空中向前移動
trigger34 = stateno = 1475 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 空中向下移動
trigger35 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger36 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger37 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger38 = stateno = 1700 && (movehit >= 1 && animelemtime(6) >= 1) ;冰風槍
trigger39 = stateno = 2402 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger40 = stateno = 2412 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger41 = stateno = 2452 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍 / 空中
trigger42 = stateno = 2462 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 空中轉向
trigger43 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger44 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger45 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger46 = stateno = 3107 && animelemtime(1) >= 1 ;流星衝 / 第六段
trigger47 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Support Knight Summon A (Foible Elle)
; 支援騎士召喚A (弱酸型艾爾)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Support Knight Summon A (Foible Elle)]
type = ChangeState
value = 2600
triggerall = var(39) >= 1 ;騎士卡牌點數1點以上
triggerall = var(59) = 0 ;AI關閉時
triggerall = movetype != H ;招式類型不是受擊
triggerall = command = "Foible_Elle" ;指令名稱
triggerall = numhelper(12600) = 0 ;艾爾未出現時
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 43 || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger12 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger13 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger14 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger15 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger16 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger17 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger18 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger19 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger20 = stateno = 810 && (animelemtime(11) >= 1) ;筋斗踢
trigger21 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger22 = stateno = 1050 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍 / 空中
trigger23 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger24 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger25 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger26 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger27 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger28 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger29 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger30 = stateno = 1425 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 向上移動
trigger31 = stateno = 1452 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 空中向前移動
trigger32 = stateno = 1475 && (movehit >= 1 && animelemtime(6) >= 1) ;疾風槍 / 空中向下移動
trigger33 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger34 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger35 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger36 = stateno = 1700 && (movehit >= 1 && animelemtime(6) >= 1) ;冰風槍
trigger37 = stateno = 2402 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger38 = stateno = 2412 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger39 = stateno = 2452 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍 / 空中
trigger40 = stateno = 2462 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 空中轉向
trigger41 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger42 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger43 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger44 = stateno = 3107 && animelemtime(1) >= 1 ;流星衝 / 第六段
trigger45 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Whirlwind Wave Spear
; 旋風波動槍
;===========================================================================
[State -1, Whirlwind Wave Spear]
type = ChangeState
value = 1600
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Whirlwind_Wave_Spear" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger16 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger17 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger18 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger19 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger20 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger21 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger22 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger23 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Whirlwind Spear C
; 旋風槍C
;===========================================================================
[State -1, Whirlwind Spear C]
type = ChangeState
value = 1300
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Whirlwind_Spear_C" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger16 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger17 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger18 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger19 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger20 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger21 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger22 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger23 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Whirlwind Spear B
; 旋風槍B
;===========================================================================
[State -1, Whirlwind Spear B]
type = ChangeState
value = 1200
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Whirlwind_Spear_B" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger16 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger17 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger18 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger19 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger20 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger21 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger22 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger23 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Run Forward 2 + Whirlwind Spear B
; 向前跑2 + 旋風槍B
;---------------------------------------------------------------------------
[State -1, Run Forward 2 + Whirlwind Spear B]
type = ChangeState
value = 102
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Run_+_Whirlwind_Spear_B" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 102 ;狀態編號不是102
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger16 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger17 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger18 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger19 = stateno = 2402 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger20 = stateno = 2412 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger21 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger22 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger23 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger24 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger25 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Whirlwind Spear A
; 旋風槍A
;===========================================================================
[State -1, Whirlwind Spear A]
type = ChangeState
value = 1100
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Whirlwind_Spear_A" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger16 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger17 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger18 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger19 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger20 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger21 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger22 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger23 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Hyakka Spear / Air
; 百花槍 / 空中
;===========================================================================
[State -1, Hyakka Spear / Air]
type = ChangeState
value = 1050
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 222 ;狀態編號不是222
triggerall = stateno != 1000 ;狀態編號不是1000
triggerall = stateno != 1050 ;狀態編號不是1050
triggerall = command = "Hyakka_Spear_(Air)" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 105 && time >= 2 || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger2 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger3 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger4 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger5 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger6 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger7 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger8 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger9 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger10 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Hyakka Spear
; 百花槍
;===========================================================================
[State -1, Hyakka Spear]
type = ChangeState
value = 1000
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 222 ;狀態編號不是222
triggerall = stateno != 1000 ;狀態編號不是1000
triggerall = stateno != 1050 ;狀態編號不是1050
triggerall = command = "Hyakka_Spear" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger15 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger16 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger17 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger18 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger19 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger20 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger21 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Gale Spear / Air Move Downward
; 疾風槍 / 空中向下移動
;===========================================================================
[State -1, Gale Spear / Air Move Downward]
type = ChangeState
value = 1475
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 1475 ;狀態編號不是1475
triggerall = command = "Gale_Spear_Air_Move_Downward" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 105 && time >= 2 || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger2 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger3 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger4 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger5 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger6 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger7 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger8 = stateno = 1050 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍 / 空中
trigger9 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger10 = stateno = 2800 && (animelemtime(18) >= 1 || (animelemtime(15) >= 1 && numtarget(12860) >= 1)) ;支援騎士召喚B (複製型斯卡哈)
trigger11 = stateno = 3107 && animelemtime(1) >= 1 ;流星衝 / 第六段
trigger12 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Dragon Fang Spear / Air
; 龍牙槍 / 空中
;===========================================================================
;[State -1, Dragon Fang Spear / Air ] ;^1
;type = ChangeState
;value = 2450
;triggerall = var(59) = 0 ;AI關閉時
;triggerall = statetype = A ;狀態類型為空中
;triggerall = stateno != 2450 ;狀態編號不是2450
;triggerall = command = "Dragon_Fang_Spear" ;指令名稱
;;▼----------✱單獨型觸發條件列表✱----------▼;✔
;trigger1 = ctrl || stateno = 105 && time >= 2 || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態

;^1 疾風槍 / 空中向前移動 招式指令一直按住後即為 龍牙槍 / 空中
;   因此招式代碼不用撰寫

;===========================================================================
; Gale Spear / Air Move Forward
; 疾風槍 / 空中向前移動
;===========================================================================
[State -1, Gale Spear / Air Move Forward]
type = ChangeState
value = 1450
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 1450 ;狀態編號不是1450
triggerall = command = "Gale_Spear_Air_Move_Forward" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 105 && time >= 2 || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger2 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger3 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger4 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊B (空中)
trigger5 = (stateno = [620,625]) && (movecontact || (animelemtime(3) >= 1)) ;飛天槍
trigger6 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger7 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger8 = stateno = 1050 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍 / 空中
trigger9 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger10 = stateno = 2800 && (animelemtime(18) >= 1 || (animelemtime(15) >= 1 && numtarget(12860) >= 1)) ;支援騎士召喚B (複製型斯卡哈)
trigger11 = stateno = 3107 && animelemtime(1) >= 1 ;流星衝 / 第六段
trigger12 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Gale Spear / Move Upward
; 疾風槍 / 向上移動
;===========================================================================
[State -1, Gale Spear / Move Upward]
type = ChangeState
value = 1425
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 1425 ;狀態編號不是1425
triggerall = command = "Gale_Spear_Move_Upward" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && (movecontact >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger12 = stateno = 410 && (movecontact >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger13 = stateno = 440 && movecontact ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger16 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger17 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger18 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger19 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger20 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger21 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger22 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger23 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger24 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger25 = stateno = 2800 && (animelemtime(18) >= 1 || (animelemtime(15) >= 1 && numtarget(12860) >= 1)) ;支援騎士召喚B (複製型斯卡哈)
trigger26 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger27 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Ice Gale Spear
; 冰風槍
;===========================================================================
[State -1, Ice Gale Spear]
type = ChangeState
value = 1700
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 1700 ;狀態編號不是1700
triggerall = command = "Ice_Gale_Spear" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && (movecontact >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger12 = stateno = 410 && (movecontact >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger13 = stateno = 440 && movecontact ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger16 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger17 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger18 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger19 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger20 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger21 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger22 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger23 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger24 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger25 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger26 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger27 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;===========================================================================
; Dragon Fang Spear
; 龍牙槍
;===========================================================================
;[State -1, Dragon Fang Spear]
;type = ChangeState
;value = 2400
;triggerall = var(59) = 0 ;AI關閉時
;triggerall = statetype != A ;狀態類型不是空中
;triggerall = stateno != [2400,2489] ;狀態編號不是2400~2489
;triggerall = command = "Dragon_Fang_Spear" ;指令名稱
;;▼----------✱單獨型觸發條件列表✱----------▼;✔
;trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態

;^1 疾風槍 / 向前移動 招式指令一直按住後即為 龍牙槍
;   因此招式代碼不用撰寫

;===========================================================================
; Gale Spear / Move Forward
; 疾風槍 / 向前移動
;===========================================================================
[State -1, Gale Spear / Move Forward]
type = ChangeState
value = 1400
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != [1400,1489] ;狀態編號不是1400~1489
triggerall = command = "Gale_Spear_Move_Forward" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && movecontact ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger16 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger17 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger18 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger19 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger20 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger21 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger22 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger23 = stateno = 2800 && (animelemtime(18) >= 1 || (animelemtime(15) >= 1 && numtarget(12860) >= 1)) ;支援騎士召喚B (複製型斯卡哈)
trigger24 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍
trigger25 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Run Forward
; 向前跑
;---------------------------------------------------------------------------
[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "FF" ;指令名稱
triggerall = statetype = S ;狀態類型為站立
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態

;---------------------------------------------------------------------------
; Hop Backwards
; 向後跳
;---------------------------------------------------------------------------
[State -1, Hop Backwards]
type = ChangeState
value = 105
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "BB" ;指令名稱
triggerall = statetype = S ;狀態類型為站立
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態

;---------------------------------------------------------------------------
; Forward Dash / Air
; 向前衝刺 / 空中
;---------------------------------------------------------------------------
[State -1, Forward Dash / Air]
type = ChangeState
value = 110
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "FF" ;指令名稱
triggerall = statetype = A ;狀態類型為空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態
trigger2 = stateno = 43 ;超級跳躍
trigger3 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger4 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger5 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger6 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Back Dash / Air
; 向後衝刺 / 空中
;---------------------------------------------------------------------------
[State -1, Back Dash / Air]
type = ChangeState
value = 115
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "BB" ;指令名稱
triggerall = statetype = A ;狀態類型為空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態
trigger2 = stateno = 43 ;超級跳躍
trigger3 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger4 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger5 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger6 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Jump Start / Super Jump
; 跳躍開始 / 超級跳躍
;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 43
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Super Jump" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態
trigger2 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger3 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger4 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)
trigger5 = stateno = 3010 && animelemtime(30) >= 1 ;真空波動槍

[State -1, Super Jump Forward]
type = VelAdd
triggerall = command = "holdfwd" ;指令名稱
triggerall = prevstateno = 43 ;上一個狀態編號為43
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 50 ;狀態編號為50
x = 1.25 

[State -1, Super Jump Back]
type = VelAdd
triggerall = command = "holdback" ;指令名稱
triggerall = prevstateno = 43 ;上一個狀態編號為43
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 50 ;狀態編號為50
x = -1.25

;---------------------------------------------------------------------------
; Somersault Kick
; 筋斗踢
;---------------------------------------------------------------------------
[State -1, Somersault Kick]
type = ChangeState
value = 800
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Somersault_Kick" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != [100,102] ;狀態編號不是100~102
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
;triggerall = (p2bodydist x = [-20,120]) ;與對手X軸距離
;triggerall = (p2statetype = S) || (p2statetype = C) ;對手狀態類型為站立 或 蹲下
;triggerall = p2movetype != H ;對手招式類型不是受擊
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態

;---------------------------------------------------------------------------
; Back Air Somersault Kick
; 後空中筋斗踢
;---------------------------------------------------------------------------
[State -1, Back Air Somersault Kick]
type = ChangeState
value = 875
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Back_Air_Somersault_Kick" ;指令名稱
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 110 ;狀態編號不是110 (不處於向前衝刺狀態時)
triggerall = stateno != 115 ;狀態編號不是115 (不處於向後衝刺狀態時)
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
;triggerall = (p2bodydist x = [-30,167]) ;與對手X軸距離 (因為holdback時人物可能會向後移動一點點 所以需要多一點距離)
;triggerall = p2statetype = A ;對手狀態類型為空中
;triggerall = p2movetype != H ;對手招式類型不是受擊
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) || stateno = 111 || stateno = 116 ;可控制狀態&移動狀態
trigger2 = stateno = 43 ;超級跳躍
trigger3 = stateno = 111 ;向前衝刺 / 空中結束
trigger4 = stateno = 116 ;向後衝刺 / 空中結束
trigger5 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)

;---------------------------------------------------------------------------
; Air Somersault Kick
; 空中筋斗踢
;---------------------------------------------------------------------------
[State -1, Air Somersault Kick]
type = ChangeState
value = 850
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Air_Somersault_Kick" ;指令名稱
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 110 ;狀態編號不是110 (不處於向前衝刺狀態時)
triggerall = stateno != 115 ;狀態編號不是115 (不處於向後衝刺狀態時)
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
;triggerall = (p2bodydist x = [-18,100]) ;與對手X軸距離
;triggerall = p2statetype = A ;對手狀態類型為空中
;triggerall = p2movetype != H ;對手招式類型不是受擊
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) || stateno = 111 || stateno = 116 ;可控制狀態&移動狀態
trigger2 = stateno = 43 ;超級跳躍
trigger3 = stateno = 111 ;向前衝刺 / 空中結束
trigger4 = stateno = 116 ;向後衝刺 / 空中結束
trigger5 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)

;---------------------------------------------------------------------------
; Normal Attack 2Y / Crouch Chain Barrage (1)
; 通常攻擊2Y / 蹲下連鎖亂擊(一)
;---------------------------------------------------------------------------
[State -1, Normal Attack 2Y / Crouch Chain Barrage (1)]
type = ChangeState
value = 400
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "holddown" && command = "y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || stateno = 652 ;可控制狀態&移動狀態&飛天槍跳完落地
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 440 && (moveguarded >= 1 && animelemtime(10) >= 1) ;通常攻擊2C
trigger4 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger5 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger6 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)

;---------------------------------------------------------------------------
; Normal Attack 2B / Crouch Chain Barrage (2)
; 通常攻擊2B / 蹲下連鎖亂擊(二)
;---------------------------------------------------------------------------
[State -1, Normal Attack 2B / Crouch Chain Barrage (2)]
type = ChangeState
value = 410
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = command = "holddown" && command = "b" ;指令名稱
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = command = "holddown" && command = "b" ;指令名稱
trigger2 = stateno = 230 && movecontact ;通常攻擊5B
trigger3 = command = "holddown" && command = "b" ;指令名稱
trigger3 = stateno = 400 && movecontact ;通常攻擊2Y
trigger4 = (command = "holddown") && (command = "y") ;指令名稱
trigger4 = stateno = 400 && movecontact ;通常攻擊2Y
trigger5 = command = "holddown" && command = "b" ;指令名稱
trigger5 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger6 = command = "holddown" && command = "b" ;指令名稱
trigger6 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)

;---------------------------------------------------------------------------
; Normal Attack 2C / Crouch Chain Barrage (3)
; 通常攻擊2C / 蹲下連鎖亂擊(三)
;---------------------------------------------------------------------------
[State -1, Normal Attack 2C / Crouch Chain Barrage (3)]
type = ChangeState
value = 440
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = (command = "holddown") && (command = "c") ;指令名稱
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (command = "holddown") && (command = "c") ;指令名稱
trigger2 = stateno = 410 && movecontact ;通常攻擊2B
trigger3 = (command = "holddown") && (command = "y") ;指令名稱
trigger3 = stateno = 410 && movecontact ;通常攻擊2B
trigger4 = (command = "holddown") && (command = "c") ;指令名稱
trigger4 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger5 = (command = "holddown") && (command = "c") ;指令名稱
trigger5 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)

;---------------------------------------------------------------------------
; Normal Attack 6C
; 通常攻擊6C
;---------------------------------------------------------------------------
[State -1, Normal Attack 6C]
type = ChangeState
value = 245
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "holdfwd" && command = "c" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || stateno = 652 ;可控制狀態&移動狀態&飛天槍跳完落地
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 230 && movecontact ;通常攻擊5B
trigger7 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger8 = stateno = 400 && (movehit >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger9 = stateno = 410 && (movehit >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger10 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger11 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger12 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger13 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger14 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger15 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger16 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Teleport Heaven's Spear
; 瞬間移動飛天槍
;---------------------------------------------------------------------------
[State -1, Teleport Heaven's Spear]
type = ChangeState
value = 259
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Teleport_Heaven's_Spear" ;指令名稱
triggerall = power >= 1000 ;能量1000點以上
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 259 ;狀態編號不是259
triggerall = (stateno != [620,625]) ;狀態編號不是620~625
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 227 && (movehit >= 1 && animelemtime(16) >= 1) ;通常攻擊5Y*5
trigger7 = stateno = 230 && movecontact ;通常攻擊5B
trigger8 = stateno = 240 && movecontact ;通常攻擊5C
trigger9 = stateno = 245 && movecontact ;通常攻擊6C
trigger10 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger11 = stateno = 400 && ((movehit >= 1 && animelemtime(2) >= 1) || (moveguarded >= 1 && animelemtime(4) >= 1)) ;通常攻擊2Y
trigger12 = stateno = 410 && ((movehit >= 1 && animelemtime(4) >= 1) || (moveguarded >= 1 && animelemtime(6) >= 3)) ;通常攻擊2B
trigger13 = stateno = 440 && (movehit >= 1 && animelemtime(5) >= 1) ;通常攻擊2C
trigger14 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger15 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍A
trigger16 = stateno = 1200 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍B (組合一)
trigger17 = stateno = 1202 && (movehit >= 1 && animelemtime(4) >= 1) ;旋風槍B (組合二)
trigger18 = stateno = 1300 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;旋風槍C (組合一)
trigger19 = stateno = 1302 && (movehit >= 1 && animelemtime(3) >= 1) ;旋風槍C (組合二)
trigger20 = stateno = 1402 && (movehit >= 1 && animelemtime(7) >= 1) ;疾風槍 / 向前移動
trigger21 = stateno = 1409 && (movehit >= 1 && animelemtime(7) >= 1) ;火風槍 (防禦取消C / 防禦取消CB)
trigger22 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger23 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger24 = stateno = 1600 && ((animelemtime(19) >= 3) || (time >= 47)) ;旋風波動槍
trigger25 = stateno = 2402 && (movehit >= 1 && animelemtime(7) >= 1) ;龍牙槍
trigger26 = stateno = 2412 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 / 轉向
trigger27 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger28 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger29 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger30 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Guard Cancel CB / Fire Gale Spear
; 防禦取消CB / 火風槍
;---------------------------------------------------------------------------
[State -1, Guard Cancel CB / Fire Gale Spear]
type = ChangeState
value = 725
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Guard_Cancel_CB" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = movetype = H ;招式類型為受擊
trigger1 = statetype != A ;狀態類型不是空中
trigger1 = power >= 1000 ;能量1000點以上
trigger1 = stateno = [150,159] ;狀態編號150~159
trigger1 = palno = [1,10] ;人物色表編號1~10

;---------------------------------------------------------------------------
; Guard Cancel C / Fire Gale Spear
; 防禦取消C / 火風槍
;---------------------------------------------------------------------------
[State -1, Guard Cancel C / Fire Gale Spear]
type = ChangeState
value = 720
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Guard_Cancel_C" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = movetype = H ;招式類型為受擊
trigger1 = statetype != A ;狀態類型不是空中
trigger1 = power >= 1000 ;能量1000點以上
trigger1 = stateno = [150,159] ;狀態編號150~159
trigger1 = palno = [1,10] ;人物色表編號1~10

;---------------------------------------------------------------------------
; Guard Cancel YB / Kinkyuu Kaihi Back
; 防禦取消YB / 緊急回避後
;---------------------------------------------------------------------------
[State -1, Guard Cancel YB / Kinkyuu Kaihi Back]
type = ChangeState
value = 715
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Guard_Cancel_YB" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = movetype = H ;招式類型為受擊
trigger1 = statetype != A ;狀態類型不是空中
trigger1 = power >= 500 ;能量500點以上
trigger1 = stateno = [150,159] ;狀態編號150~159
trigger1 = palno = [1,10] ;人物色表編號1~10

;---------------------------------------------------------------------------
; Guard Cancel Y / Kinkyuu Kaihi Front
; 防禦取消Y / 緊急回避前
;---------------------------------------------------------------------------
[State -1, Guard Cancel Y / Kinkyuu Kaihi Front]
type = ChangeState
value = 710
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Guard_Cancel_Y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = movetype = H ;招式類型為受擊
trigger1 = statetype != A ;狀態類型不是空中
trigger1 = power >= 500 ;能量500點以上
trigger1 = stateno = [150,159] ;狀態編號150~159
trigger1 = palno = [1,10] ;人物色表編號1~10

;---------------------------------------------------------------------------
; Kinkyuu Kaihi (Back)
; 緊急回避 (後)
;---------------------------------------------------------------------------
[State -1, Kinkyuu Kaihi (Back)]
type = ChangeState
value = 705
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Kinkyuu_Kaihi_(Back)" ;指令名稱
triggerall = movetype != H ;招式類型不是受擊
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 810 && (animelemtime(12) >= 1) ;筋斗踢
trigger3 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger4 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger5 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)

;---------------------------------------------------------------------------
; Kinkyuu Kaihi (Front)
; 緊急回避 (前)
;---------------------------------------------------------------------------
[State -1, Kinkyuu Kaihi (Front)]
type = ChangeState
value = 700
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "Kinkyuu_Kaihi_(Front)" ;指令名稱
triggerall = movetype != H ;招式類型不是受擊
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 810 && (animelemtime(12) >= 1) ;筋斗踢
trigger3 = stateno = 1489 && animelemtime(5) >= 1 ;疾風槍 (落地)
trigger4 = stateno = 1510 && animelemtime(13) >= 1 ;屑風槍《指令投》
trigger5 = stateno = 2489 && animelemtime(5) >= 1 ;龍牙槍 (落地)

;---------------------------------------------------------------------------
; Normal Attack 5A
; 通常攻擊5A
;---------------------------------------------------------------------------
[State -1, Normal Attack 5A]
type = ChangeState
value = 250
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "a" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || stateno = 652 ;可控制狀態&移動狀態&飛天槍跳完落地
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 222 && (movecontact >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger6 = stateno = 230 && movecontact ;通常攻擊5B
trigger7 = stateno = 240 && movecontact ;通常攻擊5C
trigger8 = stateno = 245 && movecontact ;通常攻擊6C
trigger9 = stateno = 400 && (movehit >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger10 = stateno = 410 && (movehit >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger11 = stateno = 1000 && (movecontact >= 1 && animelemtime(17) >= 1) ;百花槍
trigger12 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger13 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger14 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger15 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger16 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger17 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Normal Attack 6C
; 通常攻擊6C
;---------------------------------------------------------------------------
[State -1, Normal Attack 6C]
type = ChangeState
value = 245
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "c" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 240 && (movecontact && animelemtime(8) >= 1) ;通常攻擊5C

;---------------------------------------------------------------------------
; Normal Attack 5C
; 通常攻擊5C
;---------------------------------------------------------------------------
[State -1, Normal Attack 5C]
type = ChangeState
value = 240
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "c" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(9) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 230 && movecontact ;通常攻擊5B
trigger6 = stateno = 245 && (movecontact && animelemtime(5) >= 5) ;通常攻擊6C
trigger7 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger8 = stateno = 400 && (movehit >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger9 = stateno = 410 && (movehit >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger10 = stateno = 1489 && (movehit >= 1 && animelemtime(5) >= 1) ;疾風槍 (落地)
trigger11 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger12 = stateno = 2489 && (movehit >= 1 && animelemtime(5) >= 1) ;龍牙槍 (落地)
trigger13 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger14 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger15 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Normal Attack 5B
; 通常攻擊5B
;---------------------------------------------------------------------------
[State -1, Normal Attack 5B]
type = ChangeState
value = 230
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "b" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = stateno = 200 && movecontact ;通常攻擊5Y
trigger3 = stateno = 210 && movecontact ;通常攻擊5Y*2
trigger4 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3
trigger5 = stateno = 240 && movecontact ;通常攻擊5C
trigger6 = stateno = 245 && movecontact ;通常攻擊6C
trigger7 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger8 = stateno = 400 && (movehit >= 1 && animelemtime(2) >= 1) ;通常攻擊2Y
trigger9 = stateno = 410 && (movehit >= 1 && animelemtime(4) >= 1) ;通常攻擊2B
trigger10 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》
trigger11 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;支援騎士召喚A (弱酸型艾爾)
trigger12 = stateno = 2800 && animelemtime(18) >= 1 ;支援騎士召喚B (複製型斯卡哈)
trigger13 = stateno = 3600 && animelemtime(32) >= 1 ;支援騎士召喚C (複製型法莎莉雅)

;---------------------------------------------------------------------------
; Normal Attack 5Y / Chain Barrage (1)
; 通常攻擊5Y / 連鎖亂擊(一)
;---------------------------------------------------------------------------
[State -1, Normal Attack 5Y / Chain Barrage (1)]
type = ChangeState
value = 200
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 20 || stateno = 52 || stateno = 100 || stateno = 102 || stateno = 103 || stateno = 106 || stateno = 652 ;可控制狀態&移動狀態&飛天槍跳完落地
trigger2 = stateno = 250 && (moveguarded >= 1 && animelemtime(4) >= 1) ;通常攻擊5A
trigger3 = stateno = 1510 && animelemtime(12) >= 1 ;屑風槍《指令投》

;---------------------------------------------------------------------------
; Normal Attack 5Y*2 / Chain Barrage (2)
; 通常攻擊5Y*2 / 連鎖亂擊(二)
;---------------------------------------------------------------------------
[State -1, Normal Attack 5Y*2 / Chain Barrage (2)]
type = ChangeState
value = 210
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 200 && movecontact >= 1 ;通常攻擊5Y
trigger2 = stateno = 400 && movecontact >= 1 ;通常攻擊2Y

;---------------------------------------------------------------------------
; Normal Attack 5Y*3 / Chain Barrage (3)
; 通常攻擊5Y*3 / 連鎖亂擊(三)
;---------------------------------------------------------------------------
[State -1, Normal Attack 5Y*3 / Chain Barrage (3)]
type = ChangeState
value = 220
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 210 && movecontact >= 1 ;通常攻擊5Y*2
trigger2 = stateno = 410 && movecontact >= 1 ;通常攻擊2B

;---------------------------------------------------------------------------
; Normal Attack 5Y*4 / Chain Barrage (4)
; 通常攻擊5Y*4 / 連鎖亂擊(四)
;---------------------------------------------------------------------------
[State -1, Normal Attack 5Y*4 / Chain Barrage (4)]
type = ChangeState
value = 222
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = stateno != 222 ;狀態編號不是222
triggerall = stateno != 1000 ;狀態編號不是1000
triggerall = stateno != 1050 ;狀態編號不是1050
triggerall = command = "y" ;指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Vacuum Wave Spear (One-Click Super Cancel Hyakka Spear)
; 真空波動槍 (一鍵超級取消百花槍)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, Vacuum Wave Spear (One-Click Super Cancel Hyakka Spear)]
type = ChangeState
value = 3000
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "y" ;指令名稱
triggerall = statetype != A ;狀態類型不是空中
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
triggerall = power >= 1000 ;能量1000點以上
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 222 && animelemtime(17) >= 1 ;通常攻擊5Y*4
trigger1 = movecontact >= 1 ;招式接觸對手時
trigger2 = stateno = 1000 && animelemtime(17) >= 1 ;百花槍
trigger2 = movecontact >= 1 ;招式接觸對手時

;---------------------------------------------------------------------------
; Normal Attack 5Y*5 / Chain Barrage (5)
; 通常攻擊5Y*5 / 連鎖亂擊(五)
;---------------------------------------------------------------------------
[State -1, Normal Attack 5Y*5 / Chain Barrage (5)]
type = ChangeState
value = 227
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype != A ;狀態類型不是空中
triggerall = command = "y" || command = "b" || command = "c";指令名稱
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = stateno = 222 && animelemtime(17) >= 1 ;通常攻擊5Y*4
trigger1 = movecontact >= 1 ;招式接觸對手時
trigger2 = stateno = 1000 && animelemtime(17) >= 1 ;百花槍
trigger2 = movecontact >= 1 ;招式接觸對手時

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; Taunt
; 挑釁
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0 ;AI關閉時
triggerall = command = "start" ;指令名稱
triggerall = stateno != 195 ;狀態編號不是195
triggerall = statetype != A ;狀態類型不是空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl ;可控制狀態

;---------------------------------------------------------------------------
; Normal Attack Air Y / Air Chain Barrage (1)
; 通常攻擊 空中Y / 空中連鎖亂擊(一)
;---------------------------------------------------------------------------
[State -1, Normal Attack Air Y / Air Chain Barrage (1)]
type = ChangeState
value = 600
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 105 ;狀態編號不是105
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = command = "y" ;指令名稱
trigger1 = ctrl || stateno = 43 ;可控制狀態&跳躍狀態
trigger2 = command = "y" ;指令名稱
trigger2 = (stateno = [110,111]) && pos y < 0 ;向前衝刺 / 空中
trigger3 = command = "y" ;指令名稱
trigger3 = (stateno = [115,116]) && pos y < 0 ;向後衝刺 / 空中
trigger4 = command = "y" ;指令名稱
trigger4 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)

;---------------------------------------------------------------------------
; Heaven's Spear
; 飛天槍
;---------------------------------------------------------------------------
[State -1, Heaven's Spear]
type = ChangeState
value = 620
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = ctrl || stateno = 43 ;可控制狀態&跳躍狀態
trigger1 = command = "Heaven's_Spear" ;指令名稱
trigger2 = (stateno = [105,106]) && pos y < 0 ;向後跳
trigger2 = command = "Heaven's_Spear" ;指令名稱
trigger3 = (stateno = [110,111]) && pos y < 0 ;向前衝刺 / 空中
trigger3 = command = "Heaven's_Spear" ;指令名稱
trigger4 = (stateno = [115,116]) && pos y < 0 ;向後衝刺 / 空中
trigger4 = command = "Heaven's_Spear" ;指令名稱
trigger5 = stateno = 600 && (movecontact || (animelemtime(5) >= 1)) ;通常攻擊Y (空中)
trigger5 = command = "Heaven's_Spear" ;指令名稱
trigger6 = stateno = 610 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊Y (空中)
trigger6 = command = "Heaven's_Spear" ;指令名稱
trigger7 = stateno = 640 && (movecontact || (animelemtime(8) >= 1)) ;通常攻擊C (空中)
trigger7 = command = "Heaven's_Spear" ;指令名稱
trigger8 = stateno = 645 && (movecontact || (animelemtime(6) >= 1)) ;通常攻擊 空中連段C
trigger8 = command = "Heaven's_Spear" ;指令名稱

;---------------------------------------------------------------------------
; Normal Attack Air B / Air Chain Barrage (2)
; 通常攻擊 空中B / 空中連鎖亂擊(二)
;---------------------------------------------------------------------------
[State -1, Normal Attack Air B / Air Chain Barrage (2)]
type = ChangeState
value = 610
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 105 ;狀態編號不是105
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = command = "b" ;指令名稱
trigger1 = ctrl || stateno = 43 ;可控制狀態&跳躍狀態
trigger2 = command = "b" ;指令名稱
trigger2 = (stateno = [110,111]) && pos y < 0 ;向前衝刺 / 空中
trigger3 = command = "b" ;指令名稱
trigger3 = (stateno = [115,116]) && pos y < 0 ;向後衝刺 / 空中
trigger4 = command = "b" ;指令名稱
trigger4 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger5 = command = "b" ;指令名稱
trigger5 = stateno = 640 && (movecontact && animelemtime(8) >= 1) ;通常攻擊C (空中)
trigger6 = command = "b" ;指令名稱
trigger6 = stateno = 600 && movecontact ;通常攻擊Y (空中)
trigger7 = command = "y" ;指令名稱
trigger7 = stateno = 600 && movecontact ;通常攻擊Y (空中)

;---------------------------------------------------------------------------
; Normal Attack Air C
; 通常攻擊 空中C
;---------------------------------------------------------------------------
[State -1, Normal Attack Air C]
type = ChangeState
value = 640
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 105 ;狀態編號不是105
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = command = "c" ;指令名稱
trigger1 = ctrl || stateno = 43 ;可控制狀態&跳躍狀態
trigger2 = command = "c" ;指令名稱
trigger2 = (stateno = [110,111]) && pos y < 0 ;向前衝刺 / 空中
trigger3 = command = "c" ;指令名稱
trigger3 = (stateno = [115,116]) && pos y < 0 ;向後衝刺 / 空中
trigger4 = command = "c" ;指令名稱
trigger4 = stateno = 255 && animelemtime(1) >= 1 ;通常攻擊5A (追擊用跳躍)
trigger5 = command = "c" ;指令名稱
trigger5 = stateno = 600 && movecontact ;通常攻擊Y (空中)
trigger6 = command = "c" ;指令名稱
trigger6 = stateno = 610 && movecontact ;通常攻擊B (空中)

;---------------------------------------------------------------------------
; Normal Attack Air Combo C / Air Chain Barrage (3)
; 通常攻擊 空中連段C / 空中連鎖亂擊(三)
;---------------------------------------------------------------------------
[State -1, Normal Attack Air Combo C / Air Chain Barrage (3)]
type = ChangeState
value = 645
triggerall = var(59) = 0 ;AI關閉時
triggerall = statetype = A ;狀態類型為空中
triggerall = stateno != 105 ;狀態編號不是105
;▼----------✱單獨型觸發條件列表✱----------▼;✔
trigger1 = command = "y" ;指令名稱
trigger1 = stateno = 610 && movecontact ;通常攻擊B (空中)

;---------------------------------------------------------------------------
; Blocking (Reset)
; 格擋 (重置)
;---------------------------------------------------------------------------
[State -1, Reset Blocking]
type = HitOverride
triggerall = var(59) = 0
triggerall = palno = [1,10]
trigger1 = command = "back" || command = "up" || (statetype = A && command = "down")
slot = 0
time = 0

;====================================================================
;=================< Artificial Intelligence >========================
;====================================================================
; 寫AI的時候原則上把
; 使用條件較高的招式寫在最上面(例如：超必殺技)。

; 之後再寫主力技(出招快、適合當First Attack的起手招式)。
; 凹技部份寫在防禦前面。其他普通技等等寫在後面。

; 如果控制好距離差距的話，近距離用輕拳、輕腳或投(摔技)。
; 中距離用中、重拳腳，遠距離才用飛行道具。

; 也不一定要死守這個原則，有時情況要具體分析。
; 最主要是要明白這個招式的用處，
; 這樣才能合理確定這招應該寫在AI的哪個位置。

; AI框架(寫AI的順序)範例
; https://www.bilibili.com/read/cv2844120/

; AI製作教程
; https://qxmugen.com/portal/18
; https://www.bilibili.com/read/cv2843955

; 幾個代碼意思：
; enemynear,vel y > 0                ;靠近的敵人落下中。
; pos y = [-400,-200]                ;人物Y座標。數值愈小高度愈高(-400高度比-200高)。
; facing = enemynear,facing          ;和靠近的敵人臉朝向相同。
; enemy,vel x > 0                    ;敵人往前移動。
; p2movetype = I && ！enemynear,ctrl ;靠近的對手在做無法控制的非攻擊動作時。

;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
; Attack Type AI Code
; 攻擊類型AI代碼
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Hyakka Light Bullet Spear
; 百花光弾槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI Hyakka Light Bullet Spear]
type = ChangeState
value = 3200
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = stateno != 3200 ;狀態編號不是3200
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔ ← 打勾代表指令已經檢查過(基本上OK)
trigger1 = power >= 2000 ;能量2000點以上
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [454,874]) || (p2bodydist x = [400,820]) ;與對手X軸距離
trigger1 = p2statetype != A ;對手狀態類型不在空中
trigger1 = p2movetype = H ;對手招式類型為受擊
trigger1 = (p2stateno != [120,159]) ;對手狀態編號不是120到159 (防禦)
trigger1 = p2life < lifemax*0.333 ;對手生命值小於生命最大值乘以0.333
trigger1 = life < lifemax*0.500 ;生命值小於生命最大值乘以0.500
trigger1 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = power >= 3000 ;能量3000點以上
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [454,874]) || (p2bodydist x = [400,820]) ;與對手X軸距離
trigger2 = p2statetype != A ;對手狀態類型不在空中
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (p2stateno != [120,159]) ;對手狀態編號不是120到159 (防禦)
trigger2 = p2life >= lifemax*0.333 ;對手生命值大於等於生命最大值乘以0.333
trigger2 = life < lifemax*0.500 ;生命值小於生命最大值乘以0.500
trigger2 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = power >= 2000 ;能量2000點以上
trigger3 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger3 = (fvar(31) = [454,774]) || (p2bodydist x = [400,720]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-350,-50]) ;與對手Y軸距離
trigger3 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger3 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120到159 (防禦)
trigger3 = enemynear(var(48)),life < lifemax*0.500 ;靠近的敵人生命值小於生命最大值乘以0.500
trigger3 = (random <= var(58)*(1.0) && matchover = 0) || (random <= var(58)*(1.2) && matchover = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = power >= 2000 ;能量2000點以上
trigger4 = (stateno = 1202 && movehit >= 1) ;特定的招式擊中對手
trigger4 = (fvar(31) = [304,454]) || (p2bodydist x = [250,400]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-350,-100]) ;與對手Y軸距離
trigger4 = frontedgedist < 600 ;前方邊界距離小於600
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120到159 (防禦)
trigger4 = enemynear(var(48)),life < lifemax*0.500 ;靠近的敵人生命值小於生命最大值乘以0.500
trigger4 = (random <= var(58)*(0.8) && matchover = 0) || (random <= var(58)*(1.2) && matchover = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger5 = power >= 2000 ;能量2000點以上
trigger5 = ((stateno = 222 || stateno = 1000) && animelemtime(17) >= 1 && movehit >= 1) ;特定的招式擊中對手時
trigger5 = (fvar(31) = [354,674]) || (p2bodydist x = [300,620]) ;與對手X軸距離
trigger5 = enemynear(var(48)),life < lifemax/2 || p2life < lifemax/2 ;靠近的敵人生命值小於二分之一 或 對方生命值小於二分之一
trigger5 = (random <= var(58)*(0.8) && matchover = 0) || (random <= var(58)*(1.2) && matchover = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger6 = stateno = 2800 && animelemtime(22) >= 1 ;特定的招式
trigger6 = numtarget(12860) >= 1 ;目標12860數量大於等於1
trigger6 = target(12860),vel y < 0 ;目標12860向下移動
trigger6 = (fvar(31) = [454,774]) || (p2bodydist x = [400,720]) ;與對手X軸距離
trigger6 = (p2bodydist y = [-560,-500]) ;與對手Y軸距離
trigger6 = enemynear(var(48)),life < lifemax/2 || p2life < lifemax/2 ;靠近的敵人生命值小於二分之一 或 對方生命值小於二分之一
trigger6 = (random <= var(58)*(1.6) && power >= 2000) ;發動機率&條件

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Meteor Spear 
; 流星衝
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI Meteor Spear]
type = ChangeState
value = 3100
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 3100 ;狀態編號不是3100
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱起攻✱----------▼;✔
trigger1 = power >= 2500 ;能量2500點以上
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-450,0]) ;與對手Y軸距離
trigger1 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger1 = enemynear(var(48)),vel x >= 0 ;靠近的敵人向前移動和原地不動時
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),stateno < 3100 ;靠近的敵人狀態編號小於3100號
trigger1 = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = power >= 1000 ;能量1000點以上
trigger2 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger2 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger2 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-350,-80]) ;與對手Y軸距離
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = power >= 2000 ;能量2000點以上
trigger3 = (stateno = 1202 && movehit >= 1) ;特定的招式擊中對手
trigger3 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger3 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-350,-80]) ;與對手Y軸距離
trigger3 = p2movetype = H ;對手招式類型為受擊
trigger3 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger3 = (random <= var(58)*(1.0)) ;發動機率&條件
;▼----------✱跳完落地連擊✱----------▼;✔
trigger4 = power >= 1000 ;能量1000點以上
trigger4 = stateno = 52 || stateno = 652 || (stateno = 1489 && animelemtime(5) >= 1 && movehit >= 1) ;落地狀態
trigger4 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-450,0]) ;與對手Y軸距離
trigger4 = p2statetype != L ;對手狀態類型不是躺下
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = (p2stateno != [120,159]) ;對手狀態編號不是120到159 (防禦)
trigger4 = enemynear(var(48)),gethitvar(hitcount) < 5 ;靠近的敵人所得到的HitCount數小於5*
trigger4 = (random <= var(58)*(1.0)) ;發動機率&條件

;*限制HitCount數 可避免AirJuggle連擊點數用完後導致的攻擊Miss

[State -1, AI Meteor Spear]
type = ChangeState
value = cond(random < 350,3100,cond(random < 700,3200,3000)) ;35%機率為流星衝 否則轉為百花光彈槍或真空波動槍
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 3000 ;狀態編號不是3000
triggerall = stateno != 3100 ;狀態編號不是3100
triggerall = stateno != 3200 ;狀態編號不是3200
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱連擊✱----------▼;✔
trigger1 = power >= 2500 ;能量2500點以上
trigger1 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger1 = stateno = 1402 && movehit >= 1 ;特定的招式擊中時
trigger1 = (random <= var(58)*(1.2)) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger2 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger2 = power >= 2000 ;能量2000點以上
trigger2 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) ;特定的招式
trigger2 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger2 = p2statetype != L ;對手狀態類型不是躺下
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (p2stateno != [120,159]) ;對手狀態編號不是120到159 (防禦)
trigger2 = (random <= var(58)*(1.5) && ailevel >= 5) ;發動機率 (難度5以上限定)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Vacuum Wave Spear
; 真空波動槍
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI Vacuum Wave Spear]
type = ChangeState
value = 3000
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 3000 ;狀態編號不是3000
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
;▼----------✱起攻✱----------▼;✔
trigger1 = power >= 2000 ;能量2000點以上
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [404,774]) || (p2bodydist x = [350,720]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-500,0]) ;與對手Y軸距離
trigger1 = frontedgedist >= 600 ;前方邊界距離大於等於600
trigger1 = p2statetype != L ;對手狀態類型不是躺下
trigger1 = p2movetype = A ;對手招式類型為攻擊
trigger1 = p2stateno < 3100 ;對手狀態編號小於3100號
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = ((stateno = 222 || stateno = 1000) && animelemtime(17) >= 1 && movehit >= 1) ;特定的招式擊中對手時
trigger2 = (fvar(31) = [304,714]) || (p2bodydist x = [250,660]) ;與對手X軸距離
trigger2 = (random <= var(58)*(1.8) && (power = [1000,1999])) || (random <= var(58)*(1.4) && power >= 2000) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger3 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger3 = (fvar(31) = [0,954]) || (p2bodydist x = [0,900]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-450,-150]) ;與對手Y軸距離
trigger3 = frontedgedist >= 850 ;前方邊界距離大於等於850
trigger3 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger3 = p2movetype = H ;對手招式類型為受擊
trigger3 = (random <= var(58)*(1.0) && (power = [1000,2999])) || (random <= var(58)*(0.6) && power >= 3000) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = ((stateno = 1202 && animelemtime(7) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger4 = (frontedgedist = [850,1400]) ;前方邊界距離850~1400
trigger4 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = (random <= var(58)*(1.0) && (power = [1000,2499])) || (random <= var(58)*(0.6) && power >= 2500) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger5 = power >= 3000 ;能量3000點以上
trigger5 = stateno = 1510 && animelemtime(12) >= 1 ;特定的招式
trigger5 = (random <= var(58)*(1.0)) ;發動機率

[State -1, AI Vacuum Wave Spear]
type = ChangeState
value = cond(p2bodydist x >= 360,3000,cond(random < 700,3100,3000)) ;與對手X軸距離大於等於360為真空波動槍 否則高機率轉為流星衝
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 3000 ;狀態編號不是3000
triggerall = stateno != 3100 ;狀態編號不是3100
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
;▼----------✱連擊✱----------▼;✔
trigger1 = power >= 2000 ;能量2000點以上
trigger1 = (stateno = 240 && movehit >= 1) ;特定的招式擊中對手
trigger1 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger1 = (p2bodydist y = [-350,0]) ;與對手Y軸距離
trigger1 = p2movetype = H ;對手招式類型為受擊
trigger1 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱終結技✱----------▼;✔
trigger2 = power >= 4000 || power = powermax && teammode = simul ;能量4000點以上 或 能量等於能量最大值但隊伍模式為Tag Simul時
trigger2 = (fvar(31) = [0,774]) || (p2bodydist x = [0,720]) ;與對手X軸距離
trigger2 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120到159 (防禦)
trigger2 = (stateno = [230,245]) ;特定的招式擊中對手
trigger2 = enemynear(var(48)),life < 200 ;靠近的敵人生命值小於200
trigger2 = (random <= var(58)*(1.4)) ;發動機率

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier
; 氣障壁
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI Barrier]
type = ChangeState
value = cond(statetype = A,3810,3800) ;狀態類型為空中時轉為空中版本氣障壁
triggerall = alive ;人物存活
triggerall = var(53) = 0 ;復活未開啟時
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = enemynear(var(48)),alive ;靠近的敵人存活時
triggerall = enemynear(var(48)),hitdefattr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT ;靠近的敵人打擊定義攻擊類型 → 全部
triggerall = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
triggerall = movetype != I && movetype != A ;招式類型不是空閒和攻擊
triggerall = (p2bodydist x = [-500,500]) ;與對手X軸距離
triggerall = (p2bodydist y = [-500,500]) ;與對手Y軸距離
triggerall = stateno != [3800,3825] ;狀態編號不是3800~3825
triggerall = palno = [1,10] ;人物色表編號1~10
;▼----------✱受擊時✱----------▼;✔
trigger1 = power >= 4000 || power = powermax && teammode = simul ;能量4000點以上 或 能量等於能量最大值但隊伍模式為Tag Simul時
trigger1 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger1 = life < lifemax*0.20 && enemynear(var(48)),life < lifemax*0.20 ;生命值小於最大生命值20% && 靠近的敵人生命值小於最大生命值20%
trigger1 = (random <= var(58)*(1.6) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱受擊時✱----------▼;✔
trigger2 = power >= 4000 || power = powermax && teammode = simul ;能量4000點以上 或 能量等於能量最大值但隊伍模式為Tag Simul時
trigger2 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger2 = ((life < lifemax*0.33) && (life >= lifemax*0.20)) && (enemynear(var(48)),life < lifemax*0.20) ;生命值小於最大生命值33% && 生命值大於等於最大生命值20% && 靠近的敵人生命值小於最大生命值20%
trigger2 = (random <= var(58)*(0.8) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱受擊時✱----------▼;✔
trigger3 = power >= 3000 ;能量3000點以上
trigger3 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger3 = gethitvar(hitcount) >= 25 ;所得到的連擊數為大於等於25
trigger3 = life >= lifemax*0.70 ;生命值大於等於最大生命值70%
trigger3 = (random <= var(58)*(2.0) && ailevel >= 4) ;發動機率 (難度4以上限定)
;▼----------✱受擊時✱----------▼;✔
trigger4 = power >= 3000 ;能量3000點以上
trigger4 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger4 = gethitvar(hitcount) >= 15 ;所得到的連擊數為大於等於15
trigger4 = life < (0.70*(lifemax)) && life >= (0.25*(lifemax)) ;生命值小於最大生命值70% && 生命值大於等於最大生命值25%
trigger4 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱受擊時✱----------▼;✔
trigger5 = power >= 5000 || power = powermax && teammode = simul ;能量5000點以上 或 能量等於能量最大值但隊伍模式為Tag Simul時
trigger5 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger5 = gethitvar(hitcount) >= 10 ;所得到的連擊數為大於等於10
trigger5 = life < (0.25*(lifemax)) ;生命值小於最大生命值25%
trigger5 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱受擊時✱----------▼;✔
trigger6 = power >= 1000 ;能量1000點以上
trigger6 = statetype = A ;狀態類型為在空中 (自己在空中)
trigger6 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger6 = gethitvar(hitcount) >= 2 ;所得到的連擊數為大於等於2
trigger6 = life < (0.25*(lifemax)) ;生命值小於最大生命值25%
trigger6 = enemynear(var(48)),life < 200 ;靠近的敵人生命值小於200
trigger6 = (random <= var(58)*(1.0) && ailevel >= 7) ;發動機率 (難度7以上限定)
;▼----------✱可受身恢復時✱----------▼;✔
trigger7 = power >= 4000 || power = powermax && teammode = simul ;能量4000點以上 或 能量等於能量最大值但隊伍模式為Tag Simul時
trigger7 = canrecover && life < (0.20*(lifemax)) ;可受身恢復&生命值小於最大生命值20%
trigger7 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱受擊時/被對手背後攻擊時✱----------▼;✔
trigger8 = power >= 1000 ;能量1000點以上
trigger8 = movetype = H && (stateno != [120,159]) ;招式類型為受擊&狀態編號不是120~159 (防禦)
trigger8 = gethitvar(hitcount) >= 3 ;所得到的連擊數為大於等於3
trigger8 = facing = enemynear(var(48)),facing ;人物頭部朝向跟靠近的敵人相同時
trigger8 = (random <= var(58)*(2.0) && ailevel >= 5) ;發動機率 (難度5以上限定)

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Support Knight Summon C (Clone Pharsalia)
; 支援騎士召喚C (複製型法莎莉雅)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -1, AI Support Knight Summon C (Clone Pharsalia)]
type = ChangeState
value = 3600
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = numhelper(13600) = 0 ;法莎莉雅未出現時
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger1 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger1 = ctrl || (stateno = [19,21]) || (stateno = [50,52]) || stateno = 100 || stateno = 103 || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) ;可控制狀態&移動狀態
trigger1 = ((fvar(31) = [600,1200]) || (p2bodydist x = [504,1104])) && (enemynear(var(48)),stateno < 2000) || ((fvar(31) = [1100,5000]) || (p2bodydist x = [1004,4904])) && (enemynear(var(48)),stateno < 4000) ;與對手X軸距離&條件
trigger1 = (p2bodydist y = [-360,0]) ;與對手Y軸距離
trigger1 = facing != enemynear(var(48)),facing ;人物頭部朝向跟靠近的敵人不同時
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),vel x >= 0 ;對方向前移動/原地時
trigger1 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱終結技✱----------▼;✔
trigger2 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger2 = statetype != L ;狀態類型不是躺下
trigger2 = movetype != H ;招式類型不是受擊
trigger2 = life >= lifemax*0.25 ;生命值大於等於生命最大值25%
trigger2 = ctrl || (stateno = [19,21]) || (stateno = [50,52]) || stateno = 100 || stateno = 103 || (stateno = [105,106]) || (stateno = [110,111]) || (stateno = [115,116]) ;可控制狀態&移動狀態
trigger2 = ((fvar(31) = [1300,5000]) || (p2bodydist x = [1204,4904])) ;與對手X軸距離
trigger2 = (p2bodydist y = [-420,0]) ;與對手Y軸距離
trigger2 = facing != enemynear(var(48)),facing ;人物頭部朝向跟靠近的敵人不同時
trigger2 = enemynear(var(48)),gethitvar(hitcount) < 3 ;靠近的敵人得到的連擊數小於3
trigger2 = enemynear(var(48)),life < 200 ;靠近的敵人生命值小於200
trigger2 = (random <= var(58)*(2.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger3 = (p2bodydist x = [250,650]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-400,160]) ;與對手Y軸距離
trigger3 = p2statetype != A ;對手狀態類型不是空中
trigger3 = (random <= var(58)*(0.8) && var(39) = 4) || (random <= var(58)*(1.2) && var(39) >= 5) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = var(39) >= 4 ;騎士卡牌點數4點以上
trigger4 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger4 = (random <= var(58)*(1.3) && ailevel >= 4) ;發動機率 (難度4以上限定)
;▼----------✱連擊✱----------▼;✔
trigger5 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger5 = statetype = A ;狀態類型為在空中 (自己在空中)
trigger5 = ((stateno = 1700 && animelemtime(9) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger5 = (random <= var(58)*(2.2) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱連擊✱----------▼;✔
trigger6 = var(39) >= 5 ;騎士卡牌點數5點以上
trigger6 = ((stateno = 2402 || stateno = 2452) && movehit >= 1) ;特定的招式擊中對手
trigger6 = (p2bodydist y = [-320,0]) ;與對手Y軸距離
trigger6 = (random <= var(58)*(1.8) && ailevel >= 5) ;發動機率 (難度5以上限定)

;===========================================================================
; Support Knight Summon B (Clone Scathach)
; 支援騎士召喚B (複製型斯卡哈)
;===========================================================================
[State -1, AI Support Knight Summon B (Clone Scathach)]
type = ChangeState
value = 2800
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = numhelper(12800) = 0 ;斯卡哈未出現時
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger1 = (fvar(31) = [774,2454]) || (p2bodydist x = [720,2400]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-360,0]) ;與對手Y軸距離
trigger1 = p2movetype = I || p2stateno < 2000 ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger1 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger1 = (random <= var(58)*(0.7) && (var(39) = [2,3])) || (random <= var(58)*(1.0) && var(39) >= 4);發動機率&條件
;▼----------✱連擊/壓制✱----------▼;✔
trigger2 = var(39) >= 2 ;騎士卡牌點數2點以上
trigger2 = stateno = 227 && animelemtime(9) >= 1 ;特定的招式
trigger2 = (p2bodydist x = [350,1400]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-280,-120]) ;與對手Y軸距離
trigger2 = frontedgedist < 1500 ;前方邊界距離小於1500
trigger2 = (random <= var(58)*(1.4) && movehit >= 1) || (random <= var(58)*(0.6) && moveguarded >= 1) ;發動機率&條件
;▼----------✱連擊/壓制✱----------▼;✔
trigger3 = var(39) >= 2 ;騎士卡牌點數2點以上
trigger3 = stateno = 1202 && animelemtime(7) >= 1 ;特定的招式
trigger3 = (p2bodydist x = [350,1400]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-280,-120]) ;與對手Y軸距離
trigger3 = frontedgedist < 1500 ;前方邊界距離小於1500
trigger3 = (random <= var(58)*(1.5) && movehit >= 1) || (random <= var(58)*(0.8) && moveguarded >= 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = var(39) >= 4 ;騎士卡牌點數4點以上
trigger4 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger4 = frontedgedist >= 460 ;前方邊界距離大於等於460
trigger4 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-350,-80]) ;與對手Y軸距離
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger4 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger5 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger5 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger5 = (p2bodydist x = [280,440]) ;與對手X軸距離
trigger5 = p2statetype != A ;對手狀態類型不是空中
trigger5 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger6 = stateno = 245 && movehit >= 1 ;特定的招式擊中時
trigger6 = p2movetype = H ;對手招式類型為受擊
trigger6 = p2statetype != A ;對手狀態類型不是空中
trigger6 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger6 = (random < var(58)*(0.9) && var(39) >= 4) || (random < var(58)*(0.6) && (var(39) = [2,3])) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger7 = var(39) >= 3 ;騎士卡牌點數3點以上
trigger7 = stateno = 440 && movehit >= 1 ;特定的招式擊中時
trigger7 = p2movetype = H ;對手招式類型為受擊
trigger7 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger7 = (random <= var(58)*(0.9) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱防禦取消後反擊✱----------▼;✔
trigger8 = var(39) >= 5 ;騎士卡牌點數5點以上
trigger8 = stateno = 1409 && movehit >= 1 ;特定的招式擊中時
trigger8 = p2movetype = H ;對手招式類型為受擊
trigger8 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger8 = frontedgedist >= 600 ;前方邊界距離大於等於600
trigger8 = (pos y = [-420,0]) ;Y軸位置-420~0
trigger8 = (random <= var(58)*(0.2) && ailevel >= 7) ;發動機率 (難度7以上限定)
;▼----------✱對空✱----------▼;✔
trigger9 = var(39) >= 4 ;騎士卡牌點數4點以上
trigger9 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger9 = (p2bodydist y = [-750,-510]) ;與對手Y軸距離
trigger9 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger9 = (random <= var(58)*(0.3)) ;發動機率
;▼----------✱超級對空(敵人飛行時)✱----------▼;✔
trigger10 = var(39) >= 2 ;騎士卡牌點數2點以上
trigger10 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger10 = (p2bodydist y = [-930,-720]) ;與對手Y軸距離
trigger10 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger10 = (random <= var(58)*(0.5)) ;發動機率

[State -1, AI Support Knight Summon B (Clone Scathach)]
type = ChangeState
value = cond(random < 650,2800,2600) ;65%機率召喚複製型斯卡哈 否則召喚弱酸型艾爾
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = numhelper(12600) = 0 ;艾爾未出現時
triggerall = numhelper(12800) = 0 ;斯卡哈未出現時
;▼----------✱對方飛行道具攻擊破解✱----------▼;✔
trigger1 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger1 = ctrl || stateno = 19 || stateno = 21 || (stateno = [50,51]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [804,1254]) || (p2bodydist x = [750,1200]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-350,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),numproj >= 1 ;靠近的敵人飛行道具數量大於等於1
trigger1 = (random <= var(58)*(0.8) && var(39) >= 5) ;發動機率&條件
;▼----------✱空對地✱----------▼;✔
trigger2 = var(39) >= 5 ;騎士卡牌點數5點以上
trigger2 = (stateno = [50,51]) || ((stateno = 110 && vel x >= 0) || stateno = 111) ;跳躍&移動狀態
trigger2 = (p2bodydist x = [200,480]) ;與對手X軸距離
trigger2 = (p2bodydist y = [200,600]) ;與對手Y軸距離
trigger2 = pos y <= -320 ;Y軸位置小於等於-320
trigger2 = p2statetype != A ;對手狀態類型不是空中
trigger2 = p2statetype != L ;對手狀態類型不是躺下
trigger2 = p2movetype = I || p2stateno < 2000 ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155 (防禦)
trigger2 = (random <= var(58)*(1.0) && ailevel >= 6) ;發動機率 (難度6以上限定)

;===========================================================================
; Support Knight Summon A (Foible Elle)
; 支援騎士召喚A (弱酸型艾爾)
;===========================================================================
[State -1, AI Support Knight Summon A (Foible Elle)]
type = ChangeState
value = 2600
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = numhelper(12600) = 0 ;艾爾未出現時
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱對方站防破解✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || (stateno = [50,51]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [164,754]) || (p2bodydist x = [110,700]) ;與對手X軸距離
trigger1 = (p2bodydist y = [0,-460]) ;與對手Y軸距離
trigger1 = p2statetype = S ;對手狀態類型為站立
trigger1 = (p2movetype = H && p2stateno = 130) ;對手招式類型為受擊和狀態編號130
trigger1 = (random <= var(58)*(1.6) && var(39) >= 5) || (random <= var(58)*(1.3) && (var(39) = [2,4])) || (random <= var(58)*(1.0) && var(39) = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger2 = (stateno = 230 || stateno = 245) && movehit >= 1 ;特定的招式擊中時
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = p2statetype != A ;對手狀態類型不是空中
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger2 = (random < var(58)*(1.0) && var(39) >= 2) || (random < var(58)*(0.7) && var(39) = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 240 && movehit >= 1 ;特定的招式擊中時
trigger3 = p2movetype = H ;對手招式類型為受擊
trigger3 = p2statetype != A ;對手狀態類型不是空中
trigger3 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger3 = (random < var(58)*(0.5) && var(39) >= 2) || (random < var(58)*(0.3) && var(39) = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 1202 && movehit >= 1 ;特定的招式擊中時
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger4 = frontedgedist < 700 ;前方邊界距離小於700
trigger4 = (pos y = [-360,0]) ;Y軸位置-360~0
trigger4 = (random < var(58)*(0.9) && var(39) >= 2) || (random < var(58)*(0.6) && var(39) = 1) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger5 = stateno = 1402 && movehit >= 1 ;特定的招式擊中時
trigger5 = p2movetype = H ;對手招式類型為受擊
trigger5 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger5 = (pos y = [-360,0]) ;Y軸位置-360~0
trigger5 = (random < var(58)*(1.4) && var(39) >= 2) || (random < var(58)*(1.2) && var(39) = 1) ;發動機率&條件
;▼----------✱防禦取消後反擊✱----------▼;✔
trigger6 = var(39) >= 5 ;騎士卡牌點數5點以上
trigger6 = stateno = 1409 && movehit >= 1 ;特定的招式擊中時
trigger6 = p2movetype = H ;對手招式類型為受擊
trigger6 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger6 = frontedgedist >= 600 ;前方邊界距離大於等於600
trigger6 = (pos y = [-360,0]) ;Y軸位置-360~0
trigger6 = (random <= var(58)*(0.3) && ailevel >= 7) ;發動機率 (難度7以上限定)

[State -1, AI Support Knight Summon A (Foible Elle)]
type = ChangeState
value = cond(p2bodydist x < 760,cond(random < 800,2600,2800),2800) ;對方X軸距離小於760高機率使用弱酸型艾爾 否則改用複製型斯卡哈
triggerall = alive ;人物存活
triggerall = var(39) >= 5 ;騎士卡牌點數5點以上
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = numhelper(12600) = 0 ;艾爾未出現時
triggerall = numhelper(12800) = 0 ;斯卡哈未出現時
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || (stateno = [19,21]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = statetype != A ;狀態類型為不在空中 (自己不在空中)
trigger1 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger1 = (fvar(31) = [204,2454]) || (p2bodydist x = [150,2400]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-400,0]) ;與對手Y軸距離
trigger1 = (random <= var(58)*(1.2) && (ailevel = [1,2])) || (random <= var(58)*(1.0) && (ailevel = [3,5])) || (random <= var(58)*(0.8) && ailevel >= 6) ;發動機率&條件

;===========================================================================
; Ice Gale Spear
; 冰風槍
;===========================================================================
[State -1, AI Ice Gale Spear]
type = ChangeState
value = 1700
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1700 ;不在1700狀態號
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != A ;對手狀態類型不是空中
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [174,504]) || (p2bodydist x = [120,450]) ;與對手X軸距離
trigger1 = p2movetype = I || p2movetype = A && (p2stateno < 2000) ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger1 = (p2stateno != [120,159]) ;對手狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.6) && var(39) < 3) || (random <= var(58)*(0.9) && var(39) = [3,4]) || (random <= var(58)*(1.2) && var(39) >= 5) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger2 = (stateno = 230 || stateno = 245) && movehit >= 1 ;特定的招式擊中時
trigger2 = (random <= var(58)*(0.5) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱連擊✱----------▼;✔
trigger3 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger3 = (p2bodydist x = [0,350]) ;與對手X軸距離
trigger3 = (random <= var(58)*(1.4) && var(39) >= 3) ;發動機率&條件

;===========================================================================
; Whirlwind Wave Spear
; 旋風波動槍
;===========================================================================
[State -1, AI Whirlwind Wave Spear]
type = ChangeState
value = 1600
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = numhelper(7632) = 0 ;未出現旋風波動槍飛行道具
triggerall = numhelper(7740) = 0 ;未出現真空波動槍飛行道具1
triggerall = numhelper(7760) = 0 ;未出現真空波動槍飛行道具2
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
;▼----------✱對方向後移動/原地時✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = enemynear(var(48)),numproj <= 0 && (p2bodydist x = [1000,1550]) || (p2bodydist x = [1551,1900]) ;靠近的敵人無飛行道具時&攻擊距離計算X軸 或 攻擊距離計算X軸
trigger1 = p2bodydist y = [-480,0] ;與對手Y軸距離
trigger1 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動/原地時
trigger1 = enemynear(var(48)),vel y > 0 ;靠近的敵人向下移動時
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱對方向前移動時✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = enemynear(var(48)),numproj <= 0 && (p2bodydist x = [900,1600]) || (p2bodydist x = [1601,1900]) ;靠近的敵人無飛行道具時&攻擊距離計算X軸 或 攻擊距離計算X軸
trigger2 = p2bodydist y = [-480,0] ;與對手Y軸距離
trigger2 = enemynear(var(48)),vel x >= 0 ;靠近的敵人向前移動/原地時
trigger2 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger2 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 800 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到800號
trigger2 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱對方向前移動時✱----------▼;✔
trigger3 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger3 = enemynear(var(48)),numproj <= 0 && (p2bodydist x = [900,1600]) || (p2bodydist x = [1601,1900]) ;靠近的敵人無飛行道具時&攻擊距離計算X軸 或 攻擊距離計算X軸
trigger3 = p2bodydist y = [-480,0] ;與對手Y軸距離
trigger3 = enemynear(var(48)),vel x >= 0 ;靠近的敵人向前移動/原地時
trigger3 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger3 = (enemynear(var(48)),stateno = [1000,3099]) ;靠近的敵人狀態編號不到1000~3099號
trigger3 = (random <= var(58)*(0.6)) ;發動機率

;===========================================================================
; Kuzukaze Spear《Command Grab》
; 屑風槍《指令投》
;===========================================================================
[State -1, AI Kuzukaze Spear]
type = ChangeState
value = cond(prevstateno != 1500,1500,cond(random < 500,250,400)) ;上一個狀態號不是屑風槍則使用屑風槍 否則改為使用通常攻擊5A或2Y (避免對投擲技無效的角色持續做出投擲動作)
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = (prevstateno != [400,440]) ;上一個狀態編號不是400~440
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
triggerall = enemynear(var(48)),statetype = S ;靠近的敵人狀態類型為站立
;▼----------✱搶招✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 || stateno = 652 ;可控制狀態&移動狀態
trigger1 = (enemynear(var(48)),time = [0,2]) || enemynear(var(48)),animtime <= -6 ;靠近的敵人時間0~2 或 靠近的敵人動畫時間倒數第六個動作內(通常指-6~-1)
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態號不是120到159
trigger1 = enemynear(var(48)),stateno != [5100,5150] ;靠近的敵人狀態號不是5100到5150
trigger1 = enemynear(var(48)),stateno = [13,1099] ;靠近的敵人狀態號為13到1099
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (p2bodydist x = [-50,145]) ;與對手X軸距離
trigger1 = (random <= var(58)*(1.1) && frontedgedist < 700) || (random <= var(58)*(0.8) && frontedgedist = [701,1200]) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger2 = stateno = 210 && movehit >= 1 ;特定的招式擊中時
trigger2 = (p2bodydist x = [-50,145]) ;與對手X軸距離
trigger2 = (random <= var(58)*(1.0) && frontedgedist < 250)
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 220 && (movehit >= 1 && animelemtime(7) >= 1) ;特定的招式擊中時
trigger3 = (p2bodydist x = [-50,145]) ;與對手X軸距離
trigger3 = (random <= var(58)*(2.0) && frontedgedist < 650)
;▼----------✱對方站防蹲防破解✱----------▼;✔
trigger4 = stateno = 2800 && animelemtime(21) >= 1 ;特定的招式
trigger4 = (p2bodydist x = [-50,145]) ;與對手X軸距離
trigger4 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger4 = (enemynear(var(48)),movetype = H && enemynear(var(48)),stateno = [130,131]) ;靠近的敵人招式類型為受擊和狀態編號130~131
trigger4 = (random <= var(58)*(1.2) && ailevel >= 7) ;發動機率 (難度7以上限定)

;===========================================================================
; Dragon Fang Spear
; 龍牙槍
;===========================================================================
[State -1, AI Dragon Fang Spear]
type = ChangeState
value = 2400
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1400 ;不在1400狀態號
triggerall = stateno != 2400 ;不在2400狀態號
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [504,904]) || (p2bodydist x = [450,850]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-650,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動/原地時
trigger1 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.6)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [554,954]) || (p2bodydist x = [500,900]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-600,-500]) ;與對手Y軸距離
trigger2 = frontedgedist >= 400 ;前方邊界距離大於等於400
trigger2 = backedgedist >= 400 ;後方方邊界距離大於等於400
trigger2 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動/原地時
trigger2 = enemynear(var(48)),vel y > 0 ;靠近的敵人向下移動時
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger2 = (random <= var(58)*(0.8) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱起攻✱----------▼;✔
trigger3 = numenemy >= 3 && enemy(0),alive = 0 && enemy(1),alive = 0 ;敵人數三位以上&第一位和第二位敵人死亡時
trigger3 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger3 = (fvar(31) = [504,904]) || (p2bodydist x = [450,850]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-650,0]) ;與對手Y軸距離
trigger3 = p2movetype = I ;對手招式類型為空閒
trigger3 = (p2stateno != [120,159]) ;對手狀態編號不是120~159 (防禦)
trigger3 = (random <= var(58)*(0.5)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 240 && movehit >= 1 ;特定的招式擊中時
trigger4 = (random <= var(58)*(0.6) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱連擊✱----------▼;✔
trigger5 = frontedgedist >= 640 ;前方邊界距離大於等於640
trigger5 = backedgedist >= 640 ;後方方邊界距離大於等於640
trigger5 = stateno = 440 && movehit >= 1 ;特定的招式擊中時
trigger5 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger5 = (random <= var(58)*(1.2) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱連擊✱----------▼;✔
trigger6 = stateno = 2800 && (animelemtime(17) >= 1 && numtarget(12860) >= 1) ;特定的招式
trigger6 = (fvar(31) = [354,774]) || (p2bodydist x = [300,720]) ;與對手X軸距離
trigger6 = (p2bodydist y = [-850,0]) ;與對手Y軸距離
trigger6 = enemynear(var(48)),vel x = 0 ;靠近的敵人原地時
trigger6 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger6 = (enemynear(var(48)),stateno = 5030) ;靠近的敵人狀態編號為5030
trigger6 = (random <= var(58)*(0.6) && ailevel >= 7) ;發動機率 (難度7以上限定)

;===========================================================================
; Dragon Fang Spear / Air
; 龍牙槍 / 空中
;===========================================================================
[State -1, AI Dragon Fang Spear / Air]
type = ChangeState
value = 2450
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1450 ;不在1450狀態號
triggerall = stateno != 2450 ;不在2450狀態號
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [534,954]) || (p2bodydist x = [480,900]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-260,260]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動/原地時
trigger1 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger1 = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = ctrl || (stateno = [50,51]) || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [534,954]) || (p2bodydist x = [480,900]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-260,260]) ;與對手Y軸距離
trigger2 = frontedgedist >= 400 ;前方邊界距離大於等於400
trigger2 = backedgedist >= 400 ;後方方邊界距離大於等於400
trigger2 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動/原地時
trigger2 = enemynear(var(48)),vel y <= 0 ;靠近的敵人向上移動/平行時
trigger2 = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
trigger2 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger2 = (random <= var(58)*(0.7) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱終結技✱----------▼;✔
trigger3 = stateno = 255 && animelemtime(3) >= 0 && movehit >= 1 ;特定的招式擊中時
trigger3 = frontedgedist >= 640 ;前方邊界距離大於等於640
trigger3 = backedgedist >= 640 ;後方方邊界距離大於等於640
trigger3 = (fvar(31) = [0,954]) || (p2bodydist x = [0,900]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-360,100]) ;與對手Y軸距離
trigger3 = enemynear(var(48)),life < 200 ;靠近的敵人生命值小於200
trigger3 = (random <= var(58)*(2.0) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱終結技✱----------▼;✔
trigger4 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger4 = frontedgedist >= 640 ;前方邊界距離大於等於640
trigger4 = backedgedist >= 640 ;後方方邊界距離大於等於640
trigger4 = (fvar(31) = [534,954]) || (p2bodydist x = [480,900]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-360,360]) && (pos y <= -100) ;與對手Y軸距離&Y軸位置小於等於-100
trigger4 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger4 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger4 = enemynear(var(48)),life < 180 ;靠近的敵人生命值小於180
trigger4 = (random <= var(58)*(1.6) && power < 1000) || (random <= var(58)*(1.2) && power >= 1000) ;發動機率&條件

;===========================================================================
; Gale Spear / Move Upward
; 疾風槍 / 向上移動
;===========================================================================
[State -1, AI Gale Spear / Move Upward]
type = ChangeState
value = 1425
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [154,354]) || (p2bodydist x = [100,300]) ;與對手X軸距離
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [534,704]) || (p2bodydist x = [480,650]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-350,-150]) ;與對手Y軸距離
trigger2 = (enemynear(var(48)),vel y < 0) ;靠近的敵人向上移動時
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger2 = (random <= var(58)*(0.6)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger3 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger3 = (fvar(31) = [534,734]) || (p2bodydist x = [480,680]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-840,-480]) ;與對手Y軸距離
trigger3 = enemynear(var(48)),vel y >= 0 ;靠近的敵人向下移動/平行時
trigger3 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger3 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger3 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger3 = (random <= var(58)*(0.9)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 1100 && (movecontact >= 1 && (animelemtime(8) >= 1)) ;特定的招式擊中時
trigger4 = (fvar(31) = [0,334]) || (p2bodydist x = [0,280]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-480,-280]) ;與對手Y軸距離
trigger4 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = (enemynear(var(48)),vel y < 0) ;靠近的敵人向上移動時
trigger4 = (random <= var(58)*(0.5)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger5 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger5 = frontedgedist >= 360 ;前方邊界距離大於等於360
trigger5 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger5 = (p2bodydist y = [-300,-30]) ;與對手Y軸距離
trigger5 = p2movetype = H ;對手招式類型為受擊
trigger5 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger5 = (random <= var(58)*(1.0)) ;發動機率

;===========================================================================
; Gale Spear / Move Forward
; 疾風槍 / 向前移動
;===========================================================================
[State -1, AI Gale Spear / Move Forward]
type = ChangeState
value = 1400
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1400 ;不在1400狀態號
triggerall = stateno != 2400 ;不在2400狀態號
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [434,1174]) || (p2bodydist x = [380,1120]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-520,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 800 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到800號
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = numenemy >= 3 && enemy(0),alive = 0 && enemy(1),alive = 0 ;敵人數三位以上&第一位和第二位敵人死亡時
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [434,1174]) || (p2bodydist x = [380,1120]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-520,0]) ;與對手Y軸距離
trigger2 = p2movetype = I || p2stateno < 800 ;對手招式類型為空閒 或 對手狀態編號不到800號
trigger2 = p2movetype != H ;對手招式類型不是受擊
trigger2 = (p2stateno != [120,159]) ;對手狀態編號不是120~159 (防禦)
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 240 && movehit >= 1 ;特定的招式擊中時
trigger3 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 1000 && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger4 = (random <= var(58)*(1.2) && power < 1000) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger5 = stateno = 1000 && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger5 = (random <= var(58)*(0.8) && (power = [1001,3499])) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger6 = stateno = 1510 && animelemtime(12) >= 1 ;特定的招式
trigger6 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger7 = stateno = 3600 && animelemtime(32) >= 1 && numtarget(13650) >= 1 ;特定的招式
trigger7 = (p2bodydist y = [-400,0]) ;與對手Y軸距離
trigger7 = (random <= var(58)*(0.5) && ailevel >= 6) ;發動機率 (難度6以上限定)

[State -1, AI Gale Spear / Move Forward]
type = ChangeState
value = cond(frontedgedist >= 420,1400,cond(random < 500,1425,1700)) ;前方邊界距離大於等於420為疾風槍 / 向前移動 否則轉為疾風槍 / 向上移動或冰風槍
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱牆角連擊✱----------▼;✔
trigger1 = frontedgedist < 640 ;前方邊界距離小於640
trigger1 = stateno = 440 && movehit >= 1 ;特定的招式擊中時
trigger1 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger1 = (random <= var(58)*(1.8)) ;發動機率&條件

[State -1, AI Gale Spear / Move Forward]
type = ChangeState
value = cond(random < 500,1400,2400) ;50%機率為疾風槍 / 向前移動 否則轉為龍牙槍
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1400 ;不在1400狀態號
triggerall = stateno != 2400 ;不在2400狀態號
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱連擊✱----------▼;✔
trigger1 = ((stateno = 1302 && animelemtime(10) >= 1) && movehit >= 1) ;特定的招式擊中對手
trigger1 = (fvar(31) = [0,954]) || (p2bodydist x = [0,900]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-350,-70]) ;與對手Y軸距離
trigger1 = p2movetype = H ;對手招式類型為受擊
trigger1 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger1 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = (stateno = 1202 && movehit >= 1) ;特定的招式擊中對手
trigger2 = frontedgedist < 700 ;前方邊界距離小於700
trigger2 = (fvar(31) = [0,954]) || (p2bodydist x = [0,900]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-350,-50]) ;與對手Y軸距離
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (p2stateno != [150,155]) ;對手狀態編號不是150到155
trigger2 = (random <= var(58)*(0.6) && ailevel >= 7 && power < 1500) ;發動機率&條件

;===========================================================================
; Gale Spear / Air Move Downward
; 疾風槍 / 空中向下移動
;===========================================================================
[State -1, AI Gale Spear / Air Move Downward]
type = ChangeState
value = 1475
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [354,654]) || (p2bodydist x = [300,600]) ;與對手X軸距離
trigger1 = (p2bodydist y = [400,700]) && (pos y = [-930,-400]) ;與對手Y軸距離&Y軸位罝-930~-400
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 2000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = ((stateno = [620,625]) && movehit >= 1) ;特定的招式擊中時
trigger2 = ((p2bodydist y = [100,300]) && pos y <= -360) ;與對手Y軸距離&Y軸位罝小於-360
trigger2 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger2 = (random <= var(58)*(0.6) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 640 && movehit >= 1 ;特定的招式擊中時
trigger3 = (p2bodydist x = [0,450]) ;與對手X軸距離
trigger3 = ((p2bodydist y = [100,300]) && pos y <= -360) ;與對手Y軸距離&Y軸位罝小於-360
trigger3 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 1050 && (movehit >= 1 && animelemtime(17) >= 1) ;特定的招式擊中時
trigger4 = (p2bodydist x = [0,450]) ;與對手X軸距離
trigger4 = ((p2bodydist y = [100,300]) && pos y <= -360) ;與對手Y軸距離&Y軸位罝小於-360
trigger4 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger5 = stateno = 645 && movecontact >= 1 ;特定的招式接觸時
trigger5 = (p2bodydist x = [0,450]) ;與對手X軸距離
trigger5 = (p2bodydist y = [100,300]) ;與對手Y軸距離
trigger5 = p2statetype = A ;對手狀態類型為空中

;===========================================================================
; Gale Spear / Air Move Forward
; 疾風槍 / 空中向前移動
;===========================================================================
[State -1, AI Gale Spear / Air Move Forward]
type = ChangeState
value = 1450
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 1450 ;不在1450狀態號
triggerall = stateno != 2450 ;不在2450狀態號
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) || ((stateno = [110,116]) && pos y < 0) ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [434,1134]) || (p2bodydist x = [380,1080]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-260,260]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),statetype != C ;靠近的敵人狀態類型不是蹲下
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.7) && ailevel >= 6) || (random <= var(58)*(0.9) && ailevel = [3,5]) || (random <= var(58)*(1.2) && ailevel = [1,2]) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger2 = stateno = 610 && movehit >= 1 ;特定的招式擊中時
trigger2 = (p2bodydist x = [0,600]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-250,250]) ;與對手Y軸距離
trigger2 = p2statetype = A ;對手狀態類型為空中
trigger2 = (random <= var(58)*(0.6) && ailevel >= 6) || (random <= var(58)*(1.0) && ailevel = [3,5]) || (random <= var(58)*(1.2) && ailevel = [1,2]) ;發動機率&條件
;▼----------✱連擊/壓制✱----------▼;✔
trigger3 = stateno = 645 && movecontact >= 1 ;特定的招式接觸時
trigger3 = (p2bodydist x = [0,600]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-100,99]) ;與對手Y軸距離
trigger3 = p2statetype = A ;對手狀態類型為空中
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 3600 && animelemtime(32) >= 1 && numtarget(13650) >= 1 ;特定的招式
trigger4 = (p2bodydist y = [-400,0]) ;與對手Y軸距離
trigger4 = (random <= var(58)*(0.5) && ailevel >= 6) ;發動機率 (難度6以上限定)

;---------------------------------------------------------------------------
; Somersault Kick
; 筋斗踢
;---------------------------------------------------------------------------
[State -1, AI Somersault Kick]
type = ChangeState
value = cond(prevstateno != 800,800,200) ;如果上一個狀態號不是筋斗踢則使用筋斗踢 否則改為使用通常攻擊5Y (可避免對投擲技無效的角色持續做出投擲動作)
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = (stateno != [100,102]) ;狀態編號不是100~102
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
triggerall = (p2bodydist x = [-22,130]) ;與對手X軸距離
triggerall = p2statetype = S || p2statetype = C ;對手的狀態類型為站立 或 對手的狀態類型為蹲下
triggerall = ctrl || (stateno = [19,21]) || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱投擲✱----------▼;✔
trigger1 = p2movetype = I ;對手的招式類型為空閒
trigger1 = (p2stateno != [40,45]) ;對手狀態編號不是40~45 (跳躍)
trigger1 = p2movetype != H || (p2stateno = [120,159]) ;對手招式類型不是受擊 或 對手狀態編號為120~159
trigger1 = (random <= var(58)*(1.1)) ;發動機率
;▼----------✱投擲✱----------▼;✔
trigger2 = p2movetype = A ;對手的招式類型為攻擊
trigger2 = (enemynear(var(48)),stateno != [40,45]) ;靠近的對手狀態編號不是40~45 (跳躍)
trigger2 = p2movetype != H || (enemynear(var(48)),stateno = [120,159]) ;對手招式類型不是受擊 或 靠近的敵人狀態編號為120~149
trigger2 = (enemynear(var(48)),time = [0,3]) || enemynear(var(48)),animtime <= -5 ;靠近的敵人時間0~3 或 靠近的敵人動畫時間倒數第五個動作內(通常指-5~-1)
trigger2 = (enemynear(var(48)),stateno < 3000) ;靠近的敵人狀態編號不到3000號
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;===========================================================================
; Whirlwind Spear C
; 旋風槍C
;===========================================================================
[State -1, AI Whirlwind Spear C]
type = ChangeState
value = cond(frontedgedist >= 1360,1300,cond(random < 700,1300,1200)) ;前方邊界距離大於等於1300為旋風槍C 否則低機率轉為旋風槍B
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [304,374]) || (p2bodydist x = [250,320]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger1 = (enemynear(var(48)),time = [0,2]) || enemynear(var(48)),animtime <= -6 ;靠近的敵人時間0~2 或 靠近的敵人動畫時間倒數第六個動作內(通常指-6~-1)
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno < 3000) ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到3000號
trigger1 = enemynear(var(48)),statetype != C ;靠近的敵人狀態類型不是蹲下
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = ctrl || stateno = 52
trigger2 = (fvar(31) = [304,374]) || (p2bodydist x = [250,320]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-480,-280]) ;與對手Y軸距離
trigger2 = p2statetype = A ;對手狀態類型為空中
trigger2 = p2movetype = I || p2movetype = H ;對手招式類型為空閒 或 對手招式類型為受擊
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = movehit >= 1 ;擊中對手
trigger3 = (fvar(31) = [0,334]) || (p2bodydist x = [0,280]) ;與對手X軸距離
trigger3 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger3 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger3 = (random <= var(58)*(1.4) && stateno = 245) || (random <= var(58)*(1.3) && stateno = 240) ;發動機率&條件
;▼----------✱連擊✱----------▼;✔
trigger4 = ((stateno = [230,245]) && movehit >= 1)
trigger4 = (fvar(31) = [0,334]) || (p2bodydist x = [0,280]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-480,-280]) ;與對手Y軸距離
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = (enemynear(var(48)),vel y > 0) ;靠近的敵人向下移動時
trigger4 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger5 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger5 = (fvar(31) = [0,374]) || (p2bodydist x = [0,320]) ;與對手X軸距離
trigger5 = (random <= var(58)*(0.5)) ;發動機率&條件

;===========================================================================
; Whirlwind Spear B
; 旋風槍B
;===========================================================================
[State -1, AI Whirlwind Spear B]
type = ChangeState
value = cond(frontedgedist >= 700,1200,1300) ;前方邊界距離大於等於700為旋風槍B 否則轉為旋風槍C
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [304,374]) || (p2bodydist x = [250,320]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger1 = (enemynear(var(48)),time = [0,2]) || enemynear(var(48)),animtime <= -6 ;靠近的敵人時間0~2 或 靠近的敵人動畫時間倒數第六個動作內(通常指-6~-1)
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno < 3000) ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到3000號
trigger1 = enemynear(var(48)),statetype != C ;靠近的敵人狀態類型不是蹲下
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = ((stateno = [230,245]) && movehit >= 1) ;特定的招式擊中時
trigger2 = (fvar(31) = [0,334]) || (p2bodydist x = [0,280]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-480,-280]) ;與對手Y軸距離
trigger2 = p2statetype = A ;對手狀態類型為空中
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger3 = (fvar(31) = [0,404]) || (p2bodydist x = [0,350]) ;與對手X軸距離
trigger3 = (random <= var(58)*(0.5)) ;發動機率&條件

;---------------------------------------------------------------------------
; Run Forward 2 + Whirlwind Spear B
; 向前跑2 + 旋風槍B
;---------------------------------------------------------------------------
[State -1, AI Run Forward 2 + Whirlwind Spear B]
type = ChangeState
value = 102
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype = S ;靠近的敵人狀態類型為站立
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱連擊✱----------▼;✔
trigger1 = (stateno = 222 || stateno = 1000) && (movehit >= 1 && animelemtime(17) >= 1) ;通常攻擊5Y*4
trigger1 = (fvar(31) = [574,794]) || (p2bodydist x = [520,740]) ;與對手X軸距離
trigger1 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger1 = (random <= var(58)*(0.5)) ;發動機率&條件

;===========================================================================
; Hyakka Spear
; 百花槍
;===========================================================================
[State -1, AI Hyakka Spear]
type = ChangeState
value = cond(random < 750,1000,cond(p2bodydist x >= 285,1000,1100)) ;百花槍使用機率為75% 否則轉為百花槍或離對手太近時轉為旋風槍A
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = prevstateno != 222 ;上一個狀態編號不是222
triggerall = (prevstateno != [1000,1050]) ;上一個狀態編號不是1000~1050
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [194,854]) || (p2bodydist x = [140,800]) ;與對手X軸距離
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno < 2000) ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger1 = enemynear(var(48)),statetype = S ;靠近的敵人狀態類型為站立
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱對手降落時✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [304,554]) || (p2bodydist x = [350,500]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-600,-300]) ;與對手Y軸距離
trigger2 = (enemynear(var(48)),vel y > 0) ;靠近的敵人向下移動時
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
trigger2 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger2 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger3 = stateno = 230 && movecontact >= 1 ;特定的招式接觸時
trigger3 = (random <= var(58)*(0.7)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger4 = stateno = 240 && movecontact >= 1 ;特定的招式接觸時
trigger4 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger5 = stateno = 245 && movecontact >= 1 ;特定的招式接觸時
trigger5 = (random <= var(58)*(1.4)) ;發動機率
;▼----------✱壓制✱----------▼;✔
trigger6 = stateno = 250 && moveguarded >= 1 ;特定的招式被防禦
trigger6 = p2statetype != A ;對手狀態類型不是空中
trigger6 = p2movetype != A ;對手招式類型不是攻擊
trigger6 = (random <= var(58)*(0.4)) ;發動機率

;---------------------------------------------------------------------------
; Air Somersault Kick
; 空中筋斗踢
;---------------------------------------------------------------------------
[State -1, AI Air Somersault Kick]
type = ChangeState
value = cond(prevstateno != 850,850,600) ;如果上一個狀態號不是空中筋斗踢則使用空中筋斗踢 否則改為使用通常攻擊 空中Y
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 110 ;狀態編號不是110 (不處於向前衝刺狀態時)
triggerall = stateno != 115 ;狀態編號不是115 (不處於向後衝刺狀態時)
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2statetype = A ;對手的狀態類型為空中
triggerall = frontedgedist >= 1200 ;前方邊界距離大於等於1200
triggerall = (p2bodydist x = [-20,130]) ;與對手X軸距離
triggerall = (p2bodydist y = [-260,260]) ;與對手Y軸距離
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
triggerall = ctrl || (stateno = [50,51]) || stateno = 111 || stateno = 116 ;可控制狀態&跳躍狀態
;▼----------✱投擲✱----------▼;✔
trigger1 = p2movetype = I ;對手的招式類型為空閒
trigger1 = p2movetype != H || (p2stateno = [120,159]) ;對手招式類型不是受擊 或 對手狀態編號為120~159
trigger1 = (random <= var(58)*(1.1)) ;發動機率
;▼----------✱投擲✱----------▼;✔
trigger2 = p2movetype = A ;對手的招式類型為攻擊
trigger2 = p2movetype != H || (enemynear(var(48)),stateno = [120,159]) ;對手招式類型不是受擊 或 靠近的敵人狀態編號為120~159
trigger2 = (enemynear(var(48)),time = [0,3]) || enemynear(var(48)),animtime <= -5 ;靠近的敵人時間0~3 或 靠近的敵人動畫時間倒數第五個動作內(通常指-5~-1)
trigger2 = (enemynear(var(48)),stateno < 3000) ;靠近的敵人狀態編號不到3000號
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Back Air Somersault Kick
; 後空中筋斗踢
;---------------------------------------------------------------------------
[State -1, AI Back Air Somersault Kick]
type = ChangeState
value = cond(prevstateno != 875,875,600) ;如果上一個狀態號不是後空中筋斗踢則使用後空中筋斗踢 否則改為使用通常攻擊 空中Y
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 110 ;狀態編號不是110 (不處於向前衝刺狀態時)
triggerall = stateno != 115 ;狀態編號不是115 (不處於向後衝刺狀態時)
triggerall = (stateno != [800,895]) ;狀態編號不是800~895 (不處於投擲技)
triggerall = (stateno != [1500,1520]) ;狀態編號不是1500~1520 (不處於指令投屑風槍)
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2statetype = A ;對手的狀態類型為空中
triggerall = frontedgedist < 1400 ;前方邊界距離小於1400
triggerall = (p2bodydist x = [-20,130]) ;與對手X軸距離
triggerall = (p2bodydist y = [-260,260]) ;與對手Y軸距離
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
triggerall = ctrl || (stateno = [50,51]) || stateno = 111 || stateno = 116 ;可控制狀態&跳躍狀態
;▼----------✱投擲✱----------▼;✔
trigger1 = p2movetype = I ;對手的招式類型為空閒
trigger1 = p2movetype != H || (enemynear(var(48)),stateno = [120,159]) ;對手招式類型不是受擊 或 靠近的敵人狀態編號為120~159
trigger1 = (random <= var(58)*(1.1)) ;發動機率
;▼----------✱投擲✱----------▼;✔
trigger2 = p2movetype = A ;對手的招式類型為攻擊
trigger2 = p2movetype != H || (enemynear(var(48)),stateno = [120,159]) ;對手招式類型不是受擊 或 靠近的敵人狀態編號為120~159
trigger2 = (enemynear(var(48)),time = [0,3]) || enemynear(var(48)),animtime <= -5 ;靠近的敵人時間0~3 或 靠近的敵人動畫時間倒數第五個動作內(通常指-5~-1)
trigger2 = (enemynear(var(48)),stateno < 3000) ;靠近的敵人狀態編號不到3000號
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;===========================================================================
; Hyakka Spear / Air
; 百花槍 / 空中
;===========================================================================
[State -1, AI Hyakka Spear / Air]
type = ChangeState
value = cond(prevstateno != 1050,1050,1450) ;上一個狀態號不是百花槍 / 空中則使用百花槍 / 空中 否則改為使用疾風槍 / 空中向前移動 (避免多次重覆使用)
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中
triggerall = prevstateno != 222 ;上一個狀態編號不是222
triggerall = prevstateno != 645 ;上一個狀態編號不是645
triggerall = prevstateno != 1000 ;上一個狀態編號不是1000
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱對手靠近時✱----------▼;✔
trigger1 = ((stateno = [50,51]) || stateno = 105 && time >= 2 || stateno = 115) && vel x <= 0 ;向後跳&向後移動時
trigger1 = (fvar(31) = [214,604]) || (p2bodydist x = [160,550]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-300,200]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),vel x > 0 ;靠近的敵人向前移動時
trigger1 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人無飛行道具時
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱高空攻擊✱----------▼;✔
trigger2 = ctrl || (stateno = [110,116]) ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [154,564]) || (p2bodydist x = [100,510]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-240,180]) ;與對手Y軸距離
trigger2 = (pos y = [-1230,-450]) ;Y軸位置-1230~-450
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
trigger2 = enemynear(var(48)),numproj <= 0 ;靠近的敵人無飛行道具時
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 5Y / Chain Barrage (1)
; 通常攻擊5Y / 連鎖亂擊(一)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5Y / Chain Barrage (1)]
type = ChangeState
value = 200
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype = S ;對手狀態類型為站立
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
triggerall = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 || stateno = 140 ;可控制狀態&移動狀態&防禦結束時
;▼----------✱起攻✱----------▼;✔
trigger1 = (p2bodydist x = [-22,30]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger1 = (enemynear(var(48)),time = [0,2])|| enemynear(var(48)),animtime <= -4 ;靠近的敵人時間為2tick以下(剛開始0~1) 或 靠近的敵人動畫時間倒數第四個動作內(通常指-4~-1)
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 2000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger1 = enemynear(var(48)),numproj <= 0 ;飛行道具數量小於等於0
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger2 = (fvar(31) = [0,462]) || (p2bodydist x = [30,408]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120~159 (防禦)
trigger2 = (enemynear(var(48)),time = [0,4])|| enemynear(var(48)),animtime <= -7 ;靠近的敵人時間為4tick以下(剛開始0~4) 或 靠近的敵人動畫時間倒數第七個動作內(通常指-7~-1)
trigger2 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 2000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger2 = enemynear(var(48)),numproj <= 0 ;飛行道具數量小於等於0
trigger2 = (random <= var(58)*(1.3)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger3 = (fvar(31) = [214,462]) || (p2bodydist x = [160,408]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger3 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻(對手向前移動時)✱----------▼;✔
trigger4 = (fvar(31) = [365,468]) || (p2bodydist x = [311,414]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-480,0]) ;與對手Y軸距離
trigger4 = (enemynear(var(48)),vel x = [8,24]) ;靠近的敵人向前移動速度為8~24
trigger4 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 3000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號在3000以下
trigger4 = enemynear(var(48)),numproj <= 0 ;飛行道具數量小於等於0
trigger4 = (random <= var(58)*(1.1)) ;發動機率

[State -1, AI Normal Attack 5Y]
type = ChangeState
value = cond(prevstateno != 200,200,400) ;上一個狀態號不是通常攻擊5Y則使用通常攻擊5Y 否則改為使用通常攻擊2Y
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱壓制對方起身✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 || stateno = 140 ;可控制狀態&移動狀態&防禦結束時
trigger1 = (fvar(31) = [0,462]) || (p2bodydist x = [30,408]) ;與對手X軸距離
trigger1 = enemynear(var(48)),stateno = 5120 ;靠近的敵人狀態編號為5120
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = enemynear(var(48)),animtime < -3 ;靠近的敵人動畫時間倒數第三個動作內
trigger1 = life >= lifemax*0.33 ;生命值大於等於最大生命值的33%
trigger1 = (random <= var(58)*(1.4) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱對方站防破解✱----------▼;✔
trigger2 = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [154,462]) || (p2bodydist x = [100,408]) ;與對手X軸距離
trigger2 = enemynear(var(48)),statetype = S ;靠近的敵人狀態類型為站立
trigger2 = enemynear(var(48)),movetype = H && enemynear(var(48)),stateno = 130 ;靠近的敵人招式類型為受擊和狀態編號130
trigger2 = (random <= var(58)*(1.1) && ailevel >= 4) ;發動機率 (難度4以上限定)

;---------------------------------------------------------------------------
; Normal Attack 2Y
; 通常攻擊2Y
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 2Y]
type = ChangeState
value = 400
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != A ;對手狀態類型不是空中
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱起攻✱----------▼;✔
trigger1 = (fvar(31) = [0,390]) || (p2bodydist x = [0,336]) ;與對手X軸距離
trigger1 = enemynear(var(48)),gethitvar(hitcount) < 10 ;靠近的敵人經由Hit所得到的連擊數小於10
trigger1 = (enemynear(var(48)),time = [0,4])|| enemynear(var(48)),animtime <= -7 ;靠近的敵人時間為3tick以下(剛開始0~4) 或 靠近的敵人動畫時間倒數第七個動作內(通常指-7~-1)
trigger1 = (random <= var(58)*(1.5)) ;發動機率
;▼----------✱對方站防破解✱----------▼;✔
trigger2 = (fvar(31) = [0,390]) || (p2bodydist x = [0,336]) ;與對手X軸距離
trigger2 = enemynear(var(48)),statetype = S ;靠近的敵人狀態類型為站立
trigger2 = enemynear(var(48)),movetype = H && enemynear(var(48)),stateno = 130 ;靠近的敵人招式類型為受擊和狀態編號130
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻(對手向前移動時)✱----------▼;✔
trigger3 = (fvar(31) = [391,494]) || (p2bodydist x = [337,440]) ;與對手X軸距離
trigger3 = (enemynear(var(48)),vel x = [1,24]) ;靠近的敵人向前移動速度為1~24
trigger3 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 3000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號在3000以下
trigger3 = (random <= var(58)*(1.1)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger4 = numenemy >= 3 && enemy(0),alive = 0 && enemy(1),alive = 0 ;敵人數三位以上&第一位和第二位敵人死亡時
trigger4 = (fvar(31) = [0,390]) || (p2bodydist x = [0,336]) ;與對手X軸距離
trigger4 = (random <= var(58)*(1.0)) ;發動機率

[State -1, AI Normal Attack 2Y]
type = ChangeState
value = cond(random < 500,400,200) ;各50%機率為通常攻擊2Y、通常攻擊5Y
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱壓制對方起身✱----------▼;✔
trigger1 = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [0,390]) || (p2bodydist x = [0,336]) ;與對手X軸距離
trigger1 = enemynear(var(48)),stateno = 5120 ;靠近的敵人狀態編號為5120
trigger1 = enemynear(var(48)),animtime < -4 ;靠近的敵人動畫時間倒數第四個動作內
trigger1 = life >= lifemax*0.33 ;生命值大於等於最大生命值的33%
trigger1 = (random <= var(58)*(1.4)) ;發動機率
;▼----------✱飛天槍落地時✱----------▼;✔
trigger2 = stateno = 652 && animelemtime(2) >= 1 ;落地狀態
trigger2 = (p2bodydist x = [0,336]) ;與對手X軸距離
trigger2 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger2 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120到159 (防禦)
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 5A
; 通常攻擊5A
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5A]
type = ChangeState
value = 250
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != A ;對手狀態類型不是空中
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [0,468]) || (p2bodydist x = [0,414]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-400,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),animtime <= -12 ;靠近的敵人動畫時間倒數第十二個動作內(通常指-12~-1)
trigger1 = (random < var(58)*(1.3)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = stateno = 240 && movehit >= 1 ;特定的招式擊中時
trigger2 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = (p2stateno != [120,155]) ;對手狀態編號不是120到155
trigger2 = (random < var(58)*(1.2)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack Air Y
; 通常攻擊 空中Y
;---------------------------------------------------------------------------
[State -1, AI Normal Attack Air Y]
type = ChangeState
value = 600
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為在空中 (自己在空中)
triggerall = stateno != 105 ;不在狀態編號105 (向後跳)
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻/空對地✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger1 = p2statetype = S ;對手狀態類型為站立
trigger1 = p2stateno != [120,155] ;對方狀態號不是120到155
trigger1 = p2movetype = I || p2stateno < 2000 ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger1 = (fvar(31) = [104,360]) || (p2bodydist x = [50,305]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-100,410]) ;與對手Y軸距離
trigger1 = pos y <= -410 ;Y軸位置小於等於-410*
trigger1 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱起攻/空對空近距離✱----------▼;✔
trigger2 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),stateno != [120,155] ;對方狀態號不是120到155
trigger2 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 2000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger2 = (p2bodydist x = [0,450]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-120,360]) ;與對手Y軸距離
trigger2 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱向前衝刺 / 空中時攻擊✱----------▼;✔
trigger3 = stateno = 110 && vel x >= 0 ;狀態編號110 和 向前移動時
trigger3 = (fvar(31) = [104,400]) || (p2bodydist x = [50,345]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-180,250]) ;與對手Y軸距離
trigger3 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger3 = enemynear(var(48)),stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger3 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跳到空中連擊✱----------▼;✔
trigger4 = (stateno = [50,51]) ;移動狀態
trigger4 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger4 = enemynear(var(48)),stateno != [120,155] ;對方狀態號不是120到155
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = (p2bodydist x = [0,450]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-120,360]) ;與對手Y軸距離
trigger4 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger5 = stateno = 255 && animelemtime(1) >= 1 ;特定的招式使用中
trigger5 = p2statetype = A ;對手狀態類型為空中
trigger5 = p2movetype = H ;對手招式類型為受擊
trigger5 = p2stateno != [120,155] ;對方狀態號不是120到155

;*如果不確定pos y <= -300的位置，可以使用type = DisplayToClipBoard來測量

;---------------------------------------------------------------------------
; Normal Attack 5B
; 通常攻擊5B
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5B]
type = ChangeState
value = 230
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != C ;對手狀態類型不是蹲下
triggerall = p2statetype != L ;對手狀態類型不是躺下
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [452,840]) || (p2bodydist x = [398,696]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-440,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger1 = enemynear(var(48)),animtime <= -5 ;靠近的敵人動畫時間倒數第五個動作內(通常指-5~-1)
trigger1 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱起攻(對手向前移動時)✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = (fvar(31) = [677,935]) || (p2bodydist x = [617,881]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-440,0]) ;與對手Y軸距離
trigger2 = (enemynear(var(48)),vel x = [8,24]) ;靠近的敵人向前移動速度為8~24
trigger2 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱起攻✱----------▼;✔
trigger3 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger3 = numenemy >= 3 && enemy(0),alive = 0 && enemy(1),alive = 0 ;敵人數三位以上&第一位和第二位敵人死亡時
trigger3 = (fvar(31) = [452,750]) || (p2bodydist x = [398,696]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-440,0]) ;與對手Y軸距離
trigger3 = p2movetype = I || p2stateno < 1000 ;對手招式類型為空閒 或 對手狀態編號不到1000號
trigger3 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 1510 && animelemtime(12) >= 1 ;特定的招式
trigger4 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger5 = stateno = 2600 && (fvar(34) >= 1 || (animelemtime(22) >= 1)) && numtarget(12600) >= 1 ;特定的招式&目標12600存在時
trigger5 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger5 = enemynear(var(48)),gethitvar(hitcount) < 4 ;靠近的敵人所得到的HitCount數小於4
trigger5 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)

;---------------------------------------------------------------------------
; Normal Attack 5C
; 通常攻擊5C
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5C]
type = ChangeState
value = cond(p2bodydist x >= 300,240,cond(random < 750,245,250)) ;與對手X軸距離大於等於300為通常攻擊5C 否則轉為通常攻擊6C、通常攻擊5A
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != A ;對手狀態類型不是空中
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = enemynear(var(48)),animtime <= -9 ;靠近的敵人動畫時間倒數第九個動作內(通常指-9~-1)
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger1 = (fvar(31) = [304,814]) || (p2bodydist x = [250,760]) ;與對手X軸距離
trigger1 = (random < var(58)*(0.8)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = ((stateno = 230 || stateno = 410) && movehit >= 1) ;特定的招式擊中時
trigger2 = (fvar(31) = [0,534]) || (p2bodydist x = [0,480]) ;與對手X軸距離
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger2 = (random <= var(58)*(1.8)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 5C
; 通常攻擊5C
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5C]
type = ChangeState
value = 240
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [602,954]) || (p2bodydist x = [548,900]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-440,0]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger1 = enemynear(var(48)),animtime <= -13 ;靠近的敵人動畫時間倒數第十三個動作內(通常指-13~-1)
trigger1 = (random < var(58)*(1.0)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger2 = stateno = 245 && movehit >= 1 ;特定的招式擊中時
trigger2 = (fvar(31) = [0,414]) || (p2bodydist x = [0,360]) ;與對手X軸距離
trigger2 = p2movetype = H ;對手招式類型為受擊
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155
trigger2 = (random <= var(58)*(1.2) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 1510 && animelemtime(12) >= 1 ;特定的招式
trigger3 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 2B
; 通常攻擊2B
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 2B]
type = ChangeState
value = 410
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != A ;對手狀態類型不是空中
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (fvar(31) = [180,514]) || (p2bodydist x = [234,460]) ;與對手X軸距離
trigger1 = p2movetype = I || p2stateno < 1000 ;對手招式類型為空閒 或 對手狀態編號1000以下
trigger1 = (random < var(58)*(0.8)) ;發動機率
;▼----------✱對方站防破解✱----------▼;✔
trigger2 = (fvar(31) = [180,514]) || (p2bodydist x = [234,460]) ;與對手X軸距離
trigger2 = p2statetype = S ;對手狀態類型為站立
trigger2 = p2movetype = H && p2stateno = 130 ;對手招式類型為受擊和狀態編號130
trigger2 = (random <= var(58)*(0.6)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 230 && movehit >= 1 ;特定的招式擊中時
trigger3 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger3 = (random <= var(58)*(1.3)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger4 = stateno = 400 && movecontact >= 1 ;特定的招式接觸時
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = (random <= var(58)*(1.1)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger5 = stateno = 200 && movecontact >= 1 ;特定的招式接觸時
trigger5 = p2statetype = C ;對手狀態類型為蹲下
trigger5 = p2movetype = H ;對手招式類型為受擊

;---------------------------------------------------------------------------
; Normal Attack 2C
; 通常攻擊2C
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 2C]
type = ChangeState
value = 440
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = (p2bodydist y = [-440,0]) ;與對手Y軸距離
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱起攻✱----------▼;✔
trigger1 = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = enemynear(var(48)),statetype = S || enemynear(var(48)),statetype = A && enemynear(var(48)),vel y > 0 ;靠近的敵人狀態類型為站立 或 靠近的敵人狀態類型為空中&向下移動      
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號1000以下
trigger1 = (fvar(31) = [154,530]) || (p2bodydist x = [100,476]) ;與對手X軸距離
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱對方站防破解✱----------▼;✔
trigger2 = ctrl || stateno = 11 || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = p2statetype = S ;對手狀態類型為站立
trigger2 = p2movetype = H && p2stateno = 130 ;對手招式類型為受擊和狀態編號130
trigger2 = (fvar(31) = [154,530]) || (p2bodydist x = [100,476]) ;與對手X軸距離
trigger2 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱連擊✱----------▼;✔
trigger3 = stateno = 410 && movehit >= 1 ;特定的招式擊中時
trigger3 = p2movetype = H ;對手招式類型為受擊
trigger3 = (fvar(31) = [0,530]) || (p2bodydist x = [0,476]) ;與對手X軸距離
trigger3 = (random <= var(58)*(0.5) && frontedgedist >= 640) || (random <= var(58)*(1.1) && frontedgedist < 640) ;發動機率&條件
;▼----------✱壓制✱----------▼;✔
trigger4 = stateno = 410 && moveguarded >= 1 ;特定的招式被對手防禦
trigger4 = p2movetype = H ;對手招式類型為受擊
trigger4 = (fvar(31) = [0,530]) || (p2bodydist x = [0,476]) ;與對手X軸距離
trigger4 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 5Y*2 / Chain Barrage (2)
; 通常攻擊5Y*2 / 連鎖亂擊(二)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5Y*2 / Chain Barrage (2)]
type = ChangeState
value = 210
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != C ;對手狀態類型不是蹲下
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = (fvar(31) = [0,443]) || (p2bodydist x = [0,400]) ;與對手X軸距離
triggerall = (p2bodydist y = [-580,0]) ;與對手Y軸距離
;▼----------✱連擊/壓制✱----------▼;✔
trigger1 = stateno = 200 && movecontact >= 1 ;特定的招式接觸時
;▼----------✱連擊/壓制✱----------▼;✔
trigger2 = stateno = 400 && movecontact >= 1 ;特定的招式接觸時
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack 5Y*3 / Chain Barrage (3)
; 通常攻擊5Y*3 / 連鎖亂擊(三)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5Y*3 / Chain Barrage (3)]
type = ChangeState
value = cond(random < 750,220,230) ;75%機率為通常攻擊5Y*3
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = (fvar(31) = [0,504]) || (p2bodydist x = [0,450]) ;與對手X軸距離
triggerall = (p2bodydist y = [-580,0]) ;與對手Y軸距離
;▼----------✱連擊/壓制✱----------▼;✔
trigger1 = stateno = 210 && movecontact >= 1 ;特定的招式接觸時
;▼----------✱連擊/壓制✱----------▼;✔
trigger2 = stateno = 410 && movecontact >= 1 ;特定的招式接觸時

;---------------------------------------------------------------------------
; Normal Attack 5Y*4 / Chain Barrage (4)
; 通常攻擊5Y*4 / 連鎖亂擊(四)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5Y*4 / Chain Barrage (4)]
type = ChangeState
value = cond(p2bodydist x >= 280,222,cond(random < 333,1100,222)) ;與對手X軸距離大於等於280為通常攻擊5Y*4 否則33%機率轉為旋風槍A
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = (fvar(31) = [205,704]) || (p2bodydist x = [181,650]) ;與對手X軸距離
triggerall = (p2bodydist y = [-420,0]) ;與對手Y軸距離
;▼----------✱連擊/壓制✱----------▼;✔
trigger1 = stateno = 220 && (movecontact >= 1 && animelemtime(7) >= 1) ;通常攻擊5Y*3

;---------------------------------------------------------------------------
; Normal Attack 5Y*5 / Chain Barrage (5)
; 通常攻擊5Y*5 / 連鎖亂擊(五)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack 5Y*5 / Chain Barrage (5)]
type = ChangeState
value = 227
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = (p2bodydist y = [-440,0]) ;與對手Y軸距離
triggerall = !(enemynear(var(48)),stateno = var(9)) || (var(9) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(8)) || (var(8) = 0) ;攻擊被當身記錄
triggerall = !(enemynear(var(48)),stateno = var(7)) || (var(7) = 0) ;攻擊被當身記錄
;▼----------✱連擊✱----------▼;✔
trigger1 = power < 1000 ;能量小於1000點
trigger1 = (fvar(31) = [0,540]) || (p2bodydist x = [0,485]) ;與對手X軸距離
trigger1 = stateno = 222 && animelemtime(17) >= 1 ;特定的招式
trigger1 = movehit >= 1 ;擊中對手時
trigger1 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱連擊✱----------▼;✔
trigger2 = power < 1000 ;能量小於1000點
trigger2 = (fvar(31) = [0,540]) || (p2bodydist x = [0,485]) ;與對手X軸距離
trigger2 = stateno = 1000 && animelemtime(17) >= 1 ;特定的招式
trigger2 = movehit >= 1 ;擊中對手時
trigger2 = (random <= var(58)*(0.8) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱連擊✱----------▼;✔
trigger3 = power < 2000 ;能量小於2000點
trigger3 = (fvar(31) = [0,540]) || (p2bodydist x = [0,485]) ;與對手X軸距離
trigger3 = ((stateno = 222 || stateno = 1000) && animelemtime(17) >= 1) ;特定的招式
trigger3 = movehit >= 1 ;擊中對手時
trigger3 = (random <= var(58)*(1.2) && ailevel = [1,4]) ;發動機率 (難度1~4限定)
;▼----------✱壓制✱----------▼;✔
trigger4 = (fvar(31) = [474,1104]) || (p2bodydist x = [420,1050]) ;與對手X軸距離
trigger4 = stateno = 222 && animelemtime(17) >= 1 ;特定的招式
trigger4 = moveguarded >= 1 ;被對手防禦時
trigger4 = (random <= var(58)*(1.5) && ailevel >= 4) ;發動機率 (難度4以上限定)
;▼----------✱壓制✱----------▼;✔
trigger5 = power < 1000 ;能量小於1000點
trigger5 = (fvar(31) = [474,1104]) || (p2bodydist x = [420,1050]) ;與對手X軸距離
trigger5 = stateno = 1000 && animelemtime(17) >= 1 ;特定的招式
trigger5 = moveguarded >= 1 ;被對手防禦時
trigger5 = (random <= var(58)*(1.0) && ailevel >= 5) ;發動機率 (難度5以上限定)

;---------------------------------------------------------------------------
; Heaven's Spear
; 飛天槍
;---------------------------------------------------------------------------
[State -1, AI Heaven's Spear]
type = ChangeState
value = 620
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
;▼----------✱空對地✱----------▼;✔
trigger1 = ctrl || ((stateno = [50,51])) ;可控制狀態&狀態編號50~51
trigger1 = (p2bodydist x = [0,150]) ;與對手X軸距離
trigger1 = (p2bodydist y = [400,600]) ;與對手Y軸距離
trigger1 = pos y <= -400 ;Y軸位置小於等於-400
trigger1 = p2statetype != A ;對手狀態類型不是空中
trigger1 = p2movetype = I || p2movetype = A && (p2stateno < 2000) ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger1 = p2stateno != [120,155] ;對手狀態編號不是120到155 (防禦)
trigger1 = (random <= var(58)*(0.6) && enemynear(var(48)),vel x <= 0) || (random <= var(58)*(1.2) && enemynear(var(48)),vel x > 0) ;發動機率&條件
;▼----------✱空對地✱----------▼;✔
trigger2 = stateno = 111 ;狀態編號111
trigger2 = (p2bodydist x = [0,280]) ;與對手X軸距離
trigger2 = (p2bodydist y = [375,1100]) ;與對手Y軸距離
trigger2 = pos y <= -360 ;Y軸位置小於等於-360
trigger2 = p2statetype != A ;對手狀態類型不是空中
trigger2 = p2movetype = I || p2movetype = A && (p2stateno < 2000) ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155 (防禦)
trigger2 = (random <= var(58)*(1.0) && ailevel >= 4) ;發動機率 (難度4以上限定)
;▼----------✱向前衝刺 / 空中時攻擊✱----------▼;✔
trigger3 = stateno = 110 && vel x >= 0 ;狀態編號110 和 向前移動時
trigger3 = enemynear(var(48)),const(size.head.pos.y) = [-600,-120] ;對手頭部位置-600~-120之間 (600以上跳不過對手 120以下後面招式可能打不到)
trigger3 = (p2bodydist x = [50,250]) ;與對手X軸距離
trigger3 = (p2bodydist y = [200,1500]) ;與對手Y軸距離
trigger3 = pos y <= -360 ;Y軸位置小於等於-360
trigger3 = enemynear(var(48)),movetype = I || enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno < 2000) ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger3 = enemynear(var(48)),stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger3 = (random <= var(58)*(0.8) && enemynear(var(48)),vel x <= 0) || (random <= var(58)*(1.2) && enemynear(var(48)),vel x > 0)
;▼----------✱向前衝刺 / 空中時攻擊✱----------▼;✔
trigger4 = stateno = 110 && vel x >= 0 ;狀態編號110 和 向前移動時
trigger4 = enemynear(var(48)),const(size.head.pos.y) = [-600,-120] ;對手頭部位置-600~-120之間 (600以上跳不過對手 120以下後面招式可能打不到)
trigger4 = (p2bodydist x = [0,250]) ;與對手X軸距離
trigger4 = (p2bodydist y = [250,500]) ;與對手Y軸距離
trigger4 = pos y <= -360 ;Y軸位置小於等於-360
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = enemynear(var(48)),stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger4 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱連擊/壓制✱----------▼;✔
trigger5 = (stateno = [640,645]) && movecontact >= 1 ;特定的招式接觸時
trigger5 = (p2bodydist x = [0,160]) ;與對手X軸距離
trigger5 = (p2bodydist y = [280,460]) ;與對手Y軸距離
trigger5 = frontedgedist < 260 ;前方邊界距離小於260
trigger5 = p2statetype = A ;對手狀態類型為空中
trigger5 = (random <= var(58)*(0.8)) ;發動機率

;---------------------------------------------------------------------------
; Normal Attack Air B
; 通常攻擊 空中B
;---------------------------------------------------------------------------
[State -1, AI Normal Attack Air B]
type = ChangeState
value = 610
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = stateno != 105 ;不在狀態編號105 (向後跳)
;▼----------✱起攻/空對地✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger1 = p2statetype = S ;對手狀態類型為站立
trigger1 = p2stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger1 = p2movetype = I || p2stateno < 1000 ;對手招式類型為空閒 或 對手狀態編號不到1000號
trigger1 = (fvar(31) = [452,754]) || (p2bodydist x = [398,700]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-250,440]) ;與對手Y軸距離
trigger1 = frontedgedist >= 560 ;前方邊界距離560以上
trigger1 = pos y <= -440 ;Y軸位置-440
trigger1 = (random < var(58)*(1.0)) ;發動機率&條件
;▼----------✱起攻/空對空✱----------▼;✔
trigger2 = ctrl || ((stateno = [50,51]) || stateno = 110 && vel x >= 0) ;可控制狀態&狀態編號50~51和110以及向前移動/原地時
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger2 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 1000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到1000號
trigger2 = (fvar(31) = [452,754]) || (p2bodydist x = [398,700]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-400,180]) ;與對手Y軸距離
trigger2 = pos y <= -334 ;Y軸位罝小於等於-334
trigger2 = (random < var(58)*(1.0)) ;發動機率&條件
;▼----------✱連擊/壓制✱----------▼;✔
trigger3 = stateno = 600 && movecontact >= 1 ;特定的招式接觸時
trigger3 = (p2bodydist x = [0,480]) ;與對手X軸距離
trigger3 = (p2bodydist y = [-400,180]) ;與對手Y軸距離
trigger3 = p2statetype = A ;對手狀態類型為空中

;---------------------------------------------------------------------------
; Normal Attack Air Combo C / Air Chain Barrage (3)
; 通常攻擊 空中連段C / 空中連鎖亂擊(三)
;---------------------------------------------------------------------------
[State -1, AI Normal Attack Air Combo C / Air Chain Barrage (3)]
type = ChangeState
value = 645
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = stateno != 105 ;不在狀態編號105 (向後跳)
;▼----------✱連擊/壓制✱----------▼;✔
trigger1 = stateno = 610 && movecontact >= 1 ;特定的招式接觸時
trigger1 = (p2bodydist x = [0,650]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-150,450]) ;與對手Y軸距離
trigger1 = p2statetype = A ;對手狀態類型為空中

;---------------------------------------------------------------------------
; Normal Attack Air C
; 通常攻擊 空中C
;---------------------------------------------------------------------------
[State -1, AI Normal Attack Air C]
type = ChangeState
value = 640
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = stateno != 105 ;不在狀態編號105 (向後跳)
;▼----------✱跳過對手攻擊✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = enemynear(var(48)),const(size.head.pos.y) = [-600,-120] ;對手頭部位置-600~-120之間 (600以上跳不過對手 120以下後面招式可能打不到)*1
trigger1 = (vel x > 0) && (p2bodydist x = [-128,-40]) ;向前移動時&與對手X軸距離
trigger1 = (pos y = [-460,-415]) ;Y軸位置-460~-415
trigger1 = frontedgedist >= 750 ;前方邊界距離大於等於750
trigger1 = (random < var(58)*(1.6)) ;發動機率&條件
;▼----------✱起攻✱----------▼;✔
trigger2 = ctrl || (stateno = [50,51]) ;可控制狀態&移動狀態
trigger2 = p2statetype != L ;對手狀態類型不是躺下
trigger2 = p2stateno != [120,155] ;對手狀態編號不是120到155 (防禦)
trigger2 = p2movetype = I || p2stateno < 1000 ;對手招式類型為空閒 或 對手狀態編號不到1000號
trigger2 = (fvar(31) = [452,689]) || (p2bodydist x = [398,650]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-150,440]) ;與對手Y軸距離
trigger2 = pos y <= -440 ;Y軸位置-440
trigger2 = (random < var(58)*(1.0)) ;發動機率&條件
;▼----------✱空對地✱----------▼;✔
trigger3 = stateno = 111 ;狀態編號111
trigger3 = (p2bodydist x = [240,420]) ;與對手X軸距離
trigger3 = (p2bodydist y = [860,960]) ;與對手Y軸距離
trigger3 = pos y <= -480 ;Y軸位置小於等於-480
trigger3 = p2statetype != A ;對手狀態類型不是空中
trigger3 = p2movetype = I || p2movetype = A && (p2stateno < 2000) ;對手招式類型為空閒 或 對手狀態編號不到2000號
trigger3 = p2stateno != [120,155] ;對手狀態編號不是120到155 (防禦)
trigger3 = (random <= var(58)*(0.6) && ailevel >= 4) ;發動機率 (難度4以上限定)

;---------------------------------------------------------------------------
; Teleport Heaven's Spear
; 瞬間移動飛天槍
;---------------------------------------------------------------------------
[State -1, AI Teleport Heaven's Spear]
type = ChangeState
value = 259
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != 259 ;狀態編號不是259
triggerall = (stateno != [620,625]) ;狀態編號不是620~625
triggerall = power >= 1000 ;能量1000點以上
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2statetype != L ;對手狀態類型不是躺下
triggerall = p2movetype != H ;對手招式類型不是受擊
triggerall = ctrl || stateno = 19 || stateno = 21 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱超級對空(敵人飛行時)✱----------▼;✔
trigger1 = (p2bodydist y = [-930,-900]) ;與對手Y軸距離
trigger1 = (random <= var(58)*(0.5)) ;發動機率
;▼----------✱超級對空(敵人飛行時)✱----------▼;✔
trigger2 = p2bodydist y <= -930 || (p2bodydist y = [-99999999,-930]) ;與對手Y軸距離
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
; Guard Type AI Code
; 防禦類型AI代碼
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

;---------------------------------------------------------------------------
; Blocking (Standing)
; 格擋 (正在站立時)
;---------------------------------------------------------------------------
[State -1, AI Blocking (Standing)]
type = HitOverride
triggerall = alive
triggerall = !ishelper 
triggerall = var(53) = 0
triggerall = var(59) >= 1
triggerall = roundstate = 2
triggerall = (stateno != [520,565])
triggerall = palno = [1,10]
triggerall = statetype = S
;▼----------✱格檔✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 ||stateno =  106 || (stateno = [150,153])
trigger1 = (random <= var(58)*(1.0) && ailevel = [1,6]) || (random <= var(58)*(0.8) && ailevel = [7,8])
;▼----------✱格檔✱----------▼;✔
trigger2 = gethitvar(hitshaketime)
trigger2 = (random <= var(58)*(0.2) && ailevel = [7,8])
attr = SA, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 520
slot = 0
time = 7

;---------------------------------------------------------------------------
; Blocking (Crouching)
; 格擋 (正在蹲下時)
;---------------------------------------------------------------------------
[State -1, AI Blocking (Crouching)]
type = HitOverride
triggerall = alive
triggerall = !ishelper 
triggerall = var(53) = 0
triggerall = var(59) >= 1
triggerall = roundstate = 2
triggerall = (stateno != [520,565])
triggerall = palno = [1,10]
triggerall = statetype = C
;▼----------✱格檔✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 || stateno = 52 || stateno = 100 || stateno = 103 ||stateno =  106 || (stateno = [150,153])
trigger1 = (random <= var(58)*(1.0) && ailevel = [1,6]) || (random <= var(58)*(0.8) && ailevel = [7,8])
;▼----------✱格檔✱----------▼;✔
trigger2 = gethitvar(hitshaketime)
trigger2 = (random <= var(58)*(0.2) && ailevel = [7,8])
attr = C, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 540
slot = 0
time = 7

;---------------------------------------------------------------------------
; Blocking (Aerial)
; 格擋 (正在空中時)
;---------------------------------------------------------------------------
[State -1, AI Blocking (Aerial)]
type = HitOverride
triggerall = alive
triggerall = !ishelper 
triggerall = var(53) = 0
triggerall = var(59) >= 1
triggerall = roundstate = 2
triggerall = (stateno != [520,565])
triggerall = palno = [1,10]
triggerall = statetype = A
;▼----------✱格擋✱----------▼;✔
trigger1 = ctrl || (stateno = [39,43]) || stateno = 105 && time >= 2 || stateno = 111 || stateno = 116 || (stateno = [154,155])
trigger1 = (random <= var(58)*(1.0) && ailevel = [1,6]) || (random <= var(58)*(0.8) && ailevel = [7,8])
;▼----------✱格擋✱----------▼;✔
trigger2 = gethitvar(hitshaketime)
trigger2 = (random <= var(58)*(0.2) && ailevel = [7,8])
attr = SCA, NA, SA, HA, AA, NP, SP, HP, AP
stateno = 560
forceair = 1
slot = 0
time = 7

;---------------------------------------------------------------------------
; Guard Cancel C / Fire Gale Spear
; 防禦取消C / 火風槍
;---------------------------------------------------------------------------
[State -1, AI Guard Cancel C / Fire Gale Spear]
type = ChangeState
value = cond(random < 700,720,725) ;70%機率使用防禦取消C / 火風槍 否則改為使用防禦取消CB / 火風槍
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10號
triggerall = stateno = [150,159] ;狀態編號150~159
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !enemynear(var(48)),ishelper ;不是靠近的敵人助手
triggerall = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
triggerall = stateno = 150 || stateno = 152 ;狀態編號150 或 狀態編號152
triggerall = (p2bodydist x = [0,450]) ;與對手X軸距離
;▼----------✱防禦取消✱----------▼;✔
trigger1 = life >= lifemax*0.25 ;生命值大於等於最大生命值25%
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = (frontedgedist >= 500) && (power = [1500,3000]) ;前方邊界距離大於等於500 和 能量值在1500~3000
trigger1 = (random <= var(58)*(1.5) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger2 = life >= lifemax*0.25 ;生命值大於等於最大生命值25%
trigger2 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger2 = (frontedgedist >= 500) && (power >= 3000) ;前方邊界距離大於等於500 和 能量值大於等於3000
trigger2 = (random <= var(58)*(0.5) && ailevel >= 5) ;發動機率 (難度5以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger3 = life < lifemax*0.25 && enemynear(var(48)),life >= lifemax*0.65 ;生命值小於最大生命值25% 和 靠近的敵人生命值大於等於最大生命值65%
trigger3 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger3 = (frontedgedist >= 500) && (power = [1000,4000]) ;前方邊界距離大於等於500 和 能量值在1000~4000
trigger3 = (random <= var(58)*(1.4) && ailevel >= 6) ;發動機率 (難度6以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger4 = life < lifemax*0.25 && enemynear(var(48)),life >= lifemax*0.65 ;生命值小於最大生命值25% 和 靠近的敵人生命值大於等於最大生命值65%
trigger4 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger4 = (frontedgedist >= 500) && (power >= 3000) ;前方邊界距離大於等於500 和 能量值大於等於3000
trigger4 = (random <= var(58)*(0.6) && ailevel >= 5) ;發動機率 (難度5以上限定)

;---------------------------------------------------------------------------
; Guard Cancel Y / Kinkyuu Kaihi Front
; 防禦取消Y / 緊急回避前
;---------------------------------------------------------------------------
[State -1, AI Guard Cancel (Y) / Kinkyuu Kaihi Front]
type = ChangeState
value = 710
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10號
triggerall = stateno = [150,159] ;狀態編號150~159
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !enemynear(var(48)),ishelper ;不是靠近的敵人助手
triggerall = (p2bodydist x = [0,250]) ;與對手X軸距離
;▼----------✱防禦取消✱----------▼;✔
trigger1 = life >= lifemax*0.20 ;生命值大於等於最大生命值20%
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger1 = (backedgedist < 1100) && (power = [1500,3000]) ;後方邊界距離小於1100 和 能量值在1500~3000
trigger1 = (random <= var(58)*(0.9) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger2 = life < lifemax*0.20 ;生命值小於最大生命值20%
trigger2 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger2 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger2 = (backedgedist < 1100) && (power = [1000,1500]) ;後方邊界距離小於1100 和 能量值在1000~1500
trigger2 = (random <= var(58)*(1.2) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger3 = life < lifemax*0.20 ;生命值小於最大生命值20%
trigger3 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger3 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger3 = (backedgedist < 1100) && (power >= 2500) ;後方邊界距離小於1100 和 能量值在2500以上
trigger3 = (random <= var(58)*(0.8) && ailevel >= 3) ;發動機率 (難度3以上限定)

;---------------------------------------------------------------------------
; Guard Cancel YB / Kinkyuu Kaihi Back
; 防禦取消YB / 緊急回避後
;---------------------------------------------------------------------------
[State -1, AI Guard Cancel (YB) / Kinkyuu Kaihi Back]
type = ChangeState
value = 715
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10號
triggerall = stateno = [150,159] ;狀態編號150~159
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !enemynear(var(48)),ishelper ;不是靠近的敵人助手
triggerall = (p2bodydist x = [0,250]) ;與對手X軸距離
;▼----------✱防禦取消✱----------▼;✔
trigger1 = life >= lifemax*0.20 ;生命值大於等於最大生命值20%
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger1 = (frontedgedist < 700) && (power = [1500,3000]) ;前方邊界距離小於700 和 能量值在1500~3000
trigger1 = (random <= var(58)*(0.9) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger2 = life < lifemax*0.20 ;生命值小於最大生命值20%
trigger2 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger2 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger2 = (frontedgedist < 700) && (power = [1000,1500]) ;前方邊界距離小於700 和 能量值在1000~1500
trigger2 = (random <= var(58)*(1.2) && ailevel >= 3) ;發動機率 (難度3以上限定)
;▼----------✱防禦取消✱----------▼;✔
trigger3 = life < lifemax*0.20 ;生命值小於最大生命值20%
trigger3 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger3 = enemynear(var(48)),life >= lifemax*0.25 ;靠近的敵人生命值大於等於最大生命值25%
trigger3 = (frontedgedist < 700) && (power >= 2500) ;前方邊界距離小於700 和 能量值在2500以上
trigger3 = (random <= var(58)*(0.8) && ailevel >= 3) ;發動機率 (難度3以上限定)

;---------------------------------------------------------------------------
; Stand Guarding
; 站立防禦時
;---------------------------------------------------------------------------
[State -1, AI Stand Guarding]
type = ChangeState
value = 130
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),movetype != H ;靠近的敵人招式類型不是受擊
triggerall = !(enemynear(var(48)),hitdefattr = SCA, NT, ST, HT, AT) ;不是靠近的敵人打擊定義攻擊類型 → 投擲技
triggerall = (inguarddist && (ceil(p2bodydist x) >= -30)) || (enemynear(var(48)),movetype = A && ((ceil(p2bodydist x) < 0))) ;在防禦距離內且與對方的距離大於等於-30 或 靠近的敵人在攻擊狀態且與對方的距離小於0
triggerall = ctrl || (stateno = [19,21]) || stateno = 52 || (stateno = [100,102]) || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
triggerall = (random <= var(58)*(7.2) && ailevel = 1) || (random <= var(58)*(5.2) && ailevel = 2) || (random <= var(58)*(3.2) && ailevel = 3) || (random <= var(58)*(2.2) && ailevel = 4) || (random <= var(58)*(1.7) && ailevel = 5) || (random <= var(58)*(1.2) && ailevel >= 6) ;發動機率&條件
;▼----------✱防禦記錄列表✱----------▼;✔
trigger1 = enemynear(var(48)),stateno = var(2) ;被破解防禦記錄
trigger2 = enemynear(var(48)),stateno = var(3) ;被破解防禦記錄
trigger3 = enemynear(var(48)),stateno = var(4) ;被破解防禦記錄

[State -1, AI Stand Guarding]
type = ChangeState
value = 130
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = p2movetype != H ;對手招式類型不是受擊
triggerall = (inguarddist && (ceil(p2bodydist x) >= -30)) || (p2movetype = A && ((ceil(p2bodydist x) < 0))) ;在防禦距離內且與對方的距離大於等於-30 或 對手在攻擊狀態且與對方的距離小於0
triggerall = ctrl || (stateno = [19,21]) || stateno = 52 || (stateno = [100,102]) || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
triggerall = (random <= var(58)*(7.2) && ailevel = 1) || (random <= var(58)*(5.2) && ailevel = 2) || (random <= var(58)*(3.2) && ailevel = 3) || (random <= var(58)*(2.2) && ailevel = 4) || (random <= var(58)*(1.7) && ailevel = 5) || (random <= var(58)*(1.2) && ailevel >= 6) ;發動機率&條件
triggerall = numenemy >= 3 && enemy(0),alive = 0 && enemy(1),alive = 0 ;敵人數三位以上&第一位和第二位敵人死亡時
;▼----------✱防禦記錄列表✱----------▼;✔
trigger1 = p2stateno = var(2) ;被破解防禦記錄
trigger2 = p2stateno = var(3) ;被破解防禦記錄
trigger3 = p2stateno = var(4) ;被破解防禦記錄

;---------------------------------------------------------------------------
; Crouch Guarding
; 蹲下防禦時
;---------------------------------------------------------------------------
[State -1, AI Crouch Guarding]
type = ChangeState
value = 131
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),movetype != H ;靠近的敵人招式類型不是受擊
triggerall = !(enemynear(var(48)),hitdefattr = SCA, NT, ST, HT, AT) ;不是靠近的敵人打擊定義攻擊類型 → 投擲技
triggerall = (inguarddist && (ceil(p2bodydist x) >= -30)) || (enemynear(var(48)),movetype = A && ((ceil(p2bodydist x) < 0))) ;在防禦距離內且與對方的距離大於等於-30 或 靠近的敵人在攻擊狀態且與對方的距離小於0
triggerall = ctrl || stateno = 11 || (stateno = [19,21]) || stateno = 52 || (stateno = [100,102]) || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
triggerall = (random <= var(58)*(7.2) && ailevel = 1) || (random <= var(58)*(5.2) && ailevel = 2) || (random <= var(58)*(3.2) && ailevel = 3) || (random <= var(58)*(2.2) && ailevel = 4) || (random <= var(58)*(1.7) && ailevel = 5) || (random <= var(58)*(1.2) && ailevel >= 6) ;發動機率&條件
;▼----------✱防禦記錄列表✱----------▼;✔
trigger1 = enemynear(var(48)),stateno = var(2) ;被破解防禦記錄
trigger2 = enemynear(var(48)),stateno = var(3) ;被破解防禦記錄
trigger3 = enemynear(var(48)),stateno = var(4) ;被破解防禦記錄

;---------------------------------------------------------------------------
; Guard
; 防禦
;---------------------------------------------------------------------------
[State -1, AI Guard]
type = ChangeState
value = cond(((enemynear(var(48)),statetype = C) || (enemynear(var(48)),stateno = var(5)) || (enemynear(var(48)),stateno = var(6)) || (enemynear(var(48)),stateno = var(1))),131,120) ;如果靠近的敵人在下蹲狀態 或 靠近的敵人狀態號等於記錄的數據 則蹲防或站防
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),movetype != H ;靠近的敵人招式類型不是受擊
triggerall = !(enemynear(var(48)),hitdefattr = SCA, NT, ST, HT, AT) ;不是靠近的敵人打擊定義攻擊類型 → 投擲技
triggerall = (inguarddist && (ceil(p2bodydist x) >= -30)) || (enemynear(var(48)),movetype = A && ((ceil(p2bodydist x) = [-360,360]))) || (inguarddist && (enemynear(var(48)),numproj != 0)) ;在防禦距離內且與對方的距離大於等於-30 或 靠近的敵人在攻擊狀態且與對方的距離在-360至360之間 或 存在靠近的敵人飛行道具
triggerall = ctrl || stateno = 11 || (stateno = [19,21]) || stateno = 52 || (stateno = [100,102]) || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱防禦✱----------▼;✔
trigger1 = (random <= var(58)*(7.0) && ailevel = 1) || (random <= var(58)*(5.0) && ailevel = 2) || (random <= var(58)*(3.0) && ailevel = 3) || (random <= var(58)*(2.0) && ailevel = 4) || (random <= var(58)*(1.5) && ailevel = 5) || (random <= var(58)*(1.0) && ailevel >= 6) ;發動機率&條件

;---------------------------------------------------------------------------
; Air Guarding
; 空中防禦時
;---------------------------------------------------------------------------
[State -1, AI Air Guarding]
type = ChangeState
value = 132
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = palno = [1,10] ;人物色表編號1~10
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = p2movetype != H ;對手招式類型不是受擊
triggerall = (inguarddist && (ceil(p2bodydist x) >= -30)) || (p2movetype = A && ((ceil(p2bodydist x) = [-360,360]))) ;在防禦距離內且與對方的距離大於-30，或對方在攻擊狀態且與對方的距離在-60至60之間
triggerall = ctrl || (stateno = [50,51]) || stateno = 105 && time >= 2 ;可控制狀態&跳躍狀態
;▼----------✱防禦✱----------▼;✔
trigger1 = (random <= var(58)*(7.0) && ailevel = 1) || (random <= var(58)*(5.0) && ailevel = 2) || (random <= var(58)*(3.0) && ailevel = 3) || (random <= var(58)*(2.0) && ailevel = 4) || (random <= var(58)*(1.5) && ailevel = 5) || (random <= var(58)*(1.0) && ailevel >= 6) ;發動機率&條件

;---------------------------------------------------------------------------
; Blocking (Reset)
; 格擋 (重置)
;---------------------------------------------------------------------------
[State -1, AI Reset Blocking]
type = HitOverride
triggerall = var(59) >= 1
triggerall = palno = [1,10]
;▼----------✱格擋重置✱----------▼;✔
trigger1 = ctrl = 0 && (stateno != [520,565])
;▼----------✱格擋重置✱----------▼;✔
trigger2 = movetype = A || (movetype = H && (stateno != [120,155]))
slot = 0
time = 0

; 撰寫參考來源
; https://www.bilibili.com/read/cv2844227

;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
; Movement Type AI Code
; 移動類型AI代碼
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●

;---------------------------------------------------------------------------
; Kinkyuu Kaihi (Front)
; 緊急回避 (前)
;---------------------------------------------------------------------------
[State -1, AI Kinkyuu Kaihi (Front)]
type = ChangeState
value = 700
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱回避✱----------▼;✔
trigger1 = ctrl || stateno = 11 || (stateno = [19,21]) || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (p2bodydist x = [0,600]) ;與對手X軸距離
trigger1 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger1 = enemynear(var(48)),vel x >= 0 ;靠近的敵人向前移動和原地不動時
trigger1 = enemynear(var(48)),hitdefattr = SCA, NA, SA, NP ;靠近的敵人打擊定義攻擊類型 → SCA, NA, SA, NP攻擊
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱閃躲對方飛行道具✱----------▼;✔
trigger2 = ctrl || stateno = 11 || (stateno = [19,21]) || stateno = 52 || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = enemynear(var(48)),numproj >= 1 ;靠近的敵人飛行道具數量大於等於1
trigger2 = inguarddist ;可防禦距離
trigger2 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱疾風槍、龍牙槍結束閃躲✱----------▼;✔
trigger3 = (stateno = 1489 || stateno = 2489) && animelemtime(5) >= 1 ;特定的招式使用時
trigger3 = (p2bodydist x = [120,400]) ;與對手X軸距離
trigger3 = frontedgedist >= 1500 ;前方邊界距離大於等於1500
trigger3 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger3 = enemynear(var(48)),hitdefattr = SCA, NA, SA ;靠近的敵人打擊定義攻擊類型 → SCA, NA, SA攻擊
trigger3 = enemynear(var(48)),vel x > 0 ;靠近的敵人向前移動時
trigger3 = (random <= var(58)*(1.0)) ;發動機率

[State -1, AI Kinkyuu Kaihi (Front)]
type = ChangeState
value = 700
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = stateno = 102 ;移動狀態
;▼----------✱回避✱----------▼;✔
trigger1 = (p2bodydist x = [0,800]) ;與對手X軸距離
trigger1 = frontedgedist >= 500 ;前方邊界距離大於等於500
trigger1 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger1 = enemynear(var(48)),vel x >= 0 ;靠近的敵人向前移動和原地不動時
trigger1 = enemynear(var(48)),hitdefattr = SCA, SA, HA ;靠近的敵人打擊定義攻擊類型 → SCA, SA, HA攻擊
trigger1 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱閃躲對方飛行道具✱----------▼;✔
trigger2 = enemynear(var(48)),numproj >= 1 ;靠近的敵人飛行道具數量大於等於1
trigger2 = inguarddist ;可防禦距離
trigger2 = (random <= var(58)*(1.2)) ;發動機率

;---------------------------------------------------------------------------
; Kinkyuu Kaihi (Back)
; 緊急回避 (後)
;---------------------------------------------------------------------------
[State -1, AI Kinkyuu Kaihi (Back)]
type = ChangeState
value = 705
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱回避✱----------▼;✔
trigger1 = ctrl || stateno = 11 || (stateno = [19,21]) || stateno = 52 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = (p2bodydist x = [0,360]) ;與對手X軸距離
trigger1 = backedgedist >= 1000 ;後方邊界距離大於等於1000
trigger1 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動和原地不動時
trigger1 = enemynear(var(48)),hitdefattr = SCA, NA, SA, HA, NP ;靠近的敵人打擊定義攻擊類型 → SCA, NA, SA, HA, NP攻擊
trigger1 = (random <= var(58)*(1.5)) ;發動機率
;▼----------✱疾風槍、龍牙槍結束閃躲✱----------▼;✔
trigger2 = (stateno = 1489 || stateno = 2489) && animelemtime(5) >= 1 ;特定的招式使用時
trigger2 = (p2bodydist x = [0,500]) ;與對手X軸距離
trigger2 = frontedgedist < 800 ;前方邊界距離小於800
trigger2 = enemynear(var(48)),life >= lifemax*0.3 ;靠近的敵人最大生命值大於等於30%
trigger2 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger2 = enemynear(var(48)),hitdefattr = SCA, NA, SA ;靠近的敵人打擊定義攻擊類型 → SCA, NA, SA攻擊
trigger2 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動和原地不動時
trigger2 = (enemynear(var(48)),time = [0,4]) ;靠近的敵人時間0~4
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Forward Dash / Air
; 向前衝刺 / 空中
;---------------------------------------------------------------------------
[State -1, AI Forward Dash / Air]
type = ChangeState
value = 110
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = stateno != [110,116] ;狀態編號不是110~116
;▼----------✱隨機移動✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger1 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger1 = (p2bodydist x = [800,1600]) ;與對手X軸距離
trigger1 = pos y <= -350 && vel y <= 0 ;Y軸位置小於等於-350 和 向上移動/平行時
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = enemynear(var(48)),movetype = I || enemynear(var(48)),stateno < 2000 ;靠近的敵人招式類型為空閒 或 靠近的敵人狀態編號不到2000號
trigger1 = (enemynear(var(48)),stateno != [120,159]) ;靠近的敵人狀態編號不是120到159 (防禦)
trigger1 = (random <= var(58)*(1.5)) ;發動機率
;▼----------✱遠方降落時隨機移動✱----------▼;✔
trigger2 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger2 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger2 = (p2bodydist x = [1000,1600]) ;與對手X軸距離
trigger2 = pos y <= -460 && vel y > 0 ;Y軸位置小於等於-460 和 向下移動時
trigger2 = enemynear(var(48)),vel x > 0 ;靠近的敵人向前移動時
trigger2 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger2 = enemynear(var(48)),movetype != H ;靠近的敵人招式類型不是受擊
trigger2 = (random <= var(58)*(1.2)) ;發動機率
;▼----------✱閃躲對方昇龍拳✱----------▼;✔
trigger3 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger3 = (p2bodydist x = [40,150]) ;與對手X軸距離
trigger3 = (p2bodydist y = [0,600]) ;與對手Y軸距離
trigger3 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger3 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger3 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger3 = (enemynear(var(48)),vel y < 0) ;靠近的敵人向上移動時
trigger3 = (enemynear(var(48)),stateno = [1000,2999]) ;靠近的敵人狀態編號1000~2999
trigger3 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱空中追擊✱----------▼;✔
trigger4 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger4 = (p2bodydist x = [100,400]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-250,0]) ;與對手Y軸距離
trigger4 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger4 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger4 = enemynear(var(48)),stateno != [120,155] ;靠近的敵人狀態編號不是120到155 (防禦)
trigger4 = enemynear(var(48)),vel x < 0 ;靠近的敵人向後移動時
trigger4 = enemynear(var(48)),vel y < 0 ;靠近的敵人向上移動時
trigger4 = pos y <= -250 ;Y軸位置小於等於-250
trigger4 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Back Dash / Air
; 向後衝刺 / 空中
;---------------------------------------------------------------------------
[State -1, AI Back Dash / Air]
type = ChangeState
value = 115
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype = A ;狀態類型為空中 (自己在空中)
triggerall = stateno != [110,116] ;狀態編號不是110~116
;▼----------✱閃躲對方空中技✱----------▼;✔
trigger1 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger1 = (p2bodydist x = [120,300]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-350,350]) ;與對手Y軸距離
trigger1 = pos y <= -300 ;Y軸位置小於等於-300
trigger1 = backedgedist >= 600 ;後方邊界距離大於等於600
trigger1 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger1 = enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno = [1000,2999]) ;靠近的敵人招式類型為攻擊 和 靠近的敵人狀態編號在1000~2999
trigger1 = enemynear(var(48)),numproj <= 0 ;飛行道具數量小於等於0
trigger1 = enemynear(var(48)),time < 8 ;靠近的敵人招式時間小於8ticks (招式剛開始使用時)
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱閃躲對方昇龍拳✱----------▼;✔
trigger2 = ctrl || (stateno = [50,51]) ;可控制狀態&跳躍狀態
trigger2 = (p2bodydist x = [120,400]) ;與對手X軸距離
trigger2 = (p2bodydist y = [0,700]) ;與對手Y軸距離
trigger2 = backedgedist >= 1000 ;後方邊界距離大於等於1000
trigger2 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger2 = enemynear(var(48)),movetype = A ;靠近的敵人招式類型為攻擊
trigger2 = (enemynear(var(48)),vel y < 0) ;靠近的敵人向上移動時
trigger2 = (enemynear(var(48)),stateno = [1000,2999]) ;靠近的敵人狀態編號1000~2999
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Hop Backwards
; 向後跳
;---------------------------------------------------------------------------
[State -1, AI Hop Backwards]
type = ChangeState
value = 105
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = stateno != [100,106] ;狀態編號不是100~106
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱閃避投擲技✱----------▼;✔
trigger1 = ctrl || stateno = 19 || stateno = 21 ;可控制狀態&移動狀態
trigger1 = (enemynear(var(48)),hitdefattr = SCA, NT, ST, HT, AT) ;靠近的敵人打擊定義攻擊類型 → 投擲技
trigger1 = (p2bodydist x = [-10,120]) ;與對手X軸距離
trigger1 = backedgedist >= 800 ;後方邊界距離大於等於800
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱閃避特殊技/必殺技、超必殺技✱----------▼;✔
trigger2 = ctrl || stateno = 19 || stateno = 21 ;可控制狀態&移動狀態
trigger2 = (enemynear(var(48)),hitdefattr = SC, SA, HA) ;靠近的敵人打擊定義攻擊類型 → SC, SA, HA攻擊
trigger2 = (enemynear(var(48)),time = [0,4]) ;靠近的敵人時間0~4
trigger2 = enemynear(var(48)),vel x <= 0 ;靠近的敵人向後移動和原地不動時
trigger2 = (p2bodydist x = [120,600]) ;與對手X軸距離
trigger2 = backedgedist >= 1200 ;後方邊界距離大於等於1200
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱靠近的敵人起身時✱----------▼;✔
trigger3 = ctrl || stateno = 19 || stateno = 21 ;可控制狀態&移動狀態
trigger3 = (p2bodydist x = [0,300]) ;與對手X軸距離
trigger3 = enemynear(var(48)),stateno = 5120 ;靠近的敵人狀態編號為5120
trigger3 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger3 = backedgedist >= 800 ;後方邊界距離大於等於800
trigger3 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跟敵人幾乎重疊時✱----------▼;✔
trigger4 = ctrl || stateno = 19 || stateno = 21 ;可控制狀態&移動狀態
trigger4 = (p2bodydist x = [-120,120]) ;與對手X軸距離
trigger4 = (p2bodydist y = [-450,100]) ;與對手Y軸距離
trigger4 = backedgedist >= 200 ;後方邊界距離大於等於200
trigger4 = p2movetype != H ;對手招式類型不是受擊
trigger4 = (random <= var(58)*(0.2)) ;發動機率

;---------------------------------------------------------------------------
; Walk (Forward) / AI Control Only
; 步行(前) / 電腦操控專用
;---------------------------------------------------------------------------
[State -1, AI Walk Forward]
type = ChangeState
value = 19
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != [19,21] ;狀態編號不是19~21 (不能在走步狀態內)*
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !inguarddist ;不在可防禦距離
;▼----------✱步行✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 103 || stateno = 106 ;可控制狀態
trigger1 = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (p2bodydist x = [360,2500]) ;與對手X軸距離
trigger1 = (random <= var(58)*(1.0)) ;發動機率

;*避免AI在步行前後互相交替 需要加上stateno != [19,21]

;---------------------------------------------------------------------------
; Walk (Back) / AI Control Only
; 步行(後) / 電腦操控專用
;---------------------------------------------------------------------------
[State -1, AI Walk Back]
type = ChangeState
value = 21
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = stateno != [19,21] ;狀態編號不是19~21 (不能在走步狀態內)*
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = !inguarddist ;不在可防禦距離
;▼----------✱步行✱----------▼;✔
trigger1 = ctrl || stateno = 52 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger1 = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
trigger1 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger1 = (p2bodydist x = [120,800]) ;與對手X軸距離
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱步行✱----------▼;✔
trigger2 = ctrl || stateno = 52 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
trigger2 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger2 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger2 = (p2bodydist x = [0,120]) ;與對手X軸距離
trigger2 = (random <= var(58)*(0.6)) ;發動機率

;*避免AI在步行前後互相交替 需要加上stateno != [19,21]

;---------------------------------------------------------------------------
; Run Forward
; 向前跑
;---------------------------------------------------------------------------
[State -1, AI Run Forward]
type = ChangeState
value = 100
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = stateno != [100,106] ;狀態編號不是100~106
triggerall = !inguarddist ;不在可防禦距離
triggerall = ctrl || stateno = 19 || stateno = 21 ;可控制狀態&移動狀態
;▼----------✱跑步/近距離✱----------▼;✔
trigger1 = (p2bodydist x = [720,999]) ;與對手X軸距離
trigger1 = p2statetype != A ;對手狀態類型不是空中
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跑步/中距離✱----------▼;✔
trigger2 = (p2bodydist x = [1000,1539]) ;與對手X軸距離
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跑步/遠距離✱----------▼;✔
trigger3 = p2bodydist x >= 1540 ;與對手X軸距離
trigger3 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Jump (Forward) / AI Control Only
; 跳躍(前) / 電腦操控專用
;---------------------------------------------------------------------------
[State -1, AI Jump Forward]
type = ChangeState
value = 39
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
triggerall = ctrl || (stateno = [19,21]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱跳躍(前)✱----------▼;✔
trigger1 = (fvar(31) = [400,900]) || (p2bodydist x = [304,804]) ;與對手X軸距離
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跳躍(前)✱----------▼;✔
trigger2 = movetype != A ;招式類型不是攻擊
trigger2 = (fvar(31) = [480,880]) || (p2bodydist x = [384,784]) ;與對手X軸距離
trigger2 = (p2bodydist y = [-600,200]) ;與對手Y軸距離
trigger2 = enemynear(var(48)),movetype = H ;靠近的敵人招式類型為受擊
trigger2 = !enemynear(var(48)),ctrl ;靠近的敵人為不可控制狀態
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跳躍(前)✱----------▼;✔
trigger3 = (fvar(31) = [700,1420]) || (p2bodydist x = [604,1324]) ;與對手X軸距離
trigger3 = enemynear(var(48)),vel x < 0 ;靠近的敵人向後移動時
trigger3 = enemynear(var(48)),vel y < 0 ;靠近的敵人向上移動時
trigger3 = (enemynear(var(48)),time = [2,10]) ;靠近的敵人時間2~10ticks (剛起跳不久時)
trigger3 = (random <= var(58)*(1.0)) ;發動機率

[State -1, AI Jump Forward]
type = ChangeState
value = 39
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
;▼----------✱旋風槍A跳躍取消✱----------▼;✔
trigger1 = (stateno = 1100 && animelemtime(8) >= 1) && movehit >= 1
trigger1 = (random <= var(58)*(1.2)) ;發動機率

;---------------------------------------------------------------------------
; Jump (Back) / AI Control Only
; 跳躍(後) / 電腦操控專用
;---------------------------------------------------------------------------
[State -1, AI Jump Back]
type = ChangeState
value = 41
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
triggerall = ctrl || (stateno = [19,21]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱勾引對手用✱----------▼;✔
trigger1 = (fvar(31) = [220,640]) || (p2bodydist x = [124,544]) ;與對手X軸距離
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger1 = backedgedist >= 1000 ;後方邊界距離大於等於1000
trigger1 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱跳躍(後)✱----------▼;✔
trigger2 = (fvar(31) = [300,700]) || (p2bodydist x = [204,604]) ;與對手X軸距離
trigger2 = enemynear(var(48)),vel x > 0 ;靠近的敵人向前移動時
trigger2 = enemynear(var(48)),vel y < 0 ;靠近的敵人向上移動時
trigger2 = (enemynear(var(48)),time = [2,8]) ;靠近的敵人時間2~8ticks (剛起跳不久時)
trigger2 = life >= lifemax*0.3 ;生命值大於最大生命值30%
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Jump / AI Control Only
; 跳躍 / 電腦操控專用
;---------------------------------------------------------------------------
[State -1, AI Jump Back]
type = ChangeState
value = 42
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
triggerall = ctrl || (stateno = [19,21]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱跳躍/對方在近距離高空✱----------▼;✔
trigger1 = (p2bodydist x = [-300,300]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-800,-550]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger1 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱跳躍/對方在中遠距離地上✱----------▼;✔
trigger2 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger2 = (p2bodydist x = [1000,1600]) ;與對手X軸距離
trigger2 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger2 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger2 = (random <= var(58)*(1.0)) ;發動機率

;---------------------------------------------------------------------------
; Super Jump
; 超級跳躍
;---------------------------------------------------------------------------
[State -1, AI Super Jump]
type = ChangeState
value = 43
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),statetype != L ;靠近的敵人狀態類型不是躺下
triggerall = enemynear(var(48)),movetype != A ;靠近的敵人招式類型不是攻擊
triggerall = ctrl || (stateno = [19,21]) || stateno = 100 || stateno = 103 || stateno = 106 ;可控制狀態&移動狀態
;▼----------✱跳躍/對方在近距離高空✱----------▼;✔
trigger1 = (p2bodydist x = [-300,500]) ;與對手X軸距離
trigger1 = (p2bodydist y = [-1200,-800]) ;與對手Y軸距離
trigger1 = enemynear(var(48)),statetype = A ;靠近的敵人狀態類型為空中
trigger1 = (random <= var(58)*(0.8)) ;發動機率
;▼----------✱跳躍/對方在中遠距離地上✱----------▼;✔
trigger2 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger2 = (p2bodydist x = [1500,2500]) ;與對手X軸距離
trigger2 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger2 = enemynear(var(48)),movetype = I ;靠近的敵人招式類型為空閒
trigger2 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱閃躲對方飛行道具✱----------▼;✔
trigger3 = frontedgedist >= 800 ;前方邊界距離大於等於800
trigger3 = (p2bodydist x = [1500,2500]) ;與對手X軸距離
trigger3 = enemynear(var(48)),numproj >= 1 ;靠近的敵人飛行道具數量大於等於1
trigger3 = inguarddist ;可防禦距離
trigger3 = (random <= var(58)*(1.0)) ;發動機率
;▼----------✱閃躲對方超遠距離攻擊✱----------▼;✔
trigger4 = frontedgedist >= 1000 ;前方邊界距離大於等於1000
trigger4 = (p2bodydist x = [1400,3000]) ;與對手X軸距離
trigger4 = enemynear(var(48)),statetype != A ;靠近的敵人狀態類型不是空中
trigger4 = enemynear(var(48)),movetype = A && (enemynear(var(48)),stateno < 3000) ;靠近的敵人狀態編號不到3000號
trigger4 = enemynear(var(48)),numproj <= 0 ;靠近的敵人飛行道具數量小於等於0
trigger4 = (enemynear(var(48)),time = [1,8]) ;靠近的敵人時間1~8ticks (剛出招時)
trigger4 = enemynear(var(48)),hitdefattr = SCA, NA, SA, HA, AA ;靠近的敵人打擊定義攻擊類型 → SCA, NA, SA, HA, AA
trigger4 = (random <= var(58)*(1.0)) ;發動機率

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; Taunt
; 挑釁
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[State -1, AI Taunt]
type = ChangeState
value = cond(prevstateno != 195,195,0) ;上一個狀態不是挑釁則為挑釁 否則轉為站立
triggerall = alive ;人物存活
triggerall = var(59) >= 1 ;AI啟動時
triggerall = roundstate = 2 ;戰鬥中
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = enemynear(var(48)),alive ;靠近的敵人存活時
triggerall = enemynear(var(48)),stateno != 5120 ;靠近的敵人狀態編號不是5120 (對手將要起身)
triggerall = enemynear(var(48)),statetype = L ;靠近的敵人狀態類型為躺下
;▼----------✱挑釁✱----------▼;✔
trigger1 = ctrl || (stateno = [19,21]) ;可控制狀態&移動狀態
trigger1 = (p2bodydist x = [800,1800]) ;與對手X軸距離
trigger1 = life >= lifemax*0.25 && power < 800 ;生命值大於等於最大生命值25% 和 能量小於800點
trigger1 = (enemynear(var(48)),time = [0,6]) ;靠近的敵人時間0~6ticks
trigger1 = (random <= var(58)*(1.0))

;---------------------------------------------------------------------------
; AI Ground Motion Restrictions
; AI地面動作限制
;---------------------------------------------------------------------------
[State -1, AI Ground Motion Restrictions]
type = ChangeState
triggerall = !ishelper ;不是自己的助手
triggerall = var(59) >= 1 ;AI啟動時
triggerall = statetype != A ;狀態類型為不在空中 (自己不在空中)
triggerall = roundstate <= 3 ;戰鬥前中後時 (不包含做出勝利動作)
;▼----------✱AI地面動作限制列表✱----------▼;✔
trigger1 = stateno = 10 ;狀態編號10
trigger2 = stateno = 20 ;狀態編號20
trigger3 = stateno = 40 ;狀態編號40
value = 0
ctrl = 1
