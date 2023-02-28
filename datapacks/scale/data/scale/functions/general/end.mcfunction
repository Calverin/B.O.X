tp @s -51 -60 7 180 0
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1000 1 1
tellraw @s ["",{"text":"- ","color":"gray"},{"text":"Tests are complete. Well done.","color":"red","italic":true}]
tag @s remove 1
tag @s remove 2
tag @s remove 3
scoreboard players set $dropped id 0