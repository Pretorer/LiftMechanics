# update interacted container
execute as @a[scores={SML.interacted=1}] run function mechanic:utility/rotation/update_has_rotated
execute as @a[scores={SML.interacted=1,SML.hasMoved=1}] run function mechanic:container/end_counting

# loop
execute if entity @e[tag=container_marker] run schedule function mechanic:container/counting_loop 10t
