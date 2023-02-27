# Check if a button is pressed
execute if score @s size_x matches 1250 positioned ~-1.25 ~-.015 ~-1.25 if entity @e[type=block_display,tag=block,dy=0,dx=1.25,dz=1.25] run tag @s add pressed
execute if score @s size_x matches 1250 positioned ~-1.25 ~-.015 ~-1.25 unless entity @e[type=block_display,tag=block,dy=0,dx=1.25,dz=1.25] run tag @s remove pressed

execute as @s[tag=pressed] run function scale:button/pressed

# Not pressed
execute as @s[tag=!pressed,scores={pressed=1..}] run scoreboard players remove @s pressed 1
execute as @s[tag=!pressed,scores={pressed=1}] positioned ~ ~1 ~ align y run tp @s ~ ~-0.8 ~
execute as @s[tag=!pressed,scores={pressed=2..3}] positioned ~ ~1 ~ align y run tp @s ~ ~-0.83 ~
execute as @s[tag=!pressed,scores={pressed=4..5}] positioned ~ ~1 ~ align y run tp @s ~ ~-0.86 ~
scoreboard players operation $check id = @s id
execute as @s[tag=!pressed] as @e[type=block_display,tag=scale,tag=object] at @s if score @s id = $check id unless score @s power matches ..0 run scoreboard players remove @s power 1