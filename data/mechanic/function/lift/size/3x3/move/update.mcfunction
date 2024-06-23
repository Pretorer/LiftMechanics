# move down
execute at @s if entity @a[scores={SML.sneak=9..},dx=1,dy=1,dz=1] run function mechanic:lift/size/3x3/move/try_move_down

# move up
execute at @s if entity @a[scores={SML.jump=1..},dx=1,dy=1,dz=1] run function mechanic:lift/size/3x3/move/try_move_up
