#> khook:shooting/assign_arrow

# Tag
tag @s add k.HookArrow

# Pickup 0
data merge entity @s {pickup:0b,damage:0.5d,life:600s}

# Copy UUID
scoreboard players operation @s k.UUIDS = .tempPlayer k.UUIDS