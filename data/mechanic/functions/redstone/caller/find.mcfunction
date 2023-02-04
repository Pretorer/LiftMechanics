# find chest (set position with marker)
function mechanic:utility/ray_casting/cast

# mark ray position with marker
execute at @e[tag=ray_hit_marker] align xyz run function mechanic:redstone/caller/create_marker

# mark ray position with marker (second try)
#execute at @e[tag=ray_hit_marker] align xyz unless entity @e[tag=caller_marker,scores={SML.id=1..},dx=0,dy=0,dz=0] positioned ~ ~1 ~ run function mechanic:redstone/create_marker

# reset
scoreboard players set @s SML.placedRLamp 0