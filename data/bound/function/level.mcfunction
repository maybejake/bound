execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantment:"bound:bound",levels:3}]] run return run scoreboard players set @s bound.max 3
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantment:"bound:bound",levels:2}]] run return run scoreboard players set @s bound.max 2
scoreboard players set @s bound.max 1