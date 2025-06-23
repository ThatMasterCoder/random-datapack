# Check for arrows that have hit something and explode them
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function explosivearrows:explode
execute as @e[type=arrow,nbt={inGround:1b}] run kill @s