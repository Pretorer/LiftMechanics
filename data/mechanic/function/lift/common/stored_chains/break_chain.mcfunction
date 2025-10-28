# determine chain type
## by quality decending: {0:none, 1:iron, 2:waxed, 3:raw}
scoreboard players set chain_type SML.variables 0
execute if block ~ ~ ~ minecraft:iron_chain run scoreboard players set chain_type SML.variables 1
execute if block ~ ~ ~ minecraft:waxed_copper_chain run scoreboard players set chain_type SML.variables 2
execute if block ~ ~ ~ minecraft:copper_chain run scoreboard players set chain_type SML.variables 3


# increase chain count
execute if score chain_type SML.variables matches 1 run scoreboard players add @s SML.chain_count_iron 1
execute if score chain_type SML.variables matches 2 run scoreboard players add @s SML.chain_count_waxed_copper 1
execute if score chain_type SML.variables matches 3 run scoreboard players add @s SML.chain_count_raw_copper 1

# break block
#execute unless score chain_type SML.variables matches 0 run setblock ~ ~ ~ minecraft:air
