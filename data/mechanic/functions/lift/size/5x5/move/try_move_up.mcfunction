# check preconditions
scoreboard players set result SML.isValid 1
function mechanic:lift/size/5x5/move/check_space_up

execute if score result SML.isValid matches 1 positioned ~-0.5 ~ ~-0.5 run function mechanic:lift/size/5x5/move/move_up

# if not allowed to move, stop call
execute if score result SML.isValid matches 0 run scoreboard players set @s SML.called 0
