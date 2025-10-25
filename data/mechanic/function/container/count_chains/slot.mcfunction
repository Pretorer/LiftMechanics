# early return
execute if score success SML.variables matches 0 run return 0
## Note: If the result is 1, at least one item is available

# get count
execute store result score chain_count SML.variables run data get storage sml:temp Item.count

# store at right type
execute if data storage sml:temp {Item:{id:"minecraft:iron_chain"}} run scoreboard players operation @s SML.chain_count_iron += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:copper_chain"}} run scoreboard players operation @s SML.chain_count_raw_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:exposed_copper_chain"}} run scoreboard players operation @s SML.chain_count_raw_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:weathered_copper_chain"}} run scoreboard players operation @s SML.chain_count_raw_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:oxidized_copper_chain"}} run scoreboard players operation @s SML.chain_count_raw_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:waxed_copper_chain"}} run scoreboard players operation @s SML.chain_count_waxed_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:waxed_exposed_copper_chain"}} run scoreboard players operation @s SML.chain_count_waxed_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:waxed_weathered_copper_chain"}} run scoreboard players operation @s SML.chain_count_waxed_copper += chain_count SML.variables

execute if data storage sml:temp {Item:{id:"minecraft:waxed_oxidized_copper_chain"}} run scoreboard players operation @s SML.chain_count_waxed_copper += chain_count SML.variables

# clear storage (fix error on next modify command with same data)
data remove storage sml:temp Item