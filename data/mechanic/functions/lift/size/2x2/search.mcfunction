# search clockwise
execute unless score @s SML.found matches 1.. run function mechanic:lift/size/2x2/check_corners
execute unless score @s SML.found matches 1.. positioned ~-1 ~ ~ run function mechanic:lift/size/2x2/check_corners
execute unless score @s SML.found matches 1.. positioned ~-1 ~ ~-1 run function mechanic:lift/size/2x2/check_corners
execute unless score @s SML.found matches 1.. positioned ~ ~ ~-1 run function mechanic:lift/size/2x2/check_corners
