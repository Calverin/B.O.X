execute as @s[tag=held] run function scale:block/held
execute as @s[tag=!held,tag=!stationary] run function scale:block/not_held
execute as @s[tag=stationary] run function scale:block/stationary