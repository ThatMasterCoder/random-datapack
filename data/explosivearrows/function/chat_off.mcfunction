# Disable explosion chat messages
scoreboard players set #chat_messages ea_settings 0
tellraw @s [{"text":"[ExplosiveArrows] ","color":"red"},{"text":"Chat messages disabled!","color":"white"}]
