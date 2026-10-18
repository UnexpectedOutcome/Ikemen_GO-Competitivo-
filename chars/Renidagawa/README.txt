--//Ren Idegawa\\--
Version: 1.08
Source: Big Bang Beat
Created by Jango, Updated by The_None

THE_NONE'S UPDATES:
-------------------
- He stocks now 4 powerlevels at most, because 5 was kinda too much.
- Inverted the control scheme
- Supercancels given
- You can now attack during an airdash
- Recoded the damage dampender once again, now kinda styled after Melty Blood's.
- Thrown stuff, as well as Pachiki/GO TO HELL now affected by the damage dampener
- Gave GO TO HELL two levels, depending on your timing
- Modified the way can/molotov/brick hitting works
- Thrown stuff can bounce off walls too
- QCF+Attacks can be cancellable into Tobe Ora
- Yaki Ire can be done on air now
- Gave him some Segalow-esque juggle limiting (basically, you can't juggle Crouching Hard Attack/Tobe Ora/Yaki Ire into itself before hitting with something else beforehand)
- Aerial raves now home towards the opponent
- Effects of the ehance now last between rounds
- Nigasu Ka Yo should look a bit better now
- B-Counter should be a bit easier to perform

- Implemented a juggle-weight system
- Gave him a bit more voices
- Realigned air basic attacks a bit
- Random tweaks here and there
- Five new moves


BACKGROUND:
-----------
BLUH BLUH BLUH REN IDAGAWA FIRST NORMAL-SIZED CHARACTER FOR ME BLUH BLUH

Anyway, after quite a few updates, it dawned on me that the overall quality of the character dropped significantly. While you might be thinking I could've just fixed it, I felt that there was way too much wrong with it to the point that I'd have to pretty much start over.

Enter The_None, a great coder and an even greater friend. He apparently liked my first foray into man-dom and offered to update the character. So I gave him the okay. I'm happy to say that he not only met but exceeded my expecations by fixing all the bugs, adding in the shit I wanted to add but didn't, and inserting some of his own personal touches.

So yeah I'm pretty happy with how it turned out. All of The_None's comments and added moves will be preceeded with a [TN].

STORY:
------
Ren Idagawa is Rouga Zanma's rival in Daibanchou: Big Bang Age and in Big Bang Beat. Both he and Rouga are striving for national conquest, and both of them have built up sizeable gangs. Ren's faction is a biker gang, and relies on geurilla tactics to maintain the upper hand. However, he does have a heart, as evidenced when he lept from his bike to rescue a cat that was going to get run over. He's also quite polite if he finds a worthy opponent.


GAMEPLAY:
---------
Ren has his movelist from Big Bang Beat mostly intact, but his system is anything but. I've done a lot of tweakings to his system, and while I kept a few BBB influences (enhance and air dash), all others have disappeared. Now, Ren isn't as focused on racking up combos (although it is implemented here to a lesser extent) as he is on being able to make split-second decisions to turn the tide of battle.

DISCLAIMER:
-----------
As always, you are free to use anything in this character. This time around, I got some major help from these people:

- The_None: Enhance after-image code, as well as the super BG code. Oh yeah and he pretty much took over as well, so heh.
- Kaihoku: Ren sprites and voices, as well as non-BBB sparks from Scarlet Weather Rhapsody
- Sion: Sparks from BBB
- Necromancer: former Super Jump code base (scrapped, being replaced with The_None's own method of Super Jump implementation)
- Elecbyte: Wall-hit code (hahaha, I know most people use Kung Fu Man as a base, I'm just mentioning it for politeness)

These contributors are all open source except for Sion. However, Sion says it's okay to use the sparks if you give credit.

BASIC CONTROLS:
---------------
Forward: Walk Forward
Backward: Walk Backward
Up: Jump
Down: Crouch
Up (while jumping): Double Jump
Tap Down, then Up: Super Jump (direction held determines forward/backward velocity)
Tap Forward Twice: Dash Forward (works in mid-air)
Tap Back Twice: Dash Backwards (works in mid-air)
X: Light Attack
Y: Mid Attack
Z: Strong Attack
C: Power Charge

SYSTEM:
-------
Start: Enhance (Only first three times have effect)

B-Counter: Press two attack buttons while guarding. If done right, Ren will counter the attack and knock the opponent far away. Requires 1 power level.

COMMAND MOVES:
---------
Light+Medium Attack: Standing Sweep
 - [TN] Originaly a placeholder before the Crouching Sweep, nonetheless I kept it as it can prove to be less predictable if used right.

Down+Forward+Heavy Attack: Crouching Sweep
 - [TN] Something Ren had definately missing, especially with his regular Crouching Hard Attack now potentially whiffing over a couple of crouching opponents.

Medium+Heavy Attack: Overhead kick
 - [TN] Pretty self-explanatory. Maybe except for the fact that it wires (non airborne opponents). Jump cancellable on hit/block.

SPECIALS:
---------
QCF+Attack
 - Ren throws something at his opponent, strength of attack determines what he throws. All of these can be hit with sword and also can be canceled into Tobe Ora (which kinda amounts to the same thing).
     - Light throws an empty soda can, doing little damage, but good for a stall tactic.
     - Medium throws a molotov cocktail. Only affects opponents after the projectile explodes.
     - Heavy throws a cement brick. Only affects opponents when it hits the ground (unless combined with Tobe Ora), but damage is great.

QCB+Light Attack: Feint
 - Ren dashes. Cannot hit the opponent but it behaves as an advancing guard. Use it to close the distance between you and your opponent.

QCB+Medium/Strong Attack: Yaki Ire
 - Ren dashes into the opponent, the strength of the attack determines the effect. Medium wires airborne opponents and is cancellable into Tobe Ora, Strong will always wire (and can be also charged with a held button if that's not enough). Both can be done in air and are supercancelable.

F,D,DF+Light Attack: Nigasu Ka Yo!
 - Ren swings his sword up. If it hits a jumping opponent, he will slam them into the ground.

F,D,DF+Med/Heavy: Tobe Ora!
 - Ren swings his sword to knock the opponent away. Heavy generates a short-range large projectile that hits, and will knock the opponent down.


SUPERS: (each requires 1 level of power)
-------
QCF+2 Attack: Odore
 - Ren throws three soda cans, two molotovs, and a brick all at the same time! That's totally awesome, right?!

HCB+2 Attack: Pachiki
 - Must be right next to the opponent. Grabs and headbutts the opponent. Does about as much damage as the brick throw. Low guardable.
   - To perform GO TO HELL!!, press C at the moment you see Ren flash yellow. If done successfully, Ren will pause and will shout something. Damage will be increased many times over, and will be further affected depending on how many times you used Ren's Enhance. Especially rewarding if your timing's perfect.

DD+2 Attack: Crit-A-Cola Install
 - [TN] Ren drinks a Crit-A-Cola, and receives a temporary boost in damage (but also a penalty in defense as well).

BIG BANG BREAK: (requires 2 levels of power)
-------
HCB+2 Attack: GO TO HEAVEN!!
 - [TN] Must be peformed right after GO TO HELL!!. Ren adds three molotovs to the slashing mix. WILL IT BLEND?

ASTRAL HEAT: (requires 3 levels of power, a won round, and the opponents health being lower than 35%)
-------
QCFx2+2 Attack: YOU DIE JOE
 - [TN] Ren throws something large and heavy that makes a hole on impact with a ground. Careful to not step into that hole yourself though.


Playing Tips:
-------------
- Although the Soda Can does very little damage, it's good for stalling, and possibly starting a combo. Also for humiliation KO's lol
- Need a long distance projectile? Hit the cans with your sword to turn it into a long-distance projectile. If you time it right, you can even hit two at a time!
- [TN] You can also try that with molotovs too.
- [TN] Be cautious that the opponent can hit the cans at you too. You can try to hit these back at the opponent again though.
- [TN] Use Enhance whenever you can. It may look like a taunt, but every successful use significantly powers up Ren's GO TO HELL!!. You can tell if it's effective if an after image appears during it. Oh, and it hits low too.
- [TN] Under certain circumstances (like after a succesful Tobe Ora), an Astral Heat can be good for securing your victory.
- [TN] It's not advised to do the Astral Heat if you're on the corner against the opponent.
- Watch the AI, it shows a lot of neat tricks you can do that aren't obvious at first.

Q&A:
----
Q: So are you, like, gay for Ren Idagawa?
A: No, he was just the most updated of my characters.

Q: When are you adding Roy mode?! Posessed Heita needs a rival!
A: I considered it at one point, but I decided against that. Why do something that someone else has already done? The sprite edits for the Blaze special are in there, however, so if you want to take a crack at it, be my guest.

Q: Hey there's this one guy that sprite edited a MB Ren Idagawa, why don't you use that?
A: First of all, I don't like how it was sprited. The proportions are wrong for BBB characters. Second, as evidenced by the palette, it's intended for 9's Ren, and while I would kick 9 in the nuts if I ever met him in person, I don't want to use something someone else made for him. Finally, the Ren/Len connection is something of an inside joke.

Q: There's extra stuff in the .sff/.cns/.snd files. What's with that?
A: Whatever isn't in the character is something I intended to do but gave up on due to lack of interest or the fact that what I was doing wasn't meating my standards. If you want to take a whack at adding them back in, you have less work ahead of you.

Q: When are you going to finish Rouga/Agito/Daigo/Kouma/etc 
A: When I feel like it.

Q: Did you add anything for MUGEN 1.0?
A: Winquotes. That's about it.

Q: So I was playing as Choiyer's Haruhi and I fought Ren and...
A: (slaps you) Just sleep now.


JANGO CREDITS:
--------
kaihoku - All of Ren's sprite rips and voices except for the molotov cocktail explosion sprites. Also for the scarlet Weather Rhapsody Sparks
The_None - For the afterimage code used in the Enhance which I ripped off and modified from his Posessed Heita, and then later taking over the project.
Necromancer - For the open source MvC Super Jump code that I modified to better emulate BBB's Super Jump system.
Insanius - For the kick-ass AI, and actually being able to play my creation better than me. :'( Also, some feedback
KoopaKoot - For reminding me to add in an explosion spark for GO TO HELL!! (although I opted to use one from Melty Blood instead of the game's spark)
ughwtf - The sexy small portrait
Kung_Fu_Man - Helped with a stupid mistake I made on the damage dampener, suggested the cocktail throwing winpose, and general moral support.
P.o.t.S. - Helps me EVERY TIME I ask him for help, and also suggested the molotov throwing winpose (yeah, two people suggested the same winpose!)
Vans - For help in coding the molotov winpose.
Therio - Bug-testing.
Alicesoft - For making Big Bang Age, which BBB is based on
NRF - For making Big Bang Beat (Even though it really sucks, especially after 1.02)
Frontier Aja
schwa, m-dee, Snake, Psicoso - Palettes
Machinaweapon
Sion - For helping me rip the molotov cocktail explosions and for the sparks from BBB. If you use any of these, make sure you give credit to her, not me.
The Good People at TrinityMugen - For giving much needed laffs and very good feedback.
Tyrannosaurus Reich - SCREAMIN' EAGLES! No reason, just a cool dude.
9 - Yes, he gets credit here because I looked at his coding for can-hitting, said "fuck it this is too long," and made a shorter version that essentially does the same thing.


THE_NONE CREDITS:
-----------------
SuperYoshi - For inspiring the character interaction feature.
Whoever ripped the "ASTRAL FINISH" text. (Freezeman?)
That Guy on YTMND who made Sitcom Porno Love - For inspiring SuperYoshi
Andrew Hussie
Valve
Aksys
Jesuszilla - Feedback
Cybaster - Feedback