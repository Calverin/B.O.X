scoreboard players operation $check id = @s id
execute as @e[type=block_display,tag=scale,tag=object] at @s if score @s id = $check id unless score @s power >= @s max_power run scoreboard players add @s power 1
execute unless score @s pressed matches 5.. run scoreboard players add @s pressed 1
execute if score @s pressed matches 1..2 positioned ~ ~1 ~ align y run tp @s ~ ~-0.83 ~
execute if score @s pressed matches 3..4 positioned ~ ~1 ~ align y run tp @s ~ ~-0.86 ~
execute if score @s pressed matches 5 positioned ~ ~1 ~ align y run tp @s ~ ~-0.89 ~
execute if score @s pressed matches 5 run scoreboard players set @s pressed 9