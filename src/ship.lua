local ship = {}
ship.x = 0
ship.y = 0
ship.cam_x = 0
ship.cam_y = 0
ship.map = {}


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
        if  (ship.map.getAt(ship.x,ship.y-1) ~= nil and ship.map.getAt(ship.x,ship.y-1) == 'D') or
            (ship.map.getAt(ship.x,ship.y+1) ~= nil and ship.map.getAt(ship.x,ship.y+1) == 'D') or
            (ship.map.getAt(ship.x-1,ship.y) ~= nil and ship.map.getAt(ship.x-1,ship.y) == 'D') or
            (ship.map.getAt(ship.x+1,ship.y) ~= nil and ship.map.getAt(ship.x+1,ship.y) == 'D') then
            return true
        end
    end

    if key == 'up' and ship.map.getAt(ship.x,ship.y-1) ~= nil and ship.map.getAt(ship.x,ship.y-1) == 'W' then
	    ship.y = ship.y - 1
    	if ship.y < 0 then ship.y = 0; end
        print (ship.map.getAt(ship.x,ship.y))
    end
    if key == 'down' and ship.map.getAt(ship.x,ship.y+1) ~= nil and ship.map.getAt(ship.x,ship.y+1) == 'W' then
        ship.y = ship.y + 1
        if ship.y > ship.map.h - 2 then ship.y = ship.map.h - 2; end
       	print (ship.map.getAt(ship.x,ship.y))
    end
   
    if key == 'left' and ship.map.getAt(ship.x-1,ship.y) ~= nil and ship.map.getAt(ship.x-1,ship.y) == 'W' then
        ship.x = math.max(ship.x-1, 1)
        print (ship.map.getAt(ship.x,ship.y))
    end
    if key == 'right' and ship.map.getAt(ship.x+1,ship.y) ~= nil and ship.map.getAt(ship.x+1,ship.y) == 'W' then
        ship.x = math.min(ship.x+1, ship.map.w-2)
        print (ship.map.getAt(ship.x,ship.y))
    end
    ship.map.repositionCamera(ship.x, ship.y)
    
    return false
end

return ship
