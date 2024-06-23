# search clockwise
execute unless score @s SML.found matches 1.. run function mechanic:lift/size/3x3/check_corners
execute unless score @s SML.found matches 1.. positioned ~-2 ~ ~ run function mechanic:lift/size/3x3/check_corners
execute unless score @s SML.found matches 1.. positioned ~-2 ~ ~-2 run function mechanic:lift/size/3x3/check_corners
execute unless score @s SML.found matches 1.. positioned ~ ~ ~-2 run function mechanic:lift/size/3x3/check_corners
