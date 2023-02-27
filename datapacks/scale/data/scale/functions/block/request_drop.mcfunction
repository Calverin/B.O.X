tag @s remove held
#execute on passengers as @s[type=interaction] run data merge entity @s {height:1.01f,width:1.01f}
scoreboard players operation $check id = @s id
execute unless entity @e[type=marker,tag=held_block,distance=..3] as @a[gamemode=adventure,tag=playing,advancements={scale:click_block=false},tag=holding] at @s if score @s id = $check id run function scale:player/drop
execute as @a[gamemode=adventure,tag=playing,advancements={scale:click_block=true},tag=holding] at @s if score @s id = $check id run function scale:player/drop