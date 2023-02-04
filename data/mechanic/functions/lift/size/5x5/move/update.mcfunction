# move down
execute at @s if entity @a[scores={SML.sneak=9..},dx=3,dy=1,dz=3] run function mechanic:lift/size/5x5/move/try_move_down

# move up
execute at @s if entity @a[scores={SML.jump=1..},dx=3,dy=1,dz=3] run function mechanic:lift/size/5x5/move/try_move_up
