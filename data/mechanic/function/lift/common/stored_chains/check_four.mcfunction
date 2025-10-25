scoreboard players operation var SML.id = @s SML.id

execute as @e[tag=lift_marker] if score @s SML.id = var SML.id if score @s SML.chain_count_iron matches 4.. run return 0

# update if missing chains
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id at @s run function mechanic:container/count_chains/container
execute as @e[tag=lift_marker] if score @s SML.id = var SML.id at @s run function mechanic:lift/common/stored_chains/update_chains

# invalidate
execute as @e[tag=lift_marker] if score @s SML.id = var SML.id if score @s SML.chain_count_iron matches ..3 run scoreboard players set result SML.isValid 0
