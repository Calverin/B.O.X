# For when a player is launched by a launcher

# Levitation
summon area_effect_cloud ~ ~ ~ {Tags:["scale","launcher"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:60,Duration:2,ShowParticles:0b}]}
# Sound
playsound entity.ghast.shoot master @s ~ ~ ~ 10 1.2
# Drop block
scoreboard players operation $check id = @s id
scoreboard players set @s cooldown 20
execute as @s[tag=holding] as @e[type=block_display,tag=block,tag=held] at @s if score @s id = $check id run function scale:block/snap