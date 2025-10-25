tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_raw_copper"}},{"text":" copper_chain"}]

execute if score @s SML.chain_count_raw_copper matches 64.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:64}}
execute if score @s SML.chain_count_raw_copper matches 64.. run scoreboard players remove @s SML.chain_count_raw_copper 64

execute if score @s SML.chain_count_raw_copper matches 32.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:32}}
execute if score @s SML.chain_count_raw_copper matches 32.. run scoreboard players remove @s SML.chain_count_raw_copper 32

execute if score @s SML.chain_count_raw_copper matches 16.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:16}}
execute if score @s SML.chain_count_raw_copper matches 16.. run scoreboard players remove @s SML.chain_count_raw_copper 16

execute if score @s SML.chain_count_raw_copper matches 8.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:8}}
execute if score @s SML.chain_count_raw_copper matches 8.. run scoreboard players remove @s SML.chain_count_raw_copper 8

execute if score @s SML.chain_count_raw_copper matches 4.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:4}}
execute if score @s SML.chain_count_raw_copper matches 4.. run scoreboard players remove @s SML.chain_count_raw_copper 4

execute if score @s SML.chain_count_raw_copper matches 2.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:2}}
execute if score @s SML.chain_count_raw_copper matches 2.. run scoreboard players remove @s SML.chain_count_raw_copper 2

execute if score @s SML.chain_count_raw_copper matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_chain",count:1}}
execute if score @s SML.chain_count_raw_copper matches 1.. run scoreboard players remove @s SML.chain_count_raw_copper 1

execute if score @s SML.chain_count_raw_copper matches 1.. run function mechanic:container/drop_chains/raw_copper_chains
