============================================================

DATA:
Name: Hauzer
Game: Red Earth/Warzard
Author: Doggiedoo
Version: 1.01b

============================================================

USAGE NOTES:

See Config.txt for options, which include:

Custom Gameplay Toggle
Warzard/Red Earth Hitsparks Toggle
Guarding Disabled/Enabled
AI Aggressiveness
Custom FX Toggle
Guard Crush Strength
Guard Crush Exemptions
Music Volume Fix

See the [Size] section of hauzer.cns to adjust his
scale. If all goes well, this should not cause
any misalignment problems.

Hauzer has no crouch animation, but is still considered
crouching under the usual conditions. He does not have any
jump attacks; in Warzard, he had no standard jump at all.

Hauzer has super armour that can resist several light hits
or one heavy attack. He also has very high defence. However,
he cannot block attacks by default.

============================================================

CONTROLS:

NOTE: Moves marked with '*' allow you to execute a follow-up
grab by hitting a/b/c during their attack frames. Grab may
miss if the opponent is too far away, even if the move hits.
Follow-up grabs can catch guard-crushed opponents.

Movement:

	f,f: Run Forward

	b,b: Run Backward

Regulars:

	a: Horn Quake
	 -Launch with horn.
	 -Misses short/crouching characters.

	b: Tempest Strike *
	 -Bite with follow-up grab.

	c: Collapse Hammer
	 -High priority, long range tail swipe.

	x: Fire Blast
	 -Quick, short-range projectile.
	 -Custom Mode only.

	y: Fire Stream
	 -Multihit short-range projectile.
	 -Cannot be crouch-blocked.
	 -Custom Mode only.

	z: Bite and Toss
	 -Standard throw, long range due to Hauzer's size.
	 -Custom Mode only.

	hold d, a/b/c: Tempest Slide *
	 -Low sliding attack.
	 -Button pressed determines range.
	 -Follow-up grab can OTG.
	 -Attack frames are near the start of the slide only.

Specials:

	d,df,f, a/b/c: Volcano Breath
	 -Launch a fireball that erupts into a pillar of fire.
	 -Both the fireball and the pillar launch.
	 -In Warzard-original mode, has very quick startup.
	 -High guard damage if both ball and pillar are
	  guarded.

	d,db,b, a/b/c: Danger Assault *
	 -Horn charge with follow-up grab.
	 -Button pressed determines damage, startup and range.
	 -Hold attack button to extend the charge, release and
	  tap to toss with horn.
	 -Up to 5 hits if guarded at close range, will guard
	  crush most characters if all 5 are guarded.

	f,d,df, a/b/c: Tempest Catch *
	 -Jump and bite with follow-up grab.
	 -Button pressed determines damage and height.
	 -Custom mode adds launching hit frames before jumping
	  and adds horizontal range.
	 -Can catch falling opponents, e.g. after the Danger
	  Assault follow-up toss.

	b,d,db, a/b/c: Tear Maker *
	 -Relatively quick claw attack with follow-up grab.
	 -Follow up is very damaging, but requires opponents
	  to be extra close.
	 -Damage, startup and recovery vary with button used
	  in Custom Mode.

Supers (1000 power each):

	d,df,f, ab/bc/cd: Gust Flame
	 -High damage beam-type attack, but very slow startup.
	 -Startup is faster in Custom Mode.

	d,db,b, ab/bc/cd: Earth Rage
	 -Temporary hyper armour and damage resistence.
	 -Duration increases slightly the lower Hauzer's
	  health is when activated.
	 -Immune to normal and special (but not hyper)
	  throws while hyper armour is active.

============================================================

KNOWN ISSUES:

Due to his size and shape, Hauzer will look strange during
certain grabs and custom-state attacks. Due to the limited
functions for handling a characters appearence under these
circumstances, this seems unavoidable outside of a full
game.

============================================================

VERSION HISTORY:

-1.01b:
	-Fixed Tear Maker animation glitch. Whoops. :P

-1.01:
	-Added a taunt.
	-Extended winpose (walks over before stepping on
	 enemy), alt winpose when original is not
	 appropriate.
	-Fixed minor miscalculation in followup grab range.
	-Fire sound fx now plays properly.
	-Super armour works properly during air recovery.
	-Landing noise and fx play when landing from air-
	 guard.

-1.00:
	-Initial release.

============================================================

TO-DO LIST:
-Bug fixes/tweaks

============================================================

CREDITS:
-Capcom for Warzard
-Kong for most of the sprites
-[E] for mame builds for ripping sprites
-Winane for XOR AI activation method
-Cybaster for beta testing
-Mugen Infantry for hosting

============================================================