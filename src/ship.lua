local ship = {}
ship.x = 0
ship.y = 0
ship.cam_x = 0
ship.cam_y = 0
ship.map = {}
ship.atTown = false
ship.town = 0

function ship.init(worldmap)
	ship.map = worldmap
	ship.x = ship.map.start_x
	ship.y = ship.map.start_y
	ship.map.repositionCamera(ship.x, ship.y)
end

function ship.draw(spritebatch, spritesheet)
	ship.cam_x = (ship.x - ship.map.x) * 32
	ship.cam_y = (ship.y - ship.map.y) * 32
	spritebatch:add(spritesheet.quads['Boat'], ship.cam_x, ship.cam_y)
end

function ship.move(key, unicode)
	if key == 'z' or key == ' ' then
        -- Work Out Which Town
        if ship.map.getAt(ship.x,ship.y-1) ~= nil and ship.map.getAt(ship.x,ship.y-1) == 'D' then
            ship.atTown = true
            ship.town = ship.map.whichTown(ship.x, ship.y-1)
        elseif ship.map.getAt(ship.x,ship.y+1) ~= nil and ship.map.getAt(ship.x,ship.y+1) == 'D' then
            ship.atTown = true
            ship.town = ship.map.whichTown(ship.x, ship.y+1)
        elseif ship.map.getAt(ship.x-1,ship.y) ~= nil and ship.map.getAt(ship.x-1,ship.y) == 'D' then
            ship.atTown = true
            ship.town = ship.map.whichTown(ship.x-1, ship.y)
        elseif ship.map.getAt(ship.x+1,ship.y) ~= nil and ship.map.getAt(ship.x+1,ship.y) == 'D' then
            ship.atTown = true
            ship.town = ship.map.whichTown(ship.x+1, ship.y)
        end
        if ship.atTown then 
            print ("Entering Town "..ship.town)
            return "Town" 
        end
    end

    -- Movement
    if key == 'up' and ship.map.getAt(ship.x,ship.y-1) ~= nil and ship.map.getAt(ship.x,ship.y-1) == 'W' then
	    ship.y = ship.y - 1
    	if ship.y < 0 then ship.y = 0; end
    end

    if key == 'down' and ship.map.getAt(ship.x,ship.y+1) ~= nil and ship.map.getAt(ship.x,ship.y+1) == 'W' then
        ship.y = ship.y + 1
        if ship.y > ship.map.h - 2 then ship.y = ship.map.h - 2; end
    end
   
    if key == 'left' and ship.map.getAt(ship.x-1,ship.y) ~= nil and ship.map.getAt(ship.x-1,ship.y) == 'W' then
        ship.x = math.max(ship.x-1, 0)
    end

    if key == 'right' and ship.map.getAt(ship.x+1,ship.y) ~= nil and ship.map.getAt(ship.x+1,ship.y) == 'W' then
        ship.x = math.min(ship.x+1, ship.map.w-2)
    end

    ship.map.repositionCamera(ship.x, ship.y)
    
    return "Boat"
end

-- Getters and Setters
function ship.getTown()
    return ship.town
end

function ship.exitTown()
    ship.town = 0
    ship.atTown = false
    return "Boat"
end

return ship
