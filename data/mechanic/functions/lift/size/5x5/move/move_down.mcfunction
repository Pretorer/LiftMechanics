# remove chain count
function mechanic:lift/common/stored_chains/remove_four

# move platform
clone ~ ~-1 ~ ~4 ~3 ~4 ~ ~-2 ~ replace force

# playsound
playsound minecraft:block.chain.place block @a ~2 ~ ~2 0.5 0.55

# clear cheated xp
kill @e[type=experience_orb,dx=4,dy=2,dz=4]
kill @e[type=minecraft:item,dx=4,dy=2,dz=4]

# tp entitys
execute as @e[dx=4,dy=2,dz=4] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~