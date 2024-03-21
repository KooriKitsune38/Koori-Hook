#> khook:shooting/as_arrow

# Copy uuid
execute on origin store result score .temp k.UUIDS run data get entity @s UUID[0]

# If UUID match, assign tags
execute if score .temp k.UUIDS = .tempPlayer k.UUIDS run function khook:shooting/assign_arrow