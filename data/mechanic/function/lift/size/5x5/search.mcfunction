# search clockwise
execute unless score @s SML.found matches 1.. run function mechanic:lift/size/5x5/check_corners
execute unless score @s SML.found matches 1.. positioned ~-4 ~ ~ run function mechanic:lift/size/5x5/check_corners
execute unless score @s SML.found matches 1.. positioned ~-4 ~ ~-4 run function mechanic:lift/size/5x5/check_corners
execute unless score @s SML.found matches 1.. positioned ~ ~ ~-4 run function mechanic:lift/size/5x5/check_corners
