local activeTown = {}
tree = require("src.types.tree")
activeTown.dice = require("src.rtd")
activeTown.town = nil
activeTown.price = {}
activeTown.stock = {}
activeTown.menuitem = 1

-- Initialiser
function activeTown.setTown(town)
	activeTown.dice.init()
	activeTown.menu = tree.create("Main Menu")
	activeTown.populateMenu()
	activeTown.activemenu = "Main Menu"
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

-- Draw functions
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
	if activeTown.activemenu == "Trade" then
		activeTown.drawGoods()
	else
		activeTown.drawMenu()
	end
end

-- Draw Menu
function activeTown.drawMenu()
	local npairs = activeTown.menu:getNumChildren()
	local items = activeTown.menu:getChildren()
	local x, y = 20, 120
	local border = 10
	local column_w = 250
	local fontsize = 25
	local padding = 8
	
	local rectangle_w = column_w + (border * 2)
	local rectangle_h = (npairs * (fontsize + padding)) + (border * 2)
	
	love.graphics.setFont(love.graphics.newFont(fontsize))
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.rectangle("fill", x, y, rectangle_w, rectangle_h)

	x = x + border; y = y + border
	count = 1
	for k, v in pairs(items) do
		love.graphics.setColor(0, 0, 255, 255)
		love.graphics.print(v, x, y)
		if count == activeTown.menuitem then
			love.graphics.setColor(255,255,255,255)
			love.graphics.rectangle("line", x - (border / 2), y - (padding / 2), 
				column_w + border, fontsize + padding)
		end
		y = y + fontsize + padding
		count = count + 1
	end
end

function activeTown.drawGoods()
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

function activeTown.populateMenu()
	activeTown.menu:createChild("Trade")
	
	activeTown.menu:createChild("Visit Shipwright")
	activeTown.menu:descendValue("Visit Shipwright")
		activeTown.menu:createChild("Repair ship")
		activeTown.menu:createChild("Upgrade ship")
		activeTown.menu:descendValue("Upgrade ship")
			activeTown.menu:createChild("More guns")
			activeTown.menu:createChild("Larger sails")
		activeTown.menu:ascend()
		activeTown.menu:createChild("Buy new ship")
	activeTown.menu:ascend()
	
	activeTown.menu:createChild("Rave")
	activeTown.menu:descendValue("Rave")
		activeTown.menu:createChild("Dubstep")
		activeTown.menu:createChild("House")
		activeTown.menu:createChild("Trance")
		activeTown.menu:createChild("Trap")
		activeTown.menu:createChild("Hard Drugs")
	activeTown.menu:ascend()

	activeTown.menu:createChild("Whore it up")
	activeTown.menu:descendValue("Whore it up")
		activeTown.menu:createChild("Asian")
		activeTown.menu:createChild("Black")
		activeTown.menu:createChild("Hispanic")
		activeTown.menu:createChild("White")
	activeTown.menu:ascend()
	
	activeTown.menu:createChild("Attack")
	activeTown.menu:descendValue("Attack")
		activeTown.menu:createChild("Attack armoury")
		activeTown.menu:createChild("Attack dock")
		activeTown.menu:createChild("Attack market")
		activeTown.menu:createChild("Attack residents")
		activeTown.menu:createChild("Attack town hall")
		activeTown.menu:createChild("Attack everything")
	activeTown.menu:ascend()
end

-- Menu Control
function activeTown.move(key, unicode)
	local numChildren = 0
	if activeTown.activemenu == "Trade" then
		for k, v in pairs(activeTown.price) do
			numChildren = numChildren + 1
		end
	else
		numChildren = activeTown.menu:getNumChildren()
	end

	-- Enter or exit
	if key == 'z' or key == ' ' then
		local descended = activeTown.menu:descendInt(activeTown.menuitem)
		activeTown.menuitem = 1
	elseif key == 'x' then
		local stay = activeTown.menu:ascend()
		activeTown.menuitem = 1
		if stay == false then return "Boat"; end

	-- Up and down
	elseif key == 'up' then
		activeTown.menuitem = activeTown.menuitem - 1
		if activeTown.menuitem == 0 then 
			activeTown.menuitem = numChildren
		end
	elseif key == 'down' then
		activeTown.menuitem = activeTown.menuitem + 1
		if activeTown.menuitem > numChildren then
			activeTown.menuitem = 1
		end
	end

	activeTown.activemenu = activeTown.menu:getNodeValue()
	print (activeTown.menuitem)
	return "Town"
end

return activeTown