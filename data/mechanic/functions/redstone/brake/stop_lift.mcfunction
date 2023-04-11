# prepare
scoreboard players operation var SML.id = @s SML.id
scoreboard players operation var SML.hight = @s SML.hight

# to stop "slow"
execute as @e[tag=platform_marker,scores={SML.called=1}] at @s if score @s SML.id = var SML.id if score @s SML.hight = var SML.hight run scoreboard players set @s SML.velocity 0

# stop lift
execute as @e[tag=platform_marker,scores={SML.called=1}] at @s if score @s SML.id = var SML.id if score @s SML.hight = var SML.hight run function mechanic:lift/common/call/stop_move
