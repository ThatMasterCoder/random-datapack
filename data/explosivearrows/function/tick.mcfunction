# Check for arrows that have hit something and explode them
execute if score #explosive_enabled ea_settings matches 1 as @e[type=arrow,nbt={inGround:1b}] at @s run function explosivearrows:explode
execute if score #explosive_enabled ea_settings matches 1 as @e[type=arrow,nbt={inGround:1b}] run kill @s