# remove chain count
function mechanic:lift/common/stored_chains/remove_four

# move platform
clone ~ ~-1 ~ ~2 ~3 ~2 ~ ~-2 ~ replace force

# playsound
playsound minecraft:block.chain.place block @a ~1 ~ ~1 0.5 0.55

# clear cheated xp
kill @e[type=experience_orb,dx=2,dy=2,dz=2]
kill @e[type=minecraft:item,dx=2,dy=2,dz=2]

# tp entitys
execute as @e[dx=2,dy=2,dz=2] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~