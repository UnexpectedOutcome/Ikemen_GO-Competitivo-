============================================================

DATA:
Name: Lavia/Luan
Game: Red Earth/Warzard
Author: Doggiedoo
Version: 1.00b

============================================================

USAGE NOTES:

See Config.txt for options, which include:

Custom Gameplay Toggle
Warzard/Red Earth Hitsparks Toggle
Flying Altitude
Flying Statetype (see KNOWN ISSUES for more info)
AI Aggressiveness
Standard Walk Toggle
Guard Crush Strength
Guard Crush Exemptions
Music Volume Fix

See the [Size] section of lavia.cns to adjust her
scale. If all goes well, this should not cause
any misalignment problems.

Lavia has no crouch animation, but is still considered
crouching under the usual conditions.

============================================================

CONTROLS:

Movement:

	f,f: Run Forward

	b,b: Dash Backward

	z: Switch Altitude
	 -Switches betwen flying and standing.
	 -Short vulnerable period during recovery.
	 -When flying, Lavia can use all her standing
	  attacks except Kientenhou (d,df,f, x+y).

	c: Evade
	 -Short vulnerable period during recovery.

Regulars:

	a: Houensaisou
	 -Long range claw strike.

	b: Houkonsoukai
	 -Close range launcher, slow but damaging.

	x: Jyahoubu
	 -Quick, close range kick.
	 -Can evade some sweeping attacks.

	y: Soushiha
	 -Heavy knockdown kick.
	 -Can evade some sweeping attacks.

	d + a/b while jumping/flying: Air Stomp
	 -Custom mode only.
	 -Fall straight down and stomp the ground.
	 -Causes a small shockwave that must be blocked low.
	 -If done from sufficient height, deals bonus damage
	  and juggles.

Specials:

	d,db,b, x/y: Shinjyougokou *
	 -Summons six feathers that fly at an angle.
	 -Button pressed determines attack angle.
	 -High chip damage, if many feathers connect.
	 -Can be spammed, i.e. repeated while feathers are
	  still on screen.

	f,d,df, x/y: Tenshiouzahou *
	 -Spinning uppercut, deals up to 3 hits.
	 -Very fast, with invulnerable startup.
	 -Can juggle opponents.
	 -Tends to miss standing opponents unless at
	  point-blank range.
	 -In custom mode, button pressed determines height
	  and forward velocity.
	 -No recovery time after landing.

	d,df,f, x/y: Mamestusenshiou *
	 -Slow, high damage laser beam.
	 -Hits twice if it connects deep.
	 -Negates other projectiles.
	 -In custom mode, button pressed determines beam
	  angle.
	 -Larger angle if executed while airborne.

	d,db,b, a: Yokurestujyusou **
	 -Fly into position, then dive-kick.
	 -Cannot be crouch-blocked.
	 -Hold z upon landing to cancel into Switch
	  Altitude back to flying.
	 -Hold a upon landing to followup with a pounce
	  attack.

	d,db,b, b: Kakurestudako **
	 -Fly straight up, then dive and grab with feet.
	 -Avoidable by crouching.
	 -When done at the right distance from the enemy,
	  startup looks identical to Yokurestujyusou.
	 -If Lavia misses, she will return to a flying
	  position.

	d,df,f a/b: Sanyokuran *
	 -Flap wings to push enemy back.
	 -Harmless, but can build a bit of power.

	* = can be done while jumping in custom mode.
	** = can be done when jumping high in the air in
	     custom mode, either at the peak of a jump from
	     the ground or halfway up a jump from flying.

Super:

	d,df,f, x+y: Kientenhou
	 -Lavia is covered in flame, then flies forward
	  dealing damage and juggling her enemy.
	 -Hold x+y to increase damage, collision size, and
	  priority.
	 -After charging, hold up to fly at an angle instead
	  of straight forwards.
	 -Guard crushes most standing opponents, and may
	  continue to juggle them afterwards.
	 -Invulnerable as she curls up and spins, but
	  not when rising into the air.
	 -Also vulnerable when flying forwards, but in
	  custom mode she can only be hit by other supers.
	 -Moderate startup time.

============================================================

KNOWN ISSUES:

In order to get her to fly in Mugen like she does in
Warzard, some tricks had to be pulled regarding her
Statetype. This may cause problems with some attacks that
are only supposed to hit jumping or standing opponents (e.g.
SF3 Alex's anti-air knee, or some standard throws). The
"Flying Statetype" setting is eliminates these problems, but
any hit will knock her out of the air if it is on. Note that
it was sometimes possible in Warzard to use standing grabs
on her while flying, so I guess the current system is not
that far off from what she originally had. :P

The trunk of the beam during Mamestusenshiou (d,df,f + x/y)
is sometimes a pixel off. Haven't figured out how to solve
this yet, but it's only a cosmetic issue.

============================================================

TIPS:

She is strongest at long range, and can counter attack
with her uppercut if you get too close. Medium range pokes
will stop most of her attacks.

If she is almost above you, be prepared to block low if
custom mode is on, due to her stomp attack.

Her super does a lot of block damage. Try jumping over her
if your character is able to, or else jump backwards and air
guard to minimise damage.

You can bait her uppercut by keeping a close distance while
blocking, though her other attacks may guard crush you if
you keep it up too long.

============================================================

VERSION HISTORY:

-1.00b:
	-Fixed sliding on landing while air guarding.

-1.00a:
	-Corrected command list.
	-Made Tenshiouzahou command higher priority.

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

============================================================