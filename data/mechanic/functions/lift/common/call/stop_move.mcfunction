# to stop "slow"
scoreboard players set @s SML.velocity 0

# dispatch
execute if score @s SML.size matches 2 run function mechanic:lift/size/2x2/move/stop_move
execute if score @s SML.size matches 3 run function mechanic:lift/size/3x3/move/stop_move
execute if score @s SML.size matches 4 run function mechanic:lift/size/4x4/move/stop_move
execute if score @s SML.size matches 5 run function mechanic:lift/size/5x5/move/stop_move