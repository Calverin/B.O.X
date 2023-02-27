execute if score @s size_x matches 1000 positioned ~-1 ~.25 ~-1 run tag @e[type=block_display,tag=block,dy=0.25,dx=1,dz=1] remove stationary
execute if score @s size_x matches 1000 positioned ~-1 ~ ~-1 run scoreboard players add @e[type=block_display,tag=block,dy=0.5,dx=1,dz=1] vel_y 80
execute if score @s size_x matches 1000 positioned ~-0.5 ~.25 ~-0.5 as @a[gamemode=adventure,tag=playing,dy=0.1,dx=0,dz=0] at @s run function scale:launcher/player

tp @s ~ ~ ~ ~20 ~
particle poof ~ ~1 ~ 0.1 0.1 0.1 0 3 force
