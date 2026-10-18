                            __________________________________________
===========================| Roa by varo_hades		              |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        [29.10.16]
                                                                              [18.12.17] - BahamianKing100(Edited)
 - Contact: varo_hades@hotmail.com
 - Website: https://varohades.wixsite.com/varohadesmugen
 - Customized version of Type-Moon and French-Bread's Roa character, for MUGEN 1.0

=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including Melty Blood

=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p - two punches       2k - two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.

<NORMAL>

.Edge					D + z			(Air)
.Electrocute:	         		F/B + 2p		(near opponent)
.Electrocute:				F/B + 2k		(near opponent)
.Air Electrocute:			F/B + 2p		(Air, near opponent)
.Gremlin Tacts				F + y then b 		(After any normal attack)

<SPECIAL>

.Flash Spark (EX)			D ,DF, F, p
.Rising Shock (EX)			F ,D, DF, p
.Lightning Trap (Air) (EX)		D ,DB, B, p		
.Static Slash (EX)			D ,DF, F, k
.Lightning Rod (EX)			D ,DB, B, k
.Blink Shock (EX)			B ,D, F, k
.Thunder Cloud (EX)			D ,DF, F, p		(Air only)
.Surprise Roar (EX)			F ,D, B, p
.Ray Trap (EX)			        D ,DB, B, p

<SUPER>

.Illuminative Sparks (MAX):		D, DF, F, D, DF, F, p
.Storm Cloud (MAX):			D, DF, F, D, DF, F, p	(Air only)
.Slice 'n Dice (MAX):			D, DF, F, D, DF, F, k
.Lightning Storm (MAX):			D, DB, B, D, DB, B, p
.Lightning Barrage (MAX):		D, DB, B, D, DB, B, k
.Millennium Clap (MAX):			D, DB, B, D, DF, F, p   (Unblockable)

<Lv3 SUPER>

.Serpent's Overload:                	F,$D,B,F,$D,B, mp+mk

<SYSTEM>

.Forward Dash:                  	F, F
.Run:                        	        hold
.Backward Dash:                 	B, B
.Low Jump:                      	tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	a + x
.Sidestep Attack:            	        p / k
.Forward Roll:                  	F + a + x
.Backward Roll:                 	B + a + x
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold b + y
.Zero Counter:                  	B, DB, D, p / k 	(during standing or crouching guard)
.Special Move Zero Counter:             F + b + y 	        (during standing or crouching guard)
.Custom Combo:                  	c + z           	(Air also)
.Ground Recovery:                 	a + x      	        (while falling and allowed)
.Air Recovery:                 	        a + x      	        (while falling and allowed) - need 2 power stock

=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start

=====<Miscellaneous>=====

- To change his size to TV aspect ratio (a.k.a. CvS scale), open the .def file and replace
  "ConstantsSFZ.cns" with "ConstantsCvS.cns".

=====<Version History>=====

<29/10/16>
 - First release

=====<Special Thanks>=====
 - Rajaa for sprites, effects, code, anims
 - P.o.t.S. for code, effects, hitsparks, formatting style
 - Hades for hyper fonts and hyper portrait
 - Everybody at the MUGEN Fighters Guild for feedback
 - The MUGEN Fighters Guild for providing hosting

=====<Disclaimer>=====

 - Roa character is property of Type-Moon and French-Bread
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes

=====<Things That Was Edited And Added To Roa>===== ;NOTE THESE ARE THINGS I ALWAYS DO WHEN I EDIT AND FIX UP A POTS STYLE CHAR 

- Fix velocity in movements properly (all basic movements)
 
- Added special move zero counter (i also added this to the A.I codes to)
 
- Increase time for custom combo to stay on and lil more invincibility on start up more like the real games (sfa3 and cvs2)    
 
- Added stopsnd code on intros and taunt voices and effects (just like in real games)
 
- Fix all combos properly and accurate (super cancels and max cancels)

- Added voice on back dash
 
- Fix and tweak alot of animations. especially the animations from 5000 to 5210. fix and tweak all normal, special and super animations. also fix and tweak hit and hurt boxes
 
- Fix all hitdefs on normal, special, and supers properly and more accurate. all damage fix on everything more accurate, the way the chars fall and recover out the air from an attack (everything) even added codes to hitdefs for better custom combo juggling
 
- Fix startup invinciblity on some special moves and supers

- Added more sounds to the supers. they each have there own super sound effect (use those sounds from mr.infinite's pots style chars)

- Added air block to certain special moves (special moves projectiles can always be air blocked)

- Increase damage on throws and fix velocities more accurate on throws 
 
- Increase juggling points on normals, special and supers more accurate (i only tweak this if needed for lil more juggle comboing)
 
- Increase the velset on the throw escape to be more accurate like in cvs2 (when they break throw they get push back lil more furthur)
 
- Tweak hitdefs in helpers CNS as well
 
- Fix and tweak A.I lil bit

- Added dreamcancel code to a.i (a.i could now go to level 2 super from a level 1 super)

- Added 2 power stock to be able to air recover (you can get out of juggle combos once you have 2 power)
