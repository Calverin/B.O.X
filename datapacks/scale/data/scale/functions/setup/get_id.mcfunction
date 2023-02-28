tag @s add temp
scoreboard players operation @s id = @e[type=block_display,tag=dispenser,tag=!temp,distance=..2,limit=1,sort=nearest] id
execute unless entity @e[type=block_display,tag=dispenser,tag=!temp,distance=..2] store result score @s id run scoreboard players add $new id 1
tag @s remove temp
scoreboard players operation $connect id = @s id
execute store result score @s size_x run data get entity @s transformation.scale[0] 1000
execute store result score @s size_y run data get entity @s transformation.scale[1] 1000
execute store result score @s size_z run data get entity @s transformation.scale[2] 1000

function scale:setup/glow_color