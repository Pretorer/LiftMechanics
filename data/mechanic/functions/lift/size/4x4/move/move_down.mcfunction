# remove chain count
function mechanic:lift/common/stored_chains/remove_four

# move platform
clone ~ ~-1 ~ ~3 ~3 ~3 ~ ~-2 ~ replace force

# playsound
playsound minecraft:block.chain.place block @a ~1.5 ~ ~1.5 0.5 0.55

# clear cheated xp
kill @e[type=experience_orb,dx=3,dy=2,dz=3]
kill @e[type=minecraft:item,dx=3,dy=2,dz=3]

# tp entitys
execute as @e[dx=3,dy=2,dz=3] unless entity @s[nbt={RootVehicle: {}}] at @s run teleport ~ ~-1 ~
execute at @s run teleport ~ ~-1 ~