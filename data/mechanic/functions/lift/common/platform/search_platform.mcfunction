# detect what is seaching for
scoreboard players set searchForChain SML.variables 0
execute if block ~ ~-1 ~ minecraft:chain run scoreboard players set searchForChain SML.variables 1

# check chains
execute if score searchForChain SML.variables matches 1 if score @s SML.size matches 2 positioned ~ ~-1 ~ run function mechanic:lift/size/2x2/check_chain_level
execute if score searchForChain SML.variables matches 1 if score @s SML.size matches 3 positioned ~ ~-1 ~ run function mechanic:lift/size/3x3/check_chain_level
execute if score searchForChain SML.variables matches 1 if score @s SML.size matches 4 positioned ~ ~-1 ~ run function mechanic:lift/size/4x4/check_chain_level
execute if score searchForChain SML.variables matches 1 if score @s SML.size matches 5 positioned ~ ~-1 ~ run function mechanic:lift/size/5x5/check_chain_level

# check ground
execute if score searchForChain SML.variables matches 0 if score @s SML.size matches 2 positioned ~ ~-1 ~ run function mechanic:lift/size/2x2/check_platform
execute if score searchForChain SML.variables matches 0 if score @s SML.size matches 3 positioned ~ ~-1 ~ run function mechanic:lift/size/3x3/check_platform
execute if score searchForChain SML.variables matches 0 if score @s SML.size matches 4 positioned ~ ~-1 ~ run function mechanic:lift/size/4x4/check_platform
execute if score searchForChain SML.variables matches 0 if score @s SML.size matches 5 positioned ~ ~-1 ~ run function mechanic:lift/size/5x5/check_platform

# move down
execute if score searchForChain SML.variables matches 1 run teleport @s ~ ~-1 ~

# loop down (hight)
execute if score searchForChain SML.variables matches 1 if score result SML.variables matches 1 at @s run function mechanic:lift/common/platform/search_platform
