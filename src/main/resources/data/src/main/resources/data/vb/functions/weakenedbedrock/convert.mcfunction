#Timer
scoreboard players add @s bedrock.timer 1
execute if score @s bedrock.timer matches 40 run scoreboard players set @s bedrock.timer 0

#Summon Armour Stand
execute unless entity @e[type=minecraft:armor_stand,distance=..5,name=bedrock_convert] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,CustomName:"{\"text\":\"bedrock_convert\"}"}
#execute unless entity @e[type=minecraft:armor_stand,distance=..5,name=bedrock_convert] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"bedrock_convert\"}"}


#Random Selection
execute at @s if score @s bedrock.timer matches 0 if score @s bedrock.radius matches 25..30 run spreadplayers ~ ~ 1 3 false @e[type=minecraft:armor_stand,name=bedrock_convert,limit=1,sort=nearest]
execute at @s if score @s bedrock.timer matches 0 if score @s bedrock.radius matches 15..24 run spreadplayers ~ ~ 1 2 false @e[type=minecraft:armor_stand,name=bedrock_convert,limit=1,sort=nearest]
execute at @s if score @s bedrock.timer matches 0 if score @s bedrock.radius matches 5..14 run spreadplayers ~ ~ 1 1 false @e[type=minecraft:armor_stand,name=bedrock_convert,limit=1,sort=nearest]