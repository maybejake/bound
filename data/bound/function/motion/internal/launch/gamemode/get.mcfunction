execute if entity @s[gamemode=survival] run return run scoreboard players set $mode bound.gamemode 0
execute if entity @s[gamemode=creative] run return run scoreboard players set $mode bound.gamemode 1
execute if entity @s[gamemode=adventure] run return run scoreboard players set $mode bound.gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set $mode bound.gamemode 3
