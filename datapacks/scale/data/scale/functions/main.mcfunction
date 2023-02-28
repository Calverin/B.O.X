execute if entity @a[gamemode=adventure,tag=playing] run function scale:general/mechanics
execute as @a[gamemode=adventure] at @s run function scale:general/check_lines
execute as @a[tag=!has_joined] at @s run function scale:general/join