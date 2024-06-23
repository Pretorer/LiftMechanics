# move up
execute if score @s SML.called matches 1.. if score @s SML.hight < @s SML.targetHight run function mechanic:lift/common/call/move_up

# move down
execute if score @s SML.called matches 1.. if score @s SML.hight > @s SML.targetHight run function mechanic:lift/common/call/move_down

# stop move
execute if score @s SML.called matches 1.. if score @s SML.hight = @s SML.targetHight run function mechanic:lift/common/call/stop_move

# update hight
execute store result score @s SML.hight run data get entity @s Pos[1]
