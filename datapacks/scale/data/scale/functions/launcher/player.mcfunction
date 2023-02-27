# For when a player is launched by a launcher

# Sound
playsound entity.ghast.shoot master @s ~ ~ ~ 10 1.2
# Drop block
scoreboard players operation $check id = @s id
scoreboard players set @s cooldown 20
execute as @s[tag=holding] as @e[type=block_display,tag=block,tag=!shulker,tag=held] at @s if score @s id = $check id run function scale:block/snap