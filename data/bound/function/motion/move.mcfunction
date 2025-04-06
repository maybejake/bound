execute store result score @s bound_gamemode run data get entity @s playerGameType
tp @s ~ ~1000 ~

#grant immunity
gamemode creative

execute at @s summon minecraft:armor_stand run function bound:motion/place

#remove immunity
function bound:motion/return_gamemode

tp @s ~ ~ ~
