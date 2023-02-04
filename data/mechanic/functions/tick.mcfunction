# update opened container 
function mechanic:container/update

# redstone interaction
execute as @a[scores={SML.placedRLamp=1..}] at @s run function mechanic:redstone/caller/find
execute as @a[scores={SML.placedObs=1..}] at @s run function mechanic:redstone/brake/find
