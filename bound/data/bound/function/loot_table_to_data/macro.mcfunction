summon minecraft:item_display ~ ~1000 ~ {UUID:[I;-1285970196,-1449899645,-1271488076,-1913579749]}
$loot replace entity b359a6ec-a994-4983-b436-a1b48df1171b contents loot $(loot_table)
data modify storage bound:temp loot_table.data set from entity b359a6ec-a994-4983-b436-a1b48df1171b item
kill b359a6ec-a994-4983-b436-a1b48df1171b