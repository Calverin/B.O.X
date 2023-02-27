# An interaction was attempted
scoreboard players operation $block id = @s id
execute as @s[tag=!held] if entity @a[gamemode=adventure,tag=playing,advancements={scale:click_block=true},tag=!holding] at @s run function scale:block/request_pickup
execute as @s[tag=held] if entity @a[gamemode=adventure,tag=playing,advancements={scale:click_block=true},sort=nearest,limit=1] at @s run function scale:block/request_drop
execute as @s[tag=held] if entity @a[gamemode=adventure,tag=playing,advancements={scale:click_block=true},tag=!holding] at @s run function scale:block/request_pickup