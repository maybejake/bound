data remove storage bound:temp loot_table.data

$data modify storage bound:temp loot_table_to_data.loot_table set value "$(loot_table)"
function bound:loot_table_to_data/macro with storage bound:temp loot_table_to_data