#11904.76228 = (0.5 (motion) * 10000) / 0.41999998688697815 (jump strength)
scoreboard players set @s bound.motion.x 0
scoreboard players set @s bound.motion.y 11905
scoreboard players set @s bound.motion.z 0

#scale for jump attribute
execute store result score @s bound.jump_strength run attribute @s minecraft:jump_strength get 10000
scoreboard players operation @s bound.motion.y *= @s bound.jump_strength
scoreboard players operation @s bound.motion.y /= $10000 bound.constant

#handle jump boost
execute store success score @s bound.jump_boost_active run data get entity @s active_effects[{id:"minecraft:jump_boost"}]
execute store result score @s bound.jump_boost_level run data get entity @s active_effects[{id:"minecraft:jump_boost"}].amplifier
scoreboard players add @s bound.jump_boost_level 1
scoreboard players operation @s bound.jump_boost_level *= $1000 bound.constant
scoreboard players operation @s bound.jump_boost_level *= @s bound.jump_boost_active

#add jump boost
scoreboard players operation @s bound.motion.y += @s bound.jump_boost_level

#trigger jump
scoreboard players set $function_called bound.motion.dummy 1
tag @s add player_motion.launch