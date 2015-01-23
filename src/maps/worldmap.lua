local map={
    {'G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','C','S','W','W','W','W','S','S','S','S','S','S','W','W','W','S','C','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','D','W','W','W','W','W','W','S','G','G','G','S','S','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','S','C','G','G','G','S','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'S','W','W','W','W','W','W','W','W','W','W','D','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','W','S','S','S','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','S','G','G','G','S','S','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','S','G','G','G','G','G','G','S','W','S','G','G','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','S','S','C','S','S','S','W','W','S','C','S','W','W','W','W','W','W','S','S','W','W','W','W','W','W','W','W','W','D','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','W','W','D','W','W','W','W','W','W','D','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','S','S','S','W','W','W'},
    {'W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','S','C','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','D','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'S','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','S','W','W','W','W','W','W','D','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','C','S','S','W','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','S','S','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','G','G','G','S','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','G','S','W','W','W','W','S','G','G','G','G','G','S','W','D','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','S','G','G','G','G','G','S','C','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','D','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','C','W','W','W','W','W','W','W','W','W','W','C','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','S','D','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','G','S','S','W','D','W','S','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','G','G','G','S','C','S','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W'}
}

-- Initialise Map
local World = {}
World.map = map
World.w = #map[1] -- Obtains the width of the first row of the map
World.h = #map -- Obtains the height of the map
World.tile_w = 32
World.tile_h = 32
World.x = 0
World.y = 0
World.offset_x = -World.tile_w
World.offset_y = -World.tile_h
World.display_w = 41
World.display_h = 23
World.display_buffer = 2 -- We buffer one tile before and behind our viewpoint so the tiles don't just pop into view
-- Player ship location within the world
World.start_x = 28
World.start_y = 16

-- Camera viewport centrepoint
World.cam_mid_x = World.display_w / 2
if World.cam_mid_x % 1 ~= 0 then World.cam_mid_x = World.cam_mid_x + 0.5; end
World.cam_mid_y = World.display_h / 2
if World.cam_mid_y % 1 ~= 0 then World.cam_mid_y = World.cam_mid_y + 0.5; end
print (World.cam_mid_x)
print (World.cam_mid_y)

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
    World.x = math.max(World.x-1, 0)
    World.x = math.min(World.x+1, World.w-World.display_w)

    World.y = y - World.cam_mid_y + 1
    if World.y < 0 then World.y = 0; end
    if World.y > World.h-World.display_h then World.y = World.h-World.display_h; end
end

function World.moveCamera(key, unicode)
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

return World
