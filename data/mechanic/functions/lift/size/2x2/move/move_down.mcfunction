# remove chain count
function mechanic:lift/common/stored_chains/remove_four

# move platform
clone ~ ~-1 ~ ~1 ~3 ~1 ~ ~-2 ~ replace force

# playsound
playsound minecraft:block.chain.place block @a ~0.5 ~ ~0.5 0.5 0.55

# clear cheated xp
kill @e[type=experience_orb,dx=1,dy=2,dz=1]
kill @e[type=minecraft:item,dx=1,dy=2,dz=1]

# tp entitys
execute as @e[dx=1,dy=2,dz=1] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~