execute positioned ~0.5 ~ ~0.5 if entity @e[tag=lift_corner_marker,distance=..0.1] run return 0

execute unless block ~ ~ ~ #mechanic:container run return 0

execute unless block ~ ~-1 ~ minecraft:iron_chain run return 0
execute unless block ~ ~-2 ~ minecraft:iron_chain run return 0
execute unless block ~ ~-3 ~ minecraft:iron_chain run return 0
execute unless block ~ ~-4 ~ minecraft:iron_chain run return 0

# return true:
scoreboard players add @s SML.isValid 1

