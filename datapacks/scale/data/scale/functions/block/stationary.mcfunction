tag @s add temp
execute if block ~ ~-0.001 ~ air positioned ~ ~-0.5 ~ unless entity @e[type=block_display,tag=block,tag=!temp,tag=stationary,distance=..1.5] run tag @s remove stationary
execute as @s[tag=!stationary] on passengers as @s[type=shulker] run ride @s dismount
execute as @s[tag=!stationary] as @e[type=shulker,tag=block,distance=..5,limit=1,sort=nearest] if score @s id = $check id run tp @s ~ -63 ~
tag @s remove temp