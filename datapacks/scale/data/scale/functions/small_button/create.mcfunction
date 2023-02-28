# Create a 1 block wide button
execute align xyz run summon marker ~ ~ ~ {Tags:["scale","small_button","new_small_button","no_connection"]}
setblock ~ ~ ~ acacia_button[face=floor]
# Auto connect to the most recently spawned object
execute as @e[type=marker,tag=new_small_button] at @s run function scale:small_button/connect

tag @e[type=marker] remove new_small_button