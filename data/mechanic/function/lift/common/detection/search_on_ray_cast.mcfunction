# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# find container
execute as @e[tag=ray_hit_marker] at @s align xyz run function mechanic:lift/common/detection/search

# run once
kill @e[tag=ray_hit_marker]
