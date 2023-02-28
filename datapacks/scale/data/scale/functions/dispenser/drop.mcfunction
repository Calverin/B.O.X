execute as @e[type=block_display,tag=block,tag=!shulker] at @s if score @s id = $check id run function scale:block/destroy

data merge entity @s {transformation:{scale:[1.25f,1.25f,1.25f],translation:[-0.125f,-0.25f,-0.125f]},interpolation_duration:2,interpolation_start:-1}
execute as @s[tag=!spawn_float] positioned ~.5 ~-0.5 ~.5 run function scale:block/create
execute as @s[tag=spawn_float] positioned ~.5 ~-0.5 ~.5 run function scale:block/create_float

execute if score $dropped id matches 0 run stopsound @a * custom.cryosleep
execute if score $dropped id matches 0 run playsound custom.block master @a ~ ~ ~ 100000 1 1
execute if score $dropped id matches 0 run tellraw @a ["",{"text":"- ","color":"gray"},{"text":"This is a standard box. It can weigh down large buttons. Press the button on the pole to activate the dispenser if you need a new box.","color":"red","italic":true}]
scoreboard players set $dropped id 1

playsound entity.shulker.shoot master @a ~ ~ ~ 10 0
tag @s add dispensed