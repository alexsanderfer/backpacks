tellraw @a [{"text":"[BP] ","color":"yellow"},{"translate":"load.backpacks.message.2","color":"yellow"}]

# Scoreboards:
scoreboard objectives add backpacks.id dummy
scoreboard objectives add backpacks.slots dummy
scoreboard objectives add backpacks.pages dummy
scoreboard objectives add backpacks.type dummy
scoreboard objectives add backpacks.join minecraft.custom:minecraft.leave_game
scoreboard objectives add backpacks.crouch_timer dummy
scoreboard objectives add backpacks.settings dummy
scoreboard objectives add backpacks.main dummy
scoreboard objectives add backpacks.api.container dummy
scoreboard objectives add backpacks.api.GetNOfSlotsThatShouldBeLocked dummy

# Run on first start of the world:
execute unless score $init backpacks.main matches 1.. run function backpacks:init/world

# Teams:
team modify backpacks.no_collision collisionRule pushOwnTeam

# Tags:
tag @e remove backpacks.not_this_minecart

tellraw @a [{"text":"[BP] ","color":"yellow"},{"translate":"load.backpacks.message.3","color":"green"}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"Backpacks!","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/vanilla-backpacks"}}," ",{"text":"(v1.2.0)","underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/vanilla-backpacks/changelog"},"hoverEvent":{"action":"show_text","contents":[{"translate":"load.backpacks.message.5"}]}},{"text":" - ","color":"gray"},{"translate":"load.backpacks.message.4","color":"blue"},{"text":"☽ Eclipse Studios","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"translate":"load.backpacks.message.1","color":"light_purple"}]
tellraw @a [{"text":"[BP] ","color":"yellow"},{"text":"[Discord]","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/X2NTE7hkq8"}},{"text":" ✦ ","color":"dark_aqua"},{"text":"[YouTube]","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}},{"text":" ✦ ","color":"dark_aqua"},{"text":"[GitHub]","underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/EclipseStudiosMC"}},{"text":" ✦ ","color":"dark_aqua"},{"text":"[Modrinth]","underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/EclipseStudios"}},{"text":" ✦ ","color":"dark_aqua"},{"text":"[Planet Minecraft]","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/elgeroingles/"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s
