scoreboard players operation $check id = @s id
scoreboard players set $button power 0
execute as @e[type=marker,tag=small_button,limit=1,sort=nearest] at @s if score @s id = $check id run function scale:small_button/detect
execute if score $button power matches 1 if score @s power matches 0 run function scale:dispenser/drop
execute if score $button power matches 1 run scoreboard players add @s power 1
execute if score @s[tag=dispensed] power matches 10.. run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_duration:2,interpolation_start:-1}
execute if score @s[tag=dispensed] power matches 10.. run tag @s remove dispensed