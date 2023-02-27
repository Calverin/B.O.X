execute as @a[gamemode=adventure,tag=playing,tag=holding,distance=1..] if score @s id = $block id run function scale:player/drop
scoreboard players operation @s id = $block id
summon marker ~ ~ ~ {Tags:["held_block","get_id"]}
execute as @e[type=marker,tag=held_block,tag=get_id] run scoreboard players operation @s id = $block id
tag @e[type=marker] remove get_id
tag @s add holding
playsound block.lava.pop master @s ~ ~ ~ 10 2
scoreboard players add @s cooldown 5
advancement revoke @s only scale:click_block