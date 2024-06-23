# prepare
scoreboard players set result SML.variables 1

# check each corner
execute unless block ~ ~ ~ #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~ ~ ~1 #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~ ~ ~2 #mechanic:solid run scoreboard players set result SML.variables 0

execute unless block ~1 ~ ~ #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~1 ~ ~1 #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~1 ~ ~2 #mechanic:solid run scoreboard players set result SML.variables 0

execute unless block ~2 ~ ~ #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~2 ~ ~1 #mechanic:solid run scoreboard players set result SML.variables 0
execute unless block ~2 ~ ~2 #mechanic:solid run scoreboard players set result SML.variables 0