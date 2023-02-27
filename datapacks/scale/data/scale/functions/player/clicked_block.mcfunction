execute store result storage data time long 1 run time query gametime
execute as @s[gamemode=adventure] unless score @s cooldown matches 1.. as @e[type=interaction,tag=block,distance=..10] if data entity @s interaction run function scale:block/check_interaction
advancement revoke @s only scale:click_block