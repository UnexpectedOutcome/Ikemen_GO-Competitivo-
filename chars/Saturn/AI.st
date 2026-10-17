; AI variables set
; var(0) - 0 Do not guard 1 Stand Guarding, 2 Crouch Guarding
; var(1) - 0 No Guarding Preference 1 Stand Guarding recommended, 2 Crouch Guarding Recommended
; var(2) - Actual number of projectiles+helpers of opponent, not counting system ones (used for projectile blocking/reflecting moves and also to decide when to use risky interruptable attacks)
; var(3) - Lowest amount of helpers the opponent ever had
; var(4) - Attack disabler chance
; var(5) - Time left from not using physical normal attacks
; var(6) - Time left from not using magical normal attacks
; var(7) - Time left from not using hypers
; var(8) - Constant movement is required
; var(9) - Staying in air is required

[Statedef 991]
anim=9999
Type=U

; Default no guard type preference
[State 991]
Type=Varset
Trigger1=1
var(1)=0

; Prefer Stand Guard if opponent is close and in air
[State 990]
Type=Varset
Trigger1=P2statetype=A
Trigger1=abs(root,P2Bodydist X)<120
var(1)=1

; Prefer Crouch guard if opponent is crouching
[State 990]
Type=Varset
Trigger1=P2statetype=C
Trigger1=abs(root,P2Bodydist X)<120
var(1)=2

;************************************************************
; Insert attacks with non standard guarding restrictions here
;************************************************************

; Standing attacks that need to be guarded low
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy"
Trigger1=enemynear,name="Archer"
Trigger1=enemynear,stateno=210
Trigger2=enemynear,name="Archer"
Trigger2=enemynear,stateno=250
Trigger3=enemynear,name="Aura"
Trigger3=enemynear,stateno=201
Trigger4=enemynear,name="Flandre Scarlet"
Trigger4=enemynear,stateno=300
Trigger5=enemynear,name="Hanyuu"
Trigger5=enemynear,stateno=210
Trigger6=enemynear,name="Hanyuu"
Trigger6=enemynear,stateno=510
Trigger7=enemynear,name="Hanyuu"
Trigger7=enemynear,stateno=920
Trigger8=enemynear,name="Hotaru Futaba"
Trigger8=enemynear,stateno=220
Trigger9=enemynear,name="Nanoha"
Trigger9=enemynear,stateno=210
Trigger10=enemynear,name="Nitori Kawashiro"
Trigger10=enemynear,stateno=250
Trigger11=enemynear,name="Patchouli Knowledge"
Trigger11=enemynear,stateno=220
Trigger12=enemynear,name="Remilia Scarlet"
Trigger12=enemynear,stateno=210
Trigger13=enemynear,name="Sailor Saturn"
Trigger13=enemynear,stateno=220
Trigger14=enemynear,name="Shiori Misaka"
Trigger14=enemynear,stateno=210
Trigger15=enemynear,name="Shiori Misaka"
Trigger15=enemynear,stateno=2400
Trigger16=enemynear,name="Shiori Misaka"
Trigger16=enemynear,stateno=2500
Trigger17=enemynear,name="Tenshi Hinanai"
Trigger17=enemynear,stateno=250
Trigger18=enemynear,name="Tenshi Hinanai"
Trigger18=enemynear,stateno=260
Trigger19=enemynear,name="Vanilla H"
Trigger19=enemynear,stateno=610
Trigger20=enemynear,name="Vanilla H"
Trigger20=enemynear,stateno=2300
Trigger21=enemynear,name="Vita"
Trigger21=enemynear,stateno=301
Trigger22=enemynear,name="Youmu Konpaku"
Trigger22=enemynear,stateno=1070
Trigger23=enemynear,name="Youmu Konpaku"
Trigger23=enemynear,stateno=320
Trigger24=enemynear,name="Yuyuko Saigyouji"
Trigger24=enemynear,stateno=220
Trigger25=enemynear,name="Yukari Yakumo"
Trigger25=enemynear,stateno=210
Trigger26=enemynear,name="Reimu Hakurei"
Trigger26=enemynear,stateno=1140
Trigger26=enemynear,var(9)=1
Trigger27=enemynear,name="Hijiri Byakuren"
Trigger27=enemynear,stateno=230
Trigger28=enemynear,name="Reimu Hakurei"
Trigger28=enemynear,stateno=410
Trigger29=enemynear,name="Yuyuko Saigyouji"
Trigger29=enemynear,stateno=1110
Trigger30=enemynear,name="Yuyuko Saigyouji"
Trigger30=enemynear,stateno=12700
Trigger31=enemynear,name="Marisa Kirisame"
Trigger31=enemynear,stateno=410
Trigger32=enemynear,name="Shiori Misaka"
Trigger32=enemynear,stateno=230
Trigger33=enemynear,name="Sakuya Izayoi"
Trigger33=enemynear,stateno=250
Trigger34=enemynear,name="Satori Komeiji"
Trigger34=enemynear,stateno=210
Trigger35=enemynear,name="Satori Komeiji"
Trigger35=enemynear,stateno=300
Trigger36=enemynear,name="Satori Komeiji"
Trigger36=enemynear,stateno=320
var(1)=2

[State 990]
Type=Varset
Triggerall=enemynear,authorname="Ricepigeon" || enemynear,authorname="Seravy2"
Trigger1=enemynear,name="Flandre Scarlet"
Trigger1=(enemynear,stateno=1200) || (enemynear,numhelper(1210)>0)
Trigger2=enemynear,name="Flandre Scarlet"
Trigger2=(enemynear,stateno=210)
Trigger3=enemynear,name="Yuyuko Saigyouji"
Trigger3=enemynear,stateno=4000
Trigger4=enemynear,name="Mima"
Trigger4=enemynear,numhelper(1206)>0
var(1)=2

; Projectile/Helper/other attacks that need to be guarded low
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy"
Trigger1=enemynear,name="Cirno"
Trigger1=enemynear,Numhelper(1101)>0
Trigger2=enemynear,name="Cirno"
Trigger2=enemynear,stateno=13000
Trigger3=enemynear,name="Eriol Hiiragizawa"
Trigger3=enemynear,Numhelper(501)>0
Trigger4=enemynear,name="Eriol Hiiragizawa"
Trigger4=enemynear,Stateno=560
Trigger5=enemynear,name="Eriol Hiiragizawa" || enemynear,name="Shaoran Lee" || enemynear,name="Yue" || enemynear,name="Sakura Kinomoto" || enemynear,name="Void"
Trigger5=enemynear,Stateno=12010
Trigger6=enemynear,name="Flandre Scarlet"
Trigger6=enemynear,Numhelper(1101)>0
Trigger7=enemynear,name="Flandre Scarlet"
Trigger7=enemynear,Numhelper(12601)+enemynear,Numhelper(12602)+enemynear,Numhelper(12603)>0
Trigger8=enemynear,name="Flandre Scarlet"
Trigger8=enemynear,Stateno=13000
Trigger9=enemynear,name="Flandre Scarlet"
Trigger9=enemynear,Stateno=[13700,13707]
Trigger10=enemynear,name="Kano Kirishima"
Trigger10=enemynear,Numhelper(2701)>0
Trigger11=enemynear,name="Kano Kirishima"
Trigger11=enemynear,stateno=[3000,3007]
Trigger12=enemynear,name="Nitori Kawashiro"
Trigger12=enemynear,Numhelper(1011)>0
Trigger13=enemynear,name="Nitori Kawashiro"
Trigger13=enemynear,Numhelper(13201)>0
Trigger14=enemynear,name="Nitori Kawashiro"
Trigger14=enemynear,Numhelper(13601)>0
Trigger15=enemynear,name="Onpu Segawa"
Trigger15=enemynear,Numhelper(1041)>0
Trigger16=enemynear,name="Reimu Hakurei"
Trigger16=enemynear,Numhelper(12800)>0
Trigger17=enemynear,name="Reimu Hakurei"
Trigger17=enemynear,Numhelper(1111)>0
Trigger18=enemynear,name="Sailor Moon"
Trigger18=enemynear,Numhelper(1051)>0
Trigger19=enemynear,name="Sailor Saturn"
Trigger19=enemynear,Numhelper(1201)>0
Trigger20=enemynear,name="Sailor Saturn"
Trigger20=enemynear,Stateno=[2600,2607]
Trigger21=enemynear,name="Seravy"
Trigger21=enemynear,Numhelper(1093)>0
Trigger22=enemynear,name="Seravy"
Trigger22=enemynear,Stateno=[13200,13207]
Trigger23=enemynear,name="Seravy"
Trigger23=enemynear,Stateno=[14400,14407]
Trigger24=enemynear,name="Serika"
Trigger24=enemynear,Numhelper(1001)>0
Trigger25=enemynear,name="Serika"
Trigger25=enemynear,Stateno=[3500,3507]
Trigger26=enemynear,name="Silver"
Trigger26=enemynear,Numhelper(1051)>0
Trigger27=enemynear,name="Suika Ibuki"
Trigger27=enemynear,Numhelper(1095)>0
Trigger28=enemynear,name="Suika Ibuki"
Trigger28=enemynear,Stateno=[13500,13501]
Trigger29=enemynear,name="Tenshi Hinanai"
Trigger29=enemynear,stateno=1070
Trigger30=enemynear,name="Tenshi Hinanai"
Trigger30=enemynear,stateno=1080
Trigger31=enemynear,name="Tenshi Hinanai"
Trigger31=enemynear,Numhelper(1091)>0
Trigger32=enemynear,name="Unknown"
Trigger32=enemynear,stateno=3300
Trigger33=enemynear,name="Youmu Konpaku"
Trigger33=enemynear,stateno=12800
Trigger34=enemynear,name="Youmu Konpaku"
Trigger34=enemynear,stateno=[13300,13301]
Trigger35=enemynear,name="Yuyuko Saigyouji"
Trigger35=enemynear,stateno=[12800,12807]
Trigger36=enemynear,name="Yuyuko Saigyouji"
Trigger36=enemynear,Numhelper(14002)>0
Trigger37=enemynear,name="Yukari Yakumo"
Trigger37=enemynear,stateno=[13800,13802]
Trigger38=enemynear,stateno=[18521,18523]
Trigger38=enemynear,name="White Shadow Lion"
Trigger38=enemynear,var(37)=0
Trigger39=enemynear,name="White Shadow Lion"
Trigger39=Numhelper(1072)>0
Trigger40=enemynear,name="Yuyuko Saigyouji"
Trigger40=enemynear,numhelper(13102)>0
Trigger41=enemynear,name="Tenshi Hinanai"
Trigger41=enemynear,stateno=[13500,13501]
Trigger42=enemynear,name="Flandre Scarlet"
Trigger42=enemynear,stateno=13500
Trigger43=enemynear,name="Sakuya Izayoi"
Trigger43=enemynear,numhelper(1040)>0
Trigger44=enemynear,stateno=1080
Trigger44=enemynear,name="Alyssa Searrs"
Trigger45=enemynear,name="Satori Komeiji"
Trigger45=enemynear,Numhelper(15402)>0
Trigger46=enemynear,name="Satori Komeiji"
Trigger46=enemynear,stateno=[15300,15301]
Trigger47=enemynear,name="Satori KOmeiji"
Trigger47=enemynear,Stateno=[15700,15707]
;Trigger40=enemynear,name="Kaguya Houraisan" ; Bamboo Harvest
;Trigger40=Numhelper(1131)>0
var(1)=2

[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy2"
Trigger1=enemynear,name="Sailor Saturn"
Trigger1=enemynear,Numhelper(1031)>0
var(1)=2

[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy2"
Trigger1=enemynear,name="Sailor Saturn"
Trigger1=enemynear,stateno=330
var(1)=2

; Standing attacks that need to be guarded high
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy"
Trigger1=enemynear,name="Flandre Scarlet"
Trigger1=enemynear,stateno=310
Trigger2=enemynear,name="Hotaru Futaba"
Trigger2=enemynear,stateno=1020
Trigger3=enemynear,name="Kano Kirishima"
Trigger3=enemynear,stateno=230
Trigger4=enemynear,name="Lelouch"
Trigger4=enemynear,stateno=210
Trigger5=enemynear,name="Patchouli Knowledge"
Trigger5=enemynear,stateno=210
Trigger6=enemynear,name="Reimu Hakurei"
Trigger6=enemynear,stateno=210
Trigger7=enemynear,name="Remilia Scarlet"
Trigger7=enemynear,stateno=240
Trigger8=enemynear,name="Remilia Scarlet"
Trigger8=enemynear,stateno=250
Trigger9=enemynear,name="rena_lv5"
Trigger9=enemynear,stateno=210
Trigger10=enemynear,name="Serika"
Trigger10=enemynear,stateno=410
Trigger11=enemynear,name="Shiori Misaka"
Trigger11=enemynear,stateno=310
Trigger12=enemynear,name="Tenshi Hinanai"
Trigger12=enemynear,stateno=220
Trigger13=enemynear,name="Vanilla H"
Trigger13=enemynear,stateno=250
;Trigger14=enemynear,name="Vanilla H"
;Trigger14=enemynear,stateno=420
Trigger14=enemynear,name="Vita"
Trigger14=enemynear,stateno=[2200,2220]
Trigger15=enemynear,name="Youmu Konpaku"
Trigger15=enemynear,stateno=1120
Trigger16=enemynear,name="Youmu Konpaku"
Trigger16=enemynear,stateno=210
Trigger17=enemynear,name="Yuyuko Saigyouji"
Trigger17=enemynear,stateno=210
Trigger18=enemynear,name="Yuyuko Saigyouji"
Trigger18=enemynear,stateno=1020
Trigger19=enemynear,name="Yuki Nagato"
Trigger19=enemynear,stateno=[1750,1760]
Trigger20=enemynear,name="Kaguya Houraisan" ; Moondust Meteor
Trigger20=(Numhelper(1081)>0) || (enemynear,stateno=1080)
Trigger21=enemynear,name="Nitori Kawashiro"
Trigger21=enemynear,stateno=240
Trigger22=enemynear,name="Marisa Kirisame"
Trigger22=enemynear,stateno=220
Trigger23=enemynear,name="Reimu Hakurei"
Trigger23=enemynear,stateno=230
Trigger24=enemynear,name="Satori Komeiji"
Trigger24=enemynear,stateno=200
Trigger25=enemynear,name="Satori Komeiji"
Trigger25=enemynear,stateno=310
var(1)=1

[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy2"
Trigger1=enemynear,name="Sailor Saturn"
Trigger1=enemynear,stateno=300
var(1)=1

; Standing attacks that need to be guarded high
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Noah"
Trigger1=enemynear,name="Sakura Kinomoto"
Trigger1=enemynear,stateno=1300
Trigger2=enemynear,name="Sakura Kinomoto"
Trigger2=enemynear,stateno=[320,321]
Trigger3=enemynear,name="Klarissa Moonflower"
Trigger3=enemynear,stateno=211
var(1)=1


; Standing attacks that need to be guarded high
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Ricepigeon" || enemynear,authorname="Seravy2"
Trigger1=enemynear,name="Flandre Scarlet"
Trigger1=enemynear,stateno=420
Trigger2=enemynear,name="Yuyuko Saigyouji"
Trigger2=enemynear,stateno=215
Trigger3=enemynear,name="Mima"
Trigger3=enemynear,numhelper(4205)>0
Trigger4=enemynear,name="Mima"
Trigger4=enemynear,stateno=[1300,1321]
Trigger5=enemynear,name="Yukari Yakumo"
Trigger5=enemynear,stateno=205
Trigger6=enemynear,name="Yukari Yakumo"
Trigger6=enemynear,stateno=225
Trigger7=enemynear,name="Flandre Scarlet"
Trigger7=enemynear,stateno=2000
var(1)=1

; Projectile/Helper/other attacks that need to be guarded high
[State 990]
Type=Varset
Triggerall=enemynear,authorname="Seravy"
Trigger1=enemynear,name="Yue"
Trigger1=enemynear,stateno=[570,577]
Trigger2=enemynear,name="Patchouli Knowledge"
Trigger2=enemynear,Numhelper(13702)+enemynear,Numhelper(13705)>0
Trigger3=enemynear,name="Patchouli Knowledge"
Trigger3=enemynear,Numhelper(1101)>0
Trigger4=enemynear,name="Patchouli Knowledge"
Trigger4=enemynear,Numhelper(13610)>0
Trigger5=enemynear,name="Sayuri Kurata"
Trigger5=enemynear,Stateno=3400
Trigger6=enemynear,name="Unknown"
Trigger6=enemynear,Numhelper(1001)>0
Trigger7=enemynear,name="Unknown"
Trigger7=enemynear,Numhelper(1011)>0
Trigger8=enemynear,stateno=[18521,18523]
Trigger8=enemynear,name="White Shadow Lion"
Trigger8=enemynear,var(37)=1
var(1)=1

;----------------------------------------------------------------------

[State 990]
Type=Varset
Triggerall=var(1)=[1,2]
Trigger1=root,AIlevel=8
Trigger2=random<(root,AIlevel**3)/512.0*400
var(0)=var(1)

[State 990]
Type=Varset
Triggerall=var(1)=0
Triggerall=Ailevel
Trigger1=gametime % (root,Ailevel*8)=0
Trigger1=random<root,Ailevel*125
var(0)=Cond(var(0)=1,2,Cond(var(0)=2,1,var(0)))

; Check number of enemy helpers at start of the round on 2nd tick
[State 991]
Type=Varset
Trigger1=Roundstate=2
Trigger1=var(3)=-1
var(3)=enemynear,numhelper
persistent=0

[State 991]
Type=Varset
Trigger1=Roundstate=2
var(3)=-1
persistent=0

; If enemy has less helpers than the stored amount, update the stored amount
[State 991]
Type=Varset
Trigger1=Roundstate=2
Trigger1=enemynear,numhelper<var(3)
var(3)=enemynear,numhelper

; Actual number of helpers equals to number of helpers minus the stored number (lowest amount of helpers during the round)
[State 991]
Type=Varset
Trigger1=var(3)>=0
var(2)=enemynear,numhelper-var(3)+enemynear,numproj

; Attack disabling chance

; Default : Below average intelligence, only active at hard difficulty
[State 991]
Type=Varset
Trigger1=1
var(4)=(root,Ailevel>=6)*((root,Ailevel-3)**3)

; ******************************************************************************
; Set chance of reaction by character here if it needs to be higher than default
; ******************************************************************************

; Highly intelligent, activates at normal 3 or higher
[State 991]
Type=Varset
Triggerall=root,Ailevel>=3
Triggerall=authorname="Seravy"
Trigger1=name="Aura"
Trigger2=name="Vanilla H"
Trigger3=name="Eriol Hiiragizawa"
Trigger4=name="Yukari Yakumo"
Trigger5=name="Yuyuko Saigyouji"
Trigger6=name="Silver"
Trigger7=name="Remilia Scarlet"
Trigger8=name="Seravy"
Trigger9=name="Patchouli Knowledge"
Trigger10=name="Yuki Nagato"
Trigger11=name="Kaguya Houraisan"
Trigger12=name="Hijiri Byakuren"
Trigger13=name="Bernkastel"
var(4)=(root,Ailevel**3)

[State 991,y]
Type=Varset
Triggerall=root,Ailevel>=3
Trigger1=authorname="raigugiraru"
Trigger1=name="raigu's dracula"
var(4)=(root,Ailevel**3)

; Intelligent, activates at 4 or higher
[State 991]
Type=Varset
Triggerall=root,Ailevel>=4
Triggerall=authorname="Seravy"
Trigger1=name="Hanyuu"
Trigger2=name="Youmu Konpaku"
Trigger3=name="Kano Kirishima"
Trigger4=name="Nitori Kawashiro"
Trigger5=name="Reimu Hakurei"
Trigger6=name="Shiori Misaka"
Trigger7=name="Tenshi Hinanai"
Trigger8=name="Lelouch"
var(4)=(root,AIlevel-1)**3

; Intelligent
[State 991]
Type=Varset
Triggerall=root,Ailevel>=4
Triggerall=authorname="Noah"
Trigger1=name="Ecoco"
Trigger2=name="Klarissa Moonflower"
var(4)=(root,AIlevel-1)**3

; Average, activates at 5 or higher
[State 991]
Type=Varset
Triggerall=root,Ailevel>=5
Triggerall=authorname="Noah"
Trigger1=name="Sakura Kinomoto"
var(4)=(root,AIlevel-2)**3

; Average
[State 991]
Type=Varset
Triggerall=root,Ailevel>=5
Triggerall=authorname="Seravy"
Trigger1=name="Sakura Kinomoto"
Trigger2=name="Ayu Tsukimiya"
Trigger3=name="Unknown"
Trigger4=name="Sayuri Kurata"
Trigger5=name="Flandre Scarlet"
Trigger6=name="Suika Ibuki"
Trigger7=name="Sailor Moon"
Trigger8=name="Void"
Trigger9=name="Alyssa Searrs"
var(4)=(root,AIlevel-2)**3

; Average
[State 991]
Type=Varset
Triggerall=root,Ailevel>=5
Trigger1=authorname="Ricepigeon" || authorname="Seravy2"
var(4)=(root,AIlevel-2)**3

[State 991]
Type=Varadd
Trigger1=var(5)>0
var(5)=-1

[State 991]
Type=Varadd
Trigger1=var(6)>0
var(6)=-1

[State 991]
Type=Varadd
Trigger1=var(7)>0
var(7)=-1

[State 991]
Type=Varadd
Trigger1=var(8)>0
var(8)=-1

[State 991]
Type=Varadd
Trigger1=var(9)>0
var(9)=-1

; **************************************************************
; Insert abilities that need to be detected to stop attacks here
; var(5) Physical, var(6) magic, var(7) supers
; **************************************************************

; Full reflectors (all attack types)
[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy"
Trigger1=enemy,name="Void"
Trigger1=enemy,var(35)>0 ; Absorb damage
Trigger2=enemy,name="Shaoran Lee"
Trigger2=enemy,stateno=12310 ; void card invincibility lifegain
Trigger3=enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void" || enemy,name="Sakura Kinomoto"
Trigger3=enemy,numhelper(13651)+enemy,numhelper(13754)>0 ; Lock,Libra
Trigger4=enemy,name="Flandre Scarlet"
Trigger4=enemy,stateno=[14600,14603] ; Then there was none
Trigger5=enemy,name="Reimu Hakurei"
Trigger5=enemy,stateno=13601 ; Divine Retribution
Trigger6=(enemy,numhelper(12802)>0) || (enemy,stateno=[12800,12899])
Trigger6=enemy,name="Seravy" ; Divine Retribution
Trigger7=enemy,name="Tenshi Hinanai"
Trigger7=enemy,stateno=[12500,12501] ; Contemplate Pain
Trigger8=enemy,name="Yuyuko Saigyouji"
Trigger8=enemy,stateno=14300 || enemy,stateno=14101 ; Stage of Reflectors, Flawless Nirvana
Trigger9=enemy,name="White Shadow Lion"
Trigger9=enemy,stateno=[1820,1830] ; Thunderzone
Trigger10=enemy,name="White Shadow Lion"
Trigger10=enemy,stateno=8484 ; Full Heal
Trigger11=enemy,name="Cirno"
Trigger11=enemy,var(27)>0
Trigger12=enemy,name="Suika Ibuki"
Trigger12=enemy,stateno=[12500,12501]
Trigger13=enemy,name="Suika Ibuki"
Trigger13=enemy,stateno=[13300,13301]
Trigger14=enemy,name="Kaguya Houraisan" ; Invincible - NEET -
Trigger14=enemy,numhelper(12501)>0
Trigger15=enemy,name="Nitori Kawashiro" ; Hisoutensoku
Trigger15=enemy,stateno=14200
Trigger16=enemy,name="Marisa Kirisame" ; Dragon meteor
Trigger16=enemy,stateno=14101
Trigger17=enemy,name="Vanilla H"; Hypercannon
Trigger17=enemy,stateno=12000
Trigger18=enemynear,name="Satori Komeiji" ; Rose Garden from Hell
Trigger18=enemynear,stateno=14000
var(5)=var(6):=(var(7):=20)

[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy2"
Triggerall=enemy,name="Sailor Saturn" ; Dragon meteor
Trigger1=Stateno=[2100,2107]
Trigger2=Stateno=[2200,2207]
Trigger3=Stateno=[2600,2607]
var(5)=var(6):=(var(7):=20)

[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy2"
Triggerall=enemy,name="Sailor Saturn" ; Dragon meteor
Trigger1=enemy,numhelper(2401)>0
Trigger2=enemy,numhelper(1011)>0
var(6)=20

; Anti-Magic moves
[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy"
Trigger1=enemy,name="Ayu Tsukimiya"
Trigger1=enemy,numhelper(1301)>0
Trigger2=enemy,name="Ayu Tsukimiya"
Trigger2=enemy,stateno=1350
Trigger3=enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void"
Trigger3=enemy,numhelper(13511)>0
Trigger4=enemy,name="Shaoran Lee" || enemy,name="Eriol Hiiragizawa"  || enemy,name="Sakura Kinomoto"
Trigger4=enemy,numhelper(14201)>0
Trigger5=enemy,name="Hanyuu"
Trigger5=enemy,numhelper(1011)+enemy,numhelper(2301)>0 ; Oyashiro Barrier
Trigger6=enemy,name="Silver"
Trigger6=enemy,numhelper(2801)+enemy,numhelper(2802)+enemy,numhelper(2803)>0
Trigger7=enemy,name="Youmu Konpaku"
Trigger7=enemy,stateno=[14800,14801]
Trigger8=enemy,name="Marisa Kirisame"
Trigger8=enemy,numhelper(13501)>0 ; Orreries Pulsar
var(6)=20

; Anti-Physical moves
[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy"
Trigger1=enemy,name="Eriol Hiiragizawa" || enemy,name="Yue" || enemy,name="Void" || enemy,name="Sakura Kinomoto"
Trigger1=enemy,var(23)>10000 ; The Fight
Trigger2=enemy,numhelper(2001)>0 ; Safety Wall
Trigger2=enemy,name="Kano Kirishima"
Trigger3=enemy,numhelper(13002)>0 ; Safety Wall
Trigger3=enemy,name="Seravy"
Trigger4=enemy,name="Silver"
Trigger4=enemy,numhelper(2901)+enemy,numhelper(2902)+enemy,numhelper(2903)>0
Trigger5=enemy,name="Kaguya Houraisan" ; Fire Rat Robe
Trigger5=enemy,var(29)>0
Trigger5=enemy,numhelper(13101)>0
var(5)=20

; Barriers (don't use supers because it's a waste of power, but normals are ok)
[State 991]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="Seravy"
Trigger1=enemy,name="Yue"
Trigger1=enemy,stateno=[580,587] ; Frost Barrier
Trigger2=enemy,name="Nanoha"
Trigger2=enemy,numhelper(2301)>0 ; Round Shield
Trigger3=enemy,name="Sailor Saturn"
Trigger3=enemy,numhelper(2112)+enemy,numhelper(1800)>0 ; Barrier, Dim. Absorber
Trigger4=enemy,name="Hanyuu"
Trigger4=enemy,stateno=1060 ; Shift
Trigger5=enemy,name="Aura"
Trigger5=enemy,stateno=1600 ; 8 Phases, full invincibility 
Trigger6=enemy,name="Ayu Tsukimiya"
Trigger6=enemy,numhelper(1301)>0
Trigger7=enemynear,name="Hijiri Byakuren"
Trigger7=enemynear,numhelper(13701)>0 ; Revealing Light Sword
Trigger8=enemy,name="Satori Komeiji"
Trigger8=enemy,numhelper(13601)>0 ; Rose Wall
var(7)=20

; Invincibility barriers
[State 991,x]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="raigugiraru"
Triggerall=enemy,name="raigu's dracula"
Trigger1=enemy,stateno=2500 ; Transformation
Trigger2=enemy,stateno=10000 ; Transformation
Trigger3=enemy,stateno=7000 ; Barrier
Trigger4=(enemy,stateno=[8000,8002]) ; Blue Projectile
Trigger5=(enemy,stateno=[2200,2252]) ; Teleport
var(7)=20

; Movement necessary
[State 991]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Trigger1=enemy,name="Nitori Kawashiro" ; PLDC99MW Linear Gun
Trigger1=enemy,stateno=14000
Trigger2=enemy,name="Suika Ibuki" 
Trigger2=enemy,stateno=13300
Trigger3=enemy,name="Satori Komeiji" ; PLDC99MW Linear Gun
Trigger3=enemy,stateno=14600
var(5)=var(6):=(var(7):=(var(8):=20))

; Movement necessary
[State 991,x]
Type=Varset
Triggerall=random<var(4)
Triggerall=enemy,authorname="raigugiraru"
Triggerall=enemy,name="raigu's dracula"
Trigger1=(enemy,stateno=[8000,8002]) ; Blue Projectile
var(5)=var(6):=(var(7):=(var(8):=20))

; Jump necessary
[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Triggerall=root,statetype!=A
Trigger1=enemy,name="Seravy"
Trigger1=enemy,stateno=[14700,14701] ; Crowd Parade
Trigger2=enemy,name="Vanilla H"
Trigger2=enemy,numhelper(9190)>0 ; Giant Milfeulla
Trigger3=enemy,name="Tenshi Hinanai"
Trigger3=enemy,numhelper(13701)>0 ; Catastrophe Forecast
Trigger4=enemy,name="Sakura Kinomoto"
Trigger4=enemy,stateno=[12150,12151] ; Crowd Parade
Trigger5=enemy,name="Marisa Kirisame"
Trigger5=enemy,stateno=14201 ; Kaito
var(5)=var(6):=(var(7):=(var(9):=20))

; Jump or movement necessary (Marisa's Meteonic Eruption)
[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Triggerall=root,statetype!=A
Trigger1=enemy,name="Marisa Kirisame"
Trigger1=enemy,numhelper(1081)>0
Trigger2=enemy,name="Yuyuko Saigyouji"
Trigger2=enemy,numhelper(1141)>0
var(8)=var(9):=20


; Jump or movement necessary (Marisa's Meteonic Eruption)
[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy2"
Triggerall=random<var(4)
Triggerall=root,statetype!=A
Trigger1=enemy,name="Sailor Saturn"
Trigger1=enemy,stateno=[2000,2001]
var(5)=(var(9):=20)

[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Triggerall=root,statetype!=A
Trigger1=enemynear,name="Nitori Kawashiro"
Trigger1=enemynear,stateno=1070
var(9)=20

; Movement necessary (Mirage Attack)
[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Triggerall=root,statetype!=A
Trigger1=enemynear,name="Satori Komeiji"
Trigger1=enemynear,stateno=1080
var(5)=var(6):=(var(7):=(var(8):=20))

; Movement recommended
[State 991,x]
Type=Varset
Triggerall=enemy,authorname="Seravy"
Triggerall=random<var(4)
Trigger1=enemynear,name="Satori Komeiji"
Trigger1=enemynear,stateno=[13200,13201] ;Heart Flower
var(8)=20

