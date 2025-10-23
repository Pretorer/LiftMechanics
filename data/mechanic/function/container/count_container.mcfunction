# select inventory size
execute if block ~ ~ ~ #mechanic:container5x1 run function mechanic:container/5x1_container
execute if block ~ ~ ~ #mechanic:container3x3 run function mechanic:container/3x3_container
execute if block ~ ~ ~ #mechanic:container9x3 run function mechanic:container/9x3_container

# debug
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_iron"}},{"text":" iron_chain"}]
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_raw_copper"}},{"text":" raw_copper_chain"}]
execute if score var SML.debug matches 2.. run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_waxed_copper"}},{"text":" waxed_copper_chain"}]
