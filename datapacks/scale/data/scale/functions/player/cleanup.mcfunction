execute as @e[type=block_display,tag=block,tag=!shulker] at @s run function scale:block/destroy
particle dust 1 0 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.01 5 force
title @s times 0 20 10
title @s subtitle ["",{"text":"Cleaning subject and test room...","color":"red"}]
title @s title ""