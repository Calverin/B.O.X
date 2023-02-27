# Create a 1 block wide launcher
summon block_display ~ ~-0.8 ~ {Tags:["scale","launcher","object","new_launcher"],block_state:{Name:"minecraft:light_gray_concrete"},brightness:{sky:15,block:15}}
execute as @e[type=block_display,tag=new_launcher] at @s run data merge entity @s {width:1,height:1,transformation:{scale:[1.0f, 0.1f, 1.0f],translation:[-0.5f,0.8f,-0.5f]},interpolation_start:-2,Glowing:1b}
execute as @e[type=block_display,tag=new_launcher] at @s run function scale:setup/get_id
# Just toggle on/off by default
scoreboard players set @e[type=block_display,tag=new_launcher] max_power 5
#execute as @e[type=block_display,tag=new_launcher] at @s on passengers run scoreboard players operation @s id = $new id
execute as @e[type=#scale:scale_block,tag=new_launcher] at @s run tag @s remove new_launcher