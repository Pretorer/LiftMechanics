# check preconditions
scoreboard players set result SML.isValid 1
function mechanic:lift/size/5x5/move/check_space_down
function mechanic:lift/common/stored_chains/check_four

execute if score result SML.isValid matches 1 positioned ~-0.5 ~ ~-0.5 run function mechanic:lift/size/5x5/move/move_down

# if not allowed to move, stop call
execute if score result SML.isValid matches 0 run scoreboard players set @s SML.called 0
