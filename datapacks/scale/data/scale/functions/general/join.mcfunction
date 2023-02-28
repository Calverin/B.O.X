tag @s remove playing
gamemode adventure @s
tp @s -44 -60 51
spawnpoint @s -44 -60 51
setworldspawn -44 -60 51
title @s times 10 100 10
title @s subtitle ["",{"text":"By Current Project","color":"light_purple"}]
title @s title ["",{"text":"B.O.X","bold": true,"color":"white"}]
playsound block.note_block.chime master @s ~ ~ ~ 1 2
playsound block.note_block.chime master @s ~ ~ ~ 1 1.5
playsound block.note_block.chime master @s ~ ~ ~ 1 1.7
tag @s add has_joined