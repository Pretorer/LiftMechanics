# prepare
scoreboard players operation var SML.id = @s SML.id
scoreboard players operation var SML.hight = @s SML.hight

# store hight
execute as @e[tag=platform_marker,scores={SML.called=1}] if score @s SML.id = var SML.id if score @s SML.hight = var SML.hight run scoreboard players set @s SML.called 0
