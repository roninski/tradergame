debug = true

-- Import Functions
loveframes = require("libs.loveframes")
-- Boat Moad Imports
mapsprites = require("res.sprites.mapsprites")
ship = require("src.ship")
wm = require("src.maps.worldmap")
-- Town Mode Imports
townlist = require("src.towns."..wm.name..".list")
towns = {}
for t=1, #townlist do
	print ("Importing Town "..t)
	towns[t] = require("src.towns."..wm.name.."."..townlist[t])
end
-- Battle Mode Imports


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
		love.graphics.setColor(255, 255, 255, 255)
		love.graphics.draw(towns[ship.town].background,0,0)
		love.graphics.setColor(0, 0, 0, 255)
		love.graphics.rectangle("fill", 20, 20, 500, 80)
		love.graphics.setColor(255,0,0,255)
		love.graphics.setFont(love.graphics.newFont(30))
		love.graphics.print("Welcome to "..towns[ship.town].name.."!", 30, 30)
		love.graphics.setFont(love.graphics.newFont(12))
		love.graphics.print("Affiliation: "..towns[ship.town].affiliation, 30, 65)
	end
	spritebatch:unbind()
	love.graphics.draw(spritebatch)

	-- Text
	if mode == "Town" then
		
	end
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
    elseif mode == "Town" then
    	if key == 'x' then
    		mode = "Boat"
    		ship.town = 0
    		ship.atTown = true
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