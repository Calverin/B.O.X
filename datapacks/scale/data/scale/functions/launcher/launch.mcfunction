execute if score @s size_x matches 500 positioned ~-1 ~-0.5 ~-1 run tag @e[type=block_display,tag=block,tag=!shulker,dy=0.75,dx=1,dz=1] remove stationary
execute if score @s size_x matches 500 positioned ~-1 ~-0.5 ~-1 as @e[type=block_display,tag=block,tag=!held,tag=!shulker,dy=0.75,dx=1,dz=1] unless score @s vel_y matches 600 run playsound entity.ghast.shoot master @a ~ ~ ~ 10 1.0
execute if score @s size_x matches 500 positioned ~-1 ~-0.5 ~-1 run scoreboard players set @e[type=block_display,tag=block,tag=!held,tag=!shulker,dy=0.75,dx=1,dz=1] vel_y 600
execute if score @s size_x matches 500 positioned ~-0.5025 ~-0.1 ~-0.5025 as @a[gamemode=adventure,tag=playing,dy=0.1,dx=0.05,dz=0.05] at @s run function scale:launcher/player

execute positioned ~ ~ ~ unless entity @e[type=area_effect_cloud,tag=launcher,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["scale","launcher"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:1.05f,Duration:1,Effects:[{Id:25,Amplifier:60,Duration:2,ShowParticles:0b}]}

tp @s ~ ~ ~ ~10 90
particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force
