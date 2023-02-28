scoreboard players remove @a[gamemode=adventure,tag=playing,scores={cooldown=1..}] cooldown 1
execute as @a[gamemode=adventure,tag=playing,tag=holding] at @s run function scale:player/holding
execute as @e[type=block_display,tag=block,tag=!shulker] at @s run function scale:block/move
execute as @e[type=block_display,tag=button] at @s run function scale:button/detect
execute as @e[type=#scale:displays,tag=launcher] at @s unless score @s power matches ..0 run function scale:launcher/launch
execute as @e[type=block_display,tag=door] at @s run function scale:door/move
execute as @e[type=block_display,tag=dispenser] at @s run function scale:dispenser/check
execute as @e[type=block_display,tag=exit] at @s if entity @a[gamemode=adventure,tag=playing,distance=..4] run function scale:door/exit_stuff

effect give @a[gamemode=adventure] resistance infinite 127 true
effect give @a[gamemode=adventure] saturation infinite 127 true