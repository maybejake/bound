execute anchored feet run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 0.5 1.5
execute anchored feet run particle minecraft:white_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 10 force
execute anchored feet run particle minecraft:cloud ~ ~ ~ 0.3 0.2 0.3 0 5 force

function bound:motion/jump

scoreboard players add @s bound.count 1
execute if score @s bound.count >= @s bound.max run tag @s add bound_cooldown