============================================================

DATA:
Name: Blade/Jihand
Game: Red Earth/Warzard
Author: Doggiedoo
Version: 1.03h

============================================================

USAGE NOTES:

See Config.txt for options. You can toggle custom or
original gameplay, various superarmour settings, and
specify enemies who should not be guard crushed, and other
options.

See the [Size] section of Blade.cns to adjust his
scale. If all goes well, this should not cause
any misalignment problems.

Blade has no crouch animation, but is still considered
crouching under the usual conditions.

============================================================

CONTROLS:

Movement:

	f,f = foward hop
	b,b = backward hop

	hi-jump = d, ub/u/uf

	a+b while falling = air recovery

Regulars:

	a = Alukutos
	 -Uppercut-slash with Adrayer

	b = Ales
	 -Horizontal swipe
	 -In close, will not knock down, and leave Blade at
	  a disadvantage even on hit

	  Custom Mode Changes:
	  -faster and deals more damage at range

	c = Poros
	 -Extend Adrayer horizontally across screen
	 -Long range and multiple hits, but can be ducked by
	  many characters.

	z = Throw
	 -hold back to throw backwards
	 -longer range, but slower recovery than most
	  standard throws

	d + a/b/c = Slide

	*NOTE: Hold the above commands while getting up to
	 perform the above moves as soon as possible, e.g.
	 hold 'a' to uppercut as soon as your standing, or
	 hold down and b to slide.

	jump a/b/c = Alukutos (air)


Specials:

	d,df,f, a/b/c = Pushokuron Purokus
	  -Fires a dragon-faced projectile across the screen
	  -Able to strike with 1 of 5 different elemental
	   effects, depending on which direction is held as
	   the projectile is released:

		-Fire: hold forward
		-Thunder: hold down-forward
		-Petrification: hold down
		-Poison: hold down-back
		-Ice: hold back

		-Random: don't hold anything

	  Custom Mode Changes:
	  -a is faster and weaker, c is slower and stronger
	  -only c version guard crushes

	d,db,b, a/b/c = Selene
	 -Vertical slash with trailing energy field
	 -slow startup, but multiple hits and great damage if
	  it fully connects

	  Custom Mode Changes:
	  -b and c versions move forward

Supers:
	*NOTE: He has hyper armour during all supers, and
	 while he can be damaged, he cannot be killed during
	 them.

	d,df,f + 2 of a/b/c = Trance
	 -Great damage if it hits and the cannot be negated
	  by other projectiles, but slow and can be crouched
	  under by most.

	d,db,b + 2 of a/b/c = Katoputoron
	 -Drains Blade's health.
	 -Damage on this move varies greatly with enemy
	  position, size and shape. Experiment to see which
	  enemies this works best on, and under what
	  circumstances.

============================================================

VERSION HISTORY:

-1.03h:
	-Landing noise plays when landing from air-guard.

-1.03g:
	-Fixed sliding on landing while air guarding.

-1.03f:
	-Various hitvel adjustments.
	-Some AI tweaks and minor cosmetic fixes.
	-Can now walk and jump from "crouching".

-1.03e:
	-Fixed enemy appearance during Trance.
	-Tweaked grab positioning in corner.

-1.03d:
	-Increased grab range a bit.
	-Minor hyper armour fix for projectile-based throws.

-1.03c:
	-Fixed Pushokuron Purokus guard crush glitch.

-1.03b:
	-Fixed attack behaviour against certain
	 reversals/parries.
	-Fixed high jump trigger.
	-Fixed hit up anim, fall sound, and other cosmetic
	 issues.

-1.03:
	-AI tweaks and bugfixes.
	-Fixed Pushokuron Purokus' element selection.
	-Plain Trance background replaced with an animated
	 one. Again, see config.txt for details. The custom
	 background is now the default, assuming most
	 players want to fight blade on his own stage.
	-Warzard Intro setting added, for use with an edit
	 of La Miss Fairy's 'Darminor Outside' stage. See
	 'extras\sextras readme.txt' for details.
-1.02:
	-Switched to Winane AI activation.
	-Fixed activating opponent's AI.
	-Made his throw available in non-custom mode.
	-Tweaks to his armour-split super in custom mode.
	-Tweaks to guard crush system.
	-Added his walking back anim.
	-Minor cosmetic tweaks.
	-Trance background setting added, for replacing the
	 Darminor background with a simple black one. See
	 config.txt for details.
-1.01:
	-Fixed (hopefully) accidentally activating other
	 characters' AIs.
	-Fixed a hyper armour issue during supers.
	-Added proper dizzy anim.
	-Added Japanese win quote.
-1.00:
	-Attempted fix for Trance in Winmugen Plus stopping
	 horizontal movement indefinately. Note that there
	 is another bug that I don't know how to fix yet,
	 but it can be avoided if players are aware of it.
	 See Trance description for details.
	-Sprites colour seperated.
	-AI aggression setting added.
	-Fixed bug with Pushokuron Purokus and Selene and
	 double button presses.
-0.95:
	-Fixed some bugs with the AI in Original mode.
	-Added optional hitsparks, see config.txt for
	 toggle.
	-Added elemental effects to Dragonfire/
	 Pushokuron Purokus, see movelist for details.
	-Added original intro.
	-Added final ko anim.
	-Using official move names.
	-Minor anim and sound fixes.
-0.92:
	-Added basic throw, available in custom mode.
	-Fixed no pushback when blocking high.
	-Fixed Dragonfire being un-negatable. Will last
	 until total hits delivered/received reaches 3.
	-Adjusted hitvels on uppercut, swing, and slide.
	-Fixed glitched airguard anim.
	-Added 6th palette.
	-Added occasional taunt sound while guarding.
-0.91:
	-Desolate now crouch-blockable.
	-Desolate damage toned down... does less damage
	 overall, especially at a distance, but should have 
	 less chance of dealing obscene damage to certain
	 characters such as Drownin's HnK characters and
	 GM's Hugo. Please note that it's damage varies quite
	 a lot, depending on enemy position, size, and
	 shape.
	-Super Armour only works during attacks now (Full.
	 Resistance remains unchanged)
	-Super Armour default recovery time set to 40 ticks
	 to compensate.
	-Fixed gem not showing during winpose.
	-Tweaked palettes 2 and 4, added 5th one.
	-Minor cosmetic tweaks.
-0.9b: 
	-Fixed unintended hyper-armour during air recovery.
	-Changed air recovery command.

-0.9a: 
	-Fixed shadow during Soul Sunder being hittable.
-0.9:
	-First public release.

============================================================

TO-DO LIST:
-Intro/ending storyboards
-Bug fixes/tweaks

============================================================

CREDITS:
-[E] for mame builds for ripping sprites
-Kensuke for testing, advice and ideas
-Sorrowedge for super armour code
-Winane for XOR AI activation method
-Mugenguild for support and input
-Kung_Fu_Man and Ruben for hosting
-Phantom.Of.The.Server for open source code
-esreveR for intro sprites
-Snake for seperating colours on Adrayer and the rings

============================================================