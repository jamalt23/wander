tp @e[tag=wander,limit=1,type=!block_display] @e[limit=1,scores={wander=2}]
execute at @e[limit=1,scores={wander=2}] run tp @e[tag=wander,limit=1,type=block_display] ~-0.5 ~ ~-0.5
team join noCollision @e[tag=wander]
team join noCollision @e[tag=noCollision]
execute unless entity @e[tag=wander] run team empty noCollision
tag @a[tag=w_enabled] add notfirst
scoreboard players set @a[nbt=!{Tags:["notfirst"]}] smoke_effect 1
execute at @e[tag=wander] run data merge entity @e[limit=1,distance=..1,tag=wander] {Invulnerable:true,AbsorptionAmount:1000,abilities:{invulnerable:true}}
execute if score #config entity_death matches 0 run scoreboard players set @a lightning_effect 0
