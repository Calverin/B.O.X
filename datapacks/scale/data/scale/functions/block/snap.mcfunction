scoreboard players operation @s vel_x /= $10 number
scoreboard players operation @s vel_y /= $2 number
scoreboard players operation @s vel_z /= $10 number
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 10 2
particle poof ~-0.5 ~0.5 ~-0.5 0.25 0.25 0.25 0.1 10 force
tag @s remove held
#execute on passengers as @s[type=interaction] run data merge entity @s {height:1.01f,width:1.01f}
scoreboard players operation $check id = @s id
execute as @a[gamemode=adventure,tag=playing,advancements={scale:click_block=false},tag=holding] at @s if score @s id = $check id run function scale:player/drop