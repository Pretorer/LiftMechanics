# prepare
scoreboard players set result SML.variables 1

# check each corner
execute unless block ~ ~ ~ chain run scoreboard players set result SML.variables 0
execute unless block ~2 ~ ~ chain run scoreboard players set result SML.variables 0
execute unless block ~ ~ ~2 chain run scoreboard players set result SML.variables 0
execute unless block ~2 ~ ~2 chain run scoreboard players set result SML.variables 0

# indicate
particle minecraft:ash ~ ~0.5 ~ 0 0.3 0 1 10
particle minecraft:ash ~2 ~0.5 ~ 0 0.3 0 1 10
particle minecraft:ash ~ ~0.5 ~2 0 0.3 0 1 10
particle minecraft:ash ~2 ~0.5 ~2 0 0.3 0 1 10