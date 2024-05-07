#> khook:attached/as_hook

# If inground
tag @s add .temp
execute if entity @s[nbt={inGround:1b},nbt={inBlockState:{Name:"minecraft:polished_diorite"}}] on origin run function khook:attached/grounded_hook
tag @s remove .temp

# If not polished diorite, kill
execute if entity @s[nbt={inGround:1b},nbt=!{inBlockState:{Name:"minecraft:polished_diorite"}}] on origin run function khook:control/stop_hook

# Set Scoreboard
scoreboard players set .success k.UUIDS 1