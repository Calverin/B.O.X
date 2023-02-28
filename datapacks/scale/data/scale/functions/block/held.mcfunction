tag @s remove stationary
# Moving a held block without pushing it into the wall
scoreboard players operation $check id = @s id
execute as @e[type=block_display,tag=shulker,tag=block] if score @s id = $check id run tp @s ~0.5 -63 ~0.5
execute as @e[type=marker,tag=held_block] at @s if score @s id = $check id run function scale:block/marker_data
execute store result score $b_x pos run data get entity @s Pos[0] 1000
execute store result score $b_y pos run data get entity @s Pos[1] 1000
execute store result score $b_z pos run data get entity @s Pos[2] 1000
execute store result score $b_in_block pos unless block ~-1 ~ ~-1 #scale:air_ish

# Temp block positions for math
scoreboard players operation $t_x pos = $m_x pos
scoreboard players operation $t_y pos = $m_y pos
scoreboard players operation $t_z pos = $m_z pos

scoreboard players operation $t_x pos -= $b_x pos
scoreboard players operation $t_y pos -= $b_y pos
scoreboard players operation $t_z pos -= $b_z pos

# TEMP JUST SET MOTION EQUAL TO DISTANCE
scoreboard players operation @s vel_x = $t_x pos
scoreboard players operation @s vel_y = $t_y pos
scoreboard players operation @s vel_z = $t_z pos
scoreboard players operation @s vel_x /= $2 number
scoreboard players operation @s vel_y /= $2 number
scoreboard players operation @s vel_z /= $2 number

scoreboard players set $x math 0
scoreboard players set $y math 0
scoreboard players set $z math 0

#execute if score @s vel_y matches ..-1 positioned ~-1 ~-1.1 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1.1,dz=1] run scoreboard players set @s vel_y 0
execute if score @s vel_y matches ..-1 unless block ~ ~-0.1 ~ #scale:air_ish run scoreboard players set @s vel_y 0
execute if score @s vel_y matches ..-1 unless block ~ ~-0.1 ~ #scale:air_ish run tp @s ~ ~.1 ~
#execute if score @s vel_y matches ..-1 positioned ~-1 ~-1.1 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1.1,dz=1] positioned ~1 ~1.7 ~1 align y run tp @s ~ ~ ~
execute if score @s vel_y matches 1.. unless block ~ ~1.1 ~ #scale:air_ish run tp @s ~ ~-.1 ~
execute if score @s vel_y matches 1.. unless block ~ ~1.1 ~ #scale:air_ish run scoreboard players set @s vel_y 0

execute if score @s vel_x matches 1.. unless block ~0.6 ~0.5 ~ #scale:air_ish run tp @s ~-.1 ~ ~
execute if score @s vel_x matches 1.. unless block ~0.6 ~0.5 ~ #scale:air_ish run scoreboard players set @s vel_x 0
execute if score @s vel_x matches ..-1 unless block ~-0.6 ~0.5 ~ #scale:air_ish run tp @s ~.1 ~ ~
execute if score @s vel_x matches ..-1 unless block ~-0.6 ~0.5 ~ #scale:air_ish run scoreboard players set @s vel_x 0
execute if score @s vel_z matches 1.. unless block ~ ~0.5 ~0.6 #scale:air_ish run tp @s ~ ~ ~-.1
execute if score @s vel_z matches 1.. unless block ~ ~0.5 ~0.6 #scale:air_ish run scoreboard players set @s vel_z 0
execute if score @s vel_z matches ..-1 unless block ~ ~0.5 ~-0.6 #scale:air_ish run tp @s ~ ~ ~.1
execute if score @s vel_z matches ..-1 unless block ~ ~0.5 ~-0.6 #scale:air_ish run scoreboard players set @s vel_z 0

execute unless score $x math matches 0 run scoreboard players operation @s vel_x = $x math
execute unless score $y math matches 0 run scoreboard players operation @s vel_y = $y math
execute unless score $z math matches 0 run scoreboard players operation @s vel_z = $z math

execute if score @s vel_x matches ..-1500 run scoreboard players set @s vel_x -1500
execute if score @s vel_x matches 1500.. run scoreboard players set @s vel_x 1500
execute if score @s vel_y matches ..-1500 run scoreboard players set @s vel_y -1500
execute if score @s vel_y matches 1500.. run scoreboard players set @s vel_y 1500
execute if score @s vel_z matches ..-1500 run scoreboard players set @s vel_z -1500
execute if score @s vel_z matches 1500.. run scoreboard players set @s vel_z 1500

scoreboard players operation $b_x pos += @s vel_x
scoreboard players operation $b_y pos += @s vel_y
scoreboard players operation $b_z pos += @s vel_z

# Breaking the connection if the player is too far away or trying to move the block too quickly
tag @a remove match
execute as @a[gamemode=adventure,tag=playing,tag=holding] if score @s id = $check id run tag @s add match 
execute unless entity @e[type=marker,tag=held_block,distance=..3.5] unless entity @a[gamemode=adventure,tag=playing,tag=holding,tag=match,distance=..4] run function scale:block/snap
tag @a remove match

execute store result entity @s Pos[0] double 0.001 run scoreboard players get $b_x pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $b_y pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $b_z pos

execute unless block ~ ~-0.001 ~ #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~ ~0.5 ~ align y run tp @s ~ ~ ~
#execute positioned ~-1 ~-.1 ~-1 if entity @e[type=block_display,tag=block,tag=!shulker,tag=stationary,dx=1,dy=1,dz=1] run say TOUCHING
execute unless block ~ ~1.001 ~ #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~ ~-0.5 ~ align y run tp @s ~ ~ ~
execute unless block ~-1.001 ~0.5 ~ #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~0.5 ~ ~ align x run tp @s ~ ~ ~
execute unless block ~1.001 ~0.5 ~ #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~-0.5 ~ ~ align x run tp @s ~ ~ ~
execute unless block ~ ~0.5 ~-1.001 #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~ ~ ~0.5 align z run tp @s ~ ~ ~
execute unless block ~ ~0.5 ~1.001 #scale:air_ish unless block ~ ~ ~ #scale:air_ish positioned ~ ~ ~-0.5 align z run tp @s ~ ~ ~

#execute unless block ~ ~ ~ #scale:air_ish if block ~-1 ~ ~ #scale:air_ish run tp @s ~-0.5 ~ ~
#execute unless block ~ ~ ~ #scale:air_ish if block ~1 ~ ~ #scale:air_ish run tp @s ~0.5 ~ ~
#execute unless block ~ ~ ~ #scale:air_ish if block ~ ~ ~-1 #scale:air_ish run tp @s ~ ~ ~-0.5
#execute unless block ~ ~ ~ #scale:air_ish if block ~ ~ ~1 #scale:air_ish run tp @s ~ ~ ~0.5


#execute unless block ~ ~ ~ #scale:air_ish if block ~ ~-1.1 ~ #scale:air_ish run tp @s ~ ~-0.5 ~
#execute if score $x math matches 1 if score $y math matches 0 if score $z math matches 0 positioned ~-1 ~ ~ align x run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 0 if score $z math matches 0 positioned ~1 ~ ~ align x run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches 1 if score $z math matches 0 positioned ~ ~-1 ~ align y run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches -1 if score $z math matches 0 positioned ~ ~1 ~ align y run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches 0 if score $z math matches 1 positioned ~ ~ ~-1 align z run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches 0 if score $z math matches -1 positioned ~ ~ ~1 align z run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches 1 if score $z math matches 0 positioned ~-1 ~-1 ~ align xy run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches -1 if score $z math matches 0 positioned ~-1 ~1 ~ align xy run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 1 if score $z math matches 0 positioned ~1 ~-1 ~ align xy run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches -1 if score $z math matches 0 positioned ~1 ~1 ~ align xy run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches 0 if score $z math matches 1 positioned ~-1 ~ ~-1 align xz run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches 0 if score $z math matches -1 positioned ~-1 ~ ~1 align xz run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 0 if score $z math matches 1 positioned ~1 ~ ~-1 align xz run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 0 if score $z math matches -1 positioned ~1 ~ ~1 align xz run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches 1 if score $z math matches 1 positioned ~ ~-1 ~-1 align yz run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches 1 if score $z math matches -1 positioned ~ ~-1 ~1 align yz run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches -1 if score $z math matches 1 positioned ~ ~1 ~-1 align yz run tp @s ~ ~ ~
#execute if score $x math matches 0 if score $y math matches -1 if score $z math matches -1 positioned ~ ~1 ~1 align yz run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches 1 if score $z math matches 1 positioned ~-1 ~-1 ~-1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 1 if score $z math matches 1 positioned ~1 ~-1 ~-1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches -1 if score $z math matches 1 positioned ~-1 ~1 ~-1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches 1 if score $z math matches -1 positioned ~-1 ~-1 ~1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches -1 if score $z math matches 1 positioned ~1 ~1 ~-1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches -1 if score $y math matches 1 if score $z math matches -1 positioned ~1 ~-1 ~1 align xyz run tp @s ~ ~ ~
#execute if score $x math matches 1 if score $y math matches -1 if score $z math matches -1 positioned ~-1 ~1 ~1 align xyz run tp @s ~ ~ ~