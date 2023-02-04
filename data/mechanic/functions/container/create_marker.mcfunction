# mark center of block (still)
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=container_marker,distance=..0.2] run summon minecraft:marker ~ ~ ~ {Tags: ["container_marker"]}

# set marker id of player
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players operation @e[tag=container_marker,distance=..0.2] SML.id = @s SML.id

# remember player rotation
scoreboard players set @s SML.interacted 1
function mechanic:utility/rotation/begin

# debug
execute if score var SML.debug matches 2.. run say container marked 

# trigger search for opend container
execute as @e[tag=container_marker,distance=..1.1] at @s run function mechanic:lift/common/detection/start_search
