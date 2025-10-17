# test free space
execute unless block ~ ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~3 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~4 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~1 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~3 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~4 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~2 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~3 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~2 ~-2 ~4 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~3 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~3 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~3 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~3 ~-2 ~3 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~3 ~-2 ~4 #mechanic:weak run scoreboard players set result SML.isValid 0

execute unless block ~4 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~4 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~4 ~-2 ~2 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~4 ~-2 ~3 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~4 ~-2 ~4 #mechanic:weak run scoreboard players set result SML.isValid 0

# test free space (air / chains) to not duplicate blocks
execute unless block ~ ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~3 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~4 minecraft:iron_chain run scoreboard players set result SML.isValid 0

execute unless block ~1 ~3 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~3 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~4 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~2 ~3 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~3 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~4 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~3 ~3 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~3 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~3 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~3 ~3 ~3 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~3 ~3 ~4 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~4 ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~4 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~4 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~4 ~3 ~3 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~4 ~3 ~4 minecraft:iron_chain run scoreboard players set result SML.isValid 0
