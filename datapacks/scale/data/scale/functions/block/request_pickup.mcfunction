tag @s add held
execute on passengers as @s[type=block_display,tag=shulker] run ride @s dismount
execute as @e[type=block_display,tag=shulker,tag=block,distance=..5,limit=1,sort=nearest] if score @s id = $block id run tp @s ~ -63 ~
#execute on passengers as @s[type=interaction] run data merge entity @s {height:2.5f,width:2.5f}
execute as @a[gamemode=adventure,tag=playing,advancements={scale:click_block=true},tag=!holding,sort=nearest,limit=1] at @s run function scale:player/pickup