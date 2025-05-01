tellraw @a ["",{"text":"Bound","color":"aqua","bold":true}," loaded!"]

scoreboard objectives add bound.gamemode dummy
scoreboard objectives add bound.count dummy
scoreboard objectives add bound.max dummy
scoreboard objectives add bound.food food

scoreboard objectives add bound.y1 dummy
scoreboard objectives add bound.y2 dummy

scoreboard objectives add bound.jump_strength dummy
scoreboard objectives add bound.gravity dummy

scoreboard objectives add bound.constant dummy
scoreboard players set $1000 bound.constant 1000
scoreboard players set $10000 bound.constant 10000

scoreboard objectives add bound.jump_boost_active dummy
scoreboard objectives add bound.jump_boost_level dummy

scoreboard objectives add bound.delay dummy

#player motion values - https://modrinth.com/datapack/player_motion
data modify storage bound:math pos set value [0.0d,0.0d,0.0d]

scoreboard objectives add bound.motion.dummy dummy
scoreboard objectives add bound.motion.math dummy
scoreboard objectives add bound.motion.const dummy
    scoreboard players set #constant.-1 bound.motion.const -1
    scoreboard players set #constant.2 bound.motion.const 2
    scoreboard players set #constant.10 bound.motion.const 10
    scoreboard players set #constant.12 bound.motion.const 12
    scoreboard players set #constant.1000 bound.motion.const 1000
    scoreboard players set #constant.100 bound.motion.const 100
    scoreboard players set #constant.fpc bound.motion.const 8000
scoreboard objectives add bound.motion.x dummy
scoreboard objectives add bound.motion.y dummy
scoreboard objectives add bound.motion.z dummy
scoreboard objectives add bound.gamemode dummy

forceload add 0 0

kill d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f
summon marker 0.0 0.0 0.0 {UUID:[I; -725781337, 1317161479, -2007965756, -660627921], Tags:["smithed.strict", "smithed.entity"]}

function bound:motion/internal/technical/trig