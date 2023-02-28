# Check if a small button is pressed
execute if block ~ ~ ~ acacia_button[powered=true] run scoreboard players set $button power 1
execute if block ~ ~ ~ acacia_button[powered=false] run scoreboard players set $button power 0

# Pressed
scoreboard players operation $check id = @s id
execute if score $button power matches 0 as @e[type=block_display,tag=dispenser] at @s if score @s id = $check id run scoreboard players set @s power 0