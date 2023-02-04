scoreboard players operation var SML.id = @s SML.id
execute as @e[tag=lift_marker] if score @s SML.id = var SML.id if score @s SML.count matches ..3 run scoreboard players set result SML.isValid 0