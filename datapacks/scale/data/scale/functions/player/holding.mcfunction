scoreboard players operation $check id = @s id
execute at @s anchored eyes positioned ^ ^ ^2 as @e[type=marker,tag=held_block] if score @s id = $check id run tp @s ~ ~-0.5 ~