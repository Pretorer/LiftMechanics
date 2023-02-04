# move by player input
execute if score @s SML.size matches 2 run function mechanic:lift/size/2x2/move/update
execute if score @s SML.size matches 3 run function mechanic:lift/size/3x3/move/update
execute if score @s SML.size matches 4 run function mechanic:lift/size/4x4/move/update
execute if score @s SML.size matches 5 run function mechanic:lift/size/5x5/move/update

# update hight
execute store result score @s SML.hight run data get entity @s Pos[1]

# show marker when debugging
execute if score var SML.debug matches 1.. as @e[tag=platform_marker] at @s run particle minecraft:wax_on ~ ~0.1 ~
execute if score var SML.debug matches 1.. as @e[tag=lift_corner_marker] at @s run particle minecraft:wax_off ~ ~-0.05 ~
execute if score var SML.debug matches 1.. as @e[tag=lift_marker] at @s run particle minecraft:wax_on ~ ~-0.15 ~
