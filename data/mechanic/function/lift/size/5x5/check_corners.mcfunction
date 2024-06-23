# prepare
scoreboard players set @s SML.isValid 0

# check each corner
execute positioned ~ ~ ~ run function mechanic:lift/common/detection/check_corner
execute positioned ~4 ~ ~ run function mechanic:lift/common/detection/check_corner
execute positioned ~ ~ ~4 run function mechanic:lift/common/detection/check_corner
execute positioned ~4 ~ ~4 run function mechanic:lift/common/detection/check_corner

# check result
execute if score @s SML.isValid matches 4 run scoreboard players set @s SML.found 1

# debug
execute if score var SML.debug matches 1.. if score @s SML.found matches 1 run say 5x5 found

# mark if found
execute if score @s SML.found matches 1 positioned ~0.5 ~ ~0.5 run function mechanic:lift/size/5x5/mark_lift
