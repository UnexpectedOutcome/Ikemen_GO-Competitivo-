
===================================<Profile>=========================================
Name: Erika Miyazato
From: BIGBANG BEAT Revolve ver.1.06
Author: Songfu
Last Update: 2013.5.1  Ver.1.03

-----------------------------------<Command>-----------------------------------------
[Normal Behavior]
Light Attack			A
Medium Attack			B
Hard Attack			C
Throwing			AB(Y) / 4+AB(Y)
Get Away from Throwing		AB(Y)
Air Recovery			4orNor6 + AorBorC
High Jump			2(short)+7or8or9
Front(Back) Step		66 / 44
Air Dush			66 / 44
Just Guard			guard just before enemy's attack (increase knock back and gauge)

B Steal				BC(Z)
B Counter			6+BC(Z) (in guard) (1 Gauge)
B Escape			6or4+ABC(YCorAZorYZ) (on hit) (3 Gauge)
B Burst				ABC(YCorAZorYZ) (on hit) (3 Gauge)
BIGBANG MODE			ABC(YCorAZorYZ) (3 Gauge)

[Particular Attack]
Easy target!			6+A
Take that!			6+B

[Special Attack]
Come on! Saki!			214+A
Come on! Shoko!			214+B
My Turn!			214+C
Tight Chain			41236+AorB
	-Throw			4+C (on Tight Chain hitting)
Cyclone Chain			63214+C
Spiral Chain			623+AorBorC (also in the air)

[B-POWER ARTS](1 Gauge)
Rumble Chain			63214+X
Spiral Chain EX	(Original)	623+X (also in the air)

[BIGBANG BREAK](in BIGBANG MODE)
Miyazato Gundan gathers		41236+ABC(YCorAZorYZ)

-----------------------------------<Set Up>-----------------------------------------
All Settings can be done in "Config.txt" or "Config.1.0.txt" for MUGEN1.0.
If you use MUGEN1.0, register "1.0.def".

A1.Gauge Display	   : 1:Display, 0:Non, [Default:1], and also can change the position.
A2.Damage Counter	   : Same as above.
A3.Proration Display       : 1:Display, 0:Non, [Default:1]
A4.Limit Effects	   : 0-light->3, [Default:0(unlimited)]
A5.B Stone Display	   : 0: no display, 1: Getting Effect Only, 2: display, [Default:2]
A6.Enemy's B Stone	   : refer the following.
A7.Voice		   : 0:DaiBanChou-BigBangAge(not completed), 1:BBBR, 2:Hybrid, [Default:2]

A8.Command buffer time     : [Default:3F]
A9.Invalidate commands "A+B" and "B+C" : can use only "Y" and "Z". 1: invalidate, 0: don't, [Default:0]
A10.The time Saki&Shoko    : 0:original game type, 1:half of the Time, 2:till out of screen, 3:unlimited, [Default:0]
	     cannot appear :   , also can change the time in BIGBANG MODE.

--------------------------------<A6.Enemy's B Stone>---------------------------------------
This enables the enemy gets power soon.

1.Input the name and the authorname in "Config.txt" or "Config1.0.txt".

<example>
;<<OPTION-A6: BƒXƒg[ƒ“‘Î‰ž>>
[state a, B Stone]
type = VarSet
var(36) = 10
triggerall = numenemy
trigger1 = enemy,authorname = "Songfu"
trigger2 = enemy,name = "nameA"		;not displayname
trigger2 = enemy,authorname = "authorA"
trigger3 = enemy,name = "nameB"
trigger3 = enemy,authorname = "authorB"
...

2.Add the following under "[StateDef -2]" of the opponent.

[State -2, B Stone]
type = PowerAdd
triggerall = numenemy
triggerall = enemy,authorname = "Songfu"
triggerall = enemy,var(36)/10%10 = 1
triggerall = enemy,var(34)/10000 > 0
trigger1 = !numpartner
trigger2 = numpartner
trigger2 = ID < partner,ID
value = 10*(enemy,var(34)/10000)

[State -2, B Stone]
type = PowerAdd
triggerall = numenemy = 2
triggerall = enemy(1),authorname = "Songfu"
triggerall = enemy(1),var(36)/10%10 = 1
triggerall = enemy(1),var(34)/10000 > 0
trigger1 = !numpartner
trigger2 = numpartner
trigger2 = ID < partner,ID
value = 10*(enemy(1),var(34)/10000)

----------------------------------<Test Mode>---------------------------------------
Push Start in B Steal, Test Mode begins.
	Auto Air Fall Recovery -> +Auto Guard -> Normal
In Auto Guard Mode, cannot play well. please use as sandbag.
Big Bang Mode can be finished by pushing start.

---------------------------------<Main Update>---------------------------------------
2013.05.01  after the normal jumping attacks, can't do air jump and air dush.
	    fatal bug fixes : just guard, high jump, hit and so on.
	    can be canceled on "time = 0" in the states, 0, 50, 52, 101, 241.
	    add cancel : JH > JM
	    My Turn! : can't guard in crouching.
	    JLM Spiral Chain : change to the same behavior. can guard in the air. recover from falling earlier.
	    Spiral Chain EX : cancel from only L and JLM Spiral Chain. NotHitBy all. damage up.
	    Config : add "Enemy's B Stone".
	    Big Bang Mode can be finished by pushing start in test mode.
	    etc...

2012.10.08  change commands : Throw>Y, B Steal>Z
	    can guard in Air Dush.
	    add settings, "Command buffer time" and "Invalidate commands "A+B" and "B+C"".
	    NotHitBy(Throwing) :3F after guard, hit and get up.
	    Bug fixes : auto guard, B stone, and so on.
	    add the proration for BBB characters.
	    add colors. (thanks to kagetsu yuki)
	    etc...

2012.09.04  about cancels.
		: almost cancel timing -1F
		: change the cancel conditions ,BIGBANG MODE, Air Dush
		: improve the command controls.
	    NotHitBy :the first half of BackStep
	    etc...

2012.08.23  Open to the public.

-----------------------------------<Comment>-----------------------------------------
 Because I don't know English so much, please tell me if you can't understand the descriptions.
And write at BBS if you want to know something. Thank you for playing.


=====================================================================================

