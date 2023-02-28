# Storing the data of the marker being moved in front of the player that is used to move a held block
execute store result score $m_x pos run data get entity @s Pos[0] 1000
execute store result score $m_y pos run data get entity @s Pos[1] 1000
execute store result score $m_z pos run data get entity @s Pos[2] 1000
execute store result score $m_in_block pos unless block ~ ~ ~ #scale:air_ish