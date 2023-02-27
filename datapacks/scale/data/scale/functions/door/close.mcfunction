execute as @s[tag=door_x] run fill ~-1 ~ ~ ~1 ~2 ~ barrier replace air
execute as @s[tag=door_z] run fill ~ ~ ~-1 ~ ~2 ~1 barrier replace air
data merge entity @s[tag=door_x] {transformation:{translation:[-1.0f,0.0f,0.005f]},interpolation_start:-2,interpolation_duration:10}
data merge entity @s[tag=door_z] {transformation:{translation:[0.005f,0.0f,-1.0f]},interpolation_start:-2,interpolation_duration:10}
tag @s remove opened
tag @s add closed