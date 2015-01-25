debug = true

-- Import Functions
loveframes = require("libs.loveframes")
-- Boat Moad Imports
mapsprites = require("res.sprites.mapsprites")
ship = require("src.ship")
wm = require("src.maps.worldmap")
-- Town Mode Imports
activetown = require("src.town")
townlist = require("src.towns."..wm.name..".list")
towns = {}
for t=1, #townlist do
	print ("Importing Town "..t)
	towns[t] = require("src.towns."..wm.name.."."..townlist[t])
end

-- Load Functions
function love.load()
	mode = "Boat"
	spritebatch = love.graphics.newSpriteBatch(mapsprites.texture, 1000, "stream")
	font = love.graphics.newFont(30)
	ship.init(wm)
end

-- Update Functions
function love.update(dt)
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	-- Animation Updates

    loveframes.update(dt)
end

-- Drawing Functions
function love.draw()
	-- Sprites
	spritebatch:clear()
	spritebatch:bind()
	if mode == "Boat" then
		love.graphics.setColor(255, 255, 255, 255)
		wm.draw(spritebatch, mapsprites)
		ship.draw(spritebatch, mapsprites)
	elseif mode == "Town" then
		activetown.draw()
	end
	spritebatch:unbind()
	love.graphics.draw(spritebatch)

    -- Return to draw colour
  	love.graphics.setColor(255, 255, 255, 255)
    loveframes.draw()
end
 
-- Button Press Buttons
function love.mousepressed(x, y, button)
    loveframes.mousepressed(x, y, button)
end
 
function love.mousereleased(x, y, button)
    loveframes.mousereleased(x, y, button)
end
 
function love.keypressed(key, unicode)
	if mode == "Boat" then
	    mode = ship.move(key, unicode)
	    if mode == "Town" then
	    	activetown.setTown(towns[ship.getTown()])
	    end
    elseif mode == "Town" then
    	if key == 'x' then
    		mode = ship.exitTown()
    	end
    end
    -- if mode ~= "Boat" then print (mode); end
    loveframes.keypressed(key, unicode)
end
 
function love.keyreleased(key)
    loveframes.keyreleased(key)
end

function love.textinput(text)
	loveframes.textinput(text)
end

-- Making Text Input Boxes
--[[
local textinput = loveframes.Create("textinput")
textinput:SetPos(150, 570)
textinput:SetWidth(500)
textinput.OnEnter = function(object, text)
    if not textinput.multiline then
    	command = text
    	doCommand = true
        object:Clear()
    end
end
textinput:SetFont(love.graphics.newFont(12))
]]--