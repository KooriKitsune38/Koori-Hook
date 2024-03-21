#> khook:everyone

# Replace Crossbow
execute if entity @s[tag=!k.ShotHook,nbt={SelectedItem:{id:"minecraft:crossbow",tag:{k.GrapplingHook:1b}}}] run item modify entity @s weapon.mainhand khook:hook

# Check if arrow exists
execute if entity @s[tag=k.ShotHook] run function khook:shooting/continue_conditions