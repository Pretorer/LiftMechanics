# debug
execute if score var SML.debug matches 1.. run say container opened

# count chains if container open
function mechanic:container/count_chains

# reset scores
scoreboard players set @s SML.open_barrel 0
scoreboard players set @s SML.open_chest 0
scoreboard players set @s SML.open_t_chest 0
scoreboard players set @s SML.open_dispens 0
scoreboard players set @s SML.open_dropper 0
scoreboard players set @s SML.open_hopper 0
scoreboard players set @s SML.open_shulker 0

advancement revoke @s only mechanic:container/open_barrel
advancement revoke @s only mechanic:container/open_chest
advancement revoke @s only mechanic:container/open_dispenser
advancement revoke @s only mechanic:container/open_dropper
advancement revoke @s only mechanic:container/open_hopper
advancement revoke @s only mechanic:container/open_shulker
advancement revoke @s only mechanic:container/open_t_chest