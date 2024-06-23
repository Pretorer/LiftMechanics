# move down
execute at @s if entity @a[scores={SML.sneak=9..},dx=0,dy=1,dz=0] run function mechanic:lift/size/2x2/move/try_move_down

# move up
execute at @s if entity @a[scores={SML.jump=1..},dx=0,dy=1,dz=0] run function mechanic:lift/size/2x2/move/try_move_up

