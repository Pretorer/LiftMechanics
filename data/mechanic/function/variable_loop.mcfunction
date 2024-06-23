# platform call
execute as @e[tag=platform_marker,scores={SML.isInit=1}] at @s run function mechanic:lift/common/call/update

# reset counter
scoreboard players set variable_loop_ctr SML.variables 0
