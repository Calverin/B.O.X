execute store success score $success id run data modify entity @s interaction.timestamp set from storage data time
execute if score $success id matches 0 on vehicle run function scale:block/interact