# test free space
execute unless block ~ ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~1 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~2 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0

# test free space (air / chains) to not duplicate blocks
execute unless block ~ ~3 ~ minecraft:chain run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~2 minecraft:chain run scoreboard players set result SML.isValid 0

execute unless block ~1 ~3 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~2 ~3 ~ minecraft:chain run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~2 minecraft:chain run scoreboard players set result SML.isValid 0
