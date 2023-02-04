# set marker
summon marker ~ ~ ~ {Tags: ["platform_marker"], NoGravity: 1b}

# set id and size
scoreboard players set @e[tag=platform_marker,distance=..0.2] SML.isInit 0
scoreboard players operation @e[tag=platform_marker,distance=..0.2] SML.id = @s SML.id
scoreboard players operation @e[tag=platform_marker,distance=..0.2] SML.size = @s SML.size

# debug
execute if score var SML.debug matches 2.. run say start search for platform

# find platform / ground
execute as @e[tag=platform_marker,distance=..0.2] run function mechanic:lift/common/platform/search_platform

# check if found
scoreboard players operation var SML.id = @s SML.id
execute if score result SML.variables matches 1 run scoreboard players set @s SML.isInit 1
execute if score result SML.variables matches 1 as @e[tag=platform_marker] if score @s SML.id = var SML.id run scoreboard players set @s SML.isInit 1

# indicate success
execute if score result SML.variables matches 1 as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id at @s run playsound minecraft:block.iron_trapdoor.open block @a

# cleanup if not found
execute if score result SML.variables matches 0 run function mechanic:lift/common/platform/not_valid
