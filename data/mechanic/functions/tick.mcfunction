
# redstone interaction
execute as @a[scores={SML.placedRLamp=1..}] at @s run function mechanic:redstone/caller/find
execute as @a[scores={SML.placedObs=1..}] at @s run function mechanic:redstone/brake/find

scoreboard players add variable_loop_ctr SML.variables 1
execute if score variable_loop_ctr SML.variables >= lift_speed SML.settings run function mechanic:variable_loop
