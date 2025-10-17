# prepare
scoreboard players set result SML.variables 1

# check each corner
execute unless block ~ ~ ~ minecraft:iron_chain run scoreboard players set result SML.variables 0
execute unless block ~4 ~ ~ minecraft:iron_chain run scoreboard players set result SML.variables 0
execute unless block ~ ~ ~4 minecraft:iron_chain run scoreboard players set result SML.variables 0
execute unless block ~4 ~ ~4 minecraft:iron_chain run scoreboard players set result SML.variables 0

# indicate
particle minecraft:ash ~ ~0.5 ~ 0 0.3 0 1 10
particle minecraft:ash ~4 ~0.5 ~ 0 0.3 0 1 10
particle minecraft:ash ~ ~0.5 ~4 0 0.3 0 1 10
particle minecraft:ash ~4 ~0.5 ~4 0 0.3 0 1 10