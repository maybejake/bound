execute anchored feet run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 0.8
execute anchored feet run particle minecraft:white_smoke ~ ~1 ~ 0.3 0.2 0.3 0.2 50 force
execute anchored feet run particle minecraft:cloud ~ ~1 ~ 0.4 0.2 0.4 0 20 force
function bound:motion/move

scoreboard players add @s bound_count 1
execute if score @s bound_count >= @s bound_max run tag @s add bound_cooldown