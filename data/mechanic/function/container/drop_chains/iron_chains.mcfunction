tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_iron"}},{"text":" iron_chain"}]

execute if score @s SML.chain_count_iron matches 64.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:64}}
execute if score @s SML.chain_count_iron matches 64.. run scoreboard players remove @s SML.chain_count_iron 64

execute if score @s SML.chain_count_iron matches 32.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:32}}
execute if score @s SML.chain_count_iron matches 32.. run scoreboard players remove @s SML.chain_count_iron 32

execute if score @s SML.chain_count_iron matches 16.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:16}}
execute if score @s SML.chain_count_iron matches 16.. run scoreboard players remove @s SML.chain_count_iron 16

execute if score @s SML.chain_count_iron matches 8.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:8}}
execute if score @s SML.chain_count_iron matches 8.. run scoreboard players remove @s SML.chain_count_iron 8

execute if score @s SML.chain_count_iron matches 4.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:4}}
execute if score @s SML.chain_count_iron matches 4.. run scoreboard players remove @s SML.chain_count_iron 4

execute if score @s SML.chain_count_iron matches 2.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:2}}
execute if score @s SML.chain_count_iron matches 2.. run scoreboard players remove @s SML.chain_count_iron 2

execute if score @s SML.chain_count_iron matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chain",count:1}}
execute if score @s SML.chain_count_iron matches 1.. run scoreboard players remove @s SML.chain_count_iron 1

execute if score @s SML.chain_count_iron matches 1.. run function mechanic:container/drop_chains/iron_chains
