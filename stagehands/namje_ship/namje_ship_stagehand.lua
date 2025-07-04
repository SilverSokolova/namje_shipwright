require "/scripts/vec2.lua"
require "/scripts/util.lua"
require "/scripts/namje_byos.lua"

function init()
    message.setHandler("swap_ship", swap_ship)
end

function swap_ship(_, _, ply, ship_type, init, ...)
    local species = init and ... or nil
    namje_byos.change_ships(ship_type, init, init and {ply, species} or ply)
    stagehand.die()
end