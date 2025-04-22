# debug
execute if score var SML.debug matches 2.. run say @s build an redstone_lamp

# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# mark ray position with marker
execute at @e[tag=ray_hit_marker] align xyz run function mechanic:interaction/caller/create_marker

# reset
advancement revoke @s only mechanic:interaction/placed_lamp