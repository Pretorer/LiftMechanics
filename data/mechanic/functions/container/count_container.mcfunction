# select inventory size
execute if block ~ ~ ~ #mechanic:container5x1 run function mechanic:container/5x1_container
execute if block ~ ~ ~ #mechanic:container3x3 run function mechanic:container/3x3_container
execute if block ~ ~ ~ #mechanic:container9x3 run function mechanic:container/9x3_container

# print debug
execute if score var SML.debug matches 2.. as @e[tag=container_marker,scores={SML.count=0..},sort=nearest,limit=1] run tellraw @a ["",{"text":"Found "},{"score":{"name":"@s","objective":"SML.count"}},{"text":" chains"}]
