function bound:loot_table_to_data/main {loot_table:"bound:book"}
data modify block ~ ~ ~ server_data.items_to_eject prepend from storage bound:temp loot_table.data