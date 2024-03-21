#> khook:attached/as_hook

# If inground
tag @s add .temp
execute if entity @s[nbt={inGround:1b}] on origin run function khook:attached/grounded_hook
tag @s remove .temp

# Set Scoreboard
scoreboard players set .success k.UUIDS 1