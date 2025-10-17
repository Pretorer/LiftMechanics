# remove minecraft:iron_chain count
function mechanic:lift/common/stored_chains/add_four

# mark xp and items
execute positioned ~ ~-1 ~ run tag @e[type=experience_orb,dx=2,dy=3,dz=2] add persistent
execute positioned ~ ~-1 ~ run tag @e[type=minecraft:item,dx=2,dy=3,dz=2] add persistent

# move platform
clone ~ ~-1 ~ ~2 ~2 ~2 ~ ~ ~ replace move

# clear cheated xp and items
execute positioned ~ ~-1 ~ run kill @e[type=experience_orb,tag=!persistent,dx=2,dy=3,dz=2]
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:item,tag=!persistent,dx=2,dy=3,dz=2]

# tp entitys
execute as @e[dx=2,dy=3,dz=2] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~1 ~
execute at @s run teleport ~ ~1 ~

# playsound
playsound minecraft:block.chain.fall block @a ~1 ~ ~1 0.5 0.55
