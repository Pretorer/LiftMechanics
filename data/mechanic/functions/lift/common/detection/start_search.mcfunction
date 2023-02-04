# prepare
execute unless score @s SML.isValid matches 1.. run scoreboard players set @s SML.found 0

# search if no normal container
execute if score @s SML.found matches 0 align xyz run function mechanic:lift/common/detection/search

# mark to only run once if not found
scoreboard players set @s SML.found 1
