#> khook:attached/get_motion

# Store Motion into storage
data modify storage k:temp hookMotion set from entity @s data.hookMotion

# Launch
execute positioned ~ ~1 ~ summon arrow run function khook:attached/launch_player