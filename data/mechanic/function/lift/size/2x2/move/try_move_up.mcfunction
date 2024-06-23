# check preconditions
scoreboard players set result SML.isValid 1
function mechanic:lift/size/2x2/move/check_space_up

execute if score result SML.isValid matches 1 positioned ~-0.5 ~ ~-0.5 run function mechanic:lift/size/2x2/move/move_up

# if not allowed to move, stop call
execute if score result SML.isValid matches 0 run function mechanic:lift/size/2x2/move/stop_move
