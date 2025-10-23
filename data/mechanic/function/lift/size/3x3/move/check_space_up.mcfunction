# test free space (chains)
execute unless block ~ ~3 ~ #minecraft:chains run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~3 ~2 #minecraft:chains run scoreboard players set result SML.isValid 0

execute unless block ~1 ~3 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~3 ~2 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~2 ~3 ~ #minecraft:chains run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~3 ~2 #minecraft:chains run scoreboard players set result SML.isValid 0

# ensure that there is at least one layer after moving upwards
execute unless block ~ ~4 ~ #minecraft:chains run scoreboard players set result SML.isValid 0
execute unless block ~ ~4 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~ ~4 ~2 #minecraft:chains run scoreboard players set result SML.isValid 0

execute unless block ~1 ~4 ~ #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~4 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~1 ~4 ~2 #minecraft:air run scoreboard players set result SML.isValid 0

execute unless block ~2 ~4 ~ #minecraft:chains run scoreboard players set result SML.isValid 0
execute unless block ~2 ~4 ~1 #minecraft:air run scoreboard players set result SML.isValid 0
execute unless block ~2 ~4 ~2 #minecraft:chains run scoreboard players set result SML.isValid 0