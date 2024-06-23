# prepare
scoreboard players operation var SML.id = @s SML.id
scoreboard players operation var SML.hight = @s SML.hight

# store hight
execute as @e[tag=platform_marker] if score @s SML.id = var SML.id run scoreboard players operation @s SML.targetHight = var SML.hight
execute as @e[tag=platform_marker] if score @s SML.id = var SML.id run scoreboard players set @s SML.called 1

# mark as powered
scoreboard players set @s SML.isPowered 1
