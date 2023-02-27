scoreboard players operation $color math = @s id
scoreboard players operation $inc math += $2472808 number
scoreboard players operation $inc math %= $13769 number
scoreboard players operation $color math *= $2000 number
scoreboard players operation $color math += $inc math
scoreboard players operation $color math += $200 number
scoreboard players operation $color math *= $100 number
execute store result entity @s glow_color_override long 1 run scoreboard players get $color math