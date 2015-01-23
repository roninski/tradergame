local map={
    {'G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'G','G','C','S','W','W','W','W','S','S','S','S','S','S','W','W','W','S','C','G','S','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'G','G','D','W','W','W','W','W','W','S','G','G','G','S','S','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'G','S','W','W','W','W','W','W','W','W','S','C','G','G','G','S','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','S','G'},
    {'S','W','W','W','W','W','W','W','W','W','W','D','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'W','W','W','S','S','S','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G'},
    {'W','W','S','G','G','G','S','S','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G'},
    {'W','S','G','G','G','G','G','G','S','W','S','G','G','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G'},
    {'W','W','S','S','C','S','S','S','W','W','S','C','S','W','W','W','W','W','W','S','S','W','W','W','W','W','W','W','W','W','D','G','G'},
    {'W','W','W','W','D','W','W','W','W','W','W','D','W','W','W','W','W','W','S','G','G','S','W','W','W','W','W','W','W','W','W','S','G'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','S'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','C','G','G','S','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','D','G','S','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','S','C','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','D','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'S','S','S','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','S','W','W','W','W','W','W','D','W','W','W','W','W','W','W','W','S','W','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','C','S','S','W','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','G','S','W','W','W','W','S','G','G','G','S','W','W','W','W','S','G','S','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','G','S','W','W','W','W','S','G','G','G','G','G','S','W','D','S','G','G','S','W','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','S','G','G','G','G','G','S','C','S','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','W','W'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','D','S'},
    {'G','S','W','W','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','C','W','W','W','W','W','W','W','W','W','W','C','G'},
    {'G','G','S','W','W','W','W','W','W','W','S','G','G','G','G','G','G','G','G','S','D','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'G','G','G','S','S','W','D','W','S','S','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G'},
    {'G','G','G','G','G','S','C','S','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G','G'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G'},
    {'G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','S','W','W','W','W','W','W','W','W','W','S','G','G'}
}

-- Initialise Map
local WorldMap = {}
WorldMap.map = map
WorldMap.w = #map[1] -- Obtains the width of the first row of the map
WorldMap.h = #map -- Obtains the height of the map
WorldMap.x = 0
WorldMap.y = 0
WorldMap.offset_x = 30
WorldMap.offset_y = 30
WorldMap.display_w = 18
WorldMap.display_h = 15
WorldMap.tile_w = 32
WorldMap.tile_h = 32

-- Functions
function WorldMap.draw(spritebatch, spritesheet)
    for y=1, WorldMap.display_h do
        for x=1, WorldMap.display_w do
            if WorldMap.map[y+WorldMap.y][x+WorldMap.x] == 'D' then spritebatch:add(
                spritesheet.quads['Dock'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            elseif WorldMap.map[y+WorldMap.y][x+WorldMap.x] == 'G' then spritebatch:add(
                spritesheet.quads['Grass'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            elseif WorldMap.map[y+WorldMap.y][x+WorldMap.x] == 'S' then spritebatch:add(
                spritesheet.quads['Sand'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            elseif WorldMap.map[y+WorldMap.y][x+WorldMap.x] == 'C' then spritebatch:add(
                spritesheet.quads['City'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            elseif WorldMap.map[y+WorldMap.y][x+WorldMap.x] == 'W' then spritebatch:add(
                spritesheet.quads['Water'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            else spritebatch:add(
                spritesheet.quads['Water'], (x*WorldMap.tile_w)+WorldMap.offset_x,
                (y*WorldMap.tile_h)+WorldMap.offset_y
                )
            end
        end
    end
end

function WorldMap.keypressed(key, unicode)
    if key == 'up' then
        WorldMap.y = WorldMap.y-1
        if WorldMap.y < 0 then WorldMap.y = 0; end
    end
    if key == 'down' then
        WorldMap.y = WorldMap.y+1
        if WorldMap.y > WorldMap.h-WorldMap.display_h then WorldMap.y = WorldMap.h-WorldMap.display_h; end
    end
   
    if key == 'left' then
        WorldMap.x = math.max(WorldMap.x-1, 0)
    end

    if key == 'right' then
        WorldMap.x = math.min(WorldMap.x+1, WorldMap.w-WorldMap.display_w)
    end
end

return WorldMap
