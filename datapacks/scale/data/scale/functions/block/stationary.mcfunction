tag @s add temp
execute if block ~ ~-0.01 ~ #scale:air_ish positioned ~-1 ~-1.25 ~-1 unless entity @e[type=block_display,tag=block,tag=!shulker,tag=!temp,tag=stationary,dx=1,dy=1.01,dz=1] run tag @s remove stationary
scoreboard players operation $check id = @s id
data merge entity @s[tag=!stationary,tag=float] {block_state:{Name:"minecraft:magenta_stained_glass"}}
execute as @s[tag=!stationary] on passengers as @s[type=block_display,tag=shulker] run ride @s dismount
execute as @s[tag=!stationary] as @e[type=block_display,tag=shulker,tag=block] if score @s id = $check id run tp @s ~ -63 ~
tag @s remove temp