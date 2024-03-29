# debug
execute if score var SML.debug matches 2.. run say start search

# check this container
scoreboard players set @s SML.isValid 0
function mechanic:lift/common/detection/check_corner

# debug
execute if score var SML.debug matches 2.. if score @s SML.isValid matches 0 run say stop search (no valid container)

# set found to skip the search if invalid corner
execute if score @s SML.isValid matches 0 run return 0

# search along the axes
scoreboard players set @s SML.found 0
function mechanic:lift/size/2x2/search
execute if score @s SML.found matches 0 run function mechanic:lift/size/3x3/search
execute if score @s SML.found matches 0 run function mechanic:lift/size/4x4/search
execute if score @s SML.found matches 0 run function mechanic:lift/size/5x5/search
