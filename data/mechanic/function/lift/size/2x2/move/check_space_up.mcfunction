# test free space (chains)
execute unless block ~ ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0

# ensure that there is at least one layer after moving upwards
execute unless block ~ ~4 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~ ~4 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~4 ~ minecraft:iron_chain run scoreboard players set result SML.isValid 0
execute unless block ~1 ~4 ~1 minecraft:iron_chain run scoreboard players set result SML.isValid 0
