;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; States that are executed when in self's state file (Use Statedef -3)
; States在自我的狀態文件執行 (使用Statedef -3)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Statedef -3]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 29 := Detect if the character is in his own (SelfState) MoveType = H
; 整數變量29 := 偵測人物是否處於自身受擊狀態
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -3, Var 29 Set 1 (Check SelfState MoveType = H)]
type = VarSet
triggerall = StateType != L
trigger1 = MoveType != H
v = 29
value = 0
;var(29) = 0
ignorehitpause = 1

[State -3, Var 29 Set 2 (Check SelfState MoveType = H)]
type = VarSet
triggerall = StateType != L
triggerall = MoveType = H
trigger1 = (Anim = [150,155])
trigger2 = (Anim = [5000,5899])
v = 29
value = 1
;var(29) = 1
ignorehitpause = 1

; 如果人物處於對手的受擊狀態 
; 因為是寫在Statedef -3 該變量就會失效

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; System Integer Variable 4 := GameTime Type is Controlled and Detected
; 系統整數變量4 := GameTime類型被控制檢測
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -3, SysVar 4 Set (GameTime Type is Controlled and Detected)]
type = VarSet
trigger1 = 1
sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;讓sysvar(4)賦與特殊數值 愈複雜愈好(避免被對方計算)
ignorehitpause = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
; States that are always executed (Use Statedef -2)
; 經常被執行的States (使用Statedef -2)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Statedef -2]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Debug Display
; 調試顯示
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Debug Display]
type = DisplayToClipBoard
trigger1 = 1
text = "Life=%d,Power=%d,AI On LV=%d,AI Level=%d,AI Attack Probability=%d,Palette LV=%d\n"
params = life,power,var(59),ailevel,var(58),palno ;生命值、能量值、AI開啟等級、AILevel等級、AI攻擊機率、色表等級

[State -2, Debug Display]
type = AppendToClipboard 
trigger1 = 1
text = "Knight Card Icon=%d,Knight Card Start to Finish Time=%d,Knight Card Icon Recovery Time=%d"
params = var(39),var(38),var(37) ;騎士卡牌點數、騎士卡牌開始使用到結束的時間、騎士卡牌點數恢復時間

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

; ########## 整數變量 | 整数変数 | Integer Variable ##########

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 0 := Stand Crouch Guard Conversions Recovery 0
; 整數變量0 := 站立防禦、蹲下防禦轉換次數清零
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Stand Crouch Guard Conversions Recovery 0]
type = VarSet
trigger1 = !IsHelper ;不是自己的Helper
var(0) = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 1、2、3、4、5、6 := Defence Cracked Record
; 整數變量1、2、3、4、5、6 := 被破解防禦記錄
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Stand Defence Cracked Record 1] ;站立被破解防禦記錄1 (因為要計算sysvar 所以需要放在時常執行的Statedef -2上)
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 120) || (Anim = 130) || (Anim = 150) ;自己在防禦狀態中
triggerall = var(5) = 0 ;整數變量5為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(5) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Stand Defence Cracked Record 2] ;站立被破解防禦記錄2
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 120) || (Anim = 130) || (Anim = 150) ;自己在防禦狀態中
triggerall = var(5) != 0 ;整數變量5不為0
triggerall = var(6) = 0 ;整數變量6為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(6) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Stand Defence Cracked Record 3] ;站立被破解防禦記錄3
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 120) || (Anim = 130) || (Anim = 150) ;自己在防禦狀態中
triggerall = var(6) != 0 ;整數變量6不為0
triggerall = var(1) = 0 ;整數變量1為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(1) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Crouch Defence Cracked Record 1] ;蹲下被破解防禦記錄1
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 121) || (Anim = 131) || (Anim = 151) ;自己在防禦狀態中
triggerall = var(2) = 0 ;整數變量2為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(2) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Crouch Defence Cracked Record 2] ;蹲下被破解防禦記錄2
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 121) || (Anim = 131) || (Anim = 151) ;自己在防禦狀態中
triggerall = var(2) != 0 ;整數變量2不為0
triggerall = var(3) = 0 ;整數變量3為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(3) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Crouch Defence Cracked Record 3] ;蹲下被破解防禦記錄3
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = (Anim = 121) || (Anim = 131) || (Anim = 151) ;自己在防禦狀態中
triggerall = var(3) != 0 ;整數變量3不為0
triggerall = var(4) = 0 ;整數變量4為0
trigger1 = StateNo = [5000,5150] ;自己在受擊狀態中
trigger2 = sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime ;自己在P2對手狀態中
var(4) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno))
ignorehitpause = 1

[State -2, Duplicate Record Clearing] ;重複記錄清除
type = Null
triggerall = !IsHelper
triggerall = var(59) >= 1
trigger1 = var(5) = var(6) ;整數變量5等於整數變量6
trigger1 = var(6) := 0 ;整數變量6歸零
trigger2 = (var(5) = var(1)) || (var(6) = var(1)) ;整數變量5等於整數變量1 或者 整數變量6等於整數變量1
trigger2 = var(1) := 0 ;整數變量1歸零
trigger3 = var(2) = var(3)
trigger3 = var(3) := 0
trigger4 = (var(2) = var(4)) || (var(3) = var(4))
trigger4 = var(4) := 0
trigger5 = var(2) = [0,110] ;整數變量2等於0到110
trigger5 = var(2) := 0 ;整數變量2歸零
trigger6 = var(3) = [0,110]
trigger6 = var(3) := 0
trigger7 = var(4) = [0,110]
trigger7 = var(4) := 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 7、8、9 := Attack was Reversed Record
; 整數變量7、8、9 := 攻擊被當身記錄
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Attack was Reversed Record 1] ;攻擊被當身記錄1
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = MoveReversed ;發生當身
triggerall = var(7) = 0 ;整數變量7為0
trigger1 = (MoveType = H) || (sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime) ;自己在受擊狀態或被P2帶入狀態。
var(7) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;記錄對方狀態號。
ignorehitpause = 1

[State -2, Attack was Reversed Record 2] ;攻擊被當身記錄2
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = MoveReversed ;發生當身
triggerall = var(8) = 0 ;整數變量8為0
trigger1 = (MoveType = H) || (sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime) ;自己在受擊狀態或被P2帶入狀態。
trigger1 = var(7) != cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;不是整數變量7記錄的狀態號。
var(8) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;記錄對方狀態號。
ignorehitpause = 1

[State -2, Attack was Reversed Record 3] ;攻擊被當身記錄3
type = VarSet
triggerall = Alive ;人物存活時
triggerall = !IsHelper ;不是自己的Helper
triggerall = var(59) >= 1 ;AI啟動中
triggerall = RoundState = 2 ;戰鬥中
triggerall = MoveReversed ;發生當身
triggerall = var(9) = 0 ;整數變量9為0
trigger1 = (MoveType = H) || (sysvar(4) != ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime) ;自己在受擊狀態或被P2帶入狀態。
trigger1 = var(7) != cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;不是整數變量7記錄的狀態號。
trigger1 = var(8) != cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;不是整數變量8記錄的狀態號。
var(9) = cond(((enemynear(0),numtarget = 0) && (enemynear(numenemy > 1),numtarget != 0)),(enemynear(numenemy > 1),stateno),(enemynear(0),stateno)) ;記錄對方狀態號。
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 10 := Team Simul or Team Cooperative Mode Check
; 整數變量10 := Team Simul或Team Cooperative模式偵測
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 同伴是否為雷姆 或 八神庵 或 莉絲……等等 (作者：曼尼琳各)
[State -2, Var 10 Set Up Partner Whether Rem or Iori or Riesz...etc. (Author: Manny Lingle)]
type = Null
triggerall = NumPartner != 0
triggerall = (Partner,ID) < (ID) ;同伴的Player ID號小於玩家的Player ID號
triggerall = Partner,AuthorName = "Manny Lingle" ;同伴作者名稱 曼尼琳各
trigger1 = Partner,Name = "Re Zero Rem MMD" ;同伴名稱 雷姆
trigger1 = (var(10):= 480) || 1
trigger2 = Partner,Name = "Iori Yagami MAAB Sprite by Lingle" ;同伴名稱 八神庵
trigger2 = (var(10):= 480) || 1
trigger3 = Partner,Name = "Riesz MAAB Sprite by Lingle" ;同伴名稱 莉絲
trigger3 = (var(10):= 480) || 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 13 := First Attack Bonus
; 整數變量13 := 第一擊加值
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, First Blade (Attack) Judgment]
type = Null
triggerall = NumTarget
triggerall = Target,Alive
triggerall = !Target,MoveGuarded
triggerall = (MoveHit = 1 && Target,MoveType = H || Target,MoveType = H) && Target,StateNo != [120,155]
trigger1 = !var(13)
trigger1 = var(13):= MoveType = H-Target,Movetype = H

[State -2, First Blade (Attack) Bonus Pal 1~6]
type = PowerAdd
triggerall = PalNo = [1,6]
trigger1 = var(13) = -1
trigger1 = var(13):= 1
trigger1 = NumExplod(15000) >= 1
value = 1000

[State -2, First Blade (Attack) Bonus Pal 7~9]
type = PowerAdd
triggerall = PalNo = [7,9]
trigger1 = var(13) = -1
trigger1 = var(13):= 1
trigger1 = NumExplod(15000) >= 1
value = 1500

[State -2, First Blade (Attack) Bonus Pal 10~11]
type = PowerAdd
triggerall = PalNo = [10,11]
trigger1 = var(13) = -1
trigger1 = var(13):= 1
trigger1 = NumExplod(15000) >= 1
value = 2000

[State -2, First Blade (Attack) Bonus Pal 12]
type = PowerAdd
triggerall = PalNo = 12
trigger1 = var(13) = -1
trigger1 = var(13):= 1
trigger1 = NumExplod(15000) >= 1
value = 2500

[State -2, First Balde 1P Font] ;First Attack字體 (1P側)
type = Explod
triggerall = NumTarget
triggerall = Target,Alive
triggerall = !Target,MoveGuarded
triggerall = (MoveHit = 1 && Target,MoveType = H || Target,MoveType = H) && Target,StateNo != [120,155]
trigger1 = NumExplod(15000) = 0
trigger1 = TeamSide = 1
trigger1 = var(13) = 0
id = 15000
anim = 15000
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(28+(var(10))),(38+(var(10))))*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
ignorehitpause = 1
persistent = 0

[State -2, First Balde 2P Font] ;First Attack字體 (2P側)
type = Explod
triggerall = NumTarget
triggerall = Target,Alive
triggerall = !Target,MoveGuarded
triggerall = (MoveHit = 1 && Target,MoveType = H || Target,MoveType = H) && Target,StateNo != [120,155]
trigger1 = NumExplod(15000) = 0
trigger1 = TeamSide = 2
trigger1 = var(13) = 0
id = 15000
anim = 15000
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-374+(-var(10))),(-364+(-var(10))))*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,918,894)*screenheight/1080
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.52,0.48)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.44,0.48)*screenheight/1080
bindtime = -1
removetime = 150
ignorehitpause = 1
persistent = 0

[State -2, First Attack Font Remove]
type = RemoveExplod
trigger1 = var(53) > 0 ;復活 Resurrection
trigger2 = StateNo = [520,565] ;格檔 Blocking
trigger3 = StateNo = 706 ;受身 Recovery
trigger4 = StateNo = [710,725] ;防禦取消 Guard Cancel
trigger5 = StateNo = [3800,3815] ;氣障壁 Barrier
trigger6 = StateNo = [3990,3991] ;復活 Resurrection
trigger7 = StateNo = [5201,5210] ;受身 Recovery
trigger8 = RoundState >= 4 ;戰鬥結束後做出勝利動作時
id = 15000
ignorehitpause = 1

; 代碼參考
; https://mugenarchive.com/forums/showthread.php?5836-MUGEN-Code-Library
; https://mugenguild.com/forum/topics/first-attack-92688.0.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 15 := Detect if the Enemy's Defense is 0
; 整數變量15 := 偵測對手防禦力是否為0
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 15 Set Up 1 (Detect if the Enemy's Defense is 0)]
type = VarSet
triggerall = NumEnemy
triggerall = var(16) > 0 ;Percentage Damage Switch On
trigger1 = EnemyNear(var(48)),Const(Data.Defence) > 0 ;Not Zero
v = 15
value = 1
;var(15) = 1
ignorehitpause = 1

[State -2, Var 15 Set Up 2 (Detect if the Enemy's Defense is 0)]
type = VarSet
triggerall = NumEnemy
triggerall = var(16) <= 0 ;Percentage Damage Switch Off
trigger1 = EnemyNear(var(48)),Const(Data.Defence) > 0 ;Not Zero
v = 15
value = 0
;var(15) = 0
ignorehitpause = 1

[State -2, Var 15 Set Up 3 (Detect if the Enemy's Defense is 0)]
type = VarSet
triggerall = NumEnemy
triggerall = var(16) > 0 ;Percentage Damage Switch On
trigger1 = EnemyNear(var(48)),Const(Data.Defence) <= 0 ;Zero
v = 15
value = 0
;var(15) = 0
ignorehitpause = 1

[State -2, Var 15 Set Up 4 (Detect if the Enemy's Defense is 0)]
type = VarSet
triggerall = NumEnemy
triggerall = var(16) <= 0 ;Percentage Damage Switch Off
trigger1 = EnemyNear(var(48)),Const(Data.Defence) <= 0 ;Zero
v = 15
value = 0
;var(15) = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 23 := Hit Spark
; 整數變量23 := 打擊火花
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 23 Set Up 1 (Hit Spark)]
type = Helper
trigger1 = MoveHit = 1
trigger1 = NumHelper(var(23)) < 1 ;當玩家ID var(23)的Helper少於1個時觸發，可避免火花特效多次重疊出現
;trigger1 = var(23) > 0
name = "Hit Spark Effect"
id = var(23)                      ;ID還要跟StateNo相同(避免火花特效重疊)
stateno = var(23)
;pos = var(21),var(22) ;會固定打擊火花X軸位置
pos = cond(p2dist x < (cond(var(21) < 0,var(21),0)),(cond(var(21) < 0,var(21),0)),cond(p2dist x < (cond(var(21) < 0,0,var(21))),ceil(p2dist x),(cond(var(21) < 0,0,var(21))))),var(22) ;依據P2距離改變打擊火花X軸位置 (原作MAAB類似該設定)
postype = p1
facing = 1
ownpal = 1
supermovetime = 59 ;可在超級暫停59幀內運行，否則上一個攻擊狀態的爆炸火花效果會在超級暫停時停止*
pausemovetime = 59 ;可在暫停59幀內運行，否則上一個攻擊狀態的爆炸火花效果會在暫停時停止*
ignorehitpause = 1 ;必須要無視攻擊暫停 否則打擊火花會無法正常顯示

;*只對Helper自身有效，Helper內的Explod需要另外再撰寫supermovetime和pausemovetime參數

[State -2, Var 23 Set Up 2 (Hit Spark)]
type = VarSet
trigger1 = !HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
v = 23
value = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 24 := Guard Spark
; 整數變量24 := 防禦火花
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 24 Set Up 1 (Guard Spark)]
type = Helper
trigger1 = MoveGuarded = 1
trigger1 = NumHelper(var(24)) < 1
name = "Guard Spark Effect"
id = var(24)
stateno = var(24)
;pos = var(21),var(22)
pos = cond(p2dist x < (cond(var(21) < 0,var(21),0)),(cond(var(21) < 0,var(21),0)),cond(p2dist x < (cond(var(21) < 0,0,var(21))),ceil(p2dist x),(cond(var(21) < 0,0,var(21))))),var(22)
postype = p1
facing = 1
ownpal = 1
supermovetime = 59
pausemovetime = 59
ignorehitpause = 1

[State -2, Var 24 Set Up 2 (Guard Spark)]
type = VarSet
trigger1 = !HitDefAttr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
v = 24
value = 0
ignorehitpause = 1

;*測試過在Tag Simul多人模式時，打擊火花效果仍然只出現在一位對手上，似乎是MUGEN主程式預設的設定 

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 30 := Whether the Statedef is Captured by the Opponent
; 整數變量30 := 狀態是否被對手奪取判定
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Statedef is Captured by Opponent] ;狀態被對手奪取判定
type = VarSet
triggerall = !IsHelper
trigger1 = !sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime
trigger2 = !sysvar(4) = GameTime%100 ;|| GetHitVar(HitShakeTime) || GetHitVar(Damage)
var(30) = 1
ignorehitpause = 1

[State -2, Statedef is Captured by Opponent (Reset)] ;狀態被對手奪取判定 復位
type = VarSet
triggerall = !IsHelper
trigger1 = sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime
trigger2 = sysvar(4) = GameTime%100
;trigger2 = !GetHitVar(HitShakeTime)
;trigger2 = !GetHitVar(Damage)
var(30) = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 33 := Stage Aspect Ratio 4:3 & 16:9 Detection
; 整數變量33 := 場景寬高比例4:3 & 16:9偵測
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 33 Set Up]
type = VarSet
trigger1 = 1.0*ScreenWidth/ScreenHeight >= 1.34
v = 33
value = 0
;var(33) = 0
ignorehitpause = 1

[State -2, Var 33 Set Up]
type = VarSet
trigger1 = 1.0*ScreenWidth/ScreenHeight < 1.34
v = 33
value = 1
;var(33) = 1
ignorehitpause = 1

;[State -2 Var 33 Set Up]
;type = Null
;trigger1 = 1.0*ScreenWidth/ScreenHeight >= 1.34
;trigger1 = (var(33):= 0 )|| 1;變量賦值
;trigger2 = 1.0*ScreenWidth/ScreenHeight < 1.34
;trigger2 = (var(33):= 1 )|| 1;變量賦值
;ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 34 := Used by Super Pause Time & SuperMoveTime Var
; 整數變量34 := 超級暫停時間 & 超級暫停移動時間用變量
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 34 Set Up (Super Pause Time & Super Move Time)]
type = VarAdd
trigger1 = var(34) > 0
v = 34
value = -1
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 35 := GameTime Detect (Used by Knight Card & Cost Icon)
; 整數變量35 := 偵測遊戲幀數 (使用於騎士卡牌和消費圖標)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 35 Set Up (GameTime Detect)]
type = VarSet
trigger1 = 1
v = 35
value = GameTime
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 37 38 39 := Knight Card Related Variables
; 整數變量37 38 39 := 騎士卡牌相關變量
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 37 Add]
type = VarAdd
triggerall = RoundState = [2,3] ;戰鬥中到做出勝利動作前 (這段期間才會回復)
triggerall = var(38)%1000 = 0
trigger1 = var(34) = 0
trigger1 = var(39) < 5
v = 37     ;騎士卡牌點數恢復時間(Ticks)
value = 1  ;Knight Card Icon Recovery Time (Ticks)
ignorehitpause = 1

[State -2, Var 38 Add]
type = VarAdd
triggerall = RoundState = [2,3]
triggerall = var(38)%1000 > 0
triggerall = var(34) = 0
trigger1 = P2MoveType != H || P2StateNo = 5120
v = 38     ;騎士卡牌開始使用到結束的時間(Ticks) {60 Ticks = 1 Second}*
value = -1 ;Knight Card Start to Finish Time (Ticks)
ignorehitpause = 1

;*var(38)倒數計算會在攻擊到對手時暫時停止

[State -2, Knight Card Flip Sound Effect (PalNo = 1~6)]
type = PlaySnd
triggerall = RoundState = [2,3]
triggerall = PalNo = [1,6]
trigger1 = var(37) >= 150 ;150 Recovery Time (Ticks)
trigger1 = var(39) < 5
value = s14000,0
ignorehitpause = 1

[State -2, Var 39 Set Up (PalNo = 1~6)]
type = VarAdd
triggerall = RoundState = [2,3]
triggerall = PalNo = [1,6]
trigger1 = var(37) >= 150 ;150 Recovery Time (Ticks)
trigger1 = var(39) < 5
v = 39 ;騎士卡牌點數 Knight Card Icon
value = 1
ignorehitpause = 1

[State -2, Var 37 Set Up (PalNo = 1~6)]
type = VarSet
triggerall = RoundState = [2,3]
triggerall = PalNo = [1,6]
trigger1 = var(37) >= 150 ;150 Recovery Time (Ticks)
v = 37
value = 0
ignorehitpause = 1

[State -2, Knight Card Flip Sound Effect (PalNo = 7~12 High Palette Level)]
type = PlaySnd
triggerall = RoundState = [2,3]
triggerall = PalNo = [7,12]
trigger1 = var(37) >= 80 ;80 Recovery Time (Ticks)
trigger1 = var(39) < 5
value = s14000,0
ignorehitpause = 1

[State -2, Var 39 Set Up (PalNo = 7~12 High Palette Level)]
type = VarAdd
triggerall = RoundState = [2,3]
triggerall = PalNo = [7,12]
trigger1 = var(37) >= 80 ;80 Recovery Time (Ticks)
trigger1 = var(39) < 5
v = 39 ;騎士卡牌點數 Knight Card Icon
value = 1
ignorehitpause = 1

[State -2, Var 37 Set Up (PalNo = 7~12 High Palette Level)]
type = VarSet
triggerall = RoundState = [2,3]
triggerall = PalNo = [7,12]
trigger1 = var(37) >= 80 ;80 Recovery Time (Ticks)
v = 37
value = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 48 := Enemy Near Detection / Alive or Dead
; 整數變量48 := 靠近的對手偵測 / 存活 or 死亡
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Var 48 Set Up (Near Enemy Alive = 1)] ;靠近的對手為存活
type = VarSet
trigger1 = NumEnemy = 1
trigger2 = NumEnemy > 1 || NumEnemy >= 2
trigger2 = EnemyNear(0),Life > 0 || EnemyNear(0),Alive = 1
v = 48
value = 0 ;var(48) = 0
ignorehitpause = 1

[State -2, Var 48 Set Up (Near Enemy Alive = 0)] ;靠近的對手為死亡
type = VarSet
trigger1 = NumEnemy > 1 || NumEnemy >= 2
trigger1 = EnemyNear(0),Life <= 0 || EnemyNear(0),Alive = 0
v = 48
value = 1 ;var(48) = 1
ignorehitpause = 1

; Enemy相當於Enemy(0)第一位敵人。以敵人為對象，讀取敵人的數值
; 雙人戰時如果Enemy(0)在第二位敵人Enemy(1)的後方
; 仍然會偵測Enemy(0)較遠的敵人

; EnemyNe​​ar和上面差不多，只不過雙人戰時一律讀取離自己較近的敵人

; リダイレクトについて
; https://www49.atwiki.jp/mugencns/pages/43.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 50、51 := Opponent Moves Interrupt Award (Counter Hit)
; 整數變量50、51 := 對手招式中斷獎勵 (打康/反擊)
;
; 1.NoJuggleCheck 不檢測Juggle (可空中無限連擊)
; 2.PowerAdd+300 加300點能量值
; 3.Normal Attacks Invalid (Attr = NA, NP, NT) 普通攻擊無效 (Attr = NA, NP, NT)
; 4.Enemy's attack hittime a little longer 招式給予對手的打擊時間延長一點點
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Counter Flag] ;檢測對手招式狀態是否屬於攻擊
type = VarSet
triggerall = NumEnemy
trigger1 = EnemyNear(var(48)),MoveType = A;*
var(50) = 1
ignorehitpause = 1

;*一定要使用EnemyNear (如果只使用Enemy 對第二位角色就會失效)

[State -2, Counter Detect] ;如果Counter Hit不成功則重新設置條件
type = VarSet
triggerall = NumEnemy
trigger1 = EnemyNear(var(48)),Movetype = I || var(51) >= 1
trigger2 = var(51) > 10 && EnemyNear(var(48)),MoveType = H
var(50) = 0
ignorehitpause = 1

[State -2, Counter Hit Succesful] ;Counter Hit成功
type = VarSet
trigger1 = var(50) = 1 && MoveHit
trigger1 = StateNo != [180,189] ;勝利動作*
trigger1 = StateNo != [190,199] ;開場動作
trigger1 = StateNo != [710,726] ;防禦取消
trigger1 = StateNo != [800,899] ;投擲技
trigger1 = StateNo != 1409 ;火風槍
trigger1 = StateNo != 1489 ;疾風槍 (落地)*
trigger1 = StateNo != [1500,1520] ;屑風槍
trigger1 = StateNo != 2489 ;龍牙槍 (落地)
trigger1 = StateNo != [2600,2899] ;騎士卡牌技
trigger1 = StateNo != [3000,3799] ;超必殺技
trigger1 = StateNo != [3800,3899] ;氣障壁
trigger1 = StateNo != [7740,7760] ;真空波動槍
trigger1 = StateNo != 12600 ;弱酸性艾爾
trigger1 = StateNo != 12860 ;向上疾風
trigger1 = StateNo != 13650 ;攻擊雷射(激光)
trigger1 = StateNo != [23201,23204] ;百花光弾槍
var(51) = 1
ignorehitpause = 1

;*!= 代表不是、非、未開啟等反面意思
;*因為movehitpersist = 1 所以需要加上StateNo != 1489

[State -2, Counter Hit Timer] ;Counter Hit時間
type = VarAdd
trigger1 = var(51) >= 1
var(51) = 1
ignorehitpause = 1

[State -2, Counter Hit Reset] ;Counter Hit重置
type = VarSet
trigger1 = var(51) >= 30 && MoveHit
trigger2 = P2MoveType != H
trigger3 = MoveType = H
var(51) = 0
ignorehitpause = 1

[State -2, Counter Hit Award 1 (No Juggle)] ;Counter Hit獎勵1 (不檢測AirJuggle)
type = AssertSpecial
trigger1 = var(51) > 0
flag = NoJuggleCheck

[State -2, Counter Hit Award 2 (Power Increase)] ;Counter Hit獎勵2 (力量值增加)
type = PowerAdd
triggerall = NumEnemy
triggerall = StateNo != [180,189] ;勝利動作
triggerall = StateNo != [190,199] ;開場動作
triggerall = StateNo != [710,726] ;防禦取消
triggerall = StateNo != [800,899] ;投擲技
triggerall = StateNo != 1409 ;火風槍
triggerall = StateNo != 1489 ;疾風槍 (落地)
triggerall = StateNo != [1500,1520] ;屑風槍
triggerall = StateNo != 2489 ;龍牙槍 (落地)
triggerall = StateNo != [2600,2899] ;騎士卡牌技
triggerall = StateNo != [3000,3799] ;超必殺技
triggerall = StateNo != [3800,3899] ;氣障壁
triggerall = StateNo != [7740,7760] ;真空波動槍
triggerall = StateNo != 12600 ;弱酸性艾爾
triggerall = StateNo != 12860 ;向上疾風
triggerall = StateNo != 13650 ;攻擊雷射(激光)
triggerall = StateNo != [23201,23204] ;百花光弾槍
triggerall = EnemyNear(var(48)),MoveType = H
trigger1 = var(50) = 1 && MoveHit
value = 300
ignorehitpause = 1

[State -2, Counter Hit Award 3 (Normal Attacks Invalid)] ;Counter Hit獎勵3 (普通攻擊無效)
type = HitBy
trigger1 = var(51) > 0
value = SCA, SA, HA, SP, HP, ST, HT
ignorehitpause = 1

[State -2, Counter Flash Effect] ;閃光特效
type = Null;EnvColor
triggerall = NumEnemy
triggerall = StateNo != [180,189] ;勝利動作
triggerall = StateNo != [190,199] ;開場動作
triggerall = StateNo != [710,726] ;防禦取消
triggerall = StateNo != [800,899] ;投擲技
triggerall = StateNo != 1409 ;火風槍
triggerall = StateNo != 1489 ;疾風槍 (落地)
triggerall = StateNo != [1500,1520] ;屑風槍
triggerall = StateNo != 2489 ;龍牙槍 (落地)
triggerall = StateNo != [2600,2899] ;騎士卡牌技
triggerall = StateNo != [3000,3799] ;超必殺技
triggerall = StateNo != [3800,3899] ;氣障壁
triggerall = StateNo != [7740,7760] ;真空波動槍
triggerall = StateNo != 12600 ;弱酸性艾爾
triggerall = StateNo != 12860 ;向上疾風
triggerall = StateNo != 13650 ;攻擊雷射(激光)
triggerall = StateNo != [23201,23204] ;百花光弾槍
triggerall = EnemyNear(var(48)),MoveType = H
trigger1 = var(50) = 1 && MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State -2, Counter 1P Font] ;Counter字體 (1P側)
type = Explod
triggerall = NumEnemy
triggerall = var(50) = 1 && NumExplod(15010) = 0 && TeamSide = 1
triggerall = StateNo != [180,189] ;勝利動作
triggerall = StateNo != [190,199] ;開場動作
triggerall = StateNo != [710,726] ;防禦取消
triggerall = StateNo != [800,899] ;投擲技
triggerall = StateNo != 1409 ;火風槍
triggerall = StateNo != 1489 ;疾風槍 (落地)
triggerall = StateNo != [1500,1520] ;屑風槍
triggerall = StateNo != 2489 ;龍牙槍 (落地)
triggerall = StateNo != [2600,2899] ;騎士卡牌技
triggerall = StateNo != [3000,3799] ;超必殺技
triggerall = StateNo != [3800,3899] ;氣障壁
triggerall = StateNo != [7740,7760] ;真空波動槍
triggerall = StateNo != 12600 ;弱酸性艾爾
triggerall = StateNo != 12860 ;向上疾風
triggerall = StateNo != 13650 ;攻擊雷射(激光)
triggerall = StateNo != [23201,23204] ;百花光弾槍
triggerall = EnemyNear(var(48)),MoveType = H
trigger1 = MoveHit
id = 15010
anim = 15010
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,28,38)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,344,320)*screenheight/1080 ;數字愈大愈往下(344在320下方)
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.44,0.40)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.36,0.40)*screenheight/1080
bindtime = -1
removetime = 30
removeongethit = 1
ignorehitpause = 1

[State -2, Counter 2P Font] ;Counter字體 (2P側)
type = Explod
triggerall = NumEnemy
triggerall = var(50) = 1 && NumExplod(15010) = 0 && TeamSide = 2
triggerall = StateNo != [180,189] ;勝利動作
triggerall = StateNo != [190,199] ;開場動作
triggerall = StateNo != [710,726] ;防禦取消
triggerall = StateNo != [800,899] ;投擲技
triggerall = StateNo != 1409 ;火風槍
triggerall = StateNo != 1489 ;疾風槍 (落地)
triggerall = StateNo != [1500,1520] ;屑風槍
triggerall = StateNo != 2489 ;龍牙槍 (落地)
triggerall = StateNo != [2600,2899] ;騎士卡牌技
triggerall = StateNo != [3000,3799] ;超必殺技
triggerall = StateNo != [3800,3899] ;氣障壁
triggerall = StateNo != [7740,7760] ;真空波動槍
triggerall = StateNo != 12600 ;弱酸性艾爾
triggerall = StateNo != 12860 ;向上疾風
triggerall = StateNo != 13650 ;攻擊雷射(激光)
triggerall = StateNo != [23201,23204] ;百花光弾槍
triggerall = EnemyNear(var(48)),MoveType = H
trigger1 = MoveHit
id = 15010
anim = 15010
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,-414,-392)*screenwidth/1920+ScreenWidth,cond(1.0*screenwidth/screenheight < 1.34,344,320)*screenheight/1080 ;數字愈大愈往下(344在320下方)
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.44,0.40)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.36,0.40)*screenheight/1080
bindtime = -1
removetime = 30
removeongethit = 1
ignorehitpause = 1

[State -2, Counter Font Disappear]
type = RemoveExplod
trigger1 = var(51) = 0
id = 15010
ignorehitpause = 1

; 參考網址：
; https://mugenguild.com/forum/topics/how-put-counter-hit-explode-131580.0.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Integer Variable 53、54 := Resurrection《リザレクション》
; 整數變量53、54 := 復活 (蘇生)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, VarSet]
type = VarSet
trigger1 = RoundState < 2
var(53) = 0
ignorehitpause = 1

[State -2, Pause]
type = Pause
trigger1 = Alive
trigger1 = var(53) = 1
trigger1 = MoveType = H
trigger1 = Time%2 = 0
trigger1 = GetHitVar(HitShakeTime) = 0
time = 1
ignorehitpause = 1

[State -2, Resurrection Level Detect]
type = Null
;-----------LV 2 OFF---------------------------;
trigger1 = var(56) >= 2 ;復活等級(2級以上) 可在Config改變等級
trigger1 = var(55) >= 1 ;瑪娜點數大於等於1
trigger1 = (var(54):= 1) || 1 ;可復活

;-----------LV 2 OFF---------------------------;
trigger2 = var(56) >= 2 ;復活等級(2級以上)
trigger2 = var(55) = 0 ;瑪娜點數等於0
trigger2 = (var(54):= 0) || 1 ;不可復活

;-----------LV 1 ON (Pal 9~12)----------------;
trigger3 = var(56) = 1 ;復活等級(1級)
trigger3 = PalNo = [9,12] ;人物P數9~12
trigger3 = var(55) >= 1 ;瑪娜點數大於等於1
trigger3 = (var(54):= 1) || 1 ;可復活

;-----------LV 1 OFF (Pal 9~12)---------------;
trigger4 = var(56) = 1 ;復活等級(1級)
trigger4 = PalNo = [9,12] ;人物P數9~12
trigger4 = var(55) = 0 ;瑪娜點數等於0
trigger4 = (var(54):= 0) || 1 ;不可復活

;-----------LV 1 OFF (Pal 1~8)-----------------;
trigger5 = var(56) = 1 ;復活等級(1級)
trigger5 = PalNo = [1,8] ;人物P數1~8
trigger5 = (var(54):= 0) || 1 ;不可復活

;-----------LV 0-------------------------------;
trigger6 = var(56) = 0 ;復活等級(0級)
trigger6 = (var(54):= 0) || 1 ;不可復活

[State -2, Life Add]
type = LifeAdd
triggerall = Alive
triggerall = var(54) >= 1
trigger1 = var(53) != 2
trigger1 = GetHitVar(Fall.Kill) = 1
trigger1 = Life <= 0 || GetHitVar(Damage) >= Life
trigger1 = var(53):= 1
value = 1
ignorehitpause = 1

[State -2, No KO]
type = AssertSpecial
trigger1 = EnemyNear(var(48)),Life != 0 && var(53) != 2
trigger1 = var(54) >= 1
flag = NoKO
ignorehitpause = 1

[State -2, Timer Freeze]
type = AssertSpecial
trigger1 = var(53) >= 1
flag = TimerFreeze
ignorehitpause = 1

[State -2, Temporarily Invincible] ;暫時無敵
type = NotHitBy
trigger1 = (Anim = [5000,5899]) ;During the Hit Anim 在受擊動畫時 ;*
trigger1 = var(53) = 1 ;Air Fall (Slow Motion) 被擊倒落地時 (慢動作)
trigger2 = var(53) = 2 ;Resurrection 復活中時
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
time = 1
ignorehitpause = 1

;*如果上一個狀態為格擋 添加此項目可避免格擋結束後 在非受擊動畫狀態出現暫時無敵的情況

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Tree of Mana (Explod Effect)
; 瑪娜之樹 (爆炸火花效果)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Tree of Mana 1P Icon] ;瑪娜之樹 1P側圖標
type = Explod
triggerall = var(56) = 1 && (PalNo = [9,12]) || var(56) >= 2 && (PalNo = [1,12]) ;PalNo = [1,12]
triggerall = RoundState = [2,3]
triggerall = NumExplod(8614) = 0
trigger1 = TeamSide = 1
trigger1 = var(55) >= 1
id = 8614
anim = 8615
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(8+(var(10))),(10+(var(10))))*screenwidth/1920,1024*screenheight/1080;*1
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.14,0.12)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.10,0.12)*screenheight/1080
bindtime = -1
;pausemovetime = 2147483647
;supermovetime = 2147483647
removetime = -1
ignorehitpause = 1
persistent = 1

[State -2, Tree of Mana 2P Icon] ;瑪娜之樹 2P側圖標
type = Explod
triggerall = var(56) = 1 && (PalNo = [9,12]) || var(56) >= 2 && (PalNo = [1,12]) ;PalNo = [1,12]
triggerall = RoundState = [2,3]
triggerall = NumExplod(8614) = 0
trigger1 = TeamSide = 2
trigger1 = var(55) >= 1
id = 8614
anim = 8615
space = screen
pos = cond(1.0*screenwidth/screenheight < 1.34,(-58+(-var(10))),(-52+(-var(10))))*screenwidth/1920+screenwidth,1024*screenheight/1080;*1
ontop = 1
ownpal = 1
facing = 1
scale = cond(1.0*screenwidth/screenheight < 1.34,0.14,0.12)*screenwidth/1920,cond(1.0*screenwidth/screenheight < 1.34,0.10,0.12)*screenheight/1080
;pausemovetime = 2147483647
;supermovetime = 2147483647
removetime = -1
ignorehitpause = 1
persistent = 1

; 瑪娜之樹 圖標 / 去掉
[State -2, Tree of Mana Icon Remove]
type = RemoveExplod
trigger1 = var(55) = 0
trigger1 = RoundState >= 2
trigger2 = RoundState = 4
id = 8614
ignorehitpause = 1
persistent = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

; ########## 浮點變量 | 浮点変数 | Float Variable ##########

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 10 := Attack Correction (Combo Time / HitCount Detection Type)
; 浮點變量10 := 攻擊力補正 (連擊時 / HitCount偵測型)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Attack Correction (HitCount < 20)]
type = VarSet
triggerall = Alive ;人物存活時
triggerall = NumEnemy ;敵人數(有敵人時)
triggerall = RoundState = 2 ;戰鬥中時
triggerall = var(49) >= 1 ;攻擊力(連擊)補正開關開啟
trigger1 = EnemyNear(var(48)),GetHitVar(HitCount) < 20 ;靠近的敵人所得到的HitCount數小於20
fvar(10) = 0.40+(0.60-(EnemyNear(var(48)),GetHitVar(HitCount)*0.030))
ignorehitpause = 1
;trigger1 = Enemy,GetHitVar(HitCount) < 20 ;敵人所得到的HitCount數小於20
;fvar(10) = 0.40+(0.60-(Enemy,GetHitVar(HitCount)*0.030))

[State -2, Attack Correction (HitCount >= 20)]
type = VarSet
triggerall = Alive ;人物存活時
triggerall = NumEnemy ;敵人數(有敵人時)
triggerall = RoundState = 2 ;戰鬥中時
triggerall = var(49) >= 1 ;攻擊力(連擊)補正開關開啟
trigger1 = EnemyNear(var(48)),GetHitVar(HitCount) >= 20 ;靠近的敵人所得到的HitCount數大於等於20
fvar(10) = 0.40
ignorehitpause = 1

[State -2, Attack Correction (Some Exceptions)]
type = VarSet
triggerall = Alive ;人物存活時
triggerall = NumEnemy ;敵人數(有敵人時)
triggerall = RoundState = 2 ;戰鬥中時
triggerall = var(49) >= 1 ;攻擊力(連擊)補正開關開啟
trigger1 = P2MoveType != H ;對手招式類型不是"受擊"時
trigger2 = P2StateNo = [150,155] ;對手狀態編號150~155時(防禦動作)
trigger3 = StateNo = [800,899] ;狀態編號800~899時(投擲技動作相關)
trigger4 = StateNo = [1500,1599] ;狀態編號1500~1599時(投擲技動作相關)
fvar(10) = 1.00
ignorehitpause = 1

[State -2, Attack Correction (OFF)]
type = VarSet
trigger1 = var(49) = 0 ;攻擊力(連擊)補正開關關閉
trigger1 = RoundState = 2 ;戰鬥中時
trigger2 = RoundState = [0,1] ;畫面淡入時(第一個數字狀態Statedef 5900)、戰鬥前Intro動作時
trigger3 = RoundState > 2 ;戰鬥中之後的狀態時
fvar(10) = 1.00
ignorehitpause = 1

; 以下類型攻擊力補正無效 (已經過測試)
; 1.TargetLifeAdd型傷害 (如果沒有計算const(data.attack)*0.01)
; 2.Helper(助手)產生的Projectile(飛行道具) ←但從下方網站上的說明 代碼經過設計後就有效

; 由於傷害計算最後另外會再Ceil(向上取整)
; 所以實際上Combo到6*以上才會有明顯的攻擊力補正
; 連擊數為6時 → 0.40+(0.60-(6*0.030))= 0.82 向上取整為0.90

; GetHitVar(HitCount)計算不受numhits參數影響
; 相對的 畫面中(血條包)兩邊顯示的Combo數會受到numhits參數影響
; 要準確地知道GetHitVar(HitCount) 可利用DisplayToClipBoard檢測出來

; 將Enemy,GetHitVar(HitCount)改為EnemyNear(var(48)),GetHitVar(HitCount)
; 可以在敵人數2位時(Tag Simul模式)能夠對第二位敵人有效(不改的話只對第一位敵人有效)
; var(48)這裡用為偵測靠近的敵人是否存活

; 代碼寫法參考網址
; https://w.atwiki.jp/niconicomugen/pages/1158.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 11 := Detect Enemy defense
; 浮點變量11 := 偵測對手防禦力
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, FVar 11 Set Up (Detection of Enemy Defense Fvar)]
type = VarSet
trigger1 = 1
fv = 11
value = enemynear(var(48)),const(data.defence)*0.01
;fvar(11) = enemynear(var(48)),const(data.defence)*0.01
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 12 := Detect Enemy Life
; 浮點變量12 := 偵測對手生命值
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, FVar 12 Set Up (Detection of Enemy life Fvar)]
type = VarSet
trigger1 = 1
fv = 12
value = enemynear(var(48)),lifemax
;fvar(12) = enemynear(var(48)),lifemax
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 13 := Attack Modifier (According to Character Palette Mode)
; 浮點變量13 := 攻擊力修正 (依據人物色表模式)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, FVar 13 Set Up (Attack Correction 1)]
type = VarSet
trigger1 = PalNo = [1,6]
fv = 13
value = 1.00
;fvar(13) = 1.00
ignorehitpause = 1

[State -2, FVar 13 Set Up (Attack Correction 2)]
type = VarSet
trigger1 = PalNo = [7,8]
fv = 13
value = 1.05
;fvar(13) = 1.05
ignorehitpause = 1

[State -2, FVar 13 Set Up (Attack Correction 3)]
type = VarSet
trigger1 = PalNo = 9
fv = 13
value = 1.10
;fvar(13) = 1.10
ignorehitpause = 1

[State -2, FVar 13 Set Up (Attack Correction 4)]
type = VarSet
trigger1 = PalNo = 10
fv = 13
value = 1.35
;fvar(13) = 1.35
ignorehitpause = 1

[State -2, FVar 13 Set Up (Attack Correction 5)]
type = VarSet
trigger1 = PalNo = [11,12]
fv = 13
value = 1.30
;fvar(13) = 1.30
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 20 := Data.Attack
; 浮點變量20 := 攻擊力縮放
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Const Root Data Attack] ;跟隨著人物的攻擊力縮放
type = VarSet
trigger1 = 1
fv = 20
value = (const(data.attack)*0.01)
;fvar(20) = (const(data.attack)*0.01)
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 21 22 := Scale X, Scale Y
; 浮點變量21 22 := 比例X縮放, 比例Y縮放
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Const Root Size.XScale] ;跟隨著人物的X軸比例縮放
type = VarSet
trigger1 = 1
fv = 21
value = const(size.xscale)
;fvar(21) = const(size.xscale)
ignorehitpause = 1

[State -2, Const Root Size.YScale] ;跟隨著人物的Y軸比例縮放
type = VarSet
trigger1 = 1
fv = 22
value = const(size.yscale)
;fvar(22) = const(size.yscale)
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 30 := Dragon Fang Spear / Turn Detection FVar is OFF
; 浮點變量30 := 龍牙槍 / 轉向 檢測用浮點變量關閉
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Dragon Fang Spear / Turn Detection FVar is OFF]
type = VarSet
trigger1 = MoveType = H
trigger2 = RoundState = 4
trigger3 = (StateNo = [0,116])
trigger4 = (StateNo = [200,652])
trigger5 = (StateNo = [700,726])
trigger6 = (StateNo = [800,895])
trigger7 = (StateNo = [1000,1700])
trigger8 = (StateNo = [2600,2800])
trigger9 = (StateNo = [3000,3600])
trigger10 = (StateNo = [3800,3991])
fv = 30
value = 0
;fvar(30) = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 31 := Distance Calculation with Enemy Near
; 浮點變量31 := 與對方(附近敵人)距離計算
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, X-Axis Distance Calculation with Enemy Near] ;與對方的X軸距離計算
type = VarSet
trigger1 = 1 ;任何時候
fv = 31
value = abs(enemynear(var(48)),pos x-pos x)-enemynear(var(48)),const(size.ground.front) ;X軸絕對距離減去寬度條*1
ignorehitpause = 1

;*1 Abs(EnemyNear(var(48)),Pos X-Pos X)數值跟P2Dist X相同
;  再扣掉對手size.ground.front 數值會介於P2Dist X(較大數值)和P2BodyDist X(較小數值)之間
;  請注意因為多扣掉對手的size.ground.front 跳過對手的一瞬間會短暫呈現負數。

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Float Variable 36 37 := Color Selection
; 浮點變量36 37 := 顏色選擇
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Palette]
type = VarSet
trigger1 = AILevel && !fvar(36)
fvar(36) = PalNo
ignorehitpause = 1

[State -2, No Clones 1]
type = RemapPal
triggerall = NumEnemy && (fvar(36) = [1,22])
trigger1 = fvar(37) && !NumHelper(29876)
trigger1 = Enemy,AuthorName = "Manny Lingle" && Enemy,Name = "Riesz MAAB Sprite by Lingle" && Enemy,fvar(36) = fvar(36)
source = 1,1
dest = 1,cond(((teamside != 1 && !ailevel && enemy,ailevel = 0) || (teamside != 1 && ailevel) || (teamside = 1 && ailevel && enemy,ailevel = 0)) && enemynear,numhelper(29876) = 0,fvar(36)+1,fvar(36))
ignorehitpause = 1

[State -2, No Clones 2]
type = RemapPal
triggerall = NumEnemy && (fvar(36) = 22)
trigger1 = fvar(37) && !NumHelper(29876)
trigger1 = Enemy,AuthorName = "Manny Lingle" && Enemy,Name = "Riesz MAAB Sprite by Lingle" && Enemy,fvar(36) = fvar(36)
source = 1,1
dest = 1,cond(((teamside != 1 && !ailevel && enemy,ailevel = 0) || (teamside != 1 && ailevel) || (teamside = 1 && ailevel && enemy,ailevel = 0)) && enemynear,numhelper(29876) = 0,1,fvar(36))
ignorehitpause = 1

[State -2, Palette 2]
type = VarSet
trigger1 = NumHelper(29876)
trigger1 = Helper(29876),fvar(36) = [1,22]
fvar(36) = Helper(29876),fvar(36)
ignorehitpause = 1

[State -2, Palette Selection]
type = RemapPal
trigger1 = NumHelper(29876)
trigger1 = Helper(29876),fvar(36) = [1,22]
source = 1,1
dest = 1,fvar(36)
ignorehitpause = 1

[State -2, Continue Palette]
type = RemapPal
trigger1 = fvar(37) && MatchNo > 1 && fvar(36)
source = 1,1
dest = 1,fvar(36)
ignorehitpause = 1

;////////////////////////////////////////////////////////////////////////
; 因為角色另外有一組換裝(轉職)時使用的色表，所以添加以下RemapPal參數。
; 這裡添加後就不用在有換裝的Statedef上再添加一次了。

; Because the character has another set of palettes 
; used by changing clothes(Class Change), add the following RemapPal parameters.
; After adding here, there is no need to add it again on the Statedef of changing clothes.
[State -2, No Clones 1 / Changing Clothes (Class Change)]
type = RemapPal
triggerall = NumEnemy && (fvar(36) = [1,22])
trigger1 = fvar(37) && !NumHelper(29876)
trigger1 = Enemy,AuthorName = "Manny Lingle" && Enemy,Name = "Riesz MAAB Sprite by Lingle" && Enemy,fvar(36) = fvar(36)
source = 2,1
dest = 2,cond(((teamside != 1 && !ailevel && enemy,ailevel = 0) || (teamside != 1 && ailevel) || (teamside = 1 && ailevel && enemy,ailevel = 0)) && enemynear,numhelper(29876) = 0,fvar(36)+1,fvar(36))
ignorehitpause = 1

[State -2, No Clones 2 / Changing Clothes (Class Change)]
type = RemapPal
triggerall = NumEnemy && (fvar(36) = 22)
trigger1 = fvar(37) && !NumHelper(29876)
trigger1 = Enemy,AuthorName = "Manny Lingle" && Enemy,Name = "Riesz MAAB Sprite by Lingle" && Enemy,fvar(36) = fvar(36)
source = 2,1
dest = 2,cond(((teamside != 1 && !ailevel && enemy,ailevel = 0) || (teamside != 1 && ailevel) || (teamside = 1 && ailevel && enemy,ailevel = 0)) && enemynear,numhelper(29876) = 0,1,fvar(36))
ignorehitpause = 1

[State -2, Palette 2 / Changing Clothes (Class Change)]
type = VarSet
trigger1 = NumHelper(29876)
trigger1 = Helper(29876),fvar(36) = [1,22]
fvar(36) = Helper(29876),fvar(36)
ignorehitpause = 1

[State -2, Palette Selection / Changing Clothes (Class Change)]
type = RemapPal
trigger1 = NumHelper(29876)
trigger1 = Helper(29876),fvar(36) = [1,22]
source = 2,1
dest = 2,fvar(36)
ignorehitpause = 1

[State -2, Continue Palette / Changing Clothes (Class Change)]
type = RemapPal
trigger1 = fvar(37) && MatchNo > 1 && fvar(36)
source = 2,1
dest = 2,fvar(36)
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; IF Percentage Damage Mode On. 1 VS 2 Mode Damage Reduce.
; 如果百分比傷害模式打開1 VS 2時傷害減少
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, 1 VS 2 Damage Reduce]
type = LifeAdd
triggerall = Alive
triggerall = Random < 600 ;六成機率
triggerall = var(16) > 0 ;整數變量16開啟時
triggerall = RoundState = [1,2]
trigger1 = (StateNo = [5000,5210]) && MoveType = H
trigger1 = NumPartner = 0
trigger1 = NumEnemy > 1
trigger1 = GetHitVar(Damage)       ;當獲得對手給予的傷害值(GetHitVar(Damage))
value = GetHitVar(Damage)*0.25     ;數量由對手給予的傷害值(GetHitVar(Damage))決定
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Life Auto Recovery
; 生命自動回復
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Palette 12 LifeAdd (Life >= LifeMax*0.300)]
type = LifeAdd                     ;生命回復
triggerall = Alive                 ;存活狀態時
triggerall = PalNo = 12            ;十二號色表限定
triggerall = var(53) = 0           ;復活能力未開啟時
triggerall = RoundState = 2        ;戰鬥中時有效
trigger1 = Life >= LifeMax*0.300   ;生命值大於等於生命最大值30%
trigger1 = GameTime% 3 = 0         ;約每隔3ticks
trigger1 = Life != 0               ;生命值不等於0
value = 1
ignorehitpause = 1

[State -2, Palette 12 LifeAdd (Life < LifeMax*0.300)]
type = LifeAdd                     ;生命回復
triggerall = Alive                 ;存活狀態時
triggerall = PalNo = 12            ;十二號色表限定
triggerall = var(53) = 0           ;復活能力未開啟時
triggerall = RoundState = 2        ;戰鬥中時有效
trigger1 = Life < LifeMax*0.300    ;生命值小於生命最大值30%
trigger1 = GameTime% 2 = 0         ;約每隔2ticks
trigger1 = Life != 0               ;生命值不等於0
value = 1
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Power Auto Increases
; 能量自動增加
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Power Auto Add 9P]
type = PowerAdd
triggerall = Alive
triggerall = var(53) = 0 ;復活未開啟時
triggerall = RoundState = 2 ;戰鬥中時
triggerall = StateNo != 5000 || StateNo != 5010 || StateNo != 5020
trigger1 = Power != PowerMax
trigger1 = GameTime %4 = 0
trigger1 = PalNo = 9
value = 1
ignorehitpause = 1

[State -2, Power Auto Add 10P]
type = PowerAdd
triggerall = Alive
triggerall = var(53) = 0 ;復活未開啟時
triggerall = RoundState = 2 ;戰鬥中時
triggerall = StateNo != 5000 || StateNo != 5010 || StateNo != 5020
trigger1 = Power != PowerMax
trigger1 = GameTime %2 = 0
trigger1 = PalNo = 10
value = 1
ignorehitpause = 1

[State -2, Power Auto Add 11P]
type = PowerAdd
triggerall = Alive
triggerall = var(53) = 0 ;復活未開啟時
triggerall = RoundState = 2 ;戰鬥中時
triggerall = StateNo != 5000 || StateNo != 5010 || StateNo != 5020
trigger1 = Power != PowerMax
trigger1 = GameTime %1 = 0
trigger1 = PalNo = 11
value = 2
ignorehitpause = 1

[State -2, Power Auto Add 12P]
type = PowerAdd
triggerall = Alive
triggerall = var(53) = 0 ;復活未開啟時
triggerall = RoundState = 2 ;戰鬥中時
triggerall = StateNo != 5000 || StateNo != 5010 || StateNo != 5020
trigger1 = Power != PowerMax
trigger1 = GameTime %1 = 0
trigger1 = PalNo = 12
value = 4
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; MoveType = A Invincible
; 招式類型攻擊時無敵
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, MoveType = A Invincible]
type = NotHitBy
triggerall = PalNo = 12 ;十二號色表限定
triggerall = !IsHelper ;不是自己的助手
trigger1 = MoveType = A ;招式類型攻擊時
value = SCA, NA, SA, HA, AA, NP, SP, HP, AP, NT, ST, HT, AT
time = 1
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Damage Attacks Below 100 Are Invalid
; 數值100以下的傷害攻擊無效
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Damage Attacks Below 100 Are Invalid]
type = LifeAdd
triggerall = Alive ;存活狀態時
triggerall = PalNo = 12 ;十二號色表限定
triggerall = var(53) = 0 ;復活能力未開啟時
trigger1 = GetHitVar(Damage) <= 100 ;數值100以下的傷害攻擊無效
value = GetHitVar(Damage)
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Fire Attribute Element Hit Spark Effect
; 火屬性元素打擊火花效果
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Fire Attribute Element Hit Spark Effect / Target(1409)]
type = Explod
triggerall = NumExplod(7851) < 2 ;爆炸火花7851數量小於2
triggerall = NumTarget(1409)
trigger1 = (Target(1409),StateNo != [120,159])
trigger1 = Target(1409),StateType != L
trigger1 = Target(1409),MoveType = H
trigger1 = MoveHit >= 1
anim = 7851
id = 7851
space = stage
bindid = target,id
bindtime = -1
pos = 0,const(size.mid.pos.y)
facing = facing
sprpriority = 1
removetime = 20
ownpal = 1 ;上面的remappal要有效，請記得將ownpal設定為1
scale = fvar(21)*1.50,fvar(22)*1.50
ignorehitpause = 1
persistent = 0

[State -2, Fire Attribute Element Hit Spark Effect / Target(2402)]
type = Explod
triggerall = NumExplod(7851) < 2 ;爆炸火花7851數量小於2
triggerall = NumTarget(2402)
trigger1 = (Target(2402),StateNo != [120,159])
trigger1 = Target(2402),StateType != L
trigger1 = Target(2402),MoveType = H
trigger1 = MoveHit >= 1
anim = 7851
id = 7851
space = stage
bindid = target,id
bindtime = -1
pos = 0,const(size.mid.pos.y)
facing = facing
sprpriority = 1
removetime = 20
ownpal = 1 ;上面的remappal要有效，請記得將ownpal設定為1
scale = fvar(21)*1.50,fvar(22)*1.50
ignorehitpause = 1
persistent = 0

[State -2, Fire Attribute Element Hit Spark Effect / Target(2412)]
type = Explod
triggerall = NumExplod(7851) < 2
triggerall = NumTarget(2412)
trigger1 = (Target(2412),StateNo != [120,159])
trigger1 = Target(2412),StateType != L
trigger1 = Target(2412),MoveType = H
trigger1 = MoveHit >= 1
anim = 7851
id = 7851
space = stage
bindid = target,id
bindtime = -1
pos = 0,const(size.mid.pos.y)
facing = facing
sprpriority = 1
removetime = 20
ownpal = 1
scale = fvar(21)*1.50,fvar(22)*1.50
ignorehitpause = 1
persistent = 0

[State -2, Fire Attribute Element Hit Spark Effect / Target(2452)]
type = Explod
triggerall = NumExplod(7851) < 2
triggerall = NumTarget(2452)
trigger1 = (Target(2452),StateNo != [120,159])
trigger1 = Target(2452),StateType != L
trigger1 = Target(2452),MoveType = H
trigger1 = MoveHit >= 1
anim = 7851
id = 7851
space = stage
bindid = target,id
bindtime = -1
pos = 0,const(size.mid.pos.y)
facing = facing
sprpriority = 1
removetime = 20
ownpal = 1
scale = fvar(21)*1.50,fvar(22)*1.50
ignorehitpause = 1
persistent = 0

[State -2, Fire Attribute Element Hit Spark Effect / Target(2462)]
type = Explod
triggerall = NumExplod(7851) < 2
triggerall = NumTarget(2462)
trigger1 = (Target(2462),StateNo != [120,159])
trigger1 = Target(2462),StateType != L
trigger1 = Target(2462),MoveType = H
trigger1 = MoveHit >= 1
anim = 7851
id = 7851
space = stage
bindid = target,id
bindtime = -1
pos = 0,const(size.mid.pos.y)
facing = facing
sprpriority = 1
removetime = 20
ownpal = 1
scale = fvar(21)*1.50,fvar(22)*1.50
ignorehitpause = 1
persistent = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Fire Attribute Element Attack Effect (Damage Over Time)
; 火屬性元素攻擊效果 (持續傷害)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Gale Spear (Guard Cancel CB) / Damage Over Time]
type = TargetLifeAdd
triggerall = RoundState = 2 ;戰鬥中時
triggerall = GameTime %2 = 0 ;遊戲時間2% (數字愈小頻率愈高，如果為1時每一幀皆發動)
triggerall = NumTarget(1409) ;目標編號1409
triggerall = Target(1409),Alive ;目標存活時
trigger1 = (Target(1409),StateNo != [120,159]) ;目標狀態編號不是120~159 也就是不在防禦狀態時
trigger1 = Target(1409),StateType != L ;目標狀態類型不是躺下
trigger1 = Target(1409),MoveType = H ;目標狀態類型為受擊
value = -1 ;參數值 ← 負1
id = 1409 ;火風槍 (防禦取消CB) ← 招式ID號
kill = 0 ;不能擊殺
absolute = 0 ;非絕對值 (會受對手的防禦係數影響)
ignorehitpause = 1 ;無視攻擊暫停

[State -2, 127 Dragon Fang Spear / Damage Over Time]
type = TargetLifeAdd
triggerall = RoundState = 2 ;戰鬥中時
triggerall = GameTime %2 = 0 ;遊戲時間2% (數字愈小頻率愈高，如果為1時每一幀皆發動)
triggerall = NumTarget(2402) ;目標編號2402
triggerall = Target(2402),Alive ;目標存活時
trigger1 = (Target(2402),StateNo != [120,159]) ;目標狀態編號不是120~159 也就是不在防禦狀態時
trigger1 = Target(2402),StateType != L ;目標狀態類型不是躺下
trigger1 = Target(2402),MoveType = H ;目標狀態類型為受擊
value = -1 ;參數值 ← 負1
id = 2402 ;龍牙槍 ← 招式ID號
kill = 0 ;不能擊殺
absolute = 0 ;非絕對值 (會受對手的防禦係數影響)
ignorehitpause = 1 ;無視攻擊暫停

[State -2, 127 Dragon Fang Spear Turn / Damage Over Time]
type = TargetLifeAdd
triggerall = RoundState = 2
triggerall = GameTime %2 = 0
triggerall = NumTarget(2412)
triggerall = Target(2412),Alive
trigger1 = (Target(2412),StateNo != [120,159])
trigger1 = Target(2412),StateType != L
trigger1 = Target(2412),MoveType = H
value = -1
id = 2412
kill = 0
absolute = 0
ignorehitpause = 1 

[State -2, 127 Dragon Fang Spear Air / Damage Over Time]
type = TargetLifeAdd
triggerall = RoundState = 2
triggerall = GameTime %2 = 0
triggerall = NumTarget(2452)
triggerall = Target(2452),Alive
trigger1 = (Target(2452),StateNo != [120,159])
trigger1 = Target(2452),StateType != L
trigger1 = Target(2452),MoveType = H
value = -1
id = 2452
kill = 0
absolute = 0
ignorehitpause = 1 

[State -2, 127 Dragon Fang Spear Air Turn / Damage Over Time]
type = TargetLifeAdd
triggerall = RoundState = 2
triggerall = GameTime %2 = 0
triggerall = NumTarget(2462)
triggerall = Target(2462),Alive
trigger1 = (Target(2462),StateNo != [120,159])
trigger1 = Target(2462),StateType != L
trigger1 = Target(2462),MoveType = H
value = -1
id = 2462
kill = 0
absolute = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Wind Element Particle (LifeAdd)
; 風元素粒子 (生命回復)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Particle Healing]
type = LifeAdd
triggerall = Alive = 1
trigger1 = var(53) = 0 ;復活能力未開啟
;trigger1 = StateNo != [5000,5899]
value = 16*numprojid(12988)
absolute = 1
ignorehitpause = 1

[State -2, Wind Element Aura]
type = PalFX
triggerall = Alive = 1
trigger1 = var(53) = 0 ;復活能力未開啟
trigger1 = NumProjID(12988) >= 1
;trigger1 = StateNo != [5000,5899]
time = 10 ;*
add = 0,50,0
mul = 256,256,256
sinadd = 0,50,0,20 ;*
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0 ;不可持續

;*顯示時間設定為正弦波週期的一半，顏色只會顯示向上振動的部份

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Voice Management
; 聲音管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Walking Sound];步行的音效
type = PlaySnd
triggerall = AnimElem = 5
trigger1 = Anim = 20
trigger2 = Anim = 21
value = s20,0
channel = 1

[State -2, Landing Sound];著地的音效
type = PlaySnd
triggerall = Time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 106
trigger3 = StateNo = 652
value = s47,0 ;人物落地產生的音效不應受攻擊而中斷 (channel默認值為-1)

[State -2, Get Hit Voice Light] ;受擊被打的音效 弱ダメージ
type = PlaySnd
triggerall = Time = 0
triggerall = Alive = 1
triggerall = Random < 666
triggerall = Movetype = H && StateNo != [120,155]
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) = 0 ;*1
value = s5000,0+(random%3)
channel = 0
persistent = 0

[State -2, Get Hit Voice Medium] ;受擊被打的音效 中ダメージ
type = PlaySnd
triggerall = Time = 0
triggerall = Alive = 1
triggerall = Random < 666
triggerall = Movetype = H && StateNo != [120,155]
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) = 1
value = s5000,2+(random%3) ;*2
channel = 0
persistent = 0

[State -2, Get Hit Voice Strong] ;受擊被打的音效 強ダメージ
type = PlaySnd
triggerall = Time = 0
triggerall = Alive = 1
triggerall = Random < 666
triggerall = Movetype = H && StateNo != [120,155]
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) = 2
trigger2 = GetHitVar(AnimType) = 3
trigger3 = GetHitVar(AnimType) = 4
trigger4 = GetHitVar(AnimType) = 5
value = s5000,2+(random%4)
channel = 0
persistent = 0

;*1 GetHitVar(AnimType) 返回攻擊的動畫屬性
;   0 = Light　1 = Medium　2 = Hard 3 = Back　4 = Up　5 = Diag Up

;   GetHitVar()【受けた攻撃の情報】
;   https://w.atwiki.jp/mugencns/pages/126.html

;*2 random%3代表012(0~2之間的隨機數)。
;   前面可以加上特定數字做調整，如果0+的話則不改變。
;   如果2沒有聲音檔就不會發音(也就是66%機率人物會有語音效果)。

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Stop Voice Management
; 聲音停止管理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; channel效果說明 (用於PlaySnd和StopSnd狀態控制器)
; channel = channel_no (整型) 
; channel_no指定哪個聲音通道將播放聲音.一個特定通道在同一時間也許只能播放一個聲音。
; 例如,如果你在通道2播放一個聲音,然後在第一個聲音播放後相同的通道播放任何聲音, 
; 則默認第一個聲音在第二個聲音播放時將停止。
; 通道0是預留給玩家的特殊通道,當玩家被擊中時通道0的聲音(說話聲)將停止。
; 建議你在通道0播放你人物的(說話聲)聲音.缺省默認為-1,表示聲音將在任何空閒的聲道播放。

; 測試過有效範圍-1~31(共33個)，過大的數字會無效。
; https://mugenguild.com/forum/topics/playsnd-sctrls-169020.0.html

; 要中止Helper的聲音需要將StopSnd寫在Helper的Statedef上。
[State -2, Stop Channel 1~5 Sound] ;Common.cns
type = StopSnd
trigger1 = MoveType = H
trigger2 = (StateNo != [19,29])
channel = 1
ignorehitpause = 1

[State -2, Stop Channel 1~5 Sound] ;Common.cns
type = StopSnd
trigger1 = MoveType = H
trigger2 = (StateNo != [39,116])
channel = 2
ignorehitpause = 1

[State -2, Stop Channel 6~9 Sound] ;Win Pose & Intro
type = StopSnd
trigger1 = MoveType = H
trigger2 = (StateNo != [180,189])
trigger2 = (StateNo != [190,194])
trigger2 = (StateNo != [196,199])
channel = 6
ignorehitpause = 1

[State -2, Stop Channel 6~9 Sound] ;Win Pose & Intro
type = StopSnd
trigger1 = MoveType = H
trigger2 = (StateNo != [180,189])
trigger2 = (StateNo != [190,194])
trigger2 = (StateNo != [196,199])
channel = 8
ignorehitpause = 1

[State -2, Stop Channel 6~9 Sound] ;Win Pose & Intro
type = StopSnd
trigger1 = MoveType = H
trigger2 = (StateNo != [180,189])
trigger2 = (StateNo != [190,194])
trigger2 = (StateNo != [196,199])
channel = 9
ignorehitpause = 1

[State -2, Stop Channel 10~14 Sound] ;Normal Moves
type = StopSnd
trigger1 = MoveType = H
trigger2 = MoveContact >= 1 ;接觸到對手時中斷這個音效 (依照原作設定)
channel = 10
ignorehitpause = 1

[State -2, Stop Channel 10~14 Sound] ;Normal Moves
type = StopSnd
trigger1 = MoveType = H
channel = 11
ignorehitpause = 1

[State -2, Stop Channel 10~14 Sound] ;Normal Moves
type = StopSnd
trigger1 = MoveType = H
channel = 12
ignorehitpause = 1

[State -2, Stop Channel 10~14 Sound] ;Normal Moves
type = StopSnd
trigger1 = MoveType = H
channel = 13
ignorehitpause = 1

[State -2, Stop Channel 15~19 Sound] ;Special / Super Moves
type = StopSnd
trigger1 = MoveType = H
trigger2 = MoveContact >= 1 ;接觸到對手時中斷這個音效 (依照原作設定)
channel = 15
ignorehitpause = 1

[State -2, Stop Channel 15~19 Sound] ;Special / Super Moves
type = StopSnd
trigger1 = MoveType = H
channel = 16
ignorehitpause = 1

[State -2, Stop Channel 15~19 Sound] ;Special / Super Moves
type = StopSnd
trigger1 = MoveType = H
channel = 17
ignorehitpause = 1

[State -2, Stop Channel 15~19 Sound] ;Special / Super Moves
type = StopSnd
trigger1 = MoveType = H
channel = 18
ignorehitpause = 1

[State -2, Stop Channel 20~24 Sound] ;Hyper Moves
type = StopSnd
trigger1 = MoveType = H
channel = 20
ignorehitpause = 1

[State -2, Stop Channel 20~24 Sound] ;Hyper Moves
type = StopSnd
trigger1 = MoveType = H
channel = 21
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Knight Card System Helper
; 騎士卡牌系統用助手
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Knight Card System]
type = Helper
triggerall = RoundState = [2,3]
trigger1 = NumHelper(30000) = 0
stateno = 30000
id = 30000
name = "Knight Card System" ;騎士卡牌系統
postype = left
pos = screenwidth/2,0
facing = cond(facing = 1,1,-1)
keyctrl = 0 ;*
ownpal = 1
supermovetime = 2147483647 ;MUGEN系統允許最大值
pausemovetime = 2147483647
ignorehitpause = 1

;*如果keyctrl為1參數 Helper能夠接受玩家輸入的指令 (可以手操控制)
; 也就是Helper可以繼承本體[Statedef -1]的部份
; 如果為0參數 則Helper不能訪問輸入的指令 且不能繼承[Statedef -1]

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Defence Correction (Gut Value)
; 防禦力補正 (根性值)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Defence Correction 1]
type = LifeAdd
triggerall = PalNo = [1,10]
triggerall = Random < 500
triggerall = NumEnemy = 1 ;敵人數一位時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
triggerall = (StateNo = [5000,5210]) && MoveType = H
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.5)
trigger1 = Life >= Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.25) ;傷害3/4
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 2]
type = LifeAdd
triggerall = PalNo = [1,10]
triggerall = Random < 750
triggerall = NumEnemy = 1 ;敵人數一位時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
triggerall = (StateNo = [5000,5210]) && MoveType = H
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.5) ;傷害1/2
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 3]
type = LifeAdd
triggerall = PalNo = [1,10]
triggerall = Random < 500
triggerall = NumEnemy > 1 ;敵人數二位以上時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
triggerall = (StateNo = [5000,5210]) && MoveType = H
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.5)
trigger1 = Life >= Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.3)
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 4]
type = LifeAdd
triggerall = PalNo = [1,10]
triggerall = Random < 750
triggerall = NumEnemy > 1 ;敵人數二位以上時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
triggerall = (StateNo = [5000,5210]) && MoveType = H
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.6)
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 5]
type = LifeAdd
triggerall = PalNo = [11,12]
triggerall = Random < 500
triggerall = NumEnemy = 1 ;敵人數一位時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.5)
trigger1 = Life >= Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.25) ;傷害3/4
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 6]
type = LifeAdd
triggerall = PalNo = [11,12]
triggerall = Random < 750
triggerall = NumEnemy = 1 ;敵人數一位時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.5) ;傷害1/2
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 7]
type = LifeAdd
triggerall = PalNo = [11,12]
triggerall = Random < 500
triggerall = NumEnemy > 1 ;敵人數二位以上時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.5)
trigger1 = Life >= Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.3)
absolute = 1
ignorehitpause = 1

[State -2, Defence Correction 8]
type = LifeAdd
triggerall = PalNo = [11,12]
triggerall = Random < 750
triggerall = NumEnemy > 1 ;敵人數二位以上時
triggerall = RoundState = 2
triggerall = Alive || Life != 0
trigger1 = GetHitVar(Damage)
trigger1 = Life < Ceil(LifeMax*0.25)
value = Floor(Abs(GetHitVar(Damage))*0.6)
absolute = 1
ignorehitpause = 1

;[State -2, DefenceMulSet]
;type = DefenceMulSet
;triggerall = RoundState = 2
;triggerall = Alive || Life != 0
;trigger1 = GetHitVar(Damage)
;trigger1 = Life < Ceil(LifeMax*0.25);Life < LifeMax/4
;value = Ceil(Life/LifeMax)
;ignorehitpause = 1

; DefenceMulSet 似乎對TargetLifeAdd傷害無效 所以改用LifeAdd

; 關於攻防修正、lifeAdd絕對傷害等問題
; https://tieba.baidu.com/p/2115343851

; ニコニコMUGENwiki 根性値
; https://w.atwiki.jp/niconicomugen/pages/358.html

; ニコニコMUGENwiki 補正
; https://w.atwiki.jp/niconicomugen/pages/1158.html

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Super Armor
; 超級裝甲 (霸體)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Super Armor]
type = Helper
triggerall = Alive
triggerall = NumHelper(25410) = 0
trigger1 = var(53) = 0
trigger1 = PalNo = [11,12]
id = 25410
name = "Super Armor"
pos = 0,0
postype = p1
stateno = 25410
keyctrl = 0
ownpal = 1
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

[State -2, Super Armor NotHitBy 1]
type = NotHitBy
triggerall = Alive
triggerall = NumHelper(25410) = 1
trigger1 = PalNo = [11,12]
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
ignorehitpause = 1

[State -2, Super Armor NotHitBy 2]
type = NotHitBy
triggerall = Alive
triggerall = NumHelper(25410) = 1
trigger1 = PalNo = [11,12]
value2 = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AP, AT
ignorehitpause = 1

[State -2, Super Armor HitBy]
type = HitBy
triggerall = Alive
triggerall = NumHelper(25410) = 1
trigger1 = PalNo = [11,12]
value =
ignorehitpause = 1

[State -2, Loss of Defensive Ability]
type = AssertSpecial
triggerall = Alive
trigger1 = PalNo = [11,12]
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignorehitpause = 1

[State -2, Super Armor Damage]
type = LifeAdd
triggerall = fvar(29)
triggerall = PalNo = 11
trigger1 = NumHelper(25410) = 1
value = -(Floor(fvar(29)*1))/3 ;三分之一傷害
kill = 1
ignorehitpause = 1

[State -2, Super Armor Damage]
type = LifeAdd
triggerall = fvar(29)
triggerall = PalNo = 12
trigger1 = NumHelper(25410) = 1
value = -(Floor(fvar(29)*1))/4 ;四分之一傷害
kill = 1
ignorehitpause = 1

[State -2, Super Armor VarSet]
type = VarSet
triggerall = PalNo = [11,12]
trigger1 = fvar(29)
fv = 29
value = 0
;fvar(29) = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Button Optimization System
; 按鍵優化系統
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Button Optimization Command Cache] ;按鍵優化指令緩存
type = Pause
trigger1 = MoveHit
time = HitPauseTime
endcmdbuftime = HitPauseTime*2
pausebg = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Y Axis is Forced to 0 (Forced on The Ground)
; Y軸強制為0 (強制在地面上)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Y Axis is Forced to 0]
type = PosSet
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = (StateNo = [0,21]) || (StateNo = [200,226]) || (StateNo = [230,250])
y = 0

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Statedef Ctrl = 0 Fix
; 狀態定義Ctrl = 0時修正
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Tick Fix]
type = CtrlSet
triggerall = !Ctrl
trigger1 = (StateNo = 52 || StateNo = 103 || StateNo = 106 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,256]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [520,540]) && !AnimTime
trigger6 = StateNo = 560 && Time >= 15
trigger7 = (StateNo = [700,715]) && !AnimTime
value = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Afterimage Treatment
; 殘像處理
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Eliminate Afterimage] ;消除殘影
type = AfterImage
trigger1 = MoveType = H
trigger2 = StateNo != 43 && StateNo != 45 && StateNo != 50
trigger2 = StateNo != 255 && StateNo != 256
trigger2 = StateNo != 700 && StateNo != 705 && StateNo != 710 && StateNo != 715
time = 0
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Explod Effect Modify or Remove
; 爆炸效果修改 或 清除
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Remove Spear Slash G2]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 191 || Anim != 191
id = 191

[State -2, Remove Spear Slash A]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 200 || Anim != 200
id = 7400

[State -2, Remove Spear Slash B]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 400 || Anim != 400
id = 7404

[State -2, Remove Spear Slash C]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 600 || Anim != 600
trigger3 = Anim = 47
id = 7406

[State -2, Remove Spear Slash D]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 210 || Anim != 210
id = 7410

[State -2, Remove Spear Slash E]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 410 || Anim != 410
id = 7414

[State -2, Remove Spear Slash F]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 610 || Anim != 610
trigger3 = Anim = 47
id = 7418

[State -2, Remove Spear Slash G]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo != 220 || Anim != 220
id = 7420

[State -2, Remove Spear Slash G2]
type = RemoveExplod
trigger1 = StateNo != 222 || Anim != 222
trigger2 = MoveType = H
id = 7422

[State -2, Remove Whirlwind Spear Slash B]
type = RemoveExplod
trigger1 = StateNo != 227 || Anim != 227
trigger2 = MoveType = H
id = 7427

[State -2, Remove Spear Slash H]
type = RemoveExplod
trigger1 = StateNo != 230 || Anim != 230
trigger2 = MoveType = H
id = 7430

[State -2, Remove Spear Slash I]
type = RemoveExplod
trigger1 = StateNo != 240 || Anim != 240
trigger2 = MoveType = H
id = 7440

[State -2, Remove Spear Slash L]
type = RemoveExplod
trigger1 = StateNo != 245 || Anim != 245
trigger2 = MoveType = H
id = 7445

[State -2, Remove Spear Slash L2]
type = RemoveExplod
trigger1 = StateNo != 250 || Anim != 250
trigger2 = MoveType = H
id = 7450

[State -2, Remove Spear Slash J]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = (StateNo != [640,645]) || Anim != 640
trigger3 = Anim = 47
id = 7456

[State -2, Remove Hyakka Spear Slash]
type = RemoveExplod
trigger1 = StateNo != 1000 || Anim != 1000
trigger2 = MoveType = H
id = 7470

[State -2, Remove Hyakka Spear Slash]
type = RemoveExplod
trigger1 = StateNo != 1050 || Anim != 1050
trigger2 = MoveType = H
id = 7476

[State -2, Remove Whirlwind Spear Slash A / Whirlwind Land Effect]
type = RemoveExplod
trigger1 = StateNo != 1100 || Anim != 1100
trigger2 = MoveType = H
id = 7500

[State -2, Remove Whirlwind Spear Slash A / Whirlwind Land Effect]
type = RemoveExplod
trigger1 = StateNo != 1200 || Anim != 1200
trigger2 = MoveType = H
id = 7510

[State -2, Remove Whirlwind Spear Slash B]
type = RemoveExplod
trigger1 = StateNo != 1202 || Anim != 1202
trigger2 = MoveType = H
id = 7512

[State -2, Remove Whirlwind Spear Slash A / Whirlwind Land Effect]
type = RemoveExplod
trigger1 = StateNo != 1300 || Anim != 1300
trigger2 = MoveType = H
id = 7520

[State -2, Remove Whirlwind Spear Slash C]
type = RemoveExplod
trigger1 = StateNo != 1302 || Anim != 1302
trigger2 = MoveType = H
id = 7522

[State -2, Remove Gale Spear Slash / Gale Spear Circle Wave]
type = RemoveExplod
trigger1 = StateNo != 1402 || Anim != 1402
trigger2 = MoveType = H
id = 7602

[State -2, Remove Fire Gale Spear Slash]
type = RemoveExplod
trigger1 = StateNo != 1409
trigger2 = MoveType = H
id = 7609

[State -2, Remove Gale Spear Slash / Gale Spear Circle Wave]
type = RemoveExplod
trigger1 = StateNo != 1425 || Anim != 1425
trigger2 = MoveType = H
id = 7625

[State -2, Remove Gale Spear Slash / Gale Spear Circle Wave]
type = RemoveExplod
trigger1 = StateNo != 1452 || Anim != 1452
trigger2 = MoveType = H
id = 7652

[State -2, Remove Gale Spear Slash / Gale Spear Circle Wave]
type = RemoveExplod
trigger1 = StateNo != 1475 || Anim != 1475
trigger2 = MoveType = H
id = 7675

[State -2, Remove Spear / Rotation]
type = RemoveExplod
trigger1 = StateNo != 1510
trigger2 = MoveType = H
trigger3 = NumTarget(1500) = 0
id = 7680

[State -2, Remove Ice Floor / Ice Gale Spear Slash / Ice Gale Spear Circle Wave]
type = RemoveExplod
trigger1 = StateNo != 1700 || Anim != 1700
trigger2 = MoveType = H
id = 7687

[State -2, Remove Dragon Fang Spear Slash / Recharge Effect]
type = RemoveExplod
trigger1 = StateNo != [2400,2402]
trigger2 = MoveType = H
id = 7700

[State -2, Remove Dragon Fang Spear Aura / Dragon Fang Spear Slash]
type = RemoveExplod
trigger1 = StateNo != 2402
trigger2 = MoveType = H
id = 7702

[State -2, Remove Dragon Fang Spear Aura / Dragon Fang Spear Slash Turn]
type = RemoveExplod
trigger1 = StateNo != 2412
trigger2 = MoveType = H
id = 7712

[State -2, Remove Dragon Fang Spear Slash / Recharge Effect]
type = RemoveExplod
trigger1 = StateNo != [2450,2452]
trigger2 = MoveType = H
id = 7750

[State -2, Remove Dragon Fang Spear Aura / Dragon Fang Spear Slash]
type = RemoveExplod
trigger1 = StateNo != 2452
trigger2 = MoveType = H
id = 7752

[State -2, Remove Dragon Fang Spear Aura / Dragon Fang Spear Slash Turn]
type = RemoveExplod
trigger1 = StateNo != 2462
trigger2 = MoveType = H
id = 7762

[State -2, Explod Modify Trans Effect 1]
type = ModifyExplod
trigger1 = StateNo != [2600,2699]
trans = addalpha
alpha = 256-(time*32),256
id = 7860

[State -2, Remove Magic Light Disc A]
type = RemoveExplod
trigger1 = (StateNo = [19,116]) || (StateNo = [200,990]) || (StateNo = [1000,2489]) || (StateNo = [3000,3299]) || (StateNo = [3800,3999])
trigger2 = (StateNo != [2600,2699]) && Time > 6
trigger3 = (StateNo != [120,155]) && MoveType = H
id = 7860

[State -2, Remove Magic Light Disc A]
type = RemoveExplod
triggerall = NumHelper(12600)
trigger1 = (Helper(12600),StateNo = 12610)
id = 7860

[State -2, Explod Modify Trans Effect 1 MoveHit]
type = ModifyExplod
trigger1 = StateNo != [2600,2699]
trans = addalpha
alpha = 256-(time*32),256
id = 7865

[State -2, Remove Magic Light Disc A MoveHit]
type = RemoveExplod
trigger1 = (StateNo = [19,116]) || (StateNo = [200,990]) || (StateNo = [1000,2489]) || (StateNo = [3000,3299]) || (StateNo = [3800,3999])
trigger2 = (StateNo != [2600,2699]) && Time > 6
trigger3 = (StateNo != [120,155]) && MoveType = H
id = 7865

[State -2, Explod Modify Trans Effect 2]
type = ModifyExplod
trigger1 = StateNo != [2800,2899]
trans = addalpha
alpha = 256-(time*32),256
id = 7880

[State -2, Remove Magic Light Disc B]
type = RemoveExplod
trigger1 = (StateNo = [19,116]) || (StateNo = [200,990]) || (StateNo = [1000,2489]) || (StateNo = [3000,3299]) || (StateNo = [3800,3999])
trigger2 = (StateNo != [2800,2899]) && Time > 6
trigger3 = (StateNo != [120,155]) && MoveType = H
id = 7880

[State -2, Explod Modify Trans Effect 3]
type = ModifyExplod
trigger1 = StateNo != [3600,3699]
trans = addalpha
alpha = 256-(time*32),256
id = 7960

[State -2, Remove Magic Light Disc C]
type = RemoveExplod
trigger1 = (StateNo = [19,116]) || (StateNo = [200,990]) || (StateNo = [1000,2489]) || (StateNo = [3000,3299]) || (StateNo = [3800,3999])
trigger2 = (StateNo != [3600,3699]) && Time > 6
trigger3 = (StateNo != [120,155]) && MoveType = H
id = 7960

[State -2, Remove Pink Background)]
type = RemoveExplod
trigger1 = StateNo = 3000 || StateNo = 3100 || StateNo = 3200
id = 12611

[State -2, Remove Bubble)]
type = RemoveExplod
trigger1 = StateNo = 3000 || StateNo = 3100 || StateNo = 3200
id = 12612

[State -2, Remove Nice Chinchin Background Spark]
type = RemoveExplod
trigger1 = StateNo = 3000 || StateNo = 3100 || StateNo = 3200
id = 12613

[State -2, Remove Clone Pharsalia]
type = RemoveExplod
trigger1 = StateNo != [3600,3699]
trigger2 = MoveType = H
id = 13600

[State -2, Remove Pharsalia's Weapon 1]
type = RemoveExplod
trigger1 = StateNo != [3600,3699]
trigger2 = MoveType = H
id = 13602

[State -2, Remove Pharsalia's Weapon 2]
type = RemoveExplod
trigger1 = StateNo != [3600,3699]
trigger2 = MoveType = H
id = 13604

[State -2, Remove Blocking Font]
type = RemoveExplod
trigger1 = StateNo != [520,565] ;Blocking
id = 15020

[State -2, Remove Recovery Font]
type = RemoveExplod
trigger1 = Alive = 0
trigger2 = var(53) > 0
trigger3 = StateNo != 706 ;Recovery
id = 15026

[State -2, Remove Guard Cancel Font]
type = RemoveExplod
trigger1 = StateNo != [710,725] ;Guard Cancel
id = 15030

[State -2, Remove Barrier Font]
type = RemoveExplod
trigger1 = StateNo != [3800,3815] ;Barrier
id = 15040

[State -2, Remove Resurrection Font]
type = RemoveExplod
trigger1 = StateNo != [3990,3991] ;Resurrection
id = 15050

[State -2, Remove Recovery Font]
type = RemoveExplod
trigger1 = Anim != [5200,5210] ;Recovery
trigger2 = Alive = 0
trigger3 = var(53) > 0
trigger4 = Pos Y >= 0 && Vel Y > 0
id = 15060

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Blocking (Standing) / Opponent State Separation
; 格檔 (正在站立時) / 對手狀態脫離
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Blocking (State Separation)]
type = SelfState
value = 525
triggerall = Alive
triggerall = var(53) = 0
triggerall = RoundState = 2
triggerall = StateType = S
triggerall = (StateNo != [520,565])
triggerall = (PrevStateNo != [520,565])
triggerall = PalNo = 10
;▼----------✱脫離✱----------▼;✔
trigger1 = !sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime || !sysvar(4) = GameTime%100
trigger1 = (Anim = [5000,5999]) && MoveType = H || (StateNo != [120,159]) && MoveType = H || MoveReversed
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Blocking (Crouching) / Opponent State Separation
; 格檔 (正在蹲下時) / 對手狀態脫離
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Blocking (State Separation)]
type = SelfState
value = 545
triggerall = Alive
triggerall = var(53) = 0
triggerall = RoundState = 2
triggerall = StateType = C
triggerall = (StateNo != [520,565])
triggerall = (PrevStateNo != [520,565])
triggerall = PalNo = 10
;▼----------✱脫離✱----------▼;✔
trigger1 = !sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime || !sysvar(4) = GameTime%100
trigger1 = (Anim = [5000,5999]) && MoveType = H || (StateNo != [120,159]) && MoveType = H || MoveReversed
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Blocking (Aerial) / Opponent State Separation
; 格檔 (正在空中時) / 對手狀態脫離
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Blocking (State Separation)]
type = SelfState
value = 565
triggerall = Alive
triggerall = var(53) = 0
triggerall = RoundState = 2
triggerall = StateType = A
triggerall = (StateNo != [520,565])
triggerall = (PrevStateNo != [520,565])
triggerall = PalNo = 10
;▼----------✱脫離✱----------▼;✔
trigger1 = !sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime || !sysvar(4) = GameTime%100
trigger1 = (Anim = [5000,5999]) && MoveType = H || (StateNo != [120,159]) && MoveType = H || MoveReversed
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Barrier (State Separation)
; 氣障壁 (狀態脫離用)
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Barrier (State Separation)]
type = SelfState
value = Cond(StateType = A,3815,3805)
triggerall = Alive
triggerall = var(53) = 0
triggerall = roundstate = 2
triggerall = (StateNo != [3800,3825])
triggerall = (PrevStateNo != [3800,3825])
triggerall = PalNo = [11,12]
;▼----------✱脫離✱----------▼;✔
trigger1 = !sysvar(4) = ((10*(GameTime*10+26551)*GameTime)+((6*GameTime-18634)+GameTime)*GameTime-712356)-(GameTime*4)*GameTime || !sysvar(4) = GameTime%100
trigger1 = (Anim = [5000,5999]) && MoveType = H || (StateNo != [120,159]) && MoveType = H || MoveReversed
ignorehitpause = 1

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; Seikyokukai (Ura Kai) / Summon Helper
; 制極界 (裏改) / 召喚用助手
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[State -2, Seikyokukai (Ura Kai)]
type = Helper
triggerall = PalNo = 12
triggerall = RoundState = [2,3]
triggerall = EnemyNear(var(48)),Name != "Iori Yagami MAAB Sprite by Lingle"
triggerall = EnemyNear(var(48)),Name != "Riesz MAAB Sprite by Lingle"
trigger1 = MoveType = H
trigger2 = MoveType = A && Anim = 200 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger3 = MoveType = A && Anim = 210 && AnimElemTime(1) >= 3 && AnimElemTime(4) < 4
trigger4 = MoveType = A && Anim = 220 && AnimElemTime(2) >= 3 && AnimElemTime(9) < 0
trigger5 = MoveType = A && Anim = 222 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 0
trigger6 = MoveType = A && Anim = 227 && AnimElemTime(4) >= 2 && AnimElemTime(10) < 4
trigger7 = MoveType = A && Anim = 230 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 4
trigger8 = MoveType = A && Anim = 240 && AnimElemTime(4) >= 2 && AnimElemTime(7) < 4
trigger9 = MoveType = A && Anim = 250 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger10 = MoveType = A && Anim = 400 && AnimElemTime(1) >= 1 && AnimElemTime(3) < 4
trigger11 = MoveType = A && Anim = 410 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger12 = MoveType = A && Anim = 440 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 5
trigger13 = MoveType = A && Anim = 600 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger14 = MoveType = A && Anim = 610 && AnimElemTime(2) >= 2 && AnimElemTime(4) < 4
trigger15 = MoveType = A && Anim = 620 && AnimElemTime(2) >= 1
trigger16 = MoveType = A && Anim = 640 && AnimElemTime(4) >= 1 && AnimElemTime(7) < 0
trigger17 = MoveType = A && Anim = 800 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger18 = MoveType = A && Anim = 850 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger19 = MoveType = A && Anim = 1000 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 2
trigger20 = MoveType = A && Anim = 1050 && AnimElemTime(3) >= 2 && AnimElemTime(18) < 2
trigger21 = MoveType = A && Anim = 1100 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger22 = MoveType = A && Anim = 1200 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger23 = MoveType = A && Anim = 1202 && AnimElemTime(2) >= 2 && AnimElemTime(8) < 4
trigger24 = MoveType = A && Anim = 1300 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger25 = MoveType = A && Anim = 1302 && AnimElemTime(2) >= 2 && AnimElemTime(7) < 4
trigger26 = MoveType = A && Anim = 1402 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger27 = MoveType = A && Anim = 1425 && AnimElemTime(4) >= 3 && AnimElemTime(11) < 2
trigger28 = MoveType = A && Anim = 1452 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger29 = MoveType = A && Anim = 1475 && AnimElemTime(4) >= 3 && AnimElemTime(9) < 3
trigger30 = MoveType = A && Anim = 1500 && AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger31 = MoveType = A && Anim = 1600 && AnimElemTime(11) >= 1 && AnimElemTime(20) < 0
trigger32 = MoveType = A && Anim = 1700 && AnimElemTime(5) >= 1 && AnimElemTime(11) < 2
trigger33 = MoveType = A && Anim = 2600 && AnimElemTime(6) >= 2 && AnimElemTime(22) < 0
trigger34 = MoveType = A && Anim = 2800 && AnimElemTime(6) >= 1 && AnimElemTime(22) < 0
trigger35 = MoveType = A && Anim = 3010 && AnimElemTime(1) >= 1 && AnimElemTime(26) < 0
trigger36 = MoveType = A && Anim = 3100 && AnimElemTime(8) >= 1 && AnimElemTime(10) < 4
trigger37 = MoveType = A && Anim = 3201 && AnimElemTime(3) >= 2 && AnimElemTime(8) < 0
stateno = 44980
id = 44980
name = "Seikyokukai (Ura Kai)" ;制極界 (裏改)
postype = p1
pos = 0,0
facing = cond(facing = 1,1,-1)
keyctrl = 0
ownpal = 1
supermovetime = 2147483647 ;MUGEN系統允許最大值
pausemovetime = 2147483647
ignorehitpause = 1

[State -2, Seikyokukai (Ura Kai)]
type = Helper
triggerall = PalNo = 12
triggerall = RoundState = [2,3]
triggerall = EnemyNear(var(48)),Name = "Iori Yagami MAAB Sprite by Lingle" || EnemyNear(var(48)),Name = "Riesz MAAB Sprite by Lingle"
triggerall = Random < 150
trigger1 = MoveType = H
trigger2 = MoveType = A && Anim = 200 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger3 = MoveType = A && Anim = 210 && AnimElemTime(1) >= 3 && AnimElemTime(4) < 4
trigger4 = MoveType = A && Anim = 220 && AnimElemTime(2) >= 3 && AnimElemTime(9) < 0
trigger5 = MoveType = A && Anim = 222 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 0
trigger6 = MoveType = A && Anim = 227 && AnimElemTime(4) >= 2 && AnimElemTime(10) < 4
trigger7 = MoveType = A && Anim = 230 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 4
trigger8 = MoveType = A && Anim = 240 && AnimElemTime(4) >= 2 && AnimElemTime(7) < 4
trigger9 = MoveType = A && Anim = 250 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger10 = MoveType = A && Anim = 400 && AnimElemTime(1) >= 1 && AnimElemTime(3) < 4
trigger11 = MoveType = A && Anim = 410 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger12 = MoveType = A && Anim = 440 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 5
trigger13 = MoveType = A && Anim = 600 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger14 = MoveType = A && Anim = 610 && AnimElemTime(2) >= 2 && AnimElemTime(4) < 4
trigger15 = MoveType = A && Anim = 620 && AnimElemTime(2) >= 1
trigger16 = MoveType = A && Anim = 640 && AnimElemTime(4) >= 1 && AnimElemTime(7) < 0
trigger17 = MoveType = A && Anim = 800 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger18 = MoveType = A && Anim = 850 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger19 = MoveType = A && Anim = 1000 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 2
trigger20 = MoveType = A && Anim = 1050 && AnimElemTime(3) >= 2 && AnimElemTime(18) < 2
trigger21 = MoveType = A && Anim = 1100 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger22 = MoveType = A && Anim = 1200 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger23 = MoveType = A && Anim = 1202 && AnimElemTime(2) >= 2 && AnimElemTime(8) < 4
trigger24 = MoveType = A && Anim = 1300 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger25 = MoveType = A && Anim = 1302 && AnimElemTime(2) >= 2 && AnimElemTime(7) < 4
trigger26 = MoveType = A && Anim = 1402 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger27 = MoveType = A && Anim = 1425 && AnimElemTime(4) >= 3 && AnimElemTime(11) < 2
trigger28 = MoveType = A && Anim = 1452 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger29 = MoveType = A && Anim = 1475 && AnimElemTime(4) >= 3 && AnimElemTime(9) < 3
trigger30 = MoveType = A && Anim = 1500 && AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger31 = MoveType = A && Anim = 1600 && AnimElemTime(11) >= 1 && AnimElemTime(20) < 0
trigger32 = MoveType = A && Anim = 1700 && AnimElemTime(5) >= 1 && AnimElemTime(11) < 2
trigger33 = MoveType = A && Anim = 2600 && AnimElemTime(6) >= 2 && AnimElemTime(22) < 0
trigger34 = MoveType = A && Anim = 2800 && AnimElemTime(6) >= 1 && AnimElemTime(22) < 0
trigger35 = MoveType = A && Anim = 3010 && AnimElemTime(1) >= 1 && AnimElemTime(26) < 0
trigger36 = MoveType = A && Anim = 3100 && AnimElemTime(8) >= 1 && AnimElemTime(10) < 4
trigger37 = MoveType = A && Anim = 3201 && AnimElemTime(3) >= 2 && AnimElemTime(8) < 0
stateno = 44980
id = 44980
name = "Seikyokukai (Ura Kai)" ;制極界 (裏改)
postype = p1
pos = 0,0
facing = cond(facing = 1,1,-1)
keyctrl = 0
ownpal = 1
supermovetime = 2147483647 ;MUGEN系統允許最大值
pausemovetime = 2147483647
ignorehitpause = 1

[State -2, Seikyokukai (Ura Kai 2)]
type = Helper
triggerall = PalNo = 12
triggerall = RoundState = [2,3]
triggerall = EnemyNear(var(48)),Name != "Iori Yagami MAAB Sprite by Lingle"
triggerall = EnemyNear(var(48)),Name != "Riesz MAAB Sprite by Lingle"
trigger1 = MoveType = H
trigger2 = MoveType = A && Anim = 200 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger3 = MoveType = A && Anim = 210 && AnimElemTime(1) >= 3 && AnimElemTime(4) < 4
trigger4 = MoveType = A && Anim = 220 && AnimElemTime(2) >= 3 && AnimElemTime(9) < 0
trigger5 = MoveType = A && Anim = 222 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 0
trigger6 = MoveType = A && Anim = 227 && AnimElemTime(4) >= 2 && AnimElemTime(10) < 4
trigger7 = MoveType = A && Anim = 230 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 4
trigger8 = MoveType = A && Anim = 240 && AnimElemTime(4) >= 2 && AnimElemTime(7) < 4
trigger9 = MoveType = A && Anim = 250 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger10 = MoveType = A && Anim = 400 && AnimElemTime(1) >= 1 && AnimElemTime(3) < 4
trigger11 = MoveType = A && Anim = 410 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger12 = MoveType = A && Anim = 440 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 5
trigger13 = MoveType = A && Anim = 600 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger14 = MoveType = A && Anim = 610 && AnimElemTime(2) >= 2 && AnimElemTime(4) < 4
trigger15 = MoveType = A && Anim = 620 && AnimElemTime(2) >= 1
trigger16 = MoveType = A && Anim = 640 && AnimElemTime(4) >= 1 && AnimElemTime(7) < 0
trigger17 = MoveType = A && Anim = 800 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger18 = MoveType = A && Anim = 850 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger19 = MoveType = A && Anim = 1000 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 2
trigger20 = MoveType = A && Anim = 1050 && AnimElemTime(3) >= 2 && AnimElemTime(18) < 2
trigger21 = MoveType = A && Anim = 1100 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger22 = MoveType = A && Anim = 1200 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger23 = MoveType = A && Anim = 1202 && AnimElemTime(2) >= 2 && AnimElemTime(8) < 4
trigger24 = MoveType = A && Anim = 1300 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger25 = MoveType = A && Anim = 1302 && AnimElemTime(2) >= 2 && AnimElemTime(7) < 4
trigger26 = MoveType = A && Anim = 1402 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger27 = MoveType = A && Anim = 1425 && AnimElemTime(4) >= 3 && AnimElemTime(11) < 2
trigger28 = MoveType = A && Anim = 1452 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger29 = MoveType = A && Anim = 1475 && AnimElemTime(4) >= 3 && AnimElemTime(9) < 3
trigger30 = MoveType = A && Anim = 1500 && AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger31 = MoveType = A && Anim = 1600 && AnimElemTime(11) >= 1 && AnimElemTime(20) < 0
trigger32 = MoveType = A && Anim = 1700 && AnimElemTime(5) >= 1 && AnimElemTime(11) < 2
trigger33 = MoveType = A && Anim = 2600 && AnimElemTime(6) >= 2 && AnimElemTime(22) < 0
trigger34 = MoveType = A && Anim = 2800 && AnimElemTime(6) >= 1 && AnimElemTime(22) < 0
trigger35 = MoveType = A && Anim = 3010 && AnimElemTime(1) >= 1 && AnimElemTime(26) < 0
trigger36 = MoveType = A && Anim = 3100 && AnimElemTime(8) >= 1 && AnimElemTime(10) < 4
trigger37 = MoveType = A && Anim = 3201 && AnimElemTime(3) >= 2 && AnimElemTime(8) < 0
stateno = 44981
id = 44981
name = "Seikyokukai (Ura Kai 2)" ;制極界 (裏改二)
postype = p1
pos = 0,0
facing = cond(facing = 1,1,-1)
keyctrl = 0
ownpal = 1
supermovetime = 2147483647 ;MUGEN系統允許最大值
pausemovetime = 2147483647
ignorehitpause = 1

[State -2, Seikyokukai (Ura Kai 2)]
type = Helper
triggerall = PalNo = 12
triggerall = RoundState = [2,3]
triggerall = EnemyNear(var(48)),Name = "Iori Yagami MAAB Sprite by Lingle" || EnemyNear(var(48)),Name = "Riesz MAAB Sprite by Lingle"
triggerall = Random < 150
trigger1 = MoveType = H
trigger2 = MoveType = A && Anim = 200 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger3 = MoveType = A && Anim = 210 && AnimElemTime(1) >= 3 && AnimElemTime(4) < 4
trigger4 = MoveType = A && Anim = 220 && AnimElemTime(2) >= 3 && AnimElemTime(9) < 0
trigger5 = MoveType = A && Anim = 222 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 0
trigger6 = MoveType = A && Anim = 227 && AnimElemTime(4) >= 2 && AnimElemTime(10) < 4
trigger7 = MoveType = A && Anim = 230 && AnimElemTime(3) >= 1 && AnimElemTime(5) < 4
trigger8 = MoveType = A && Anim = 240 && AnimElemTime(4) >= 2 && AnimElemTime(7) < 4
trigger9 = MoveType = A && Anim = 250 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger10 = MoveType = A && Anim = 400 && AnimElemTime(1) >= 1 && AnimElemTime(3) < 4
trigger11 = MoveType = A && Anim = 410 && AnimElemTime(2) >= 2 && AnimElemTime(5) < 4
trigger12 = MoveType = A && Anim = 440 && AnimElemTime(4) >= 2 && AnimElemTime(6) < 5
trigger13 = MoveType = A && Anim = 600 && AnimElemTime(1) >= 2 && AnimElemTime(4) < 0
trigger14 = MoveType = A && Anim = 610 && AnimElemTime(2) >= 2 && AnimElemTime(4) < 4
trigger15 = MoveType = A && Anim = 620 && AnimElemTime(2) >= 1
trigger16 = MoveType = A && Anim = 640 && AnimElemTime(4) >= 1 && AnimElemTime(7) < 0
trigger17 = MoveType = A && Anim = 800 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger18 = MoveType = A && Anim = 850 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger19 = MoveType = A && Anim = 1000 && AnimElemTime(3) >= 2 && AnimElemTime(19) < 2
trigger20 = MoveType = A && Anim = 1050 && AnimElemTime(3) >= 2 && AnimElemTime(18) < 2
trigger21 = MoveType = A && Anim = 1100 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger22 = MoveType = A && Anim = 1200 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger23 = MoveType = A && Anim = 1202 && AnimElemTime(2) >= 2 && AnimElemTime(8) < 4
trigger24 = MoveType = A && Anim = 1300 && AnimElemTime(1) >= 1 && AnimElemTime(11) < 3
trigger25 = MoveType = A && Anim = 1302 && AnimElemTime(2) >= 2 && AnimElemTime(7) < 4
trigger26 = MoveType = A && Anim = 1402 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger27 = MoveType = A && Anim = 1425 && AnimElemTime(4) >= 3 && AnimElemTime(11) < 2
trigger28 = MoveType = A && Anim = 1452 && AnimElemTime(5) >= 5 && AnimElemTime(11) < 2
trigger29 = MoveType = A && Anim = 1475 && AnimElemTime(4) >= 3 && AnimElemTime(9) < 3
trigger30 = MoveType = A && Anim = 1500 && AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger31 = MoveType = A && Anim = 1600 && AnimElemTime(11) >= 1 && AnimElemTime(20) < 0
trigger32 = MoveType = A && Anim = 1700 && AnimElemTime(5) >= 1 && AnimElemTime(11) < 2
trigger33 = MoveType = A && Anim = 2600 && AnimElemTime(6) >= 2 && AnimElemTime(22) < 0
trigger34 = MoveType = A && Anim = 2800 && AnimElemTime(6) >= 1 && AnimElemTime(22) < 0
trigger35 = MoveType = A && Anim = 3010 && AnimElemTime(1) >= 1 && AnimElemTime(26) < 0
trigger36 = MoveType = A && Anim = 3100 && AnimElemTime(8) >= 1 && AnimElemTime(10) < 4
trigger37 = MoveType = A && Anim = 3201 && AnimElemTime(3) >= 2 && AnimElemTime(8) < 0
stateno = 44981
id = 44981
name = "Seikyokukai (Ura Kai 2)" ;制極界 (裏改二)
postype = p1
pos = 0,0
facing = cond(facing = 1,1,-1)
keyctrl = 0
ownpal = 1
supermovetime = 2147483647 ;MUGEN系統允許最大值
pausemovetime = 2147483647
ignorehitpause = 1
