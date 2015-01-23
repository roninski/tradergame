local town = {}
town.background = love.graphics.newImage("res/towns/test1/t7.png")
town.name = "Brie"
town.affiliation = "French"
-- The base costs for one metre cubed of any goods in the 1800s
town.goodsBaseCost = {}
town.goodsBaseCost["High Quality Cigars"] = 1500
town.goodsBaseCost["Food"] = 100
town.goodsBaseCost["Ale"] = 50
-- The chance of the item being available for sale out of 100
town.goodsRarity = {}
town.goodsRarity["High Quality Cigars"] = 10
town.goodsRarity["Food"] = 100
town.goodsRarity["Ale"] = 100
-- The dice thrown to determine how many of the item are available
town.goodsStock = {}
town.goodsStock["High Quality Cigars"] = "1d6"
town.goodsStock["Food"] = "3d8"
town.goodsStock["Ale"] = "3d8"
-- The chance of the item being discounted as opposed to inflated
town.goodsDiscount = {}
town.goodsDiscount["High Quality Cigars"] = 75
town.goodsDiscount["Food"] = 75
town.goodsDiscount["Ale"] = 75
-- The dice thrown to determine cost change to the good
town.goodsDice = {}
town.goodsDice["High Quality Cigars"] = "3d100"
town.goodsDice["Food"] = "5d10"
town.goodsDice["Ale"] = "3d10"
return town