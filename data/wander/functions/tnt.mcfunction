execute unless entity @e[distance=..3,tag=wander,type=block_display,nbt={block_state:{Name:"minecraft:tnt"}}] run function wander:effect
execute if entity @e[distance=..3,tag=wander,type=block_display,nbt={block_state:{Name:"minecraft:tnt"}}] run summon tnt ~ ~ ~
