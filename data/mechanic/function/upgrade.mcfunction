# move scoreboard SML.chain_count_iron into SML.chain_count_iron
execute as @e[type=minecraft:marker] store result score @s SML.chain_count_iron run scoreboard players get @s SML.count
scoreboard objectives remove SML.count
