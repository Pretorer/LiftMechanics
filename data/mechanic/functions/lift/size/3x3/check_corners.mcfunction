# prepare
scoreboard players set @s SML.isValid 0

# check each corner
execute positioned ~ ~ ~ run function mechanic:lift/common/detection/check_corner
execute positioned ~2 ~ ~ run function mechanic:lift/common/detection/check_corner
execute positioned ~ ~ ~2 run function mechanic:lift/common/detection/check_corner
execute positioned ~2 ~ ~2 run function mechanic:lift/common/detection/check_corner

# check result
execute if score @s SML.isValid matches 4 run scoreboard players set @s SML.found 1

# debug
execute if score var SML.debug matches 1.. if score @s SML.found matches 1 run say 3x3 found

# mark if found
execute if score @s SML.found matches 1 positioned ~0.5 ~ ~0.5 run function mechanic:lift/size/3x3/mark_lift