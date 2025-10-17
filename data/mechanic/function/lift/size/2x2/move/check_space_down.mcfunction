# test free space
execute unless block ~ ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~ ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~ #mechanic:weak run scoreboard players set result SML.isValid 0
execute unless block ~1 ~-2 ~1 #mechanic:weak run scoreboard players set result SML.isValid 0

# test free space (air / chains) to not duplicate blocks
execute unless block ~ ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0
