execute if score @s size_x matches 1000 positioned ~-1 ~.25 ~-1 run tag @e[type=block_display,tag=block,tag=!shulker,dy=0.25,dx=1,dz=1] remove stationary
execute if score @s size_x matches 1000 positioned ~-1 ~ ~-1 run scoreboard players set @e[type=block_display,tag=block,tag=!shulker,dy=0.5,dx=1,dz=1] vel_y 600
execute if score @s size_x matches 1000 positioned ~-0.5 ~.25 ~-0.5 as @a[gamemode=adventure,tag=playing,dy=0.1,dx=0,dz=0] at @s run function scale:launcher/player

execute positioned ~ ~1 ~ unless entity @e[type=area_effect_cloud,tag=launcher,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["scale","launcher"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:1.0f,Duration:1,Effects:[{Id:25,Amplifier:60,Duration:2,ShowParticles:0b}]}

tp @s ~ ~ ~ ~20 ~
particle poof ~ ~1 ~ 0.1 0.1 0.1 0 3 force
