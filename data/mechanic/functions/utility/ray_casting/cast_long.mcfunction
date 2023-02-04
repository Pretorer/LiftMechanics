# setup ray length counter
scoreboard players set max SML.ray_length 2000
scoreboard players set ray SML.ray_length 0

# remove old marker
kill @e[tag=ray_hit_marker]
execute if score var SML.debug matches 1.. run kill @e[tag=ray_hit_marker_outline]

# start ray
execute positioned ~ ~1.6 ~ positioned ^ ^ ^1 run function mechanic:utility/ray_casting/cast_next