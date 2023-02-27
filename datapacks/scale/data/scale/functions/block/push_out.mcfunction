#scoreboard players operation $push vel_y = @s vel_y
##scoreboard players operation $push vel_y *= $2 number
#scoreboard players operation $r_y pos -= $push vel_y
#
#execute store result entity @s[tag=!stationary] Pos[0] double 0.001 run scoreboard players get $r_x pos
#execute store result entity @s[tag=!stationary] Pos[1] double 0.001 run scoreboard players get $r_y pos
#execute store result entity @s[tag=!stationary] Pos[2] double 0.001 run scoreboard players get $r_z pos
#say PUSH!
#tag @s add stationary

execute if score @s vel_y matches 101.. run scoreboard players remove @s vel_y 100
execute if score @s vel_y matches 101.. run scoreboard players remove @s vel_y 100
execute if score @s vel_y matches 101.. run scoreboard players remove @s vel_y 100
execute if score @s vel_y matches 61.. run scoreboard players remove @s vel_y 50
execute if score @s vel_y matches 61.. run scoreboard players remove @s vel_y 50
execute if score @s vel_y matches 61.. run scoreboard players remove @s vel_y 50
execute if score @s vel_y matches 11.. run scoreboard players remove @s vel_y 10
execute if score @s vel_y matches 11.. run scoreboard players remove @s vel_y 10
execute if score @s vel_y matches 11.. run scoreboard players remove @s vel_y 10
execute if score @s vel_y matches 2.. run scoreboard players remove @s vel_y 1
execute if score @s vel_y matches 2.. run scoreboard players remove @s vel_y 1
execute if score @s vel_y matches 2.. run scoreboard players remove @s vel_y 1
execute if score @s vel_y matches ..-2 run scoreboard players add @s vel_y 1
execute if score @s vel_y matches ..-2 run scoreboard players add @s vel_y 1
execute if score @s vel_y matches ..-2 run scoreboard players add @s vel_y 1
execute if score @s vel_y matches ..-11 run scoreboard players add @s vel_y 10
execute if score @s vel_y matches ..-11 run scoreboard players add @s vel_y 10
execute if score @s vel_y matches ..-11 run scoreboard players add @s vel_y 10
execute if score @s vel_y matches ..-61 run scoreboard players add @s vel_y 50
execute if score @s vel_y matches ..-61 run scoreboard players add @s vel_y 50
execute if score @s vel_y matches ..-61 run scoreboard players add @s vel_y 50
execute if score @s vel_y matches ..-101 run scoreboard players add @s vel_y 100
execute if score @s vel_y matches ..-101 run scoreboard players add @s vel_y 100
execute if score @s vel_y matches ..-101 run scoreboard players add @s vel_y 100