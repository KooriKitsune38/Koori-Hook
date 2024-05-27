#> khook:attached/lock_place

# If no block on top
tp @s ~ ~ ~

# If block on top
execute unless block ~ ~2 ~ air positioned ~ ~-.5 ~ run tp @s ~ ~ ~

# If .removeOnHooked is true, remove
execute if score .removeOnHooked k.UUIDS matches 1 run function khook:control/stop_hook