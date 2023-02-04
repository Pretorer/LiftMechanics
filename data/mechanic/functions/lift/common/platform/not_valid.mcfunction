# prepare
scoreboard players operation var SML.id = @s SML.id

# indicate destruction
execute as @e[tag=lift_corner_marker] if score @s SML.id = var SML.id at @s run playsound minecraft:item.shield.break block @a

# remove all marker
function mechanic:lift/common/remove_marker