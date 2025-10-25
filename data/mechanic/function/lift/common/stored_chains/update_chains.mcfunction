# mark on same id
scoreboard players set @e SML.marked 0
scoreboard players operation var SML.id = @s SML.id
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id run scoreboard players set @s SML.marked 1

# count from all marked
## execute if score @s SML.chain_count_iron matches 0 run scoreboard players set @s SML.chain_count_iron 0
## execute if score @s SML.chain_count_raw_copper matches 0 run scoreboard players set @s SML.chain_count_raw_copper 0
## execute if score @s SML.chain_count_waxed_copper matches 0 run scoreboard players set @s SML.chain_count_waxed_copper 0

scoreboard players operation @s SML.chain_count_iron += @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_iron
scoreboard players operation @s SML.chain_count_raw_copper += @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_raw_copper
scoreboard players operation @s SML.chain_count_waxed_copper += @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_waxed_copper

# reset single container counter
scoreboard players set @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_iron 0
scoreboard players set @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_raw_copper 0
scoreboard players set @e[tag=lift_corner_marker,scores={SML.marked=1}] SML.chain_count_waxed_copper 0


# debug
execute if score var SML.debug matches 1 run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_iron"}},{"text":" iron_chain"}]
execute if score var SML.debug matches 1 run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_raw_copper"}},{"text":" raw_copper_chain"}]
execute if score var SML.debug matches 1 run tellraw @a [{"text":"Found "},{"score":{"name":"@s","objective":"SML.chain_count_waxed_copper"}},{"text":" waxed_copper_chain"}]
