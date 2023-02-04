# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# mark ray position with marker
execute at @e[tag=ray_hit_marker] align xyz run function mechanic:redstone/brake/create_marker

kill @e[tag=caller_marker,scores={SML.onLift=0}]

# reset
scoreboard players set @s SML.placedObs 0