execute store result score $f_y pos run data get entity @s Pos[1] 1000
scoreboard players operation $f_y pos /= $100 number
execute store result entity @s[tag=!stationary] Pos[1] double 0.001 run scoreboard players get $r_y pos
data merge entity @s[tag=float] {block_state:{Name:"minecraft:pink_stained_glass"}}

tag @s add stationary