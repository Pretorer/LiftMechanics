# determine chain type
## by quality decending: {0:none, 1:iron, 2:waxed, 3:raw}
scoreboard players set chain_type SML.variables 0
execute if score @s SML.chain_count_iron matches 1.. run scoreboard players set chain_type SML.variables 1
execute if score @s SML.chain_count_waxed_copper matches 1.. unless score chain_type SML.variables matches 1.. run scoreboard players set chain_type SML.variables 2
execute if score @s SML.chain_count_raw_copper matches 1.. unless score chain_type SML.variables matches 1.. run scoreboard players set chain_type SML.variables 3

# remove chain count
execute if score chain_type SML.variables matches 1 run scoreboard players remove @s SML.chain_count_iron 1
execute if score chain_type SML.variables matches 2 run scoreboard players remove @s SML.chain_count_waxed_copper 1
execute if score chain_type SML.variables matches 3 run scoreboard players remove @s SML.chain_count_raw_copper 1

# place block
execute if score chain_type SML.variables matches 1 run setblock ~ ~ ~ minecraft:iron_chain
execute if score chain_type SML.variables matches 2 run setblock ~ ~ ~ minecraft:waxed_copper_chain
execute if score chain_type SML.variables matches 3 run setblock ~ ~ ~ minecraft:copper_chain
