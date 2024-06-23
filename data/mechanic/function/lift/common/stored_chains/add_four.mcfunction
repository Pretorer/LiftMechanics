scoreboard players operation var SML.id = @s SML.id
execute as @e[tag=lift_marker] if score @s SML.id = var SML.id run scoreboard players add @s SML.count 4