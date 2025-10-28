# move scoreboard SML.chain_count_iron into SML.chain_count_iron
execute as @e[tag=lift_marker] if score @s SML.count matches 1.. run scoreboard players operation @s SML.chain_count_iron += @s SML.count
scoreboard objectives remove SML.count
