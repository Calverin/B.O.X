# Create a 1 block wide launcher
execute align xyz run summon item_display ~ ~ ~ {Tags:["scale","launcher","object","new_launcher"],brightness:{sky:15,block:15}}
item replace entity @e[type=item_display,tag=new_launcher] container.0 with iron_ingot
execute as @e[type=item_display,tag=new_launcher] at @s run data merge entity @s {width:1,height:1,transformation:{scale:[0.5f, 0.5f, 0.5f],translation:[0.0f,0.0f,0.0f]},interpolation_start:-2,Glowing:1b}
execute as @e[type=item_display,tag=new_launcher] at @s run function scale:setup/get_id
# Just toggle on/off by default
scoreboard players set @e[type=item_display,tag=new_launcher] max_power 5
#execute as @e[type=item_display,tag=new_launcher] at @s on passengers run scoreboard players operation @s id = $new id
execute as @e[type=#scale:scale_block,tag=new_launcher] at @s run tag @s remove new_launcher