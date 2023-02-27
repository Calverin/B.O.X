scoreboard players remove @a[gamemode=adventure,tag=playing,scores={cooldown=1..}] cooldown 1
execute as @a[gamemode=adventure,tag=playing,tag=holding] at @s run function scale:player/holding
execute as @e[type=block_display,tag=block] at @s run function scale:block/move
execute as @e[type=block_display,tag=button] at @s run function scale:button/detect
execute as @e[type=block_display,tag=launcher] at @s unless score @s power matches ..0 run function scale:launcher/launch
execute as @e[type=block_display,tag=door] at @s run function scale:door/move