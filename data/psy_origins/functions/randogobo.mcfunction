
# Summon armor stands (run once or as needed)
/summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["randomize"]}

# Spread players (generate randomness)
/spreadplayers 0 0 0 100 false @e[tag=randomize]

# Assign random scores
/execute as @e[tag=randomize] at @s run scoreboard players set @s randomValue 0
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1
/execute as @e[tag=randomize] at @s run scoreboard players add @s randomValue 1

# Transfer random score to player
/execute as @e[tag=randomize,limit=1,sort=random] run scoreboard players operation @p randomValue = @s randomValue

# Clean up
/kill @e[tag=randomize]
