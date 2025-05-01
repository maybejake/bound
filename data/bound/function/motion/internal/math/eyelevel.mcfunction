# eyelevel=y(eyes)-y(player)
execute anchored eyes positioned ^ ^ ^ if entity @s[distance=...41] run \
    return run scoreboard players set $eyelevel bound.motion.math 40

execute anchored eyes positioned ^ ^ ^ if entity @s[distance=..1.27] run \
    return run scoreboard players set $eyelevel bound.motion.math 127

scoreboard players set $eyelevel bound.motion.math 162