# prepare
scoreboard players operation @s SML.id = @s SML.onLift
scoreboard players operation var SML.id = @s SML.id

# store hight
execute as @e[tag=platform_marker] if score @s SML.id = var SML.id run scoreboard players operation var SML.hight = @s SML.hight
scoreboard players operation @s SML.hight = var SML.hight
