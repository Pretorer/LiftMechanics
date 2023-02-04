# mark each corner
summon minecraft:marker ~ ~ ~ {Tags: ["lift_corner_marker"]}
execute positioned ~4 ~ ~ run summon minecraft:marker ~ ~ ~ {Tags: ["lift_corner_marker"]}
execute positioned ~ ~ ~4 run summon minecraft:marker ~ ~ ~ {Tags: ["lift_corner_marker"]}
execute positioned ~4 ~ ~4 run summon minecraft:marker ~ ~ ~ {Tags: ["lift_corner_marker"]}

# if found place marker with size
summon minecraft:marker ~ ~ ~ {Tags: ["lift_marker"]}

# set id
scoreboard players add last_lift SML.id 1
scoreboard players operation @e[tag=lift_marker,distance=..0.2] SML.id = last_lift SML.id
scoreboard players operation @e[tag=lift_corner_marker,distance=..0.2] SML.id = last_lift SML.id
execute positioned ~4 ~ ~ run scoreboard players operation @e[tag=lift_corner_marker,distance=..0.2] SML.id = last_lift SML.id
execute positioned ~ ~ ~4 run scoreboard players operation @e[tag=lift_corner_marker,distance=..0.2] SML.id = last_lift SML.id
execute positioned ~4 ~ ~4 run scoreboard players operation @e[tag=lift_corner_marker,distance=..0.2] SML.id = last_lift SML.id

# set size
scoreboard players set @e[tag=lift_marker,distance=..0.2] SML.size 5

# set not init
scoreboard players set @e[tag=lift_marker,distance=..0.2] SML.isInit 0

# find platform
execute as @e[tag=lift_marker,distance=..0.2] at @s run function mechanic:lift/common/platform/mark_platform
