#> khook:attached/launch_player

# Apply Motion
data modify entity @s Motion set from storage k:temp hookMotion

# Ride
ride @p[tag=.temp] mount @s

# Tag
tag @s add k.HookVehicle

# Pickup 0
data merge entity @s {pickup:0b,damage:0.0d}

# Copy UUID
scoreboard players operation @s k.UUIDS = .tempPlayer k.UUIDS