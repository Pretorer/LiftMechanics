# mark ray position with marker
summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["caller_marker"]}

# validate
execute as @e[tag=caller_marker] unless score @s SML.onLift matches 0.. run scoreboard players set @s SML.onLift 0
execute as @e[tag=platform_marker,scores={SML.isInit=1},distance=..10] at @s positioned ~-1.5 ~-1 ~-1.5 run function mechanic:redstone/caller/mark_entitys_platform
execute as @e[tag=lift_marker,scores={SML.isInit=1},distance=..10] at @s positioned ~-0.5 ~ ~-0.5 run function mechanic:redstone/caller/mark_entitys_base

# link if valid
execute positioned ~0.5 ~0.5 ~0.5 as @e[tag=caller_marker,scores={SML.onLift=1..},distance=..0.2] at @s run function mechanic:redstone/common/link_to_lift

# remove marker if not valide
kill @e[tag=caller_marker,scores={SML.onLift=0}]
