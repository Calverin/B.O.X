execute as @s[tag=held] run function scale:block/snap
playsound block.fire.extinguish master @a ~ ~ ~ 5 1.2
particle soul ~ ~ ~ 0.25 0.25 0.25 0.1 20 force
tp @s ~ -10000 ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s