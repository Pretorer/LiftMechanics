# count to limit ray length
scoreboard players add ray SML.ray_length 1

# limit length (range to interact with container ~5)
execute if block ~ ~ ~ #mechanic:no_hitbox positioned ^ ^ ^0.2 if score ray SML.ray_length <= max SML.ray_length run function mechanic:utility/ray_casting/cast_next

execute unless block ~ ~ ~ #mechanic:no_hitbox run summon minecraft:marker ~ ~ ~ {Tags: ["ray_hit_marker"]}

# display ray
execute if score var SML.debug matches 1 at @e[tag=ray_hit_marker,limit=1] align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState: {Name: "minecraft:glass"}, Tags: ["ray_hit_marker_outline"], Time: -2147483648, NoGravity: 1b, Glowing: 1b}
execute if score var SML.debug matches 2 run particle end_rod ~ ~ ~ 0 0 0 0 1 force
