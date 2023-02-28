execute as @s[x=-45,y=-60,z=48,dx=2,dy=3,dz=0,tag=!1] run tellraw @s ["",{"text":"- ","color":"gray"},{"text":"Proceed with mission as planned.","color":"red","italic":true}]
execute as @s[x=-45,y=-60,z=48,dx=2,dy=3,dz=0,tag=!1] run tag @s add 1
execute as @s[x=-49,y=-61,z=23,dx=0,dy=1,dz=0,tag=!2] run playsound item.elytra.flying master @s ~ ~ ~ 100 2 1
execute as @s[x=-49,y=-61,z=23,dx=0,dy=1,dz=0,tag=!2] run effect give @s minecraft:nausea 5 10 true
execute as @s[x=-49,y=-61,z=23,dx=0,dy=1,dz=0,tag=!2] run effect give @s minecraft:blindness 5 10 true
execute as @s[x=-49,y=-61,z=23,dx=0,dy=1,dz=0,tag=!2] run function scale:player/start
execute as @s[x=-80,y=-59,z=-60,dx=0,dy=2,dz=-2,tag=!3] run playsound custom.cryosleep master @s ~ ~ ~ 100 1 1
execute as @s[x=-80,y=-59,z=-60,dx=0,dy=2,dz=-2,tag=!3] run tellraw @s ["",{"text":"- ","color":"gray"},{"text":"You have been in cryosleep for 16 years. We have arrived at our final destination. Before you can leave, you will need to complete some small cognitive and physical challenges to ensure you are fully capable.","color":"red","italic":true}]
execute as @s[x=-80,y=-59,z=-60,dx=0,dy=2,dz=-2,tag=!3] run tag @s add 3

execute as @s[x=-176,y=-23,z=-49,dx=2,dy=2,dz=2] run function scale:general/end
particle reverse_portal -175 -22 -48 1 1 1 0 30 force
particle reverse_portal -63 -59 4 0.1 0.5 0.1 0 20 force
execute as @s[x=-63,y=-61,z=4,dx=0,dy=1,dz=0] run function scale:general/join


particle snowflake -49 -61 23 0.1 0.5 0.1 0.2 10 force