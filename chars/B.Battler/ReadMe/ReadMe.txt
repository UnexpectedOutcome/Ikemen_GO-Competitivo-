

作者:Boomer


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

Version:1.1

Char setting is in the B.Battler-3.cns
設定在B.Battler-3.cns調整



;;;;;;B.Battler-3.cns
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------


[State -1, AI ON]
type = VarSet
triggerall = Var(59) <= 0
trigger1 = AILevel > 0 & PalNo != 7 & PalNo != 8 ;-2設定使用
v = 59
value= 3;1、3、-2設定 -2為原作Boss AI(Source Game Boss AI)
ignorehitpause=1

;--------------------------------------------------------------------------
;前鋒位置調整
;--------------------------------------------------------------------------

;Pos X
[State -2, VarSet]
type = VarSet
trigger1 = 1
v = 14
value = 0 ;X位置

;Pos Y
[State -2, VarSet]
type = VarSet
trigger1 = 1
v = 15
value = 0 ;Y位置

;--------------------------------------------------------------------------
;後衛位置調整
;--------------------------------------------------------------------------

;Pos X
[State -2, VarSet]
type = VarSet
trigger1 = 1
v = 16
value = 0 ;X位置

;Pos Y
[State -2, VarSet]
type = VarSet
trigger1 = 1
v = 17
value = 0 ;Y位置

;--------------------------------------------------------------------------
;Partner Choose
;--------------------------------------------------------------------------

;0= Random 1=Battler 2=Ange 3=Shannon 4=Kanon
;5=Lucifer 6=Chiester410 7=Ronove 8=Eva Beatrice 9=Virgilia
;10=Beatrice 11=Jessica 12=George 13=Rosa 14=Erika 15=Dalnor
;16=B.Battler 17=Lambdadetla 18=Bernkatel 19=Willard

[State -2, Partner]
type = VarSet
triggerall = PalNo != 7 & PalNo != 8
trigger1 = NumPartner = 0 & Var(49) = 0
trigger1 = RoundState = 2
v = 49
value = 0


;設定終了
