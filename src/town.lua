local activeTown = {}
activeTown.town = nil
activeTown.dice = require("src.rtd")
activeTown.price = {}
activeTown.stock = {}

-- Initialiser
function activeTown.setTown(town)
	activeTown.dice.init()
	if activeTown.town ~= town then
		activeTown.town = town
		activeTown.populate()
	end
end

-- Getters and Setters
function activeTown.getName()
	return activeTown.town.name
end

function activeTown.getAffiliation()
	return activeTown.town.affiliation
end

-- Draw function
function activeTown.draw()
	if activeTown.town == nil then return nil; end
	-- Background
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.draw(activeTown.town.background,0,0)
	-- Text
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.rectangle("fill", 20, 20, 500, 80)
	love.graphics.setColor(255,0,0,255)
	love.graphics.setFont(love.graphics.newFont(30))
	love.graphics.print("Welcome to "..activeTown.getName().."!", 30, 30)
	love.graphics.setFont(love.graphics.newFont(12))
	love.graphics.print("Affiliation: "..activeTown.getAffiliation(), 30, 65)

	-- For testing purposes, lets print out all the goods we've got in the town
	local npairs = 0
	for k, v in pairs(activeTown.price) do
		npairs = npairs + 1
	end
	local x, y = 20, 120
	local border = 10
	local column_w = 250
	local fontsize = 20
	local padding = 5
	
	local rectangle_w = (column_w * 3) + (border * 2)
	local rectangle_h = ((npairs + 1) * (fontsize + padding)) + (border * 2)
	
	love.graphics.setFont(love.graphics.newFont(fontsize))
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.rectangle("fill", x, y, rectangle_w, rectangle_h)
	love.graphics.setColor(0, 255, 0, 255)
	x = x + border; y = y + border
	love.graphics.print("ITEM", x + (column_w * 0), y)
	love.graphics.print("STOCK", x + (column_w * 1), y)
	love.graphics.print("COST", x + (column_w * 2), y)
	y = y + fontsize + padding
	for k, v in pairs(activeTown.price) do
		love.graphics.print(k, x + (column_w * 0), y)
		love.graphics.print(activeTown.stock[k], x + (column_w * 1), y)
		love.graphics.print(activeTown.price[k], x + (column_w * 2), y)
		y = y + fontsize + padding
	end

end

-- Populate functions
function activeTown.populate()
	for k, v in pairs(activeTown.town.goodsBaseCost) do
		activeTown.price[k] = activeTown.town.goodsBaseCost[k]
		if activeTown.dice.roll("1d100") <= activeTown.town.goodsDiscount[k] then
			activeTown.price[k] = (activeTown.price[k] -
				activeTown.dice.roll(activeTown.town.goodsDice[k]))
		else 
			activeTown.price[k] = (activeTown.price[k] + 
				activeTown.dice.roll(activeTown.town.goodsDice[k]))
		end
		if activeTown.dice.roll("1d100") <= activeTown.town.goodsRarity[k] then
			activeTown.stock[k] = activeTown.dice.roll(activeTown.town.goodsStock[k])
		else
			activeTown.stock[k] = 0
		end
	end
end

return activeTown