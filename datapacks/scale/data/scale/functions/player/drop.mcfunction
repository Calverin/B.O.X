scoreboard players operation $check id = @s id
execute as @e[type=marker,tag=held_block] if score @s id = $check id run kill @s
scoreboard players set @s id 0
tag @s remove holding
playsound block.lava.pop master @s ~ ~ ~ 10 1.4
scoreboard players add @s cooldown 5
advancement revoke @s only scale:click_block