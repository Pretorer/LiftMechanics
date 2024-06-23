# debug
execute if score var SML.debug matches 2.. run say @s build an observer

# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# mark ray position with marker
execute at @e[tag=ray_hit_marker] align xyz run function mechanic:redstone/brake/create_marker

kill @e[tag=caller_marker,scores={SML.onLift=0}]

# reset
advancement revoke @s only mechanic:placed_observer
