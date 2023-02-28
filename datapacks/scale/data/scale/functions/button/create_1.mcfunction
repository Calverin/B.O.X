# Create a 1 block wide button
execute align xyz run summon block_display ~0.6 ~-0.8 ~0.6 {Tags:["scale","button","new_button","no_connection"],block_state:{Name:"minecraft:red_concrete"},brightness:{sky:15,block:15},Glowing:1b}
execute as @e[type=block_display,tag=new_button] at @s run data merge entity @s {width:1,height:1,transformation:{scale:[1.25f, 0.8f, 1.25f],translation:[-0.75f,0.8f,-0.75f]},interpolation_start:-2}
# GETS ID FROM CORRESPONDING OBJECT
execute as @e[type=block_display,tag=new_button] store result score @s size_x run data get entity @s transformation.scale[0] 1000
# Auto connect to the most recently spawned object
execute as @e[type=block_display,tag=new_button] at @s run function scale:button/connect

execute as @e[type=#scale:scale_block,tag=new_button] at @s run tag @s remove new_button