# Clean up any existing arrows
kill @e[type=arrow,nbt={inGround:1b}] 
# Enable explosive arrows
scoreboard players set #explosive_enabled ea_settings 1
tellraw @s [{"text":"[ExplosiveArrows] ","color":"gold"},{"text":"Explosive arrows ","color":"white"},{"text":"ENABLED","color":"green","bold":true}]
