# add chain items
function mechanic:lift/common/stored_chains/add_four

# mark xp and items
execute positioned ~ ~-1 ~ run tag @e[type=experience_orb,dx=4,dy=3,dz=4] add persistent
execute positioned ~ ~-1 ~ run tag @e[type=minecraft:item,dx=4,dy=3,dz=4] add persistent

# move platform
clone ~ ~-1 ~ ~4 ~2 ~4 ~ ~ ~ replace move

# clear cheated xp and items
execute positioned ~ ~-1 ~ run kill @e[type=experience_orb,tag=!persistent,dx=4,dy=3,dz=4]
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:item,tag=!persistent,dx=4,dy=3,dz=4]

# tp entitys
execute as @e[dx=4,dy=3,dz=4] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~1 ~
execute at @s run teleport ~ ~1 ~

# playsound
playsound minecraft:block.chain.fall block @a ~2 ~ ~2 0.5 0.55
