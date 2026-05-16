tellraw @a[gamemode=creative] ["",{"text":"Bound","color":"aqua","bold":true}," loaded!"]

scoreboard objectives add bound.count dummy
scoreboard objectives add bound.max dummy
scoreboard objectives add bound.food food

scoreboard objectives add bound.constant dummy
scoreboard players set $10000 bound.constant 10000