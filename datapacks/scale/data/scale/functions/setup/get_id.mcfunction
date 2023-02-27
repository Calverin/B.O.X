execute store result score @s id run scoreboard players add $new id 1
scoreboard players operation $connect id = @s id
execute store result score @s size_x run data get entity @s transformation.scale[0] 1000
execute store result score @s size_y run data get entity @s transformation.scale[1] 1000
execute store result score @s size_z run data get entity @s transformation.scale[2] 1000

function scale:setup/glow_color