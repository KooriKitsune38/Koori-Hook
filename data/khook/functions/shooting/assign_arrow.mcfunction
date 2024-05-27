#> khook:shooting/assign_arrow

# Summon marker
tag @s add .temp
execute summon marker run function khook:shooting/summon_marker
tag @s remove .temp

# Tag
tag @s add k.HookArrow

# Pickup 0
data merge entity @s {pickup:0b,damage:0.5d}

# Copy UUID
scoreboard players operation @s k.UUIDS = .tempPlayer k.UUIDS