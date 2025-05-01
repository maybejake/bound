scoreboard players remove $n_full_exp bound.motion.math 1
execute summon end_crystal run damage @s 0
execute if score $n_full_exp bound.motion.math matches 1.. run function bound:motion/internal/summon/loop