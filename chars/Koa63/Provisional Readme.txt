Clone Koakuma (Koakuma Korakura), 06-06-2014 B I R T H D A Y     R E L E A S E ! ! !
Version 1.6
By Daniel9999999

What I still need:

	A better AI.
	A voice. Can someone of you guys help me with a voice over and rip it, pls?

This Update:

Update:

	Indicators fade away if not needed.
	Changed "P2Stateno" TargetState's triggers.
	New move - "Clawing Down my Skin"!
	New command normal - "Mind Breaker"
	2 New follow up Super Attacks!
	New effects!
	New sounds!
	Reimplemented the Killer Instinct-esque combo system used in Clayfighter 63 1/3 with a slight twist.
	Fixed >99 Lives Bug
	Fixed the Glitch Balloons so they don't get the life count under 0.
	New Super Attack - "Better Off Dead"!
	Tweaked some move hitboxes, given range to normals, altered some move properties.
	Combo Must be finished before a fatality attempt can be done.
	New Damage Dampener based on BlazBlue
	Fuck you.
	New "Command Taunt".
	Few things and facelifts I forgot.
	Parry Added!!

Previous Updates:

	Three Claytalities Added.
	Score goes up to 999999.
	KONG letters stay within arcade matches.
	Taunt can spawn any item. Be careful.
	Blunt Object is to be guarded at any stance during its fall.
	Minor Graphical Tweaks.
	Slowed down power gain by a bit.
	New Palettes by Ricepigeon.
	Added KONG letters.
	Ease to guard Lightning Lookout, Guard Hittimes fixed, More damage.
	Cosmetic things here and there
	Added facep2=1 to most attacks.
	A ton of basics have been given more hittime to them and some even have less startup as well, fixing 1 tick cancels of doom.
	Added Motion+Button Release commands to specials and supers, making them easier to do. (Implemented Negative Edge)
	Standing Medium Punch is an antiair normal, having her head mostly invulnerable during startup and duration and being unblockable on air.
	Can combo BK to QCF+P now.
	Given more startup on air normals.
	Back-step is MUCH faster and can be used quickly - As well as land cancelled to itself.
	Added a few new things to some attacks here and there.
	Allowed WK>FP>BK and WP>FK>BP
	Given her a new super.
	Can't cross up from moving to the corner.
	New Material!
	12P mode.

	KNOWN ISSUES:
		-Debug Errors on Item grab/Foe Heave; Too lazy to fix those, and the expressions I put in there are nightmarish in parenthesis abundancy.
	
	A little slope with the AI detection... Durr, sorry.
	Decided to get rid of the "KI" system, everything else in the character such as the insane combo stays though.
	Projectile is less safe the farther you throw it.
	Weak Aerial Aura is not safe anymore.
	Added a provisional AI.
	Cropped All Sprite Work.
	Added Super Portraits.
	Some Velocities Changed.
	Changed a few frame advantages here and there, mainly for her normal and strong moves. As well as her aerial moves.
	Some special moves are slightly quicker in execution.
	Added a bit more of initial velocity displacement on Continum Charge.
	Added a tiny bit of more physical priority to some moves. Mainly trying to do similar hitboxes on some moves to her other counterparts with similar attacks.
	Added victory port (9000,2) by yours truly
	Fixed Air vels and juggling regarding Triple Aura.
	Moved Insane Combo's command detection lower than all the other super moves.
	Bug Fix (Can't believe NOONE saw it)

This is my personal arrangement of som's Koakuma, loosely based on a character my friend and I "made up" after seeing some pictures with Koa duplicated.
As cloning is an ability of succubi, we didn't worry about it making sense.

What Clone Koa (to be refered as C. Koa from now on) is supposed to be is a Clone of the original Koakuma to help assist Patchouli for the Scarlet Devil Mansion,
however, this Koakuma aside being a narcissistic, prankster and perverted girl (NO, REALLY!?), ended up with a bunch of good qualities, such as being loyal, happy and easy going, amongst others.
C. Koa won't resist to bend logic if she wants to, but her limited powers don't allow her much. The biggest question now is who the fuck is the original Koa?

Thanks to spells from her master, she is able to manipulate lightning, kinetically charge objects and claw with razor sharp nails. She's in a FAR disadvantage to
her common ones though, as they can use various spells and magic bullets to dispatch their enemies, unlike C. Koa, who has to fight close range.

Some of her natural abilities are good use of clumsiness, high air movement, floatyness from her wings, and damaging lips that, whoever shall be kissed by them can be
stunned at her will and sometimes, it will not be something of her control. She also owns several pets called FOEs, Noone knows why, she just says they are cute fluffy
things... But thanks to kinetic charge C. Koa possesses... That'd be another story!




Personally, I practically made C. Koa into a second Daniel if you will, as you may notice some of her abilities match the ones Daniel has... well mostly being able
to use objects from random places to Dan's advantage, however, with C. Koa, most of these ideas were easier to implement, and without such a juggler type of gameplay
that, and she's not trying to be funny but rather fight back with what she has at hand. I implemented ideas from DKC2 into MUGEN as well due to boredom, I must say
they may serve no purpose most of the time, but it adds a different touch to the battle ;) She's also the first character I use Bitwise operators in as well.

Alas, here's how you use her movements, remember she is a 6 button character and she does use the start button!

Each special attack has at least three versions: Wobbly (Weak), Fair (Medium) and Brutal (Strong)

a = Wobbly Kick; b = Fair Kick; c = Brutal Kick
x = Wobbly Punch; y = Fair Punch; z = Brutal Punch

s = Start (Taunt), Releases one star/KONG letter/Balloon.

Comboing:

	Standing:
		WK and WP are jabs, you can continuously attack your opponent with them until they get pushed back.
		WK and WP are interchangable: WP > WK > WP as much as the opponent gets pushed back.
		Besides WK and WP, the punches and kicks are interchageable in the following way: WK>FP>BK and WP>FK>BP
		Regardless if it's a kick or a punch, it can be hit-cancelled to other special moves.
		MP is an anti-air normal.
	Crouching:
		Same Rules as Standing.
		FP slams airbone opponents down for a bounce, a good follow up to this can be any Swerving Sword.
		BP and BK are knock-downs.
	Aerial:
		There's no air comboing except for knock-up, which then has a chance to use one air attack on the opponent.
		BP knocks down airbone opponents.

Command Specials:

Hold Down-Back, then BK: Knock-up, can be juggled (limitedly) by air attacks.

Hold Down, then BP (in air): Mind Breaker: Koakuma pulls out an axe from hyperspace and swings it with all her might, inflicts groundbounce and
	can be move cancelled if hitconfirmed upon landing, reccommended to use Devilish-Dash after this to start a combo sequence

Hold Forward or Backward, then Start: Spankety Spankety: If Koa is hit with any normal attack while she's hitting her bum, she will counterattack,
	deals no damage, but it's good for item-gain and a silly way of getting opponents off your front.

Tap Forward before getting hit (air OK): High Parry.

Tap Down before getting hit: Low Parry.

Specials:
	Devilish-Dash: Charge Back, Forward, Kick
		-Remember, this is your opener move.
	Aerial Aura: Down, Down-back, Back, Kick
	Blunt Object: Down, Down-Forward, Forward, Punch <(Releases Prize)
	Swerving Sword: Down, Down-Back, Back, Punch
	Clawing Down my Skin: Forward, Down, Down-Forward, Kick

So I like, wanna do Killer Instinct like Combos:

	Openers:
		Any aerial attack, Devilish-Dash (You must quickly cancel the first part of the move).
	Linkers:
		Forward, Down, Back, Kick
		Forward, Down, Back, Punch
	Ender:
		Down, Down-Forward, Forward, Any Button minus Start
	Combo Breaker:
		? ? ?, Punch+Kick of equal Strength (*)

	How do you do this? Simple, start with an opener attack, if the attack is successful, when you land, or when you can cancel your opener, simply
	press a button of lesser strength than the one you did the opener attack with (unless it's WP/WK, which in case you need to press BP/BK), this will be called
	an auto-double button, now you must do a linker motion with the button of the same strength as you did for the auto-double, if correctly pressed after all hits
	of the auto-double, the linker will play, after all hits of the linker have been dealt, press the auto-double button for the one of lesser strength (unless it's
	WP/WK, which has the same loop back as the opener). You can use up to 3 Linkers. If desired, you can do the combo ender motion, which will end your combo
	right there at any time with a final string of 5 hits.

	(*) So I've been like, caught in a combo, what do?
		Simple, if you're not to be killed, input the combo breaker motion with both kick and punch of the same strength as the LAST AUTO-DOUBLE that's been done.
	if done correctly, a fairy from heavens.. well not really, will fall in and allow you to break out of the combo by hitting Koakuma herself. This also affects
	other teammates and does a considerable ammount of damage. You're only entitled to do this during the AUTO-DOUBLE AND LINKER PHASES, and you MUST guess
	(or know) which autocombo corresponds to each button. Keep in mind, you can only do this if the linker has been done 0, 1 or 2 times.

You can cancel any Auto-Combo, Linker, or Ender into any special move except for Devilish-Dash or Super Move (minus live-alive).
	

Supers:

	1 bar:
		Triple Aura: Two Times Down, Down-Back, Back then any Kick
		Continum Charge: Two Times Down, Down-Back, Back then any Punch
			-> Tsunami Splasher: Do the Lightning Look-Out motion before the final hit with 1 extra bar
		Lightning Look-out: Two Times Down, Down-Forward, Forward then any Punch
		(Your life>Your Opponent's life; Opponent's life <= 150, During a combo) INSANE COMBO: Down, Down, any Button.
			-Deals an insane amount of hits, to be used as a finisher move.
			-Cannot be comboed from Wobbly Punch/Kick, This is because it'd be pathetically easy.
		Better Off Dead!: Forward, Back, Down, Forward, any kick
			-If lives are positive, You'll respawn at the middle of the stage, however, if the move successfully got blocked, you'll be staggered as you hit ground.
			-If lives are not-positive, you'll die as soon as you respawn, dead or not, however, the move does much more additional damage.

	2 bars:
		Foe Heave: Two Times Down, Down-Forward, Forward then any Kick
			-Koa will stand still until ALL FOES are gone from the screen.
				-> Slammy Flanny: Do the Lightning Look-Out motion just before she tosses the Last FOE with 1 extra bar
		Eternal Heart Failure: Forward, Down, Back, Forward, any punch
			-Grab can be blocked.

	3 bars, life must be less than 800, must have one life on possesion:
		Live-Alive: Down, Down-forward, Forward, Start
			-Regains 200 HP.

Claytalities:
	Once you hear a quote with horrible quality that says "STOP, IN THE NAME OF ALL THAT WHICH DOES NOT SUCK!", you know it's Claytality time, once the opponent is dizzy, do any of these commands
in the required distance:

	Any Distance:
		D, D, D, B, BP
	Close:
		B, F, D, D, WK
		D, D, D, U, FP

10 stars grants you one life.

Any combo greater than 15 hits gives you a bonus.

Taunt your opponent for extra stars, and the ocassional KONG letter.

You lose one life if you lose a battle.

Win more items by blowing up Barrels and Chests.

Don't ask why the book blows up.

Life balloons are worth:
	Red = 1 Life
	Green = 2 Lives
	Blue = 3 Lives
	Glitched Yellow = -1 Lives

All four KONG letters are an extra life.

DKC2 and DKC3 sprites ripped by Michael Peterson, Ant19831983, A. J. Nitro, Deathbringer and Tonberry2k.


What could be next:

	There's a ton of things missing here and there.

Special thanks to:
	Said people who ripped the DKC2/3 sprites.
	Som, for the original Koa.
	ZUN for making Touhou.
	Rare for making an awesome SNES trilogy and my childhood, took sounds and sprites from it. That, and Killer Instinct.
	Interclay, AHAHAHAHA GET IT HAHAHA INTERPLAY MORE LIKE INTERCL-... for Clayfighter. >_>"
	Basara-kun for the Clayfighter sounds, the Claytality graphic and support.
	Some Guy for helping me rip the announcer messages, he gave me a palette too.
	Namco for some sounds and the number font I took from Pac-Man World.
	Elecbyte for making MUGEN.
	Nintendo.
	Yukidaruma, some effects from the Azumanga Daioh fighter game here and there.
	0=Saft, for the Flandre sprites and the effects seen in his DualKoa.
	Zemilia/Tenryuu, for supporting the idea and indirectly making the C. Koa character, also the palette and some feedback.
	Yamu, for the original Koakuma design used for me to draw the portraits.
	POTS for a few code snippets for prevention of Underground Juggles and whatnot
	Ricepigeon for some useful feedback regarding frame advantages. Which I hope I could use for updating past creations. Also for the winquotes and three new palettes!
		and his tutoring in MUGEN characters. Not only that, but he also helped on to making the comboing easier.
	Me, for... idk, doing something I guess. *lectures self for releasing over 5 updates over a week*
	C.A.N for some feedback here and there and for being a good friend.
	TheAerialRave for Palettes.
	Kasenfanboy24000 for some interesting things that happen in the 12 palette... Which turns out are not compatible to 1.0
	KirbyM For walfas, which introduced me to Touhou and created the flash that I used for this character... :P
	Tableros for the Predator Wolf char I took the sprites of.
	Dateline NBC for a jingle I used.
	And everyone else I forgot to mention.

Shoutouts:
	Xenomic, LucyTheFaf, Some Guy, The Magic Toaster, Ryoucchi, Kung Pow (PUPUPLATTER), Bornimen, My Dick, Tenryuu (cheer up dude).

Fuck you to:

	Inflation Fetishists.
	Sicknesses.
	Patchouli Knowledge

Have fun!