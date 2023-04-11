# redstone interaction
function mechanic:redstone/update

# platform
execute as @e[tag=platform_marker,scores={SML.isInit=1}] at @s run function mechanic:lift/common/call/update
execute as @e[tag=platform_marker,scores={SML.isInit=1}] at @s run function mechanic:lift/common/update
execute as @e[tag=lift_marker,scores={SML.isInit=1}] at @s run function mechanic:lift/common/stored_chains/update_chains

# reset player input
scoreboard players set @a SML.jump 0
execute as @a[scores={SML.sneak=9..}] run scoreboard players set @s SML.sneak 0

# remove destroyed marker
execute as @e[tag=caller_marker] at @s unless block ~ ~ ~ minecraft:redstone_lamp run kill @s
execute as @e[tag=brake_marker] at @s unless block ~ ~ ~ minecraft:observer run kill @s
execute as @e[tag=lift_corner_marker] at @s unless block ~ ~ ~ #mechanic:container run function mechanic:lift/common/remove_marker

# loop
schedule function mechanic:slow_loop 2t