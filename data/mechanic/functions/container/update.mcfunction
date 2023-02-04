# prepare
function mechanic:container/update_open_storage

# count chains if container open
execute as @a[scores={SML.open_storage=1..}] at @s run function mechanic:container/count_chains