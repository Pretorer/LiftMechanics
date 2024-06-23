# stop lift if called
execute as @e[tag=brake_marker,scores={SML.id=1..}] run function mechanic:redstone/brake/stop_lift

# call lift once if activated
execute as @e[tag=caller_marker,scores={SML.id=1..,SML.isPowered=0}] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run function mechanic:redstone/caller/call_lift
execute as @e[tag=bulb_marker,scores={SML.id=1..,SML.isPowered=0}] at @s if block ~ ~ ~ #mechanic:copper_bulb[powered=true] run function mechanic:redstone/bulb/call_lift

# reset if not powered
execute as @e[tag=caller_marker,scores={SML.id=1..}] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run scoreboard players set @s SML.isPowered 0
execute as @e[tag=bulb_marker,scores={SML.id=1..}] at @s if block ~ ~ ~ #mechanic:copper_bulb[powered=false] run scoreboard players set @s SML.isPowered 0

# reset if lift arrived
execute as @e[tag=bulb_marker,scores={SML.id=1..,SML.onLift=1..}] at @s if block ~ ~ ~ #mechanic:copper_bulb[lit=true] run function mechanic:redstone/bulb/turn_off