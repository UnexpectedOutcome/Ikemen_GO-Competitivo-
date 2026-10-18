; _______________________
;| Evil Ryu by chuchoryu |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;========================================<MODE STATES>===========================================
;================================================================================================

;==========<EVIL RYU>==========
[Statedef 5900]
type=S
[State 5900, varreset]
type=varrangeset
trigger1= !roundsexisted
value=0
[State 5900, varreset]
type=varrangeset
trigger1= !roundsexisted
fvalue=0

[State 5900, modevar]
type=varset
trigger1= 1
var(1)=2
[State 5900, end]
type=changestate
trigger1= !time
value=ifelse(roundno=1,190,0)
