execute anchored feet run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.5 1.5
execute anchored feet run particle minecraft:white_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 10 force
execute anchored feet run particle minecraft:cloud ~ ~ ~ 0.3 0.2 0.3 0 5 force

tp @s ~ ~ ~

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 6200
scoreboard players set $z player_motion.api.launch 0

function player_motion:api/launch_global_xyz

scoreboard players add @s bound.count 1
execute if score @s bound.count >= @s bound.max run tag @s add bound.cooldown