#Setup
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion: "minecraft:weakness"},tag=!onbedrock] at @s if block ~ ~-1 ~ minecraft:bedrock run tag @s add onbedrock
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion: "minecraft:long_weakness"},tag=!onbedrock] at @s if block ~ ~-1 ~ minecraft:bedrock run tag @s add onbedrock

#Conversion
execute as @e[type=minecraft:area_effect_cloud,tag=onbedrock] at @s run function vb:weakenedbedrock/convert
execute as @e[type=minecraft:area_effect_cloud,tag=onbedrock] store result score @s bedrock.radius run data get entity @s Radius 10

#Replace Bedrock
execute as @e[type=minecraft:armor_stand,name=bedrock_convert] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=onbedrock] if block ~ ~-1 ~ minecraft:bedrock run setblock ~ ~-1 ~ bedrocker:weak_bedrock replace

#Remove Armour Stand
execute as @e[type=minecraft:armor_stand,name=bedrock_convert] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=onbedrock] run kill @s