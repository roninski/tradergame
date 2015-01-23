debug = true

-- Import Functions
loveframes = require("libs.loveframes")
spritesheet = require("res.sprites.spritesheet")
wm = require("src.maps.worldmap")
ship = require("src.ship")

-- Load Functions
function love.load()
	mode = "Boat"
	spritebatch = love.graphics.newSpriteBatch(spritesheet.texture, 1000, "stream")
	ship.init(wm)
end

-- Update Functions
function love.update(dt)
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

    loveframes.update(dt)
end

-- Drawing Functions
function love.draw()
	-- Sprites
	love.graphics.setColor(255, 255, 255, 255)
	spritebatch:clear()
	spritebatch:bind()
	wm.draw(spritebatch, spritesheet)
	ship.draw(spritebatch, spritesheet)
	spritebatch:unbind()
	love.graphics.draw(spritebatch)

	-- Text
	--[[
	love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print(dialogue, 30, 30) 
    love.graphics.print(count, 0, 0) 
    love.graphics.print(command, 150, 600)
	]]--

    -- Return to draw colour
  	love.graphics.setColor(255, 255, 255, 255)
    loveframes.draw()
end
 
-- Button Press Buttons
function love.mousepressed(x, y, button)
    -- your code
    loveframes.mousepressed(x, y, button)
end
 
function love.mousereleased(x, y, button)
    -- your code
    loveframes.mousereleased(x, y, button)
end
 
function love.keypressed(key, unicode)
    -- your code
    local result = ship.move(key, unicode)
    if result == true then print ("dock found"); end
    loveframes.keypressed(key, unicode)
end
 
function love.keyreleased(key)
    -- your code
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