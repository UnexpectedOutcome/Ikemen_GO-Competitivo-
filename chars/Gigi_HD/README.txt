                                                                                                      
                                                                                ;;ii;;                
                                                                          ::iiiiiiii                  
                                                                    ..iiii;;..  ii..                  
                                                                ..ttii..      ii::                    
      ..;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;iiiiii..    ::;;                      
    ..::                                                    ..;;ii;;..      ii..                      
  ..::                                                ::;;ii;;..            ;;;;..................    
..::                                            ..;;ii::..                    ..iiiiffffffffffffjjii  
::..        http://infinitymugenteam.com/     ..,,ii....                        ..iifffffffffffffftt..
  ::..                                              ..;;;;....              ..;;;;;;;;;;;;;;;;;;;;    
    ::..         Share & Create                           ,,;;;;....        ii..                      
      ::......................................................;;iiii;;..    ;;,,                      
        ........................................................,,iiii        ii..                    
                                                                  ,,;;ii;;..  ..ii                    
                                                                        ;;iiii,,;;;;                  
                                                                              ;;iitt..                
                                                                                  ;;;;


*****************************************************************************************************
*=============================//--- GiGi from Red Earth (Warzard) ---//=============================*
*                                               by                                                  *
*                                             Trasgo7                                               *
*****************************************************************************************************


--==//30-JULY-2008//==--

Tweaks and Fixes:

Increased damage of Pichikikan 3
Increased guard.velocity of Pichikikan 1
Reduced the amount of time before the pillars rise in Pichikikan 1
AI modified to be more aggressive
Fixed several variable issues with the Pabugado
Changed some global parameters: health@1100, defense@105, airjuggle@10


--==//29-JULY-2008//==--

Fixes from feedback at IMT and MFG:

Modified coding for GiGi's "fading chair" intro to get rid of the debug flood (IronFist)
Modified GiGi's official intro so the explods have a lower sprpriority (COMMUNITY ETHNICS MAN)
Guard Damage added/increased for all moves (missfairy)
Pichikikan 3 is now unblockable (missfairy)
Pichikikan 2 is now only blockable by a crouch block (missfairy)
Pichikikan 1 now has guard.velocity to push back a blocking opponent (missfairy)
Lowered the sprpriority for the guard explods so that they will not appear above P2 (IronFist)
Guard explods no longer stay on screen when in a custom state
AI should now make better use of "Hypers" 
Official Intro has envshake, faster landing, and better timed sounds (Relinquished)
Added Pabugado sound
Added proper sounds to Pichikikan 1,2, and 3

--==//28-JULY-2008//==--

RELEASED TO THE PUBLIC!

--==//27-JULY-2008//==--

More fixes:

Expression Truncation issue resolved by using "ceil" (Vyn)
Fixed bug where pillars and spears would get pushed if they hit or were blocked by P2 (Cray)
Adjusted damage and push values for Weak, Medium, and Heavy Zakikukan (Cray)

--==//25-JULY-2008//==--

First round of beta testing:

Changed CLSN2s from default to regular for LP,HP,JLP,and JMP (Cray)
State 5110 now has CLSN2s (Cray)
CLSN1s for Specials toned down (Cray)
Damage reduced for Specials (Cray)
Airguard.velocity added to spinning move (Cray)
Adjusted hypers to have multiple hits (Cray)
I added a triggerall = !movehit to the hypers for characters that use hitoverride (Cray)
Modified projectile reflection to only occur if health > 0 (Cray)
Fixed debug flood error, but "expression truncated" still occurs when using p2dist (Cray)
Added SuperJump (Cray)


--==//24-JULY-2008//==--

Private Release for beta testing!
All known moves from Red Earth have been incorporated.  See the MOVELIST.txt file!
	

***---===///KNOWN ISSUES///===---***

I know he only has 6 PALs...  I just can't imagine someone actually needing 8 GiGi's at once.
He only reflects Normal and Special projectiles; the AI will on seldom occasions not reflect any.
He will sometimes be the wrong color when he's put into a custom state.
He will sometimes be the wrong color if you rapidly press DOWN and UP after jumping over an enemy.



Credits&Thanks:

elevator_kart	- Red Earth sprites
[E]		- The custom MAME builds that allow for CPS3 layer disabling
Kong		- Red Earth Sprites
Cray		- Red Earth Sounds and the official names of GiGi's moves
SyN 		- Stage Identification Code
shinra358 	- Pointing out SyN's Stage Identification Code
Kung_Fu_Man	- Making the Two-Faced Terror stage
I.M.T.		- Beta testing and all kinds of support!
Elecbyte	- M.U.G.E.N.
CAPCOM		- Red Earth
The MAME Team	- Making CPS3 games playable
Macromedia	- Fireworks
VirtualTek	- Fighter Factory