# prepare
scoreboard players operation var SML.id = @s SML.id

# indicate destruction
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id at @s run playsound minecraft:block.iron_trapdoor.close block @a

# drop chains
execute at @s as @e[tag=lift_marker] if score @s SML.id = var SML.id run function mechanic:lift/common/stored_chains/drop_chains

# destroy all potential markers
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id run kill @s
execute as @e[tag=platform_marker] if score @s SML.id = var SML.id run kill @s
execute as @e[tag=lift_marker] if score @s SML.id = var SML.id run kill @s
