# prepare
scoreboard players operation var SML.id = @s SML.id
scoreboard players operation var SML.hight = @s SML.hight

# check if lift has arrived
execute as @e[tag=platform_marker] if score @s SML.id = var SML.id unless score @s SML.hight = var SML.hight run return 0

# turn off the copper bulb
fill ~ ~ ~ ~ ~ ~ minecraft:copper_bulb replace minecraft:copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:exposed_copper_bulb replace minecraft:exposed_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:oxidized_copper_bulb replace minecraft:oxidized_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:weathered_copper_bulb replace minecraft:weathered_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:waxed_copper_bulb replace minecraft:waxed_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:waxed_exposed_copper_bulb replace minecraft:waxed_exposed_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:waxed_oxidized_copper_bulb replace minecraft:waxed_oxidized_copper_bulb
fill ~ ~ ~ ~ ~ ~ minecraft:waxed_weathered_copper_bulb replace minecraft:waxed_weathered_copper_bulb
say set