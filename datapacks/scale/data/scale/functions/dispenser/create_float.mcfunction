# Create a block dispenser
execute align xyz run summon block_display ~ ~1 ~ {Tags:["scale","dispenser","object","new_dispenser","spawn_float"],block_state:{Name:"minecraft:orange_stained_glass"},brightness:{sky:15,block:15}}
execute as @e[type=block_display,tag=new_dispenser] at @s run data merge entity @s {width:1,height:1,transformation:{scale:[1.0f, 1.0f, 1.0f],translation:[0.0f,0.0f,0.0f]},interpolation_start:-2,interpolation_duration:1}
execute as @e[type=block_display,tag=new_dispenser] at @s run function scale:setup/get_id

# Just toggle on/off by default
scoreboard players set @e[type=block_display,tag=new_dispenser] power 0
scoreboard players set @e[type=block_display,tag=new_dispenser] max_power 1

#execute as @e[type=block_display,tag=new_dispenser] at @s on passengers run scoreboard players operation @s id = $new id
execute as @e[type=#scale:scale_block,tag=new_dispenser] at @s run tag @s remove new_dispenser