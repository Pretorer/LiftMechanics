# count different inventory sizes
execute as @e[tag=container_marker] at @s run function mechanic:container/count_container

# copy chain count into lift
execute as @e[tag=container_marker] at @s run scoreboard players operation @e[tag=lift_corner_marker,distance=..0.2,sort=nearest,limit=1] SML.count = @s SML.count

# find container
execute at @e[tag=container_marker] if score @e[tag=container_marker,distance=..0.2,limit=1] SML.id = @s SML.id run kill @e[tag=container_marker,distance=..0.2]

# debug
execute if score var SML.debug matches 2.. run say container marker removed
