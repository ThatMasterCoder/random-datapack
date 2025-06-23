# Show explosion message only if chat messages are enabled
execute if score #chat_messages ea_settings matches 1 run tellraw @a [{"text":"[Arrow] ","color":"red"},{"text":"BOOM!","color":"yellow"}]
summon tnt ~ ~ ~ {fuse:0}