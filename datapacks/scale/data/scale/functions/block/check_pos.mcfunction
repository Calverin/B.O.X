execute store result entity @s Pos[0] double 0.001 run scoreboard players get $b_x pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $b_y pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $b_z pos
execute store result score $m_in_block pos unless block ~ ~ ~ air