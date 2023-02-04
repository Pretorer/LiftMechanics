# search clockwise
execute unless score @s SML.found matches 1.. run function mechanic:lift/size/4x4/check_corners
execute unless score @s SML.found matches 1.. positioned ~-3 ~ ~ run function mechanic:lift/size/4x4/check_corners
execute unless score @s SML.found matches 1.. positioned ~-3 ~ ~-3 run function mechanic:lift/size/4x4/check_corners
execute unless score @s SML.found matches 1.. positioned ~ ~ ~-3 run function mechanic:lift/size/4x4/check_corners
