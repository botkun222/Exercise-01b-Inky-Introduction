/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

This is our basic story example! Goodbye!

== cave_mouth ==
You are at the entrance of a cave. {not torch_pickup: |There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* {not torch_pickup} [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark; you can't see anything.
*{torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. The air is damp, and the walls are slick with moisture. A faint draft blows from deeper within.
+ [Explore deeper] -> underground_lake
+ [Go back] -> cave_mouth
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off thousands of coins scattered across the floor. A narrow passage leads north.
+ [Take the north passage] -> treasure_room
+ [Go back] -> east_tunnel
-> END

== underground_lake ==
You reach an underground lake. The water is eerily still, and you see something shimmering on a small island.
+ [Swim across] -> hidden_island
+ [Head back] -> west_tunnel
-> END

== hidden_island ==
You swim to a small island in the lake. An old man sits by a campfire, but when he sees you, his eyes blaze with hatred.  
He pulls a jagged dagger from his cloak and snarls: *“You should never have come here. Now you die.”*
+ [Stake down the old man] -> old_man_staked
+ [Try to speak with him] -> old_man_kills_you
-> END

== old_man_staked ==
You drive a sharpened stake into the old man’s chest. He lets out a terrible cry before collapsing into the sand.  
Among his torn robes, you discover a weathered map that shows the way to a hidden **treasure room**.  
+ [Follow the map to the treasure room] -> treasure_room
-> END

== old_man_kills_you ==
You lower your weapon and try to reason with the old man. His lips curl into a twisted smile.  
Before you can react, he drives his dagger into your chest. Darkness takes you.  
-> END

== treasure_room ==
You enter a small chamber. Piles of gold and silver surround a stone pedestal. The treasure is yours for the taking.  
+ [Leave with the treasure] -> victory
+ [Leave quietly, taking nothing] -> east_tunnel_lit
-> END

== victory ==
With your arms full of gold and jewels, you make your way back to the cave mouth.  
The sunlight warms your face as you step into the open air — rich beyond your wildest dreams.  
**You win!**
-> END
