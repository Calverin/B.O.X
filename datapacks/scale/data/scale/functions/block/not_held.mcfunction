# Move shulker out of sight
scoreboard players operation $check id = @s id

# Moving a not held block
execute store result score $b_x pos run data get entity @s Pos[0] 1000
execute store result score $b_y pos run data get entity @s Pos[1] 1000
execute store result score $b_z pos run data get entity @s Pos[2] 1000

# Resultant position
scoreboard players operation $r_x pos = $b_x pos
scoreboard players operation $r_y pos = $b_y pos
scoreboard players operation $r_z pos = $b_z pos

# Slow down horizontal movement
execute if score @s vel_x matches 61.. run scoreboard players remove @s vel_x 50
execute if score @s vel_x matches 61.. run scoreboard players remove @s vel_x 50
execute if score @s vel_x matches 11.. run scoreboard players remove @s vel_x 10
execute if score @s vel_x matches 11.. run scoreboard players remove @s vel_x 10
execute if score @s vel_x matches 1.. run scoreboard players remove @s vel_x 1
execute if score @s vel_x matches 1.. run scoreboard players remove @s vel_x 1
execute if score @s vel_z matches 61.. run scoreboard players remove @s vel_z 50
execute if score @s vel_z matches 61.. run scoreboard players remove @s vel_z 50
execute if score @s vel_z matches 11.. run scoreboard players remove @s vel_z 10
execute if score @s vel_z matches 11.. run scoreboard players remove @s vel_z 10
execute if score @s vel_z matches 1.. run scoreboard players remove @s vel_z 1
execute if score @s vel_z matches 1.. run scoreboard players remove @s vel_z 1
execute if score @s vel_x matches ..-1 run scoreboard players add @s vel_x 1
execute if score @s vel_x matches ..-1 run scoreboard players add @s vel_x 1
execute if score @s vel_x matches ..-11 run scoreboard players add @s vel_x 10
execute if score @s vel_x matches ..-11 run scoreboard players add @s vel_x 10
execute if score @s vel_x matches ..-61 run scoreboard players add @s vel_x 50
execute if score @s vel_x matches ..-61 run scoreboard players add @s vel_x 50
execute if score @s vel_z matches ..-1 run scoreboard players add @s vel_z 1
execute if score @s vel_z matches ..-1 run scoreboard players add @s vel_z 1
execute if score @s vel_z matches ..-11 run scoreboard players add @s vel_z 10
execute if score @s vel_z matches ..-11 run scoreboard players add @s vel_z 10
execute if score @s vel_z matches ..-61 run scoreboard players add @s vel_z 50
execute if score @s vel_z matches ..-61 run scoreboard players add @s vel_z 50

# Fall until on ground
execute if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if score @s vel_y matches 120.. run scoreboard players remove @s vel_y 45
execute if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air run scoreboard players remove @s vel_y 25
execute if block ~ ~-1 ~ air if block ~ ~-2 ~ air run scoreboard players remove @s vel_y 15
execute if block ~ ~-0.5 ~ air run scoreboard players remove @s vel_y 10
execute if block ~ ~-.1 ~ air run scoreboard players remove @s vel_y 5
#execute unless block ~ ~-1 ~ air unless block ~ ~ ~ air if block ~ ~-.001 ~ air run tp @s ~ ~-0.0005 ~
#execute unless block ~ ~-.1 ~ air unless block ~ ~-.0001 ~ air run scoreboard players set @s vel_y 0

execute if score @s vel_y matches ..-1000 run scoreboard players set @s vel_y -1000
execute if score @s vel_y matches 1000.. run scoreboard players set @s vel_y 1000

# See if block will move into ground
summon marker ~ ~ ~ {Tags:["check_pos"]}

scoreboard players operation $temp vel_y = @s vel_y
scoreboard players operation $temp vel_y *= $2000 number

scoreboard players operation $b_y pos += $temp vel_y
execute as @e[type=marker,tag=check_pos] run function scale:block/check_pos
execute if score $m_in_block pos matches 1.. run scoreboard players set @s vel_y 0
kill @e[type=marker,tag=check_pos]

#execute positioned ~-1 ~-.01 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=0.01,dz=1] run scoreboard players set @s vel_y 0
#execute positioned ~-1 ~-.01 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=0.01,dz=1] run tp @s ~1 ~0.03 ~1
execute positioned ~-1 ~-1.21 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=3,dz=1] if score @s vel_y matches ..-500 run scoreboard players set @s vel_y -500
execute positioned ~-1 ~-1.21 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1.21,dz=1] run function scale:block/push_out

execute if score @s vel_x matches 0 if score @s vel_z matches 0 if score @s vel_y matches -1..1 unless block ~ ~-.001 ~ air run tag @s add stationary
tag @s add temp
execute if score @s vel_x matches 0 if score @s vel_z matches 0 if block ~ ~ ~ air positioned ~-1 ~-1.05 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=!temp,tag=!stationary,dx=1,dy=0.04,dz=1] run scoreboard players set @s vel_y 0
tag @s remove temp
execute if score @s vel_x matches 0 if score @s vel_z matches 0 if block ~ ~ ~ air positioned ~-1 ~-1.01 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1.01,dz=1] run tag @s add stationary
execute unless block ~ ~-0.001 ~ air unless block ~ ~ ~ air positioned ~ ~0.5 ~ align y run tp @s ~ ~ ~

scoreboard players operation $r_x pos += @s vel_x
scoreboard players operation $r_y pos += @s vel_y
scoreboard players operation $r_z pos += @s vel_z


execute store result entity @s[tag=!stationary] Pos[0] double 0.001 run scoreboard players get $r_x pos
execute store result entity @s[tag=!stationary] Pos[1] double 0.001 run scoreboard players get $r_y pos
execute store result entity @s[tag=!stationary] Pos[2] double 0.001 run scoreboard players get $r_z pos

#execute unless block ~ ~ ~ air run tp @s ~ ~0.1 ~
execute if score @s vel_x matches 0 if score @s vel_z matches 0 if score @s vel_y matches -1..1 unless block ~ ~-.001 ~ air run tag @s add stationary
execute if score @s vel_x matches 0 if score @s vel_z matches 0 if block ~ ~ ~ air positioned ~-1 ~-1.01 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1.01,dz=1] run tag @s add stationary

execute as @s[tag=stationary] as @e[type=block_display,tag=shulker,tag=block] if score @s id = $check id run tag @s add force_ride 
execute as @s[tag=stationary] unless entity @e[type=block_display,tag=shulker,tag=block,tag=!force_ride,distance=..0.1] run ride @e[type=block_display,tag=shulker,tag=block,tag=force_ride,limit=1,sort=nearest] mount @s 
tag @e[type=block_display,tag=shulker,tag=block] remove force_ride