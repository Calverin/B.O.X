execute as @s[tag=door_x] run fill ~-1 ~ ~ ~1 ~2 ~ air replace barrier
execute as @s[tag=door_z] run fill ~ ~ ~-1 ~ ~2 ~1 air replace barrier
data merge entity @s[tag=door_x] {transformation:{translation:[-1.0f,3.001f,0.005f]},interpolation_start:-2,interpolation_duration:10}
data merge entity @s[tag=door_z] {transformation:{translation:[0.005f,3.001f,-1.0f]},interpolation_start:-2,interpolation_duration:10}
tag @s remove closed
tag @s add opened