# select inventory size
execute if block ~ ~ ~ #mechanic:container5x1 run function mechanic:container/count_chains/5x1_container
execute if block ~ ~ ~ #mechanic:container3x3 run function mechanic:container/count_chains/3x3_container
execute if block ~ ~ ~ #mechanic:container9x3 run function mechanic:container/count_chains/9x3_container

# remove counted items from container
data remove block ~ ~ ~ Items[{id:"minecraft:iron_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:exposed_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:weathered_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:oxidized_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:waxed_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:waxed_exposed_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:waxed_weathered_copper_chain"}]
data remove block ~ ~ ~ Items[{id:"minecraft:waxed_oxidized_copper_chain"}]

# debug
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_iron"}},{"text":" iron_chain"}]
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_raw_copper"}},{"text":" raw_copper_chain"}]
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_waxed_copper"}},{"text":" waxed_copper_chain"}]
