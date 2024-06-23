# move down
execute at @s if entity @a[scores={SML.sneak=9..},dx=2,dy=1,dz=2] run function mechanic:lift/size/4x4/move/try_move_down

# move up
execute at @s if entity @a[scores={SML.jump=1..},dx=2,dy=1,dz=2] run function mechanic:lift/size/4x4/move/try_move_up
