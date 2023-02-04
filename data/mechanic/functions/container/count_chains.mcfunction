# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# mark ray position with marker
execute at @e[tag=ray_hit_marker] run function mechanic:container/create_marker

# count till container closed (executed max. one time on the server if needed)
execute if entity @e[tag=container_marker] run function mechanic:container/counting_loop
