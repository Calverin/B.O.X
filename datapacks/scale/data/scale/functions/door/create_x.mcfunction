# Create a locked door
execute align xyz run summon block_display ~ ~ ~ {Tags:["scale","door","object","new_door","door_x"],block_state:{Name:"minecraft:blue_concrete"},brightness:{sky:15,block:15}}
execute as @e[type=block_display,tag=new_door] at @s run data merge entity @s {width:3,height:3,transformation:{scale:[3.0f, 3.0f, 0.99f],translation:[-1.0f,0.0f,0.005f]},interpolation_start:-2,Glowing:1b}
execute as @e[type=block_display,tag=new_door] at @s run function scale:setup/get_id
fill ~-1 ~ ~ ~1 ~2 ~ barrier
# Just toggle on/off by default
scoreboard players set @e[type=block_display,tag=new_door] max_power 10
tag @e[type=block_display,tag=new_door] add closed
#execute as @e[type=block_display,tag=new_door] at @s on passengers run scoreboard players operation @s id = $new id
execute as @e[type=#scale:scale_block,tag=new_door] at @s run tag @s remove new_door