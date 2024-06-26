# mark ray position with marker
summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["brake_marker"]}

# validate
execute as @e[tag=brake_marker] unless score @s SML.onLift matches 0.. run scoreboard players set @s SML.onLift 0
execute as @e[tag=platform_marker,scores={SML.isInit=1},distance=..10] at @s positioned ~-1.5 ~-1 ~-1.5 run function mechanic:redstone/brake/mark_entitys_platform
execute as @e[tag=platform_marker,scores={SML.isInit=1},distance=..10] at @s positioned ~-0.5 ~-1 ~-0.5 run function mechanic:redstone/brake/unmark_entitys_platform

# link if valid
execute positioned ~0.5 ~0.5 ~0.5 as @e[tag=brake_marker,scores={SML.onLift=1..},distance=..0.2] at @s run function mechanic:redstone/common/link_to_lift

# signal success using sound
execute positioned ~0.5 ~0.5 ~0.5 as @e[tag=brake_marker,scores={SML.onLift=1..},distance=..0.2] at @s run playsound minecraft:block.copper_door.close block @a

# remove marker if not valide
kill @e[tag=brake_marker,scores={SML.onLift=0}]