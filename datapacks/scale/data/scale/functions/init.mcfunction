gamerule maxCommandChainLength 1000000000
scoreboard objectives add math dummy
scoreboard objectives add pos dummy
scoreboard objectives add vel_x dummy
scoreboard objectives add vel_y dummy
scoreboard objectives add vel_z dummy
scoreboard objectives add id dummy
scoreboard objectives add size_x dummy
scoreboard objectives add size_y dummy
scoreboard objectives add size_z dummy
scoreboard objectives add pressed dummy
scoreboard objectives add power dummy
scoreboard objectives add max_power dummy
scoreboard objectives add cooldown dummy
scoreboard players set $dropped id 0

scoreboard objectives add number dummy
scoreboard players set $-1 number -1
scoreboard players set $1 number 1
scoreboard players set $2 number 2
scoreboard players set $3 number 3
scoreboard players set $10 number 10
scoreboard players set $12 number 12
scoreboard players set $100 number 100
scoreboard players set $200 number 200
scoreboard players set $2000 number 2000
scoreboard players set $13769 number 13769
scoreboard players set $2472808 number 2472808

schedule function scale:general/reset 40t