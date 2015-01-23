local map={
    {'G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','C','S','W','W','W','W','S','S','S','S','S','S','W','W','W','S','C','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','D','W','W','W','W','W','W','S','G','G','G','S','S','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','S','S','G','G','G','S','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','S','S','S','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','S','G','G','G','S','S','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','S','G','G','G','G','G','G','S','W','S','G','G','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','S','S','G','S','S','S','W','W','S','S','S','W','W','W','W','W','W','S','S','W','W','W','W','W','W','W','W','W','D','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','S','S','S','W','W','W'},
    {'W','W','W','S','S','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','S','G','G','G','S','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','S','G','G','G','G','S','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','S','S','W','W','W','W','W','W','S','G','G','G','C','S','W','W','W'},
    {'W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','S','D','W','W','W','W'},
    {'W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W','W'},
    {'W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W'},
    {'S','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W'},
    {'G','G','G','S','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','G','S','S','W','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','S','S','W','W','W','W','W','W','W','W','S','S','W','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','G','G','G','S','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','S','W','W','W','W','W'},
    {'G','G','G','S','W','W','W','W','S','G','G','G','G','G','S','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','S','G','G','G','G','G','S','S','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','D','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','S','C','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','S','S','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','S','S','W','D','W','S','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','G','S','C','S','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W'}
}

-- Initialise Map variables
local World = {}
World.map = map
World.w = #map[1] -- Obtains the width of the first row of the map
World.h = #map    -- Obtains the height of the map
World.tile_w = 32
World.tile_h = 32
World.x = 0
World.y = 0
World.offset_x = -World.tile_w
World.offset_y = -World.tile_h
World.display_w = 40
World.display_h = 23
World.display_buffer = 2

-- Player ship location within the world
World.start_x = 28
World.start_y = 16

-- World Name (this will be the name of the towns folder we'll be using)
World.name = "test1"

-- Camera viewport centrepoint
World.cam_mid_x = World.display_w / 2
if World.cam_mid_x % 1 ~= 0 then World.cam_mid_x = World.cam_mid_x + 0.5; end
World.cam_mid_y = World.display_h / 2
if World.cam_mid_y % 1 ~= 0 then World.cam_mid_y = World.cam_mid_y + 0.5; end

-- Functions
function World.draw(spritebatch, spritesheet)
    for y=1, (World.display_h) do
        for x=1, (World.display_w) do
            if World.map[y+World.y][x+World.x] == 'D' then spritebatch:add(
                spritesheet.quads['Dock'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            elseif World.map[y+World.y][x+World.x] == 'G' then spritebatch:add(
                spritesheet.quads['Grass'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            elseif World.map[y+World.y][x+World.x] == 'S' then spritebatch:add(
                spritesheet.quads['Sand'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            elseif World.map[y+World.y][x+World.x] == 'C' then spritebatch:add(
                spritesheet.quads['City'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            elseif World.map[y+World.y][x+World.x] == 'W' then spritebatch:add(
                spritesheet.quads['Water'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            else spritebatch:add(
                spritesheet.quads['Water'], (x*World.tile_w)+World.offset_x,
                (y*World.tile_h)+World.offset_y)
            end
        end
    end
end

-- Get commands
function World.getAt(x, y)
    if x + 1 < 1 or x + 1 > World.w then return nil; end
    if y + 1 < 1 or y + 1 > World.h then return nil; end
    return World.map[y+1][x+1]
end

-- Camera controls
function World.repositionCamera(x, y)
    World.x = x - World.cam_mid_x + 1
    if World.x < 0 then World.x = 0; end
    if World.x > World.w - World.display_w then World.x = World.w - World.display_w; end

    World.y = y - World.cam_mid_y + 1
    if World.y < 0 then World.y = 0; end
    if World.y > World.h-World.display_h then World.y = World.h-World.display_h; end
end

function World.moveCamera(key, unicode)
    -- Note: This function is largely obsolete, but is being left in in case I ever need it
    if key == 'up' then
        World.y = World.y-1
        if World.y < 0 then World.y = 0; end
    end

    if key == 'down' then
        World.y = World.y+1
        if World.y > World.h-World.display_h then World.y = World.h-World.display_h; end
    end
   
    if key == 'left' then
        World.x = math.max(World.x-1, 0)
    end

    if key == 'right' then
        World.x = math.min(World.x+1, World.w-World.display_w)
    end

end

-- Town Calculator
function World.whichTown(x, y)
    local count = 0
    for w=0, World.w do
        for h = 0, World.h do
            if World.getAt(w,h) == 'D' then count = count + 1; end
            if w == x and h == y then return count; end
        end
    end
    print ("You dun fucked up")
    return 0
end


return World
